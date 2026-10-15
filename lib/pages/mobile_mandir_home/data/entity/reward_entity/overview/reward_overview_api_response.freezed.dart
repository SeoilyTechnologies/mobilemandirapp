// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_overview_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardOverviewApiResponse {

 bool get success; String get message;@JsonKey(name: 'data') RewardOverviewData get data;@JsonKey(name: 'errors') dynamic get errors;
/// Create a copy of RewardOverviewApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardOverviewApiResponseCopyWith<RewardOverviewApiResponse> get copyWith => _$RewardOverviewApiResponseCopyWithImpl<RewardOverviewApiResponse>(this as RewardOverviewApiResponse, _$identity);

  /// Serializes this RewardOverviewApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardOverviewApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'RewardOverviewApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $RewardOverviewApiResponseCopyWith<$Res>  {
  factory $RewardOverviewApiResponseCopyWith(RewardOverviewApiResponse value, $Res Function(RewardOverviewApiResponse) _then) = _$RewardOverviewApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message,@JsonKey(name: 'data') RewardOverviewData data,@JsonKey(name: 'errors') dynamic errors
});


$RewardOverviewDataCopyWith<$Res> get data;

}
/// @nodoc
class _$RewardOverviewApiResponseCopyWithImpl<$Res>
    implements $RewardOverviewApiResponseCopyWith<$Res> {
  _$RewardOverviewApiResponseCopyWithImpl(this._self, this._then);

  final RewardOverviewApiResponse _self;
  final $Res Function(RewardOverviewApiResponse) _then;

/// Create a copy of RewardOverviewApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RewardOverviewData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of RewardOverviewApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardOverviewDataCopyWith<$Res> get data {
  
  return $RewardOverviewDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RewardOverviewApiResponse].
extension RewardOverviewApiResponsePatterns on RewardOverviewApiResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardOverviewApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardOverviewApiResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardOverviewApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _RewardOverviewApiResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardOverviewApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RewardOverviewApiResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message, @JsonKey(name: 'data')  RewardOverviewData data, @JsonKey(name: 'errors')  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardOverviewApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message, @JsonKey(name: 'data')  RewardOverviewData data, @JsonKey(name: 'errors')  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _RewardOverviewApiResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message, @JsonKey(name: 'data')  RewardOverviewData data, @JsonKey(name: 'errors')  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _RewardOverviewApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardOverviewApiResponse implements RewardOverviewApiResponse {
  const _RewardOverviewApiResponse({this.success = false, this.message = '', @JsonKey(name: 'data') this.data = const RewardOverviewData(), @JsonKey(name: 'errors') this.errors});
  factory _RewardOverviewApiResponse.fromJson(Map<String, dynamic> json) => _$RewardOverviewApiResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override@JsonKey(name: 'data') final  RewardOverviewData data;
@override@JsonKey(name: 'errors') final  dynamic errors;

/// Create a copy of RewardOverviewApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardOverviewApiResponseCopyWith<_RewardOverviewApiResponse> get copyWith => __$RewardOverviewApiResponseCopyWithImpl<_RewardOverviewApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardOverviewApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardOverviewApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'RewardOverviewApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$RewardOverviewApiResponseCopyWith<$Res> implements $RewardOverviewApiResponseCopyWith<$Res> {
  factory _$RewardOverviewApiResponseCopyWith(_RewardOverviewApiResponse value, $Res Function(_RewardOverviewApiResponse) _then) = __$RewardOverviewApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message,@JsonKey(name: 'data') RewardOverviewData data,@JsonKey(name: 'errors') dynamic errors
});


@override $RewardOverviewDataCopyWith<$Res> get data;

}
/// @nodoc
class __$RewardOverviewApiResponseCopyWithImpl<$Res>
    implements _$RewardOverviewApiResponseCopyWith<$Res> {
  __$RewardOverviewApiResponseCopyWithImpl(this._self, this._then);

  final _RewardOverviewApiResponse _self;
  final $Res Function(_RewardOverviewApiResponse) _then;

/// Create a copy of RewardOverviewApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_RewardOverviewApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RewardOverviewData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of RewardOverviewApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardOverviewDataCopyWith<$Res> get data {
  
  return $RewardOverviewDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$RewardOverviewData {

 int get coins;@JsonKey(name: 'totalCoinsProgress') TotalCoinsProgress get totalCoinsProgress;@JsonKey(name: 'dayStreak') DayStreak get dayStreak;@JsonKey(name: 'weeklyTracker') WeeklyTracker get weeklyTracker;@JsonKey(name: 'tasks') List<RewardTask> get tasks;@JsonKey(name: 'dailyCheckIn') DailyCheckIn get dailyCheckIn;@JsonKey(name: 'coupons') List<RewardCoupon> get coupons;
/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardOverviewDataCopyWith<RewardOverviewData> get copyWith => _$RewardOverviewDataCopyWithImpl<RewardOverviewData>(this as RewardOverviewData, _$identity);

  /// Serializes this RewardOverviewData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardOverviewData&&(identical(other.coins, coins) || other.coins == coins)&&(identical(other.totalCoinsProgress, totalCoinsProgress) || other.totalCoinsProgress == totalCoinsProgress)&&(identical(other.dayStreak, dayStreak) || other.dayStreak == dayStreak)&&(identical(other.weeklyTracker, weeklyTracker) || other.weeklyTracker == weeklyTracker)&&const DeepCollectionEquality().equals(other.tasks, tasks)&&(identical(other.dailyCheckIn, dailyCheckIn) || other.dailyCheckIn == dailyCheckIn)&&const DeepCollectionEquality().equals(other.coupons, coupons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coins,totalCoinsProgress,dayStreak,weeklyTracker,const DeepCollectionEquality().hash(tasks),dailyCheckIn,const DeepCollectionEquality().hash(coupons));

@override
String toString() {
  return 'RewardOverviewData(coins: $coins, totalCoinsProgress: $totalCoinsProgress, dayStreak: $dayStreak, weeklyTracker: $weeklyTracker, tasks: $tasks, dailyCheckIn: $dailyCheckIn, coupons: $coupons)';
}


}

/// @nodoc
abstract mixin class $RewardOverviewDataCopyWith<$Res>  {
  factory $RewardOverviewDataCopyWith(RewardOverviewData value, $Res Function(RewardOverviewData) _then) = _$RewardOverviewDataCopyWithImpl;
@useResult
$Res call({
 int coins,@JsonKey(name: 'totalCoinsProgress') TotalCoinsProgress totalCoinsProgress,@JsonKey(name: 'dayStreak') DayStreak dayStreak,@JsonKey(name: 'weeklyTracker') WeeklyTracker weeklyTracker,@JsonKey(name: 'tasks') List<RewardTask> tasks,@JsonKey(name: 'dailyCheckIn') DailyCheckIn dailyCheckIn,@JsonKey(name: 'coupons') List<RewardCoupon> coupons
});


$TotalCoinsProgressCopyWith<$Res> get totalCoinsProgress;$DayStreakCopyWith<$Res> get dayStreak;$WeeklyTrackerCopyWith<$Res> get weeklyTracker;$DailyCheckInCopyWith<$Res> get dailyCheckIn;

}
/// @nodoc
class _$RewardOverviewDataCopyWithImpl<$Res>
    implements $RewardOverviewDataCopyWith<$Res> {
  _$RewardOverviewDataCopyWithImpl(this._self, this._then);

  final RewardOverviewData _self;
  final $Res Function(RewardOverviewData) _then;

/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coins = null,Object? totalCoinsProgress = null,Object? dayStreak = null,Object? weeklyTracker = null,Object? tasks = null,Object? dailyCheckIn = null,Object? coupons = null,}) {
  return _then(_self.copyWith(
coins: null == coins ? _self.coins : coins // ignore: cast_nullable_to_non_nullable
as int,totalCoinsProgress: null == totalCoinsProgress ? _self.totalCoinsProgress : totalCoinsProgress // ignore: cast_nullable_to_non_nullable
as TotalCoinsProgress,dayStreak: null == dayStreak ? _self.dayStreak : dayStreak // ignore: cast_nullable_to_non_nullable
as DayStreak,weeklyTracker: null == weeklyTracker ? _self.weeklyTracker : weeklyTracker // ignore: cast_nullable_to_non_nullable
as WeeklyTracker,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<RewardTask>,dailyCheckIn: null == dailyCheckIn ? _self.dailyCheckIn : dailyCheckIn // ignore: cast_nullable_to_non_nullable
as DailyCheckIn,coupons: null == coupons ? _self.coupons : coupons // ignore: cast_nullable_to_non_nullable
as List<RewardCoupon>,
  ));
}
/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TotalCoinsProgressCopyWith<$Res> get totalCoinsProgress {
  
  return $TotalCoinsProgressCopyWith<$Res>(_self.totalCoinsProgress, (value) {
    return _then(_self.copyWith(totalCoinsProgress: value));
  });
}/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayStreakCopyWith<$Res> get dayStreak {
  
  return $DayStreakCopyWith<$Res>(_self.dayStreak, (value) {
    return _then(_self.copyWith(dayStreak: value));
  });
}/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeeklyTrackerCopyWith<$Res> get weeklyTracker {
  
  return $WeeklyTrackerCopyWith<$Res>(_self.weeklyTracker, (value) {
    return _then(_self.copyWith(weeklyTracker: value));
  });
}/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyCheckInCopyWith<$Res> get dailyCheckIn {
  
  return $DailyCheckInCopyWith<$Res>(_self.dailyCheckIn, (value) {
    return _then(_self.copyWith(dailyCheckIn: value));
  });
}
}


