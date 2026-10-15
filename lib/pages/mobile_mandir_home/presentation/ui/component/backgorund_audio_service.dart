// import 'package:just_audio/just_audio.dart';
// import 'package:audio_session/audio_session.dart';
//
// import 'package:just_audio/just_audio.dart';
// import 'package:audio_session/audio_session.dart';
//
// import 'package:just_audio/just_audio.dart';
// import 'package:audio_session/audio_session.dart';
//
// import 'package:just_audio/just_audio.dart';
// import 'package:audio_session/audio_session.dart';
//
// class BackgroundAudioService {
//   BackgroundAudioService._internal();
//
//   static final BackgroundAudioService instance =
//       BackgroundAudioService._internal();
//
//   final AudioPlayer _player = AudioPlayer();
//
//   /// 🔊 expose playing state
//   Stream<bool> get playingStream => _player.playingStream;
//
//   bool get isPlaying => _player.playing;
//
//   /// 🔥 MUST be called once (from main.dart)
//   Future<void> init() async {
//     final session = await AudioSession.instance;
//
//     await session.configure(const AudioSessionConfiguration.music());
//
//     // Handle interruptions (call, alarm, etc.)
//     session.interruptionEventStream.listen((event) async {
//       if (event.begin) {
//         await _player.pause();
//       }
//     });
//   }
//
//   /// 🔁 Asset play + loop
//   Future<void> playAsset(String assetPath) async {
//     await _player.stop();
//     await _player.setAsset(assetPath);
//     await _player.setLoopMode(LoopMode.one);
//     await _player.play();
//   }
//
//   Future<void> pause() async => _player.pause();
//
//   Future<void> resume() async => _player.play();
//
//   /// optional cleanup
//   Future<void> dispose() async {
//     await _player.dispose();
//   }
// }
//
// // class BackgroundAudioService {
// //   BackgroundAudioService._internal();
// //
// //   static final BackgroundAudioService instance =
// //   BackgroundAudioService._internal();
// //
// //   final AudioPlayer _player = AudioPlayer();
// //
// //   Future<void> init() async {
// //     final session = await AudioSession.instance;
// //     await session.configure(const AudioSessionConfiguration.music());
// //
// //     session.interruptionEventStream.listen((event) async {
// //       if (event.begin) {
// //         await _player.pause();
// //       }
// //     });
// //   }
// //
// //   /// 🔁 Asset play + loop
// //   Future<void> playAsset(String assetPath) async {
// //     await _player.stop();
// //     await _player.setAsset(assetPath);
// //
// //     // 👉 same mantra ko bar-bar repeat karega
// //     await _player.setLoopMode(LoopMode.one);
// //
// //     await _player.play();
// //   }
// //
// //   Future<void> pause() async => _player.pause();
// //   Future<void> resume() async => _player.play();
// //
// //   bool get isPlaying => _player.playing;
// // }
