import 'package:freezed_annotation/freezed_annotation.dart';

part 'jaap_page_state.freezed.dart';

@freezed
abstract class JaapPageState with _$JaapPageState {
  const factory JaapPageState({
    /// 🔢 TOTAL JAP (example 151 / 251)
    @Default(0) int totalCount,

    /// 🔢 OVERALL CURRENT COUNT
    @Default(0) int currentCount,

    /// ⏱ duration
    @Default(0) int duration,

    DateTime? resumeTime,

    /// ✅ completed flag
    @Default(false) bool isCompleted,

    /// mantra name
    @Default('') String mantraName,

    /// session
    String? sessionId,

    /// sync helper
    @Default(0) int lastSyncedCount,

    /// 🧿 CURRENT MALA INDEX (1,2,3…)
    @Default(1) int roundIndex,

    /// 🧿 CURRENT MALA TOTAL (max 108)
    @Default(108) int roundTotal,

    DateTime? startTime,
    DateTime? endTime,
  }) = _JaapPageState;

  factory JaapPageState.initial() => const JaapPageState();
}
