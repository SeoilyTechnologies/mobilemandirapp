part of 'jaap_history_bloc.dart';

@freezed
abstract class JaapHistoryEvent with _$JaapHistoryEvent {

  /// 🔹 Load history (initial / refresh)
  const factory JaapHistoryEvent.loadHistory({
    DateTime? startDate,
    DateTime? endDate,
  }) = LoadHistory;

  /// 🔹 Change start date filter
  const factory JaapHistoryEvent.changeStartDate(DateTime? startDate)
  = ChangeStartDate;

  /// 🔹 Change end date filter
  const factory JaapHistoryEvent.changeEndDate(DateTime? endDate)
  = ChangeEndDate;

  /// 🔹 Apply filter (call API)
  const factory JaapHistoryEvent.applyFilter() = ApplyFilter;

  /// 🔹 Clear filter (All button)
  const factory JaapHistoryEvent.clearFilter() = ClearFilter;

  /// 🔹 Retry after error
  const factory JaapHistoryEvent.retry() = Retry;
}