/// Adds pattern-matching-related methods to [RewardOverviewData].
extension RewardOverviewDataPatterns on RewardOverviewData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardOverviewData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardOverviewData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardOverviewData value)  $default,){
final _that = this;
switch (_that) {
case _RewardOverviewData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardOverviewData value)?  $default,){
final _that = this;
switch (_that) {
case _RewardOverviewData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int coins, @JsonKey(name: 'totalCoinsProgress')  TotalCoinsProgress totalCoinsProgress, @JsonKey(name: 'dayStreak')  DayStreak dayStreak, @JsonKey(name: 'weeklyTracker')  WeeklyTracker weeklyTracker, @JsonKey(name: 'tasks')  List<RewardTask> tasks, @JsonKey(name: 'dailyCheckIn')  DailyCheckIn dailyCheckIn, @JsonKey(name: 'coupons')  List<RewardCoupon> coupons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardOverviewData() when $default != null:
return $default(_that.coins,_that.totalCoinsProgress,_that.dayStreak,_that.weeklyTracker,_that.tasks,_that.dailyCheckIn,_that.coupons);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int coins, @JsonKey(name: 'totalCoinsProgress')  TotalCoinsProgress totalCoinsProgress, @JsonKey(name: 'dayStreak')  DayStreak dayStreak, @JsonKey(name: 'weeklyTracker')  WeeklyTracker weeklyTracker, @JsonKey(name: 'tasks')  List<RewardTask> tasks, @JsonKey(name: 'dailyCheckIn')  DailyCheckIn dailyCheckIn, @JsonKey(name: 'coupons')  List<RewardCoupon> coupons)  $default,) {final _that = this;
switch (_that) {
case _RewardOverviewData():
return $default(_that.coins,_that.totalCoinsProgress,_that.dayStreak,_that.weeklyTracker,_that.tasks,_that.dailyCheckIn,_that.coupons);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int coins, @JsonKey(name: 'totalCoinsProgress')  TotalCoinsProgress totalCoinsProgress, @JsonKey(name: 'dayStreak')  DayStreak dayStreak, @JsonKey(name: 'weeklyTracker')  WeeklyTracker weeklyTracker, @JsonKey(name: 'tasks')  List<RewardTask> tasks, @JsonKey(name: 'dailyCheckIn')  DailyCheckIn dailyCheckIn, @JsonKey(name: 'coupons')  List<RewardCoupon> coupons)?  $default,) {final _that = this;
switch (_that) {
case _RewardOverviewData() when $default != null:
return $default(_that.coins,_that.totalCoinsProgress,_that.dayStreak,_that.weeklyTracker,_that.tasks,_that.dailyCheckIn,_that.coupons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardOverviewData implements RewardOverviewData {
  const _RewardOverviewData({this.coins = 0, @JsonKey(name: 'totalCoinsProgress') this.totalCoinsProgress = const TotalCoinsProgress(), @JsonKey(name: 'dayStreak') this.dayStreak = const DayStreak(), @JsonKey(name: 'weeklyTracker') this.weeklyTracker = const WeeklyTracker(), @JsonKey(name: 'tasks') final  List<RewardTask> tasks = const [], @JsonKey(name: 'dailyCheckIn') this.dailyCheckIn = const DailyCheckIn(), @JsonKey(name: 'coupons') final  List<RewardCoupon> coupons = const []}): _tasks = tasks,_coupons = coupons;
  factory _RewardOverviewData.fromJson(Map<String, dynamic> json) => _$RewardOverviewDataFromJson(json);

@override@JsonKey() final  int coins;
@override@JsonKey(name: 'totalCoinsProgress') final  TotalCoinsProgress totalCoinsProgress;
@override@JsonKey(name: 'dayStreak') final  DayStreak dayStreak;
@override@JsonKey(name: 'weeklyTracker') final  WeeklyTracker weeklyTracker;
 final  List<RewardTask> _tasks;
@override@JsonKey(name: 'tasks') List<RewardTask> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

@override@JsonKey(name: 'dailyCheckIn') final  DailyCheckIn dailyCheckIn;
 final  List<RewardCoupon> _coupons;
@override@JsonKey(name: 'coupons') List<RewardCoupon> get coupons {
  if (_coupons is EqualUnmodifiableListView) return _coupons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coupons);
}


/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardOverviewDataCopyWith<_RewardOverviewData> get copyWith => __$RewardOverviewDataCopyWithImpl<_RewardOverviewData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardOverviewDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardOverviewData&&(identical(other.coins, coins) || other.coins == coins)&&(identical(other.totalCoinsProgress, totalCoinsProgress) || other.totalCoinsProgress == totalCoinsProgress)&&(identical(other.dayStreak, dayStreak) || other.dayStreak == dayStreak)&&(identical(other.weeklyTracker, weeklyTracker) || other.weeklyTracker == weeklyTracker)&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&(identical(other.dailyCheckIn, dailyCheckIn) || other.dailyCheckIn == dailyCheckIn)&&const DeepCollectionEquality().equals(other._coupons, _coupons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coins,totalCoinsProgress,dayStreak,weeklyTracker,const DeepCollectionEquality().hash(_tasks),dailyCheckIn,const DeepCollectionEquality().hash(_coupons));

@override
String toString() {
  return 'RewardOverviewData(coins: $coins, totalCoinsProgress: $totalCoinsProgress, dayStreak: $dayStreak, weeklyTracker: $weeklyTracker, tasks: $tasks, dailyCheckIn: $dailyCheckIn, coupons: $coupons)';
}


}

/// @nodoc
abstract mixin class _$RewardOverviewDataCopyWith<$Res> implements $RewardOverviewDataCopyWith<$Res> {
  factory _$RewardOverviewDataCopyWith(_RewardOverviewData value, $Res Function(_RewardOverviewData) _then) = __$RewardOverviewDataCopyWithImpl;
@override @useResult
$Res call({
 int coins,@JsonKey(name: 'totalCoinsProgress') TotalCoinsProgress totalCoinsProgress,@JsonKey(name: 'dayStreak') DayStreak dayStreak,@JsonKey(name: 'weeklyTracker') WeeklyTracker weeklyTracker,@JsonKey(name: 'tasks') List<RewardTask> tasks,@JsonKey(name: 'dailyCheckIn') DailyCheckIn dailyCheckIn,@JsonKey(name: 'coupons') List<RewardCoupon> coupons
});


@override $TotalCoinsProgressCopyWith<$Res> get totalCoinsProgress;@override $DayStreakCopyWith<$Res> get dayStreak;@override $WeeklyTrackerCopyWith<$Res> get weeklyTracker;@override $DailyCheckInCopyWith<$Res> get dailyCheckIn;

}
/// @nodoc
class __$RewardOverviewDataCopyWithImpl<$Res>
    implements _$RewardOverviewDataCopyWith<$Res> {
  __$RewardOverviewDataCopyWithImpl(this._self, this._then);

  final _RewardOverviewData _self;
  final $Res Function(_RewardOverviewData) _then;

/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coins = null,Object? totalCoinsProgress = null,Object? dayStreak = null,Object? weeklyTracker = null,Object? tasks = null,Object? dailyCheckIn = null,Object? coupons = null,}) {
  return _then(_RewardOverviewData(
coins: null == coins ? _self.coins : coins // ignore: cast_nullable_to_non_nullable
as int,totalCoinsProgress: null == totalCoinsProgress ? _self.totalCoinsProgress : totalCoinsProgress // ignore: cast_nullable_to_non_nullable
as TotalCoinsProgress,dayStreak: null == dayStreak ? _self.dayStreak : dayStreak // ignore: cast_nullable_to_non_nullable
as DayStreak,weeklyTracker: null == weeklyTracker ? _self.weeklyTracker : weeklyTracker // ignore: cast_nullable_to_non_nullable
as WeeklyTracker,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<RewardTask>,dailyCheckIn: null == dailyCheckIn ? _self.dailyCheckIn : dailyCheckIn // ignore: cast_nullable_to_non_nullable
as DailyCheckIn,coupons: null == coupons ? _self._coupons : coupons // ignore: cast_nullable_to_non_nullable
as List<RewardCoupon>,
  ));
}

/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TotalCoinsProgressCopyWith<$Res> get totalCoinsProgress {
  
  return $TotalCoinsProgressCopyWith<$Res>(_self.totalCoinsProgress, (value) {
    return _then(_self.copyWith(totalCoinsProgress: value));
  });
}/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayStreakCopyWith<$Res> get dayStreak {
  
  return $DayStreakCopyWith<$Res>(_self.dayStreak, (value) {
    return _then(_self.copyWith(dayStreak: value));
  });
}/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeeklyTrackerCopyWith<$Res> get weeklyTracker {
  
  return $WeeklyTrackerCopyWith<$Res>(_self.weeklyTracker, (value) {
    return _then(_self.copyWith(weeklyTracker: value));
  });
}/// Create a copy of RewardOverviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyCheckInCopyWith<$Res> get dailyCheckIn {
  
  return $DailyCheckInCopyWith<$Res>(_self.dailyCheckIn, (value) {
    return _then(_self.copyWith(dailyCheckIn: value));
  });
}
}


/// @nodoc
mixin _$TotalCoinsProgress {

 int get current; int get nextRewardAt; int get remaining;
/// Create a copy of TotalCoinsProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TotalCoinsProgressCopyWith<TotalCoinsProgress> get copyWith => _$TotalCoinsProgressCopyWithImpl<TotalCoinsProgress>(this as TotalCoinsProgress, _$identity);

  /// Serializes this TotalCoinsProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TotalCoinsProgress&&(identical(other.current, current) || other.current == current)&&(identical(other.nextRewardAt, nextRewardAt) || other.nextRewardAt == nextRewardAt)&&(identical(other.remaining, remaining) || other.remaining == remaining));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,nextRewardAt,remaining);

@override
String toString() {
  return 'TotalCoinsProgress(current: $current, nextRewardAt: $nextRewardAt, remaining: $remaining)';
}


}

