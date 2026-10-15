import 'package:freezed_annotation/freezed_annotation.dart';

part 'pitru_paksha_detail_event.freezed.dart';

@freezed
abstract class PitruPakshaDetailEvent with _$PitruPakshaDetailEvent {
  const factory PitruPakshaDetailEvent.loadDetail({
    required String slug,
    required String date,
    required int year,
    String? lang,
    double? lat,
    double? lon,
  }) = LoadPitruPakshaDetail;
}
