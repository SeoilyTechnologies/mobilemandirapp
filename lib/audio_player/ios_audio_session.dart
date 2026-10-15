import 'package:audio_session/audio_session.dart';

Future<void> configureIosAudioSession() async {
  final session = await AudioSession.instance;

  await session.configure(
    const AudioSessionConfiguration.music(),
  );
}