/// @nodoc
abstract mixin class $TotalCoinsProgressCopyWith<$Res>  {
  factory $TotalCoinsProgressCopyWith(TotalCoinsProgress value, $Res Function(TotalCoinsProgress) _then) = _$TotalCoinsProgressCopyWithImpl;
@useResult
$Res call({
 int current, int nextRewardAt, int remaining
});




}
/// @nodoc
class _$TotalCoinsProgressCopyWithImpl<$Res>
    implements $TotalCoinsProgressCopyWith<$Res> {
  _$TotalCoinsProgressCopyWithImpl(this._self, this._then);

  final TotalCoinsProgress _self;
  final $Res Function(TotalCoinsProgress) _then;

/// Create a copy of TotalCoinsProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? nextRewardAt = null,Object? remaining = null,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,nextRewardAt: null == nextRewardAt ? _self.nextRewardAt : nextRewardAt // ignore: cast_nullable_to_non_nullable
as int,remaining: null == remaining ? _self.remaining : remaining // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TotalCoinsProgress].
extension TotalCoinsProgressPatterns on TotalCoinsProgress {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TotalCoinsProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TotalCoinsProgress() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TotalCoinsProgress value)  $default,){
final _that = this;
switch (_that) {
case _TotalCoinsProgress():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TotalCoinsProgress value)?  $default,){
final _that = this;
switch (_that) {
case _TotalCoinsProgress() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int current,  int nextRewardAt,  int remaining)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TotalCoinsProgress() when $default != null:
return $default(_that.current,_that.nextRewardAt,_that.remaining);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int current,  int nextRewardAt,  int remaining)  $default,) {final _that = this;
switch (_that) {
case _TotalCoinsProgress():
return $default(_that.current,_that.nextRewardAt,_that.remaining);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int current,  int nextRewardAt,  int remaining)?  $default,) {final _that = this;
switch (_that) {
case _TotalCoinsProgress() when $default != null:
return $default(_that.current,_that.nextRewardAt,_that.remaining);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TotalCoinsProgress implements TotalCoinsProgress {
  const _TotalCoinsProgress({this.current = 0, this.nextRewardAt = 0, this.remaining = 0});
  factory _TotalCoinsProgress.fromJson(Map<String, dynamic> json) => _$TotalCoinsProgressFromJson(json);

@override@JsonKey() final  int current;
@override@JsonKey() final  int nextRewardAt;
@override@JsonKey() final  int remaining;

/// Create a copy of TotalCoinsProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TotalCoinsProgressCopyWith<_TotalCoinsProgress> get copyWith => __$TotalCoinsProgressCopyWithImpl<_TotalCoinsProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TotalCoinsProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TotalCoinsProgress&&(identical(other.current, current) || other.current == current)&&(identical(other.nextRewardAt, nextRewardAt) || other.nextRewardAt == nextRewardAt)&&(identical(other.remaining, remaining) || other.remaining == remaining));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,nextRewardAt,remaining);

@override
String toString() {
  return 'TotalCoinsProgress(current: $current, nextRewardAt: $nextRewardAt, remaining: $remaining)';
}


}

/// @nodoc
abstract mixin class _$TotalCoinsProgressCopyWith<$Res> implements $TotalCoinsProgressCopyWith<$Res> {
  factory _$TotalCoinsProgressCopyWith(_TotalCoinsProgress value, $Res Function(_TotalCoinsProgress) _then) = __$TotalCoinsProgressCopyWithImpl;
@override @useResult
$Res call({
 int current, int nextRewardAt, int remaining
});




}
/// @nodoc
class __$TotalCoinsProgressCopyWithImpl<$Res>
    implements _$TotalCoinsProgressCopyWith<$Res> {
  __$TotalCoinsProgressCopyWithImpl(this._self, this._then);

  final _TotalCoinsProgress _self;
  final $Res Function(_TotalCoinsProgress) _then;

/// Create a copy of TotalCoinsProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? nextRewardAt = null,Object? remaining = null,}) {
  return _then(_TotalCoinsProgress(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,nextRewardAt: null == nextRewardAt ? _self.nextRewardAt : nextRewardAt // ignore: cast_nullable_to_non_nullable
as int,remaining: null == remaining ? _self.remaining : remaining // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DayStreak {

 int get current; int get nextBonusAt; int get remainingForBonus;
/// Create a copy of DayStreak
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayStreakCopyWith<DayStreak> get copyWith => _$DayStreakCopyWithImpl<DayStreak>(this as DayStreak, _$identity);

  /// Serializes this DayStreak to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayStreak&&(identical(other.current, current) || other.current == current)&&(identical(other.nextBonusAt, nextBonusAt) || other.nextBonusAt == nextBonusAt)&&(identical(other.remainingForBonus, remainingForBonus) || other.remainingForBonus == remainingForBonus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,nextBonusAt,remainingForBonus);

@override
String toString() {
  return 'DayStreak(current: $current, nextBonusAt: $nextBonusAt, remainingForBonus: $remainingForBonus)';
}


}

/// @nodoc
abstract mixin class $DayStreakCopyWith<$Res>  {
  factory $DayStreakCopyWith(DayStreak value, $Res Function(DayStreak) _then) = _$DayStreakCopyWithImpl;
@useResult
$Res call({
 int current, int nextBonusAt, int remainingForBonus
});




}
/// @nodoc
class _$DayStreakCopyWithImpl<$Res>
    implements $DayStreakCopyWith<$Res> {
  _$DayStreakCopyWithImpl(this._self, this._then);

  final DayStreak _self;
  final $Res Function(DayStreak) _then;

/// Create a copy of DayStreak
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? nextBonusAt = null,Object? remainingForBonus = null,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,nextBonusAt: null == nextBonusAt ? _self.nextBonusAt : nextBonusAt // ignore: cast_nullable_to_non_nullable
as int,remainingForBonus: null == remainingForBonus ? _self.remainingForBonus : remainingForBonus // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DayStreak].
extension DayStreakPatterns on DayStreak {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayStreak value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayStreak() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayStreak value)  $default,){
final _that = this;
switch (_that) {
case _DayStreak():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayStreak value)?  $default,){
final _that = this;
switch (_that) {
case _DayStreak() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int current,  int nextBonusAt,  int remainingForBonus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayStreak() when $default != null:
return $default(_that.current,_that.nextBonusAt,_that.remainingForBonus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int current,  int nextBonusAt,  int remainingForBonus)  $default,) {final _that = this;
switch (_that) {
case _DayStreak():
return $default(_that.current,_that.nextBonusAt,_that.remainingForBonus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int current,  int nextBonusAt,  int remainingForBonus)?  $default,) {final _that = this;
switch (_that) {
case _DayStreak() when $default != null:
return $default(_that.current,_that.nextBonusAt,_that.remainingForBonus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayStreak implements DayStreak {
  const _DayStreak({this.current = 0, this.nextBonusAt = 0, this.remainingForBonus = 0});
  factory _DayStreak.fromJson(Map<String, dynamic> json) => _$DayStreakFromJson(json);

@override@JsonKey() final  int current;
@override@JsonKey() final  int nextBonusAt;
@override@JsonKey() final  int remainingForBonus;

/// Create a copy of DayStreak
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayStreakCopyWith<_DayStreak> get copyWith => __$DayStreakCopyWithImpl<_DayStreak>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayStreakToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayStreak&&(identical(other.current, current) || other.current == current)&&(identical(other.nextBonusAt, nextBonusAt) || other.nextBonusAt == nextBonusAt)&&(identical(other.remainingForBonus, remainingForBonus) || other.remainingForBonus == remainingForBonus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,nextBonusAt,remainingForBonus);

@override
String toString() {
  return 'DayStreak(current: $current, nextBonusAt: $nextBonusAt, remainingForBonus: $remainingForBonus)';
}


}

/// @nodoc
abstract mixin class _$DayStreakCopyWith<$Res> implements $DayStreakCopyWith<$Res> {
  factory _$DayStreakCopyWith(_DayStreak value, $Res Function(_DayStreak) _then) = __$DayStreakCopyWithImpl;
@override @useResult
$Res call({
 int current, int nextBonusAt, int remainingForBonus
});




}
/// @nodoc
class __$DayStreakCopyWithImpl<$Res>
    implements _$DayStreakCopyWith<$Res> {
  __$DayStreakCopyWithImpl(this._self, this._then);

  final _DayStreak _self;
  final $Res Function(_DayStreak) _then;

/// Create a copy of DayStreak
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? nextBonusAt = null,Object? remainingForBonus = null,}) {
  return _then(_DayStreak(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,nextBonusAt: null == nextBonusAt ? _self.nextBonusAt : nextBonusAt // ignore: cast_nullable_to_non_nullable
as int,remainingForBonus: null == remainingForBonus ? _self.remainingForBonus : remainingForBonus // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WeeklyTracker {

@JsonKey(name: 'days') List<WeeklyDay> get days;@JsonKey(name: 'bonusMessage') String get bonusMessage;@JsonKey(name: 'weeklyBonusCoins') int get weeklyBonusCoins;@JsonKey(name: 'canClaimWeeklyBonus') bool get canClaimWeeklyBonus;
/// Create a copy of WeeklyTracker
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyTrackerCopyWith<WeeklyTracker> get copyWith => _$WeeklyTrackerCopyWithImpl<WeeklyTracker>(this as WeeklyTracker, _$identity);

  /// Serializes this WeeklyTracker to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyTracker&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.bonusMessage, bonusMessage) || other.bonusMessage == bonusMessage)&&(identical(other.weeklyBonusCoins, weeklyBonusCoins) || other.weeklyBonusCoins == weeklyBonusCoins)&&(identical(other.canClaimWeeklyBonus, canClaimWeeklyBonus) || other.canClaimWeeklyBonus == canClaimWeeklyBonus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(days),bonusMessage,weeklyBonusCoins,canClaimWeeklyBonus);

@override
String toString() {
  return 'WeeklyTracker(days: $days, bonusMessage: $bonusMessage, weeklyBonusCoins: $weeklyBonusCoins, canClaimWeeklyBonus: $canClaimWeeklyBonus)';
}


}

/// @nodoc
abstract mixin class $WeeklyTrackerCopyWith<$Res>  {
  factory $WeeklyTrackerCopyWith(WeeklyTracker value, $Res Function(WeeklyTracker) _then) = _$WeeklyTrackerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'days') List<WeeklyDay> days,@JsonKey(name: 'bonusMessage') String bonusMessage,@JsonKey(name: 'weeklyBonusCoins') int weeklyBonusCoins,@JsonKey(name: 'canClaimWeeklyBonus') bool canClaimWeeklyBonus
});




}
/// @nodoc
class _$WeeklyTrackerCopyWithImpl<$Res>
    implements $WeeklyTrackerCopyWith<$Res> {
  _$WeeklyTrackerCopyWithImpl(this._self, this._then);

  final WeeklyTracker _self;
  final $Res Function(WeeklyTracker) _then;

/// Create a copy of WeeklyTracker
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? days = null,Object? bonusMessage = null,Object? weeklyBonusCoins = null,Object? canClaimWeeklyBonus = null,}) {
  return _then(_self.copyWith(
days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<WeeklyDay>,bonusMessage: null == bonusMessage ? _self.bonusMessage : bonusMessage // ignore: cast_nullable_to_non_nullable
as String,weeklyBonusCoins: null == weeklyBonusCoins ? _self.weeklyBonusCoins : weeklyBonusCoins // ignore: cast_nullable_to_non_nullable
as int,canClaimWeeklyBonus: null == canClaimWeeklyBonus ? _self.canClaimWeeklyBonus : canClaimWeeklyBonus // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyTracker].
extension WeeklyTrackerPatterns on WeeklyTracker {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyTracker value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyTracker() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyTracker value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyTracker():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyTracker value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyTracker() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'days')  List<WeeklyDay> days, @JsonKey(name: 'bonusMessage')  String bonusMessage, @JsonKey(name: 'weeklyBonusCoins')  int weeklyBonusCoins, @JsonKey(name: 'canClaimWeeklyBonus')  bool canClaimWeeklyBonus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyTracker() when $default != null:
return $default(_that.days,_that.bonusMessage,_that.weeklyBonusCoins,_that.canClaimWeeklyBonus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'days')  List<WeeklyDay> days, @JsonKey(name: 'bonusMessage')  String bonusMessage, @JsonKey(name: 'weeklyBonusCoins')  int weeklyBonusCoins, @JsonKey(name: 'canClaimWeeklyBonus')  bool canClaimWeeklyBonus)  $default,) {final _that = this;
switch (_that) {
case _WeeklyTracker():
return $default(_that.days,_that.bonusMessage,_that.weeklyBonusCoins,_that.canClaimWeeklyBonus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'days')  List<WeeklyDay> days, @JsonKey(name: 'bonusMessage')  String bonusMessage, @JsonKey(name: 'weeklyBonusCoins')  int weeklyBonusCoins, @JsonKey(name: 'canClaimWeeklyBonus')  bool canClaimWeeklyBonus)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyTracker() when $default != null:
return $default(_that.days,_that.bonusMessage,_that.weeklyBonusCoins,_that.canClaimWeeklyBonus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyTracker implements WeeklyTracker {
  const _WeeklyTracker({@JsonKey(name: 'days') final  List<WeeklyDay> days = const [], @JsonKey(name: 'bonusMessage') this.bonusMessage = '', @JsonKey(name: 'weeklyBonusCoins') this.weeklyBonusCoins = 0, @JsonKey(name: 'canClaimWeeklyBonus') this.canClaimWeeklyBonus = false}): _days = days;
  factory _WeeklyTracker.fromJson(Map<String, dynamic> json) => _$WeeklyTrackerFromJson(json);

 final  List<WeeklyDay> _days;
@override@JsonKey(name: 'days') List<WeeklyDay> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

@override@JsonKey(name: 'bonusMessage') final  String bonusMessage;
@override@JsonKey(name: 'weeklyBonusCoins') final  int weeklyBonusCoins;
@override@JsonKey(name: 'canClaimWeeklyBonus') final  bool canClaimWeeklyBonus;

/// Create a copy of WeeklyTracker
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyTrackerCopyWith<_WeeklyTracker> get copyWith => __$WeeklyTrackerCopyWithImpl<_WeeklyTracker>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyTrackerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyTracker&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.bonusMessage, bonusMessage) || other.bonusMessage == bonusMessage)&&(identical(other.weeklyBonusCoins, weeklyBonusCoins) || other.weeklyBonusCoins == weeklyBonusCoins)&&(identical(other.canClaimWeeklyBonus, canClaimWeeklyBonus) || other.canClaimWeeklyBonus == canClaimWeeklyBonus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_days),bonusMessage,weeklyBonusCoins,canClaimWeeklyBonus);

@override
String toString() {
  return 'WeeklyTracker(days: $days, bonusMessage: $bonusMessage, weeklyBonusCoins: $weeklyBonusCoins, canClaimWeeklyBonus: $canClaimWeeklyBonus)';
}


}

/// @nodoc
abstract mixin class _$WeeklyTrackerCopyWith<$Res> implements $WeeklyTrackerCopyWith<$Res> {
  factory _$WeeklyTrackerCopyWith(_WeeklyTracker value, $Res Function(_WeeklyTracker) _then) = __$WeeklyTrackerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'days') List<WeeklyDay> days,@JsonKey(name: 'bonusMessage') String bonusMessage,@JsonKey(name: 'weeklyBonusCoins') int weeklyBonusCoins,@JsonKey(name: 'canClaimWeeklyBonus') bool canClaimWeeklyBonus
});




}
/// @nodoc
class __$WeeklyTrackerCopyWithImpl<$Res>
    implements _$WeeklyTrackerCopyWith<$Res> {
  __$WeeklyTrackerCopyWithImpl(this._self, this._then);

  final _WeeklyTracker _self;
  final $Res Function(_WeeklyTracker) _then;

/// Create a copy of WeeklyTracker
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? days = null,Object? bonusMessage = null,Object? weeklyBonusCoins = null,Object? canClaimWeeklyBonus = null,}) {
  return _then(_WeeklyTracker(
days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<WeeklyDay>,bonusMessage: null == bonusMessage ? _self.bonusMessage : bonusMessage // ignore: cast_nullable_to_non_nullable
as String,weeklyBonusCoins: null == weeklyBonusCoins ? _self.weeklyBonusCoins : weeklyBonusCoins // ignore: cast_nullable_to_non_nullable
as int,canClaimWeeklyBonus: null == canClaimWeeklyBonus ? _self.canClaimWeeklyBonus : canClaimWeeklyBonus // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$WeeklyDay {

 String get day; bool get completed; bool get isToday;
/// Create a copy of WeeklyDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyDayCopyWith<WeeklyDay> get copyWith => _$WeeklyDayCopyWithImpl<WeeklyDay>(this as WeeklyDay, _$identity);

  /// Serializes this WeeklyDay to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyDay&&(identical(other.day, day) || other.day == day)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.isToday, isToday) || other.isToday == isToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,completed,isToday);

@override
String toString() {
  return 'WeeklyDay(day: $day, completed: $completed, isToday: $isToday)';
}


}

/// @nodoc
abstract mixin class $WeeklyDayCopyWith<$Res>  {
  factory $WeeklyDayCopyWith(WeeklyDay value, $Res Function(WeeklyDay) _then) = _$WeeklyDayCopyWithImpl;
@useResult
$Res call({
 String day, bool completed, bool isToday
});




}
/// @nodoc
class _$WeeklyDayCopyWithImpl<$Res>
    implements $WeeklyDayCopyWith<$Res> {
  _$WeeklyDayCopyWithImpl(this._self, this._then);

  final WeeklyDay _self;
  final $Res Function(WeeklyDay) _then;

/// Create a copy of WeeklyDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? completed = null,Object? isToday = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,isToday: null == isToday ? _self.isToday : isToday // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyDay].
extension WeeklyDayPatterns on WeeklyDay {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyDay() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyDay value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyDay():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyDay value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyDay() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String day,  bool completed,  bool isToday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyDay() when $default != null:
return $default(_that.day,_that.completed,_that.isToday);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String day,  bool completed,  bool isToday)  $default,) {final _that = this;
switch (_that) {
case _WeeklyDay():
return $default(_that.day,_that.completed,_that.isToday);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String day,  bool completed,  bool isToday)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyDay() when $default != null:
return $default(_that.day,_that.completed,_that.isToday);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyDay implements WeeklyDay {
  const _WeeklyDay({this.day = '', this.completed = false, this.isToday = false});
  factory _WeeklyDay.fromJson(Map<String, dynamic> json) => _$WeeklyDayFromJson(json);

@override@JsonKey() final  String day;
@override@JsonKey() final  bool completed;
@override@JsonKey() final  bool isToday;

/// Create a copy of WeeklyDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyDayCopyWith<_WeeklyDay> get copyWith => __$WeeklyDayCopyWithImpl<_WeeklyDay>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyDayToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyDay&&(identical(other.day, day) || other.day == day)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.isToday, isToday) || other.isToday == isToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,completed,isToday);

@override
String toString() {
  return 'WeeklyDay(day: $day, completed: $completed, isToday: $isToday)';
}


}

/// @nodoc
abstract mixin class _$WeeklyDayCopyWith<$Res> implements $WeeklyDayCopyWith<$Res> {
  factory _$WeeklyDayCopyWith(_WeeklyDay value, $Res Function(_WeeklyDay) _then) = __$WeeklyDayCopyWithImpl;
@override @useResult
$Res call({
 String day, bool completed, bool isToday
});




}
/// @nodoc
class __$WeeklyDayCopyWithImpl<$Res>
    implements _$WeeklyDayCopyWith<$Res> {
  __$WeeklyDayCopyWithImpl(this._self, this._then);

  final _WeeklyDay _self;
  final $Res Function(_WeeklyDay) _then;

/// Create a copy of WeeklyDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? completed = null,Object? isToday = null,}) {
  return _then(_WeeklyDay(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,isToday: null == isToday ? _self.isToday : isToday // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$RewardTask {

 String get id; String get title; String get activityType;@JsonKey(name: 'progress') TaskProgress get progress;@JsonKey(name: 'rewardCoins') int get rewardCoins; String get status;@JsonKey(name: 'cta') TaskCTA get cta;
/// Create a copy of RewardTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardTaskCopyWith<RewardTask> get copyWith => _$RewardTaskCopyWithImpl<RewardTask>(this as RewardTask, _$identity);

  /// Serializes this RewardTask to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardTask&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.rewardCoins, rewardCoins) || other.rewardCoins == rewardCoins)&&(identical(other.status, status) || other.status == status)&&(identical(other.cta, cta) || other.cta == cta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,activityType,progress,rewardCoins,status,cta);

@override
String toString() {
  return 'RewardTask(id: $id, title: $title, activityType: $activityType, progress: $progress, rewardCoins: $rewardCoins, status: $status, cta: $cta)';
}


}

/// @nodoc
abstract mixin class $RewardTaskCopyWith<$Res>  {
  factory $RewardTaskCopyWith(RewardTask value, $Res Function(RewardTask) _then) = _$RewardTaskCopyWithImpl;
@useResult
$Res call({
 String id, String title, String activityType,@JsonKey(name: 'progress') TaskProgress progress,@JsonKey(name: 'rewardCoins') int rewardCoins, String status,@JsonKey(name: 'cta') TaskCTA cta
});


$TaskProgressCopyWith<$Res> get progress;$TaskCTACopyWith<$Res> get cta;

}
/// @nodoc
class _$RewardTaskCopyWithImpl<$Res>
    implements $RewardTaskCopyWith<$Res> {
  _$RewardTaskCopyWithImpl(this._self, this._then);

  final RewardTask _self;
  final $Res Function(RewardTask) _then;

/// Create a copy of RewardTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? activityType = null,Object? progress = null,Object? rewardCoins = null,Object? status = null,Object? cta = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as TaskProgress,rewardCoins: null == rewardCoins ? _self.rewardCoins : rewardCoins // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cta: null == cta ? _self.cta : cta // ignore: cast_nullable_to_non_nullable
as TaskCTA,
  ));
}
/// Create a copy of RewardTask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskProgressCopyWith<$Res> get progress {
  
  return $TaskProgressCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}/// Create a copy of RewardTask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCTACopyWith<$Res> get cta {
  
  return $TaskCTACopyWith<$Res>(_self.cta, (value) {
    return _then(_self.copyWith(cta: value));
  });
}
}


/// Adds pattern-matching-related methods to [RewardTask].
extension RewardTaskPatterns on RewardTask {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardTask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardTask() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardTask value)  $default,){
final _that = this;
switch (_that) {
case _RewardTask():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardTask value)?  $default,){
final _that = this;
switch (_that) {
case _RewardTask() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String activityType, @JsonKey(name: 'progress')  TaskProgress progress, @JsonKey(name: 'rewardCoins')  int rewardCoins,  String status, @JsonKey(name: 'cta')  TaskCTA cta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardTask() when $default != null:
return $default(_that.id,_that.title,_that.activityType,_that.progress,_that.rewardCoins,_that.status,_that.cta);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String activityType, @JsonKey(name: 'progress')  TaskProgress progress, @JsonKey(name: 'rewardCoins')  int rewardCoins,  String status, @JsonKey(name: 'cta')  TaskCTA cta)  $default,) {final _that = this;
switch (_that) {
case _RewardTask():
return $default(_that.id,_that.title,_that.activityType,_that.progress,_that.rewardCoins,_that.status,_that.cta);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String activityType, @JsonKey(name: 'progress')  TaskProgress progress, @JsonKey(name: 'rewardCoins')  int rewardCoins,  String status, @JsonKey(name: 'cta')  TaskCTA cta)?  $default,) {final _that = this;
switch (_that) {
case _RewardTask() when $default != null:
return $default(_that.id,_that.title,_that.activityType,_that.progress,_that.rewardCoins,_that.status,_that.cta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardTask implements RewardTask {
  const _RewardTask({this.id = '', this.title = '', this.activityType = '', @JsonKey(name: 'progress') this.progress = const TaskProgress(), @JsonKey(name: 'rewardCoins') this.rewardCoins = 0, this.status = '', @JsonKey(name: 'cta') this.cta = const TaskCTA()});
  factory _RewardTask.fromJson(Map<String, dynamic> json) => _$RewardTaskFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String activityType;
@override@JsonKey(name: 'progress') final  TaskProgress progress;
@override@JsonKey(name: 'rewardCoins') final  int rewardCoins;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'cta') final  TaskCTA cta;

/// Create a copy of RewardTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardTaskCopyWith<_RewardTask> get copyWith => __$RewardTaskCopyWithImpl<_RewardTask>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardTaskToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardTask&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.rewardCoins, rewardCoins) || other.rewardCoins == rewardCoins)&&(identical(other.status, status) || other.status == status)&&(identical(other.cta, cta) || other.cta == cta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,activityType,progress,rewardCoins,status,cta);

@override
String toString() {
  return 'RewardTask(id: $id, title: $title, activityType: $activityType, progress: $progress, rewardCoins: $rewardCoins, status: $status, cta: $cta)';
}


}

/// @nodoc
abstract mixin class _$RewardTaskCopyWith<$Res> implements $RewardTaskCopyWith<$Res> {
  factory _$RewardTaskCopyWith(_RewardTask value, $Res Function(_RewardTask) _then) = __$RewardTaskCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String activityType,@JsonKey(name: 'progress') TaskProgress progress,@JsonKey(name: 'rewardCoins') int rewardCoins, String status,@JsonKey(name: 'cta') TaskCTA cta
});


@override $TaskProgressCopyWith<$Res> get progress;@override $TaskCTACopyWith<$Res> get cta;

}
/// @nodoc
class __$RewardTaskCopyWithImpl<$Res>
    implements _$RewardTaskCopyWith<$Res> {
  __$RewardTaskCopyWithImpl(this._self, this._then);

  final _RewardTask _self;
  final $Res Function(_RewardTask) _then;

/// Create a copy of RewardTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? activityType = null,Object? progress = null,Object? rewardCoins = null,Object? status = null,Object? cta = null,}) {
  return _then(_RewardTask(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as TaskProgress,rewardCoins: null == rewardCoins ? _self.rewardCoins : rewardCoins // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cta: null == cta ? _self.cta : cta // ignore: cast_nullable_to_non_nullable
as TaskCTA,
  ));
}

/// Create a copy of RewardTask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskProgressCopyWith<$Res> get progress {
  
  return $TaskProgressCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}/// Create a copy of RewardTask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCTACopyWith<$Res> get cta {
  
  return $TaskCTACopyWith<$Res>(_self.cta, (value) {
    return _then(_self.copyWith(cta: value));
  });
}
}


