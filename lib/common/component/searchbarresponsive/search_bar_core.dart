import 'dart:async';

import 'package:speech_to_text/speech_to_text.dart' as stt;

import '../../../../../common/routes/exports.dart';

class SearchBarCore extends StatefulWidget {
  final Widget Function(
      TextEditingController controller,
      bool isListening,
      String status,
      VoidCallback onMicTap,
      Function(String)? onChanged,
      ) builder;

  final Function(String)? onChanged;
  final TextEditingController? controller;
  final VoidCallback? onMicTap;
  const SearchBarCore({
    super.key,
    required this.builder,
    this.onChanged,
    this.controller,
    this.onMicTap,

  });

  @override
  State<SearchBarCore> createState() => _SearchBarCoreState();
}

class _SearchBarCoreState extends State<SearchBarCore> {
  late TextEditingController _controller;
  Timer? _timer;
  stt.SpeechToText? _speech;

  bool _isListening = false;
  bool _speechEnabled = false;
  String _status = 'Listening...';

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    if (widget.onMicTap == null) {
      _initSpeech();
    }
  }

  void _initSpeech() async {
    final speech = stt.SpeechToText();
    _speech = speech;
    _speechEnabled = await speech.initialize(
      onStatus: (status) {
        if (status == "done" || status == "notListening") {
          _stopListening();
        }
      },
      onError: (error) {
        _stopListening();
      },
    );
    setState(() {});
  }

  void _startListening() async {
    if (!_speechEnabled) return;

    _controller.clear();
    widget.onChanged?.call('');

    setState(() {
      _isListening = true;
      _status = 'Listening...';
    });

    await _speech?.listen(
      localeId: "en_US",
      onResult: (result) {
        _controller.text = result.recognizedWords;
        _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length),
        );
        widget.onChanged?.call(_controller.text);
        setState(() {});
      },
    );

    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 3), _stopListening);
  }

  void _stopListening() async {
    _timer?.cancel();
    await _speech?.stop();

    setState(() {
      _isListening = false;
      _status = 'Listening...';
    });
  }

  @override
  void dispose() {
    _speech?.stop();
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  void _handleMicTap() {
    if (widget.onMicTap != null) {
      widget.onMicTap!();
      return;
    }

    if (_isListening) {
      _stopListening();
    } else {
      _startListening();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      _controller,
      _isListening,
      _status,
      _handleMicTap,
      widget.onChanged,
    );
  }
}