import 'package:just_audio/just_audio.dart';

/// A common audio player manager that supports both local and remote files.
/// Provides methods for play, pause, stop, seek, forward, backward, next, and previous.
class AudioPlayerManager {
  // Singleton pattern (optional)
  static final AudioPlayerManager _instance = AudioPlayerManager._internal();
  factory AudioPlayerManager() => _instance;
  AudioPlayerManager._internal();

  final AudioPlayer _player = AudioPlayer();

  /// List of tracks (URLs or local file paths)
  List<String> _playlist = [];
  int _currentIndex = 0;

  /// Initialize with a list of URLs or local file paths
  Future<void> setPlaylist(List<String> sources) async {
    _playlist = sources;
    _currentIndex = 0;
    if (_playlist.isNotEmpty) {
      await _loadCurrent();
    }
  }

  /// Load the current track
  Future<void> _loadCurrent() async {
    final source = _playlist[_currentIndex];
    try {
      if (source.startsWith('http')) {
        await _player.setUrl(source);
      } else {
        await _player.setFilePath(source);
      }
    } catch (e) {
    }
  }

  /// Play the current audio
  Future<void> play() async {
    if (_player.playing) return;
    await _player.play();
  }

  /// Pause the audio
  Future<void> pause() async {
    await _player.pause();
  }

  /// Stop the audio
  Future<void> stop() async {
    await _player.stop();
  }

  /// Seek to a specific position (in seconds)
  Future<void> seek(Duration position) async {
    await _player.seek(position);
  }

  /// Forward (e.g., +10 seconds)
  Future<void> forward([Duration offset = const Duration(seconds: 10)]) async {
    final newPos = _player.position + offset;
    await _player.seek(newPos);
  }

  /// Rewind (e.g., -10 seconds)
  Future<void> rewind([Duration offset = const Duration(seconds: 10)]) async {
    final newPos = _player.position - offset;
    await _player.seek(newPos < Duration.zero ? Duration.zero : newPos);
  }

  /// Next track
  Future<void> next() async {
    if (_playlist.isEmpty) return;
    if (_currentIndex < _playlist.length - 1) {
      _currentIndex++;
      await _loadCurrent();
      await play();
    }
  }

  /// Previous track
  Future<void> previous() async {
    if (_playlist.isEmpty) return;
    if (_currentIndex > 0) {
      _currentIndex--;
      await _loadCurrent();
      await play();
    }
  }

  /// Check if currently playing
  bool get isPlaying => _player.playing;

  /// Get the current position stream (for progress bar)
  Stream<Duration> get positionStream => _player.positionStream;

  /// Get the duration of current audio
  Duration? get duration => _player.duration;

  /// Dispose player (when app closes)
  Future<void> dispose() async {
    await _player.dispose();
  }
}