/// @nodoc
mixin _$TaskProgress {

 int get current; int get target;
/// Create a copy of TaskProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskProgressCopyWith<TaskProgress> get copyWith => _$TaskProgressCopyWithImpl<TaskProgress>(this as TaskProgress, _$identity);

  /// Serializes this TaskProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskProgress&&(identical(other.current, current) || other.current == current)&&(identical(other.target, target) || other.target == target));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,target);

@override
String toString() {
  return 'TaskProgress(current: $current, target: $target)';
}


}

/// @nodoc
abstract mixin class $TaskProgressCopyWith<$Res>  {
  factory $TaskProgressCopyWith(TaskProgress value, $Res Function(TaskProgress) _then) = _$TaskProgressCopyWithImpl;
@useResult
$Res call({
 int current, int target
});




}
/// @nodoc
class _$TaskProgressCopyWithImpl<$Res>
    implements $TaskProgressCopyWith<$Res> {
  _$TaskProgressCopyWithImpl(this._self, this._then);

  final TaskProgress _self;
  final $Res Function(TaskProgress) _then;

/// Create a copy of TaskProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? target = null,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskProgress].
extension TaskProgressPatterns on TaskProgress {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskProgress() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskProgress value)  $default,){
final _that = this;
switch (_that) {
case _TaskProgress():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskProgress value)?  $default,){
final _that = this;
switch (_that) {
case _TaskProgress() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int current,  int target)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskProgress() when $default != null:
return $default(_that.current,_that.target);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int current,  int target)  $default,) {final _that = this;
switch (_that) {
case _TaskProgress():
return $default(_that.current,_that.target);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int current,  int target)?  $default,) {final _that = this;
switch (_that) {
case _TaskProgress() when $default != null:
return $default(_that.current,_that.target);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskProgress implements TaskProgress {
  const _TaskProgress({this.current = 0, this.target = 0});
  factory _TaskProgress.fromJson(Map<String, dynamic> json) => _$TaskProgressFromJson(json);

@override@JsonKey() final  int current;
@override@JsonKey() final  int target;

/// Create a copy of TaskProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskProgressCopyWith<_TaskProgress> get copyWith => __$TaskProgressCopyWithImpl<_TaskProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskProgress&&(identical(other.current, current) || other.current == current)&&(identical(other.target, target) || other.target == target));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,target);

@override
String toString() {
  return 'TaskProgress(current: $current, target: $target)';
}


}

/// @nodoc
abstract mixin class _$TaskProgressCopyWith<$Res> implements $TaskProgressCopyWith<$Res> {
  factory _$TaskProgressCopyWith(_TaskProgress value, $Res Function(_TaskProgress) _then) = __$TaskProgressCopyWithImpl;
@override @useResult
$Res call({
 int current, int target
});




}
/// @nodoc
class __$TaskProgressCopyWithImpl<$Res>
    implements _$TaskProgressCopyWith<$Res> {
  __$TaskProgressCopyWithImpl(this._self, this._then);

  final _TaskProgress _self;
  final $Res Function(_TaskProgress) _then;

/// Create a copy of TaskProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? target = null,}) {
  return _then(_TaskProgress(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TaskCTA {

 String get type; String get label;@JsonKey(name: 'deepLink') String get deepLink;
/// Create a copy of TaskCTA
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskCTACopyWith<TaskCTA> get copyWith => _$TaskCTACopyWithImpl<TaskCTA>(this as TaskCTA, _$identity);

  /// Serializes this TaskCTA to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskCTA&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,label,deepLink);

@override
String toString() {
  return 'TaskCTA(type: $type, label: $label, deepLink: $deepLink)';
}


}

/// @nodoc
abstract mixin class $TaskCTACopyWith<$Res>  {
  factory $TaskCTACopyWith(TaskCTA value, $Res Function(TaskCTA) _then) = _$TaskCTACopyWithImpl;
@useResult
$Res call({
 String type, String label,@JsonKey(name: 'deepLink') String deepLink
});




}
/// @nodoc
class _$TaskCTACopyWithImpl<$Res>
    implements $TaskCTACopyWith<$Res> {
  _$TaskCTACopyWithImpl(this._self, this._then);

  final TaskCTA _self;
  final $Res Function(TaskCTA) _then;

/// Create a copy of TaskCTA
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? label = null,Object? deepLink = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,deepLink: null == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskCTA].
extension TaskCTAPatterns on TaskCTA {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskCTA value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskCTA() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskCTA value)  $default,){
final _that = this;
switch (_that) {
case _TaskCTA():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskCTA value)?  $default,){
final _that = this;
switch (_that) {
case _TaskCTA() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String label, @JsonKey(name: 'deepLink')  String deepLink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskCTA() when $default != null:
return $default(_that.type,_that.label,_that.deepLink);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String label, @JsonKey(name: 'deepLink')  String deepLink)  $default,) {final _that = this;
switch (_that) {
case _TaskCTA():
return $default(_that.type,_that.label,_that.deepLink);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String label, @JsonKey(name: 'deepLink')  String deepLink)?  $default,) {final _that = this;
switch (_that) {
case _TaskCTA() when $default != null:
return $default(_that.type,_that.label,_that.deepLink);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskCTA implements TaskCTA {
  const _TaskCTA({this.type = '', this.label = '', @JsonKey(name: 'deepLink') this.deepLink = ''});
  factory _TaskCTA.fromJson(Map<String, dynamic> json) => _$TaskCTAFromJson(json);

@override@JsonKey() final  String type;
@override@JsonKey() final  String label;
@override@JsonKey(name: 'deepLink') final  String deepLink;

/// Create a copy of TaskCTA
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskCTACopyWith<_TaskCTA> get copyWith => __$TaskCTACopyWithImpl<_TaskCTA>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskCTAToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskCTA&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,label,deepLink);

@override
String toString() {
  return 'TaskCTA(type: $type, label: $label, deepLink: $deepLink)';
}


}

/// @nodoc
abstract mixin class _$TaskCTACopyWith<$Res> implements $TaskCTACopyWith<$Res> {
  factory _$TaskCTACopyWith(_TaskCTA value, $Res Function(_TaskCTA) _then) = __$TaskCTACopyWithImpl;
@override @useResult
$Res call({
 String type, String label,@JsonKey(name: 'deepLink') String deepLink
});




}
/// @nodoc
class __$TaskCTACopyWithImpl<$Res>
    implements _$TaskCTACopyWith<$Res> {
  __$TaskCTACopyWithImpl(this._self, this._then);

  final _TaskCTA _self;
  final $Res Function(_TaskCTA) _then;

/// Create a copy of TaskCTA
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? label = null,Object? deepLink = null,}) {
  return _then(_TaskCTA(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,deepLink: null == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DailyCheckIn {

@JsonKey(name: 'coinsEarned') int get coinsEarned;@JsonKey(name: 'newBalance') int get newBalance; int get streak;@JsonKey(name: 'loginReward') LoginReward get loginReward;@JsonKey(name: 'streakBonus') StreakBonus get streakBonus;
/// Create a copy of DailyCheckIn
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyCheckInCopyWith<DailyCheckIn> get copyWith => _$DailyCheckInCopyWithImpl<DailyCheckIn>(this as DailyCheckIn, _$identity);

  /// Serializes this DailyCheckIn to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyCheckIn&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&(identical(other.newBalance, newBalance) || other.newBalance == newBalance)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.loginReward, loginReward) || other.loginReward == loginReward)&&(identical(other.streakBonus, streakBonus) || other.streakBonus == streakBonus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coinsEarned,newBalance,streak,loginReward,streakBonus);

@override
String toString() {
  return 'DailyCheckIn(coinsEarned: $coinsEarned, newBalance: $newBalance, streak: $streak, loginReward: $loginReward, streakBonus: $streakBonus)';
}


}

/// @nodoc
abstract mixin class $DailyCheckInCopyWith<$Res>  {
  factory $DailyCheckInCopyWith(DailyCheckIn value, $Res Function(DailyCheckIn) _then) = _$DailyCheckInCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'coinsEarned') int coinsEarned,@JsonKey(name: 'newBalance') int newBalance, int streak,@JsonKey(name: 'loginReward') LoginReward loginReward,@JsonKey(name: 'streakBonus') StreakBonus streakBonus
});


$LoginRewardCopyWith<$Res> get loginReward;$StreakBonusCopyWith<$Res> get streakBonus;

}
/// @nodoc
class _$DailyCheckInCopyWithImpl<$Res>
    implements $DailyCheckInCopyWith<$Res> {
  _$DailyCheckInCopyWithImpl(this._self, this._then);

  final DailyCheckIn _self;
  final $Res Function(DailyCheckIn) _then;

/// Create a copy of DailyCheckIn
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coinsEarned = null,Object? newBalance = null,Object? streak = null,Object? loginReward = null,Object? streakBonus = null,}) {
  return _then(_self.copyWith(
coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,newBalance: null == newBalance ? _self.newBalance : newBalance // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,loginReward: null == loginReward ? _self.loginReward : loginReward // ignore: cast_nullable_to_non_nullable
as LoginReward,streakBonus: null == streakBonus ? _self.streakBonus : streakBonus // ignore: cast_nullable_to_non_nullable
as StreakBonus,
  ));
}
/// Create a copy of DailyCheckIn
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginRewardCopyWith<$Res> get loginReward {
  
  return $LoginRewardCopyWith<$Res>(_self.loginReward, (value) {
    return _then(_self.copyWith(loginReward: value));
  });
}/// Create a copy of DailyCheckIn
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreakBonusCopyWith<$Res> get streakBonus {
  
  return $StreakBonusCopyWith<$Res>(_self.streakBonus, (value) {
    return _then(_self.copyWith(streakBonus: value));
  });
}
}


/// Adds pattern-matching-related methods to [DailyCheckIn].
extension DailyCheckInPatterns on DailyCheckIn {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyCheckIn value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyCheckIn() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyCheckIn value)  $default,){
final _that = this;
switch (_that) {
case _DailyCheckIn():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyCheckIn value)?  $default,){
final _that = this;
switch (_that) {
case _DailyCheckIn() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'coinsEarned')  int coinsEarned, @JsonKey(name: 'newBalance')  int newBalance,  int streak, @JsonKey(name: 'loginReward')  LoginReward loginReward, @JsonKey(name: 'streakBonus')  StreakBonus streakBonus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyCheckIn() when $default != null:
return $default(_that.coinsEarned,_that.newBalance,_that.streak,_that.loginReward,_that.streakBonus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'coinsEarned')  int coinsEarned, @JsonKey(name: 'newBalance')  int newBalance,  int streak, @JsonKey(name: 'loginReward')  LoginReward loginReward, @JsonKey(name: 'streakBonus')  StreakBonus streakBonus)  $default,) {final _that = this;
switch (_that) {
case _DailyCheckIn():
return $default(_that.coinsEarned,_that.newBalance,_that.streak,_that.loginReward,_that.streakBonus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'coinsEarned')  int coinsEarned, @JsonKey(name: 'newBalance')  int newBalance,  int streak, @JsonKey(name: 'loginReward')  LoginReward loginReward, @JsonKey(name: 'streakBonus')  StreakBonus streakBonus)?  $default,) {final _that = this;
switch (_that) {
case _DailyCheckIn() when $default != null:
return $default(_that.coinsEarned,_that.newBalance,_that.streak,_that.loginReward,_that.streakBonus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyCheckIn implements DailyCheckIn {
  const _DailyCheckIn({@JsonKey(name: 'coinsEarned') this.coinsEarned = 0, @JsonKey(name: 'newBalance') this.newBalance = 0, this.streak = 0, @JsonKey(name: 'loginReward') this.loginReward = const LoginReward(), @JsonKey(name: 'streakBonus') this.streakBonus = const StreakBonus()});
  factory _DailyCheckIn.fromJson(Map<String, dynamic> json) => _$DailyCheckInFromJson(json);

@override@JsonKey(name: 'coinsEarned') final  int coinsEarned;
@override@JsonKey(name: 'newBalance') final  int newBalance;
@override@JsonKey() final  int streak;
@override@JsonKey(name: 'loginReward') final  LoginReward loginReward;
@override@JsonKey(name: 'streakBonus') final  StreakBonus streakBonus;

/// Create a copy of DailyCheckIn
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyCheckInCopyWith<_DailyCheckIn> get copyWith => __$DailyCheckInCopyWithImpl<_DailyCheckIn>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyCheckInToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyCheckIn&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&(identical(other.newBalance, newBalance) || other.newBalance == newBalance)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.loginReward, loginReward) || other.loginReward == loginReward)&&(identical(other.streakBonus, streakBonus) || other.streakBonus == streakBonus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coinsEarned,newBalance,streak,loginReward,streakBonus);

@override
String toString() {
  return 'DailyCheckIn(coinsEarned: $coinsEarned, newBalance: $newBalance, streak: $streak, loginReward: $loginReward, streakBonus: $streakBonus)';
}


}

/// @nodoc
abstract mixin class _$DailyCheckInCopyWith<$Res> implements $DailyCheckInCopyWith<$Res> {
  factory _$DailyCheckInCopyWith(_DailyCheckIn value, $Res Function(_DailyCheckIn) _then) = __$DailyCheckInCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'coinsEarned') int coinsEarned,@JsonKey(name: 'newBalance') int newBalance, int streak,@JsonKey(name: 'loginReward') LoginReward loginReward,@JsonKey(name: 'streakBonus') StreakBonus streakBonus
});


