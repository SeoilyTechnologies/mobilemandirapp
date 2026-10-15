import 'package:audio_session/audio_session.dart';
import 'package:just_audio/just_audio.dart';

import '../../../../common/routes/exports.dart';


class AudioPlayerService {
  final AudioPlayer _player = AudioPlayer();
  bool _initialized = false;
  String? _currentUrl;
  String? _currentMedia; // asset path or url
  final ValueNotifier<String?> currentMediaNotifier = ValueNotifier(null);

  AudioPlayerService() {
    _initSession();
  }

  Future<void> _initSession() async {
    if (_initialized) return;
    _initialized = true;

    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.music());

    session.becomingNoisyEventStream.listen((_) {
      pause();
    });

    session.interruptionEventStream.listen((event) {
      if (event.begin) {
        pause();
      } else {
        if (_player.playing == false &&
            _currentMedia != null &&
            event.type == AudioInterruptionType.pause) {
          _player.play();
        }
      }
    });
  }

  Future<void> playUrl(String url) async {
    await _initSession();
    _currentUrl = url;
    _currentMedia = url;
    currentMediaNotifier.value = _currentMedia;

    try {
      await _player.setUrl(url);
      await _player.play();
    } catch (e) {}
  }

  Future<void> playAsset(String assetPath) async {
    await _initSession();
    _currentUrl = null;
    _currentMedia = assetPath;
    currentMediaNotifier.value = _currentMedia;

    try {
      await _player.setAsset(assetPath);
      await _player.play();
    } catch (e) {}
  }

  /// Resume
  Future<void> play() async {
    if (!_player.playing) {
      await _player.play();
    }
  }

  Future<void> pause() async {
    if (_player.playing) {
      await _player.pause();
    }
  }

  Future<void> stop() async {
    await _player.stop();
    _currentMedia = null;
    currentMediaNotifier.value = null;
  }

  Future<void> dispose() async {
    await _player.dispose();
    currentMediaNotifier.dispose();
  }

  Stream<PlayerState> get playerStateStream => _player.playerStateStream;
  Stream<Duration> get positionStream => _player.positionStream;

  String? get currentMedia => _currentMedia;

  /// ✅ ADD THIS GETTER
  bool get isPlaying => _player.playing;
}

// class AudioPlayerService {
//   final AudioPlayer _player = AudioPlayer();
//   bool _initialized = false;
//   String? _currentUrl;
//
//   AudioPlayerService() {
//     // constructor me optional: lazy init
//     _initSession();
//   }
//
//   Future<void> _initSession() async {
//     if (_initialized) return;
//     _initialized = true;
//
//     final session = await AudioSession.instance;
//     await session.configure(const AudioSessionConfiguration.music());
//
//     // Headphone nikalne / becoming noisy
//     session.becomingNoisyEventStream.listen((_) {
//       pause();
//     });
//
//     // Calls / notifications / dusri audio app
//     session.interruptionEventStream.listen((event) {
//       if (event.begin) {
//         // Interruption start -> pause
//         pause();
//       } else {
//         // Interruption end -> auto resume
//         if (_player.playing == false &&
//             _currentUrl != null &&
//             event.type == AudioInterruptionType.pause) {
//           play();
//         }
//       }
//     });
//   }
//
//   /// URL se play
//   Future<void> playUrl(String url) async {
//     await _initSession();
//     _currentUrl = url;
//
//     try {
//       await _player.setUrl(url);
//       await _player.play();
//     } catch (e) {
//       // error handle karo
//       // print(e);
//     }
//   }
//
//   /// Asset se play
//   Future<void> playAsset(String assetPath) async {
//     await _initSession();
//     _currentUrl = null; // Asset play me URL store nahi karna
//
//     try {
//       await _player.setAsset(assetPath);
//       await _player.play();
//     } catch (e) {
//       // Handle if asset not found or any player issue
//       // print(e);
//     }
//   }
//
//   /// Resume (agar koi URL set hai)
//   Future<void> play() async {
//     if (_currentUrl == null) return;
//     if (!_player.playing) {
//       await _player.play();
//     }
//   }
//
//   /// Pause
//   Future<void> pause() async {
//     if (_player.playing) {
//       await _player.pause();
//     }
//   }
//
//   /// Stop
//   Future<void> stop() async {
//     await _player.stop();
//   }
//
//   /// Dispose (agar app band hone pe clean up karna ho)
//   Future<void> dispose() async {
//     await _player.dispose();
//   }
//
//   /// Streams (agar UI se listen karna ho)
//   Stream<PlayerState> get playerStateStream => _player.playerStateStream;
//   Stream<Duration> get positionStream => _player.positionStream;
// }
