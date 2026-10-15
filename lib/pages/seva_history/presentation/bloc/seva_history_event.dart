import 'package:freezed_annotation/freezed_annotation.dart';

part 'seva_history_event.freezed.dart';

@freezed
abstract class SevaHistoryEvent with _$SevaHistoryEvent {
  const factory SevaHistoryEvent.getSevaHistory({
    @Default('all') String status,
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetSevaHistoryEvent;
}