@override $LoginRewardCopyWith<$Res> get loginReward;@override $StreakBonusCopyWith<$Res> get streakBonus;

}
/// @nodoc
class __$DailyCheckInCopyWithImpl<$Res>
    implements _$DailyCheckInCopyWith<$Res> {
  __$DailyCheckInCopyWithImpl(this._self, this._then);

  final _DailyCheckIn _self;
  final $Res Function(_DailyCheckIn) _then;

/// Create a copy of DailyCheckIn
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coinsEarned = null,Object? newBalance = null,Object? streak = null,Object? loginReward = null,Object? streakBonus = null,}) {
  return _then(_DailyCheckIn(
coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,newBalance: null == newBalance ? _self.newBalance : newBalance // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,loginReward: null == loginReward ? _self.loginReward : loginReward // ignore: cast_nullable_to_non_nullable
as LoginReward,streakBonus: null == streakBonus ? _self.streakBonus : streakBonus // ignore: cast_nullable_to_non_nullable
as StreakBonus,
  ));
}

/// Create a copy of DailyCheckIn
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginRewardCopyWith<$Res> get loginReward {
  
  return $LoginRewardCopyWith<$Res>(_self.loginReward, (value) {
    return _then(_self.copyWith(loginReward: value));
  });
}/// Create a copy of DailyCheckIn
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreakBonusCopyWith<$Res> get streakBonus {
  
  return $StreakBonusCopyWith<$Res>(_self.streakBonus, (value) {
    return _then(_self.copyWith(streakBonus: value));
  });
}
}


