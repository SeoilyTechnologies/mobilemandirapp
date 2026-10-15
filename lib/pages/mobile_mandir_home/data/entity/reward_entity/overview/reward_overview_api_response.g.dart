// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_overview_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardOverviewApiResponse _$RewardOverviewApiResponseFromJson(
  Map<String, dynamic> json,
) => _RewardOverviewApiResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? const RewardOverviewData()
      : RewardOverviewData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'],
);

Map<String, dynamic> _$RewardOverviewApiResponseToJson(
  _RewardOverviewApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_RewardOverviewData _$RewardOverviewDataFromJson(Map<String, dynamic> json) =>
    _RewardOverviewData(
      coins: (json['coins'] as num?)?.toInt() ?? 0,
      totalCoinsProgress: json['totalCoinsProgress'] == null
          ? const TotalCoinsProgress()
          : TotalCoinsProgress.fromJson(
              json['totalCoinsProgress'] as Map<String, dynamic>,
            ),
      dayStreak: json['dayStreak'] == null
          ? const DayStreak()
          : DayStreak.fromJson(json['dayStreak'] as Map<String, dynamic>),
      weeklyTracker: json['weeklyTracker'] == null
          ? const WeeklyTracker()
          : WeeklyTracker.fromJson(
              json['weeklyTracker'] as Map<String, dynamic>,
            ),
      tasks:
          (json['tasks'] as List<dynamic>?)
              ?.map((e) => RewardTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dailyCheckIn: json['dailyCheckIn'] == null
          ? const DailyCheckIn()
          : DailyCheckIn.fromJson(json['dailyCheckIn'] as Map<String, dynamic>),
      coupons:
          (json['coupons'] as List<dynamic>?)
              ?.map((e) => RewardCoupon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$RewardOverviewDataToJson(_RewardOverviewData instance) =>
    <String, dynamic>{
      'coins': instance.coins,
      'totalCoinsProgress': instance.totalCoinsProgress,
      'dayStreak': instance.dayStreak,
      'weeklyTracker': instance.weeklyTracker,
      'tasks': instance.tasks,
      'dailyCheckIn': instance.dailyCheckIn,
      'coupons': instance.coupons,
    };

_TotalCoinsProgress _$TotalCoinsProgressFromJson(Map<String, dynamic> json) =>
    _TotalCoinsProgress(
      current: (json['current'] as num?)?.toInt() ?? 0,
      nextRewardAt: (json['nextRewardAt'] as num?)?.toInt() ?? 0,
      remaining: (json['remaining'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TotalCoinsProgressToJson(_TotalCoinsProgress instance) =>
    <String, dynamic>{
      'current': instance.current,
      'nextRewardAt': instance.nextRewardAt,
      'remaining': instance.remaining,
    };

_DayStreak _$DayStreakFromJson(Map<String, dynamic> json) => _DayStreak(
  current: (json['current'] as num?)?.toInt() ?? 0,
  nextBonusAt: (json['nextBonusAt'] as num?)?.toInt() ?? 0,
  remainingForBonus: (json['remainingForBonus'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$DayStreakToJson(_DayStreak instance) =>
    <String, dynamic>{
      'current': instance.current,
      'nextBonusAt': instance.nextBonusAt,
      'remainingForBonus': instance.remainingForBonus,
    };

_WeeklyTracker _$WeeklyTrackerFromJson(Map<String, dynamic> json) =>
    _WeeklyTracker(
      days:
          (json['days'] as List<dynamic>?)
              ?.map((e) => WeeklyDay.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bonusMessage: json['bonusMessage'] as String? ?? '',
      weeklyBonusCoins: (json['weeklyBonusCoins'] as num?)?.toInt() ?? 0,
      canClaimWeeklyBonus: json['canClaimWeeklyBonus'] as bool? ?? false,
    );

Map<String, dynamic> _$WeeklyTrackerToJson(_WeeklyTracker instance) =>
    <String, dynamic>{
      'days': instance.days,
      'bonusMessage': instance.bonusMessage,
      'weeklyBonusCoins': instance.weeklyBonusCoins,
      'canClaimWeeklyBonus': instance.canClaimWeeklyBonus,
    };

_WeeklyDay _$WeeklyDayFromJson(Map<String, dynamic> json) => _WeeklyDay(
  day: json['day'] as String? ?? '',
  completed: json['completed'] as bool? ?? false,
  isToday: json['isToday'] as bool? ?? false,
);

Map<String, dynamic> _$WeeklyDayToJson(_WeeklyDay instance) =>
    <String, dynamic>{
      'day': instance.day,
      'completed': instance.completed,
      'isToday': instance.isToday,
    };

_RewardTask _$RewardTaskFromJson(Map<String, dynamic> json) => _RewardTask(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  activityType: json['activityType'] as String? ?? '',
  progress: json['progress'] == null
      ? const TaskProgress()
      : TaskProgress.fromJson(json['progress'] as Map<String, dynamic>),
  rewardCoins: (json['rewardCoins'] as num?)?.toInt() ?? 0,
  status: json['status'] as String? ?? '',
  cta: json['cta'] == null
      ? const TaskCTA()
      : TaskCTA.fromJson(json['cta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RewardTaskToJson(_RewardTask instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'activityType': instance.activityType,
      'progress': instance.progress,
      'rewardCoins': instance.rewardCoins,
      'status': instance.status,
      'cta': instance.cta,
    };

_TaskProgress _$TaskProgressFromJson(Map<String, dynamic> json) =>
    _TaskProgress(
      current: (json['current'] as num?)?.toInt() ?? 0,
      target: (json['target'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TaskProgressToJson(_TaskProgress instance) =>
    <String, dynamic>{'current': instance.current, 'target': instance.target};

_TaskCTA _$TaskCTAFromJson(Map<String, dynamic> json) => _TaskCTA(
  type: json['type'] as String? ?? '',
  label: json['label'] as String? ?? '',
  deepLink: json['deepLink'] as String? ?? '',
);

Map<String, dynamic> _$TaskCTAToJson(_TaskCTA instance) => <String, dynamic>{
  'type': instance.type,
  'label': instance.label,
  'deepLink': instance.deepLink,
};

_DailyCheckIn _$DailyCheckInFromJson(Map<String, dynamic> json) =>
    _DailyCheckIn(
      coinsEarned: (json['coinsEarned'] as num?)?.toInt() ?? 0,
      newBalance: (json['newBalance'] as num?)?.toInt() ?? 0,
      streak: (json['streak'] as num?)?.toInt() ?? 0,
      loginReward: json['loginReward'] == null
          ? const LoginReward()
          : LoginReward.fromJson(json['loginReward'] as Map<String, dynamic>),
      streakBonus: json['streakBonus'] == null
          ? const StreakBonus()
          : StreakBonus.fromJson(json['streakBonus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DailyCheckInToJson(_DailyCheckIn instance) =>
    <String, dynamic>{
      'coinsEarned': instance.coinsEarned,
      'newBalance': instance.newBalance,
      'streak': instance.streak,
      'loginReward': instance.loginReward,
      'streakBonus': instance.streakBonus,
    };

_LoginReward _$LoginRewardFromJson(Map<String, dynamic> json) => _LoginReward(
  coinsEarned: (json['coinsEarned'] as num?)?.toInt() ?? 0,
  newBalance: (json['newBalance'] as num?)?.toInt() ?? 0,
  duplicate: json['duplicate'] as bool? ?? false,
);

Map<String, dynamic> _$LoginRewardToJson(_LoginReward instance) =>
    <String, dynamic>{
      'coinsEarned': instance.coinsEarned,
      'newBalance': instance.newBalance,
      'duplicate': instance.duplicate,
    };

_StreakBonus _$StreakBonusFromJson(Map<String, dynamic> json) =>
    _StreakBonus(coinsEarned: (json['coinsEarned'] as num?)?.toInt() ?? 0);

Map<String, dynamic> _$StreakBonusToJson(_StreakBonus instance) =>
    <String, dynamic>{'coinsEarned': instance.coinsEarned};

_RewardCoupon _$RewardCouponFromJson(Map<String, dynamic> json) =>
    _RewardCoupon(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      coinsRequired: (json['coinsRequired'] as num?)?.toInt() ?? 0,
      inclusions:
          (json['inclusions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      exclusions:
          (json['exclusions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      durationText: json['durationText'] as String? ?? '',
      canClaim: json['canClaim'] as bool? ?? false,
      coinsCompleted: json['coinsCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$RewardCouponToJson(_RewardCoupon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'coinsRequired': instance.coinsRequired,
      'inclusions': instance.inclusions,
      'exclusions': instance.exclusions,
      'durationText': instance.durationText,
      'canClaim': instance.canClaim,
      'coinsCompleted': instance.coinsCompleted,
    };
