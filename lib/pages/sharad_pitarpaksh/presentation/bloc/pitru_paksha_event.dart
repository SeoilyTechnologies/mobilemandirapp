import 'package:freezed_annotation/freezed_annotation.dart';

part 'pitru_paksha_event.freezed.dart';

@freezed
abstract class PitruPakshaEvent with _$PitruPakshaEvent {
  const factory PitruPakshaEvent.loadData({
    int? year,
    String? lang,
    double? lat,
    double? lon,
  }) = LoadPitruPakshaData;

  const factory PitruPakshaEvent.search(String query) = SearchPitruPaksha;

  const factory PitruPakshaEvent.filterByDate(DateTime? selectedDate) = FilterPitruPakshaByDate;

  const factory PitruPakshaEvent.clearFilter() = ClearPitruPakshaFilter;
}