/// @nodoc
mixin _$LoginReward {

@JsonKey(name: 'coinsEarned') int get coinsEarned;@JsonKey(name: 'newBalance') int get newBalance; bool get duplicate;
/// Create a copy of LoginReward
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRewardCopyWith<LoginReward> get copyWith => _$LoginRewardCopyWithImpl<LoginReward>(this as LoginReward, _$identity);

  /// Serializes this LoginReward to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginReward&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&(identical(other.newBalance, newBalance) || other.newBalance == newBalance)&&(identical(other.duplicate, duplicate) || other.duplicate == duplicate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coinsEarned,newBalance,duplicate);

@override
String toString() {
  return 'LoginReward(coinsEarned: $coinsEarned, newBalance: $newBalance, duplicate: $duplicate)';
}


}

/// @nodoc
abstract mixin class $LoginRewardCopyWith<$Res>  {
  factory $LoginRewardCopyWith(LoginReward value, $Res Function(LoginReward) _then) = _$LoginRewardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'coinsEarned') int coinsEarned,@JsonKey(name: 'newBalance') int newBalance, bool duplicate
});




}
/// @nodoc
class _$LoginRewardCopyWithImpl<$Res>
    implements $LoginRewardCopyWith<$Res> {
  _$LoginRewardCopyWithImpl(this._self, this._then);

  final LoginReward _self;
  final $Res Function(LoginReward) _then;

/// Create a copy of LoginReward
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coinsEarned = null,Object? newBalance = null,Object? duplicate = null,}) {
  return _then(_self.copyWith(
coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,newBalance: null == newBalance ? _self.newBalance : newBalance // ignore: cast_nullable_to_non_nullable
as int,duplicate: null == duplicate ? _self.duplicate : duplicate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginReward].
extension LoginRewardPatterns on LoginReward {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginReward value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginReward() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginReward value)  $default,){
final _that = this;
switch (_that) {
case _LoginReward():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginReward value)?  $default,){
final _that = this;
switch (_that) {
case _LoginReward() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'coinsEarned')  int coinsEarned, @JsonKey(name: 'newBalance')  int newBalance,  bool duplicate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginReward() when $default != null:
return $default(_that.coinsEarned,_that.newBalance,_that.duplicate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'coinsEarned')  int coinsEarned, @JsonKey(name: 'newBalance')  int newBalance,  bool duplicate)  $default,) {final _that = this;
switch (_that) {
case _LoginReward():
return $default(_that.coinsEarned,_that.newBalance,_that.duplicate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'coinsEarned')  int coinsEarned, @JsonKey(name: 'newBalance')  int newBalance,  bool duplicate)?  $default,) {final _that = this;
switch (_that) {
case _LoginReward() when $default != null:
return $default(_that.coinsEarned,_that.newBalance,_that.duplicate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginReward implements LoginReward {
  const _LoginReward({@JsonKey(name: 'coinsEarned') this.coinsEarned = 0, @JsonKey(name: 'newBalance') this.newBalance = 0, this.duplicate = false});
  factory _LoginReward.fromJson(Map<String, dynamic> json) => _$LoginRewardFromJson(json);

@override@JsonKey(name: 'coinsEarned') final  int coinsEarned;
@override@JsonKey(name: 'newBalance') final  int newBalance;
@override@JsonKey() final  bool duplicate;

/// Create a copy of LoginReward
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRewardCopyWith<_LoginReward> get copyWith => __$LoginRewardCopyWithImpl<_LoginReward>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginRewardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginReward&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&(identical(other.newBalance, newBalance) || other.newBalance == newBalance)&&(identical(other.duplicate, duplicate) || other.duplicate == duplicate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coinsEarned,newBalance,duplicate);

@override
String toString() {
  return 'LoginReward(coinsEarned: $coinsEarned, newBalance: $newBalance, duplicate: $duplicate)';
}


}

/// @nodoc
abstract mixin class _$LoginRewardCopyWith<$Res> implements $LoginRewardCopyWith<$Res> {
  factory _$LoginRewardCopyWith(_LoginReward value, $Res Function(_LoginReward) _then) = __$LoginRewardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'coinsEarned') int coinsEarned,@JsonKey(name: 'newBalance') int newBalance, bool duplicate
});




}
/// @nodoc
class __$LoginRewardCopyWithImpl<$Res>
    implements _$LoginRewardCopyWith<$Res> {
  __$LoginRewardCopyWithImpl(this._self, this._then);

  final _LoginReward _self;
  final $Res Function(_LoginReward) _then;

/// Create a copy of LoginReward
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coinsEarned = null,Object? newBalance = null,Object? duplicate = null,}) {
  return _then(_LoginReward(
coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,newBalance: null == newBalance ? _self.newBalance : newBalance // ignore: cast_nullable_to_non_nullable
as int,duplicate: null == duplicate ? _self.duplicate : duplicate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$StreakBonus {

@JsonKey(name: 'coinsEarned') int get coinsEarned;
/// Create a copy of StreakBonus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreakBonusCopyWith<StreakBonus> get copyWith => _$StreakBonusCopyWithImpl<StreakBonus>(this as StreakBonus, _$identity);

  /// Serializes this StreakBonus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreakBonus&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coinsEarned);

@override
String toString() {
  return 'StreakBonus(coinsEarned: $coinsEarned)';
}


}

/// @nodoc
abstract mixin class $StreakBonusCopyWith<$Res>  {
  factory $StreakBonusCopyWith(StreakBonus value, $Res Function(StreakBonus) _then) = _$StreakBonusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'coinsEarned') int coinsEarned
});




}
/// @nodoc
class _$StreakBonusCopyWithImpl<$Res>
    implements $StreakBonusCopyWith<$Res> {
  _$StreakBonusCopyWithImpl(this._self, this._then);

  final StreakBonus _self;
  final $Res Function(StreakBonus) _then;

/// Create a copy of StreakBonus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coinsEarned = null,}) {
  return _then(_self.copyWith(
coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StreakBonus].
extension StreakBonusPatterns on StreakBonus {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreakBonus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreakBonus() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreakBonus value)  $default,){
final _that = this;
switch (_that) {
case _StreakBonus():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreakBonus value)?  $default,){
final _that = this;
switch (_that) {
case _StreakBonus() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'coinsEarned')  int coinsEarned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreakBonus() when $default != null:
return $default(_that.coinsEarned);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'coinsEarned')  int coinsEarned)  $default,) {final _that = this;
switch (_that) {
case _StreakBonus():
return $default(_that.coinsEarned);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'coinsEarned')  int coinsEarned)?  $default,) {final _that = this;
switch (_that) {
case _StreakBonus() when $default != null:
return $default(_that.coinsEarned);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreakBonus implements StreakBonus {
  const _StreakBonus({@JsonKey(name: 'coinsEarned') this.coinsEarned = 0});
  factory _StreakBonus.fromJson(Map<String, dynamic> json) => _$StreakBonusFromJson(json);

@override@JsonKey(name: 'coinsEarned') final  int coinsEarned;

/// Create a copy of StreakBonus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreakBonusCopyWith<_StreakBonus> get copyWith => __$StreakBonusCopyWithImpl<_StreakBonus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreakBonusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreakBonus&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coinsEarned);

@override
String toString() {
  return 'StreakBonus(coinsEarned: $coinsEarned)';
}


}

/// @nodoc
abstract mixin class _$StreakBonusCopyWith<$Res> implements $StreakBonusCopyWith<$Res> {
  factory _$StreakBonusCopyWith(_StreakBonus value, $Res Function(_StreakBonus) _then) = __$StreakBonusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'coinsEarned') int coinsEarned
});




}
/// @nodoc
class __$StreakBonusCopyWithImpl<$Res>
    implements _$StreakBonusCopyWith<$Res> {
  __$StreakBonusCopyWithImpl(this._self, this._then);

  final _StreakBonus _self;
  final $Res Function(_StreakBonus) _then;

/// Create a copy of StreakBonus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coinsEarned = null,}) {
  return _then(_StreakBonus(
coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RewardCoupon {

 String get id; String get title; String get description; String get image;@JsonKey(name: 'coinsRequired') int get coinsRequired;@JsonKey(name: 'inclusions') List<String> get inclusions;@JsonKey(name: 'exclusions') List<String> get exclusions;@JsonKey(name: 'durationText') String get durationText;@JsonKey(name: 'canClaim') bool get canClaim;@JsonKey(name: 'coinsCompleted') bool get coinsCompleted;
/// Create a copy of RewardCoupon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardCouponCopyWith<RewardCoupon> get copyWith => _$RewardCouponCopyWithImpl<RewardCoupon>(this as RewardCoupon, _$identity);

  /// Serializes this RewardCoupon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardCoupon&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.coinsRequired, coinsRequired) || other.coinsRequired == coinsRequired)&&const DeepCollectionEquality().equals(other.inclusions, inclusions)&&const DeepCollectionEquality().equals(other.exclusions, exclusions)&&(identical(other.durationText, durationText) || other.durationText == durationText)&&(identical(other.canClaim, canClaim) || other.canClaim == canClaim)&&(identical(other.coinsCompleted, coinsCompleted) || other.coinsCompleted == coinsCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,image,coinsRequired,const DeepCollectionEquality().hash(inclusions),const DeepCollectionEquality().hash(exclusions),durationText,canClaim,coinsCompleted);

@override
String toString() {
  return 'RewardCoupon(id: $id, title: $title, description: $description, image: $image, coinsRequired: $coinsRequired, inclusions: $inclusions, exclusions: $exclusions, durationText: $durationText, canClaim: $canClaim, coinsCompleted: $coinsCompleted)';
}


}

/// @nodoc
abstract mixin class $RewardCouponCopyWith<$Res>  {
  factory $RewardCouponCopyWith(RewardCoupon value, $Res Function(RewardCoupon) _then) = _$RewardCouponCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String image,@JsonKey(name: 'coinsRequired') int coinsRequired,@JsonKey(name: 'inclusions') List<String> inclusions,@JsonKey(name: 'exclusions') List<String> exclusions,@JsonKey(name: 'durationText') String durationText,@JsonKey(name: 'canClaim') bool canClaim,@JsonKey(name: 'coinsCompleted') bool coinsCompleted
});




}
/// @nodoc
class _$RewardCouponCopyWithImpl<$Res>
    implements $RewardCouponCopyWith<$Res> {
  _$RewardCouponCopyWithImpl(this._self, this._then);

  final RewardCoupon _self;
  final $Res Function(RewardCoupon) _then;

/// Create a copy of RewardCoupon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? image = null,Object? coinsRequired = null,Object? inclusions = null,Object? exclusions = null,Object? durationText = null,Object? canClaim = null,Object? coinsCompleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,coinsRequired: null == coinsRequired ? _self.coinsRequired : coinsRequired // ignore: cast_nullable_to_non_nullable
as int,inclusions: null == inclusions ? _self.inclusions : inclusions // ignore: cast_nullable_to_non_nullable
as List<String>,exclusions: null == exclusions ? _self.exclusions : exclusions // ignore: cast_nullable_to_non_nullable
as List<String>,durationText: null == durationText ? _self.durationText : durationText // ignore: cast_nullable_to_non_nullable
as String,canClaim: null == canClaim ? _self.canClaim : canClaim // ignore: cast_nullable_to_non_nullable
as bool,coinsCompleted: null == coinsCompleted ? _self.coinsCompleted : coinsCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardCoupon].
extension RewardCouponPatterns on RewardCoupon {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardCoupon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardCoupon() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardCoupon value)  $default,){
final _that = this;
switch (_that) {
case _RewardCoupon():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardCoupon value)?  $default,){
final _that = this;
switch (_that) {
case _RewardCoupon() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String image, @JsonKey(name: 'coinsRequired')  int coinsRequired, @JsonKey(name: 'inclusions')  List<String> inclusions, @JsonKey(name: 'exclusions')  List<String> exclusions, @JsonKey(name: 'durationText')  String durationText, @JsonKey(name: 'canClaim')  bool canClaim, @JsonKey(name: 'coinsCompleted')  bool coinsCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardCoupon() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.image,_that.coinsRequired,_that.inclusions,_that.exclusions,_that.durationText,_that.canClaim,_that.coinsCompleted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String image, @JsonKey(name: 'coinsRequired')  int coinsRequired, @JsonKey(name: 'inclusions')  List<String> inclusions, @JsonKey(name: 'exclusions')  List<String> exclusions, @JsonKey(name: 'durationText')  String durationText, @JsonKey(name: 'canClaim')  bool canClaim, @JsonKey(name: 'coinsCompleted')  bool coinsCompleted)  $default,) {final _that = this;
switch (_that) {
case _RewardCoupon():
return $default(_that.id,_that.title,_that.description,_that.image,_that.coinsRequired,_that.inclusions,_that.exclusions,_that.durationText,_that.canClaim,_that.coinsCompleted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String image, @JsonKey(name: 'coinsRequired')  int coinsRequired, @JsonKey(name: 'inclusions')  List<String> inclusions, @JsonKey(name: 'exclusions')  List<String> exclusions, @JsonKey(name: 'durationText')  String durationText, @JsonKey(name: 'canClaim')  bool canClaim, @JsonKey(name: 'coinsCompleted')  bool coinsCompleted)?  $default,) {final _that = this;
switch (_that) {
case _RewardCoupon() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.image,_that.coinsRequired,_that.inclusions,_that.exclusions,_that.durationText,_that.canClaim,_that.coinsCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardCoupon implements RewardCoupon {
  const _RewardCoupon({this.id = '', this.title = '', this.description = '', this.image = '', @JsonKey(name: 'coinsRequired') this.coinsRequired = 0, @JsonKey(name: 'inclusions') final  List<String> inclusions = const [], @JsonKey(name: 'exclusions') final  List<String> exclusions = const [], @JsonKey(name: 'durationText') this.durationText = '', @JsonKey(name: 'canClaim') this.canClaim = false, @JsonKey(name: 'coinsCompleted') this.coinsCompleted = false}): _inclusions = inclusions,_exclusions = exclusions;
  factory _RewardCoupon.fromJson(Map<String, dynamic> json) => _$RewardCouponFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String image;
@override@JsonKey(name: 'coinsRequired') final  int coinsRequired;
 final  List<String> _inclusions;
@override@JsonKey(name: 'inclusions') List<String> get inclusions {
  if (_inclusions is EqualUnmodifiableListView) return _inclusions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inclusions);
}

 final  List<String> _exclusions;
@override@JsonKey(name: 'exclusions') List<String> get exclusions {
  if (_exclusions is EqualUnmodifiableListView) return _exclusions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exclusions);
}

@override@JsonKey(name: 'durationText') final  String durationText;
@override@JsonKey(name: 'canClaim') final  bool canClaim;
@override@JsonKey(name: 'coinsCompleted') final  bool coinsCompleted;

/// Create a copy of RewardCoupon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardCouponCopyWith<_RewardCoupon> get copyWith => __$RewardCouponCopyWithImpl<_RewardCoupon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardCouponToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardCoupon&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.coinsRequired, coinsRequired) || other.coinsRequired == coinsRequired)&&const DeepCollectionEquality().equals(other._inclusions, _inclusions)&&const DeepCollectionEquality().equals(other._exclusions, _exclusions)&&(identical(other.durationText, durationText) || other.durationText == durationText)&&(identical(other.canClaim, canClaim) || other.canClaim == canClaim)&&(identical(other.coinsCompleted, coinsCompleted) || other.coinsCompleted == coinsCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,image,coinsRequired,const DeepCollectionEquality().hash(_inclusions),const DeepCollectionEquality().hash(_exclusions),durationText,canClaim,coinsCompleted);

@override
String toString() {
  return 'RewardCoupon(id: $id, title: $title, description: $description, image: $image, coinsRequired: $coinsRequired, inclusions: $inclusions, exclusions: $exclusions, durationText: $durationText, canClaim: $canClaim, coinsCompleted: $coinsCompleted)';
}


}

/// @nodoc
abstract mixin class _$RewardCouponCopyWith<$Res> implements $RewardCouponCopyWith<$Res> {
  factory _$RewardCouponCopyWith(_RewardCoupon value, $Res Function(_RewardCoupon) _then) = __$RewardCouponCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String image,@JsonKey(name: 'coinsRequired') int coinsRequired,@JsonKey(name: 'inclusions') List<String> inclusions,@JsonKey(name: 'exclusions') List<String> exclusions,@JsonKey(name: 'durationText') String durationText,@JsonKey(name: 'canClaim') bool canClaim,@JsonKey(name: 'coinsCompleted') bool coinsCompleted
});




}
/// @nodoc
class __$RewardCouponCopyWithImpl<$Res>
    implements _$RewardCouponCopyWith<$Res> {
  __$RewardCouponCopyWithImpl(this._self, this._then);

  final _RewardCoupon _self;
  final $Res Function(_RewardCoupon) _then;

/// Create a copy of RewardCoupon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? image = null,Object? coinsRequired = null,Object? inclusions = null,Object? exclusions = null,Object? durationText = null,Object? canClaim = null,Object? coinsCompleted = null,}) {
  return _then(_RewardCoupon(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,coinsRequired: null == coinsRequired ? _self.coinsRequired : coinsRequired // ignore: cast_nullable_to_non_nullable
as int,inclusions: null == inclusions ? _self._inclusions : inclusions // ignore: cast_nullable_to_non_nullable
as List<String>,exclusions: null == exclusions ? _self._exclusions : exclusions // ignore: cast_nullable_to_non_nullable
as List<String>,durationText: null == durationText ? _self.durationText : durationText // ignore: cast_nullable_to_non_nullable
as String,canClaim: null == canClaim ? _self.canClaim : canClaim // ignore: cast_nullable_to_non_nullable
as bool,coinsCompleted: null == coinsCompleted ? _self.coinsCompleted : coinsCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
