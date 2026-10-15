import 'dart:async';
import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class AartiAudioHandler extends BaseAudioHandler with QueueHandler, SeekHandler {
  final AudioPlayer _player = AudioPlayer();

  // Streams that AartiPlayerBloc subscribes to so notification skip buttons
  // drive the BLoC queue — keeping audio and UI state perfectly in sync.
  final _skipNextController = StreamController<void>.broadcast();
  final _skipPrevController = StreamController<void>.broadcast();

  Stream<void> get onSkipToNext => _skipNextController.stream;
  Stream<void> get onSkipToPrevious => _skipPrevController.stream;

  AartiAudioHandler() {
    _player.playbackEventStream.listen(_broadcastState);

    // Keep MediaItem duration up-to-date (required for lock-screen scrubber)
    _player.durationStream.listen((duration) {
      final current = mediaItem.value;
      if (current != null && duration != null) {
        mediaItem.add(current.copyWith(duration: duration));
      }
    });
  }

  Future<void> setLoop(bool loop) async {
    await _player.setLoopMode(loop ? LoopMode.one : LoopMode.off);
  }

  Future<void> loadAndPlay(MediaItem item) async {
    await _player.stop();
    mediaItem.add(item);
    await _player.setUrl(item.id);
    await play();
  }

  // ─── Notification / Headset skip callbacks ────────────────────────────────

  /// Called when user taps ⏭ on the notification or lock screen.
  /// We push to the stream; AartiPlayerBloc dispatches PlayNextTrack.
  @override
  Future<void> skipToNext() async {
    _skipNextController.add(null);
  }

  /// Called when user taps ⏮ on the notification or lock screen.
  /// We push to the stream; AartiPlayerBloc dispatches PlayPreviousTrack.
  @override
  Future<void> skipToPrevious() async {
    _skipPrevController.add(null);
  }

  // ─── Broadcast playback state to OS notification ─────────────────────────

  void _broadcastState(PlaybackEvent event) {
    // Controls shown in the expanded notification:
    // [⏮  |  ▶/⏸  |  ⏭]
    playbackState.add(
      playbackState.value.copyWith(
        controls: [
          MediaControl.skipToPrevious,
          if (_player.playing) MediaControl.pause else MediaControl.play,
          MediaControl.skipToNext,
        ],
        // Indices of the 3 controls to show in the compact (lock-screen) view
        androidCompactActionIndices: const [0, 1, 2],
        systemActions: const {
          MediaAction.seek,
          MediaAction.seekForward,
          MediaAction.seekBackward,
          MediaAction.skipToNext,
          MediaAction.skipToPrevious,
        },
        processingState: _mapProcessingState(_player.processingState),
        playing: _player.playing,
        updatePosition: _player.position,
        bufferedPosition: _player.bufferedPosition,
        speed: _player.speed,
      ),
    );
  }

  // ─── Standard playback controls ──────────────────────────────────────────

  @override
  Future<void> play() async => _player.play();

  @override
  Future<void> pause() async => _player.pause();

  @override
  Future<void> stop() async {
    await _player.stop();
    playbackState.add(
      playbackState.value.copyWith(
        playing: false,
        processingState: AudioProcessingState.idle,
      ),
    );
  }

  @override
  Future<void> seek(Duration position) => _player.seek(position);

  // ─── Dispose ─────────────────────────────────────────────────────────────

  @override
  Future<void> customAction(String name, [Map<String, dynamic>? extras]) async {
    if (name == 'dispose') {
      await _player.dispose();
      await _skipNextController.close();
      await _skipPrevController.close();
    }
    await super.customAction(name, extras);
  }

  // ─── Internal helpers ─────────────────────────────────────────────────────

  AudioProcessingState _mapProcessingState(ProcessingState state) {
    switch (state) {
      case ProcessingState.idle:
        return AudioProcessingState.idle;
      case ProcessingState.loading:
        return AudioProcessingState.loading;
      case ProcessingState.buffering:
        return AudioProcessingState.buffering;
      case ProcessingState.ready:
        return AudioProcessingState.ready;
      case ProcessingState.completed:
        return AudioProcessingState.completed;
    }
  }
}
