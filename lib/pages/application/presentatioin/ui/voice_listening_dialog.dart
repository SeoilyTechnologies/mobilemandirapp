import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../../common/values/fonts.dart';

Future<String?> showVoiceListeningDialog(BuildContext context) {
  return showGeneralDialog<String>(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'VoiceListening',
    barrierColor: Colors.black.withValues(alpha: 0.6),
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, animation, secondaryAnimation) {
      return const VoiceListeningDialog();
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
        child: child,
      );
    },
  );
}

enum _VoiceState {
  preparing,
  checkPermission,
  startFailed,
  listening,
  listenFailed,
  checkAccess,
}

class VoiceListeningDialog extends StatefulWidget {
  const VoiceListeningDialog({super.key});

  @override
  State<VoiceListeningDialog> createState() => _VoiceListeningDialogState();
}

class _VoiceListeningDialogState extends State<VoiceListeningDialog>
    with TickerProviderStateMixin {
  final SpeechToText _speech = SpeechToText();

  String _spokenText = '';
  bool _hasClosed = false;
  bool _isListening = false;
  bool _speechReady = false;
  _VoiceState _voiceState = _VoiceState.preparing;

  Timer? _sessionTimer;
  Timer? _closeTimer;
  Timer? _startDelayTimer;

  late final DateTime _openedAt;
  late AnimationController _waveController;
  late AnimationController _sheetController;
  late Animation<Offset> _sheetSlide;

  static const _sessionDuration = Duration(seconds: 10);
  static const _minVisibleDuration = Duration(milliseconds: 1800);

  @override
  void initState() {
    super.initState();
    _openedAt = DateTime.now();

    _waveController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    _sheetController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    _sheetSlide = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _sheetController, curve: Curves.easeOutCubic),
    );

    _sheetController.forward();
    _sessionTimer = Timer(_sessionDuration, _closeWithResult);

    // Sheet animation complete hone ke baad listening start karo.
    _startDelayTimer = Timer(const Duration(milliseconds: 400), _prepareAndListen);
  }

  Future<void> _prepareAndListen() async {
    if (!mounted || _hasClosed) return;

    try {
      _speechReady = await _speech.initialize(
        onStatus: _onSpeechStatus,
        onError: _onSpeechError,
      );

      if (!mounted || _hasClosed) return;

      if (!_speechReady) {
        setState(() {
          _isListening = false;
          _voiceState = _VoiceState.checkPermission;
        });
        _scheduleClose(delay: const Duration(seconds: 2));
        return;
      }

      await _beginListen();
    } catch (_) {
      if (!mounted || _hasClosed) return;
      setState(() {
        _isListening = false;
        _voiceState = _VoiceState.startFailed;
      });
      _scheduleClose(delay: const Duration(seconds: 2));
    }
  }

  Future<void> _beginListen() async {
    if (!mounted || _hasClosed || !_speechReady) return;

    setState(() {
      _isListening = true;
      _voiceState = _VoiceState.listening;
    });

    final started = await _speech.listen(
      onResult: (result) {
        if (!mounted || _hasClosed) return;

        final words = result.recognizedWords.trim();
        if (words.isEmpty) return;

        setState(() {
          _spokenText = words;
          _voiceState = _VoiceState.listening;
        });

        if (result.finalResult) {
          _scheduleClose(delay: const Duration(milliseconds: 700));
        }
      },
      listenFor: _sessionDuration,
      pauseFor: const Duration(seconds: 4),
      partialResults: true,
      cancelOnError: false,
      listenMode: ListenMode.dictation,
    );

    if (!mounted || _hasClosed) return;

    if (started != true) {
      setState(() {
        _isListening = false;
        _voiceState = _VoiceState.listenFailed;
      });
      _scheduleClose(delay: const Duration(seconds: 2));
    }
  }

  void _onSpeechStatus(String status) {
    if (!mounted || _hasClosed) return;

    setState(() {
      _isListening = status == 'listening';
      if (status == 'listening') {
        _voiceState = _VoiceState.listening;
      }
    });

    // Sirf tab close karo jab user ne kuch bola ho.
    if ((status == 'done' || status == 'notListening') &&
        _spokenText.trim().isNotEmpty) {
      _scheduleClose(delay: const Duration(milliseconds: 700));
    }
  }

  void _onSpeechError(SpeechRecognitionError error) {
    if (!mounted || _hasClosed) return;

    final msg = error.errorMsg;
    final isBenign = msg == 'error_no_match' ||
        msg == 'error_speech_timeout' ||
        msg == 'error_client';

    if (isBenign) {
      return;
    }

    setState(() {
      _isListening = false;
      _voiceState = _VoiceState.checkAccess;
    });

    if (error.permanent) {
      _scheduleClose(delay: const Duration(seconds: 2));
    }
  }

  void _scheduleClose({Duration delay = const Duration(milliseconds: 700)}) {
    _closeTimer?.cancel();

    final elapsed = DateTime.now().difference(_openedAt);
    final wait = elapsed < _minVisibleDuration
        ? _minVisibleDuration - elapsed + delay
        : delay;

    _closeTimer = Timer(wait, _closeWithResult);
  }

  void _dismiss([String? result]) {
    if (_hasClosed) return;
    _hasClosed = true;
    _sessionTimer?.cancel();
    _closeTimer?.cancel();
    _startDelayTimer?.cancel();
    _waveController.stop();
    unawaited(_speech.stop());

    if (!mounted) return;

    final navigator = Navigator.of(context, rootNavigator: true);
    if (navigator.canPop()) {
      navigator.pop(result);
    }
  }

  void _closeWithResult() {
    final result = _spokenText.trim();
    _dismiss(result.isEmpty ? null : result);
  }

  @override
  void dispose() {
    _sessionTimer?.cancel();
    _closeTimer?.cancel();
    _startDelayTimer?.cancel();
    _waveController.dispose();
    _sheetController.dispose();
    unawaited(_speech.stop());
    super.dispose();
  }

  String _getStatusMessage(BuildContext context) {
    switch (_voiceState) {
      case _VoiceState.preparing:
        return context.l10n.micPreparing;
      case _VoiceState.checkPermission:
        return context.l10n.checkMicPermission;
      case _VoiceState.startFailed:
        return context.l10n.micStartFailed;
      case _VoiceState.listening:
        return context.l10n.listeningSpeakNow;
      case _VoiceState.listenFailed:
        return context.l10n.listeningStartFailed;
      case _VoiceState.checkAccess:
        return context.l10n.checkMicAccess;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => _dismiss(null),
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SlideTransition(
              position: _sheetSlide,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () => _dismiss(null),
                    child: Container(
                      width: 46,
                      height: 46,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 36,
                      bottom: 24 + MediaQuery.of(context).padding.bottom,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(36),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _spokenText.isEmpty
                              ? (_isListening
                                  ? context.l10n.listening
                                  : context.l10n.speakIAmListening)
                              : _spokenText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: AppFont.gilroyBold,
                            fontWeight: FontWeight.bold,
                            color: _spokenText.isEmpty
                                ? Colors.grey.shade400
                                : Colors.black,
                          ),
                        ),
                        const SizedBox(height: 32),
                        AnimatedBuilder(
                          animation: _waveController,
                          builder: (context, child) {
                            return Container(
                              width: 84,
                              height: 84,
                              decoration: BoxDecoration(
                                color: const Color(0xFF6B3A0A),
                                shape: BoxShape.circle,
                                boxShadow: _isListening
                                    ? [
                                        BoxShadow(
                                          color: const Color(0xFF6B3A0A)
                                              .withValues(alpha: 0.35),
                                          blurRadius: 18,
                                          spreadRadius: 2,
                                        ),
                                      ]
                                    : null,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _waveBar(12 + 6 * _waveController.value),
                                  const SizedBox(width: 4),
                                  _waveBar(
                                    22 + 10 * (1 - _waveController.value),
                                  ),
                                  const SizedBox(width: 4),
                                  _waveBar(32 + 6 * _waveController.value),
                                  const SizedBox(width: 4),
                                  _waveBar(
                                    22 + 10 * (1 - _waveController.value),
                                  ),
                                  const SizedBox(width: 4),
                                  _waveBar(12 + 6 * _waveController.value),
                                ],
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 32),
                        Text(
                          _getStatusMessage(context),
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: AppFont.gilroyMedium,
                            color: const Color(0xFF8B4A00),
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _waveBar(double height) {
    return Container(
      width: 3.5,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
