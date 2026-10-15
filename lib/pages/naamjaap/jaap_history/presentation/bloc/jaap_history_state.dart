import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../jaappage_one/data/entity/jaap_history/jaap_history_response.dart';


part 'jaap_history_state.freezed.dart';

@freezed
abstract class JaapHistoryState with _$JaapHistoryState {
  const factory JaapHistoryState({
    /// 🔹 API flags
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isServerError,
    @Default('') String apiErrorMessage,
    @Default('') String apiSuccessMessage,

    /// 🔹 Filters
    DateTime? startDate,
    DateTime? endDate,

    /// 🔹 Summary
    @Default(0) int totalSessions,
    @Default(0) int totalCount,

    /// 🔹 Data list
    @Default([]) List<JaapSession> sessions,

  }) = _JaapHistoryState;

  /// Initial state
  factory JaapHistoryState.initial() => const JaapHistoryState();
}
