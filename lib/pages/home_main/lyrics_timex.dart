import '../aarti_chalisa_list/data/entity/aarti_model.dart';

extension LyricsTimeX on LyricsModel {
  Duration get startDuration => Duration(
    seconds: start.seconds,
    milliseconds: start.milliseconds,
  );

  Duration get endDuration => Duration(
    seconds: end.seconds,
    milliseconds: end.milliseconds,
  );
}
