import 'package:freezed_annotation/freezed_annotation.dart';

part 'festival_event_event.freezed.dart';

@freezed
abstract class FestivalEventEvent with _$FestivalEventEvent {
  /// Fetch tags + upcoming pages + the shown year (also used by pull-to-refresh).
  const factory FestivalEventEvent.load() = LoadFestivalEvents;

  /// Tag key; empty = All.
  const factory FestivalEventEvent.selectTag(String tag) = SelectFestivalTag;

  const factory FestivalEventEvent.search(String query) = SearchFestivalEvents;

  /// Jump to a month (Year / Month dropdowns). month 1-12.
  const factory FestivalEventEvent.showMonth(int year, int month) = ShowFestivalMonth;

  /// Swipe: -1 = previous month, +1 = next month.
  const factory FestivalEventEvent.shiftMonth(int delta) = ShiftFestivalMonth;
}
