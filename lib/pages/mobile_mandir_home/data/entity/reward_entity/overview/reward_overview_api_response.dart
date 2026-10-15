import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_overview_api_response.freezed.dart';
part 'reward_overview_api_response.g.dart';

@freezed
abstract class RewardOverviewApiResponse with _$RewardOverviewApiResponse {
  const factory RewardOverviewApiResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(RewardOverviewData())
    @JsonKey(name: 'data')
    RewardOverviewData data,
    @JsonKey(name: 'errors') dynamic errors,
  }) = _RewardOverviewApiResponse;

  factory RewardOverviewApiResponse.fromJson(Map<String, dynamic> json) =>
      _$RewardOverviewApiResponseFromJson(json);
}

@freezed
abstract class RewardOverviewData with _$RewardOverviewData {
  const factory RewardOverviewData({
    @Default(0) int coins,
    @Default(TotalCoinsProgress())
    @JsonKey(name: 'totalCoinsProgress')
    TotalCoinsProgress totalCoinsProgress,
    @Default(DayStreak())
    @JsonKey(name: 'dayStreak')
    DayStreak dayStreak,
    @Default(WeeklyTracker())
    @JsonKey(name: 'weeklyTracker')
    WeeklyTracker weeklyTracker,
    @Default([])
    @JsonKey(name: 'tasks')
    List<RewardTask> tasks,
    @Default(DailyCheckIn())
    @JsonKey(name: 'dailyCheckIn')
    DailyCheckIn dailyCheckIn,
    @Default([])
    @JsonKey(name: 'coupons')
    List<RewardCoupon> coupons,
  }) = _RewardOverviewData;

  factory RewardOverviewData.fromJson(Map<String, dynamic> json) =>
      _$RewardOverviewDataFromJson(json);
}

@freezed
abstract class TotalCoinsProgress with _$TotalCoinsProgress {
  const factory TotalCoinsProgress({
    @Default(0) int current,
    @Default(0) int nextRewardAt,
    @Default(0) int remaining,
  }) = _TotalCoinsProgress;

  factory TotalCoinsProgress.fromJson(Map<String, dynamic> json) =>
      _$TotalCoinsProgressFromJson(json);
}

@freezed
abstract class DayStreak with _$DayStreak {
  const factory DayStreak({
    @Default(0) int current,
    @Default(0) int nextBonusAt,
    @Default(0) int remainingForBonus,
  }) = _DayStreak;

  factory DayStreak.fromJson(Map<String, dynamic> json) =>
      _$DayStreakFromJson(json);
}

@freezed
abstract class WeeklyTracker with _$WeeklyTracker {
  const factory WeeklyTracker({
    @Default([])
    @JsonKey(name: 'days')
    List<WeeklyDay> days,
    @Default('')
    @JsonKey(name: 'bonusMessage')
    String bonusMessage,
    @Default(0)
    @JsonKey(name: 'weeklyBonusCoins')
    int weeklyBonusCoins,
    @Default(false)
    @JsonKey(name: 'canClaimWeeklyBonus')
    bool canClaimWeeklyBonus,
  }) = _WeeklyTracker;

  factory WeeklyTracker.fromJson(Map<String, dynamic> json) =>
      _$WeeklyTrackerFromJson(json);
}

@freezed
abstract class WeeklyDay with _$WeeklyDay {
  const factory WeeklyDay({
    @Default('') String day,
    @Default(false) bool completed,
    @Default(false) bool isToday,
  }) = _WeeklyDay;

  factory WeeklyDay.fromJson(Map<String, dynamic> json) =>
      _$WeeklyDayFromJson(json);
}

@freezed
abstract class RewardTask with _$RewardTask {
  const factory RewardTask({
    @Default('') String id,
    @Default('') String title,
    @Default('') String activityType,
    @Default(TaskProgress())
    @JsonKey(name: 'progress')
    TaskProgress progress,
    @Default(0)
    @JsonKey(name: 'rewardCoins')
    int rewardCoins,
    @Default('') String status,
    @Default(TaskCTA())
    @JsonKey(name: 'cta')
    TaskCTA cta,
  }) = _RewardTask;

  factory RewardTask.fromJson(Map<String, dynamic> json) =>
      _$RewardTaskFromJson(json);
}

@freezed
abstract class TaskProgress with _$TaskProgress {
  const factory TaskProgress({
    @Default(0) int current,
    @Default(0) int target,
  }) = _TaskProgress;

  factory TaskProgress.fromJson(Map<String, dynamic> json) =>
      _$TaskProgressFromJson(json);
}

@freezed
abstract class TaskCTA with _$TaskCTA {
  const factory TaskCTA({
    @Default('') String type,
    @Default('') String label,
    @Default('')
    @JsonKey(name: 'deepLink')
    String deepLink,
  }) = _TaskCTA;

  factory TaskCTA.fromJson(Map<String, dynamic> json) =>
      _$TaskCTAFromJson(json);
}

@freezed
abstract class DailyCheckIn with _$DailyCheckIn {
  const factory DailyCheckIn({
    @Default(0)
    @JsonKey(name: 'coinsEarned')
    int coinsEarned,
    @Default(0)
    @JsonKey(name: 'newBalance')
    int newBalance,
    @Default(0) int streak,
    @Default(LoginReward())
    @JsonKey(name: 'loginReward')
    LoginReward loginReward,
    @Default(StreakBonus())
    @JsonKey(name: 'streakBonus')
    StreakBonus streakBonus,
  }) = _DailyCheckIn;

  factory DailyCheckIn.fromJson(Map<String, dynamic> json) =>
      _$DailyCheckInFromJson(json);
}

@freezed
abstract class LoginReward with _$LoginReward {
  const factory LoginReward({
    @Default(0)
    @JsonKey(name: 'coinsEarned')
    int coinsEarned,
    @Default(0)
    @JsonKey(name: 'newBalance')
    int newBalance,
    @Default(false) bool duplicate,
  }) = _LoginReward;

  factory LoginReward.fromJson(Map<String, dynamic> json) =>
      _$LoginRewardFromJson(json);
}

@freezed
abstract class StreakBonus with _$StreakBonus {
  const factory StreakBonus({
    @Default(0)
    @JsonKey(name: 'coinsEarned')
    int coinsEarned,
  }) = _StreakBonus;

  factory StreakBonus.fromJson(Map<String, dynamic> json) =>
      _$StreakBonusFromJson(json);
}

@freezed
abstract class RewardCoupon with _$RewardCoupon {
  const factory RewardCoupon({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String image,
    @Default(0)
    @JsonKey(name: 'coinsRequired')
    int coinsRequired,
    @Default([])
    @JsonKey(name: 'inclusions')
    List<String> inclusions,
    @Default([])
    @JsonKey(name: 'exclusions')
    List<String> exclusions,
    @Default('')
    @JsonKey(name: 'durationText')
    String durationText,
    @Default(false)
    @JsonKey(name: 'canClaim')
    bool canClaim,
    @Default(false)
    @JsonKey(name: 'coinsCompleted')
    bool coinsCompleted,
  }) = _RewardCoupon;

  factory RewardCoupon.fromJson(Map<String, dynamic> json) =>
      _$RewardCouponFromJson(json);
}