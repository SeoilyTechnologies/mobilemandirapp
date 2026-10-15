// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jaap_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JaapPageState {

/// 🔢 TOTAL JAP (example 151 / 251)
 int get totalCount;/// 🔢 OVERALL CURRENT COUNT
 int get currentCount;/// ⏱ duration
 int get duration; DateTime? get resumeTime;/// ✅ completed flag
 bool get isCompleted;/// mantra name
 String get mantraName;/// session
 String? get sessionId;/// sync helper
 int get lastSyncedCount;/// 🧿 CURRENT MALA INDEX (1,2,3…)
 int get roundIndex;/// 🧿 CURRENT MALA TOTAL (max 108)
 int get roundTotal; DateTime? get startTime; DateTime? get endTime;
/// Create a copy of JaapPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JaapPageStateCopyWith<JaapPageState> get copyWith => _$JaapPageStateCopyWithImpl<JaapPageState>(this as JaapPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JaapPageState&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.resumeTime, resumeTime) || other.resumeTime == resumeTime)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.mantraName, mantraName) || other.mantraName == mantraName)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.lastSyncedCount, lastSyncedCount) || other.lastSyncedCount == lastSyncedCount)&&(identical(other.roundIndex, roundIndex) || other.roundIndex == roundIndex)&&(identical(other.roundTotal, roundTotal) || other.roundTotal == roundTotal)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,totalCount,currentCount,duration,resumeTime,isCompleted,mantraName,sessionId,lastSyncedCount,roundIndex,roundTotal,startTime,endTime);

@override
String toString() {
  return 'JaapPageState(totalCount: $totalCount, currentCount: $currentCount, duration: $duration, resumeTime: $resumeTime, isCompleted: $isCompleted, mantraName: $mantraName, sessionId: $sessionId, lastSyncedCount: $lastSyncedCount, roundIndex: $roundIndex, roundTotal: $roundTotal, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $JaapPageStateCopyWith<$Res>  {
  factory $JaapPageStateCopyWith(JaapPageState value, $Res Function(JaapPageState) _then) = _$JaapPageStateCopyWithImpl;
@useResult
$Res call({
 int totalCount, int currentCount, int duration, DateTime? resumeTime, bool isCompleted, String mantraName, String? sessionId, int lastSyncedCount, int roundIndex, int roundTotal, DateTime? startTime, DateTime? endTime
});




}
/// @nodoc
class _$JaapPageStateCopyWithImpl<$Res>
    implements $JaapPageStateCopyWith<$Res> {
  _$JaapPageStateCopyWithImpl(this._self, this._then);

  final JaapPageState _self;
  final $Res Function(JaapPageState) _then;

/// Create a copy of JaapPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = null,Object? currentCount = null,Object? duration = null,Object? resumeTime = freezed,Object? isCompleted = null,Object? mantraName = null,Object? sessionId = freezed,Object? lastSyncedCount = null,Object? roundIndex = null,Object? roundTotal = null,Object? startTime = freezed,Object? endTime = freezed,}) {
  return _then(_self.copyWith(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,resumeTime: freezed == resumeTime ? _self.resumeTime : resumeTime // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,mantraName: null == mantraName ? _self.mantraName : mantraName // ignore: cast_nullable_to_non_nullable
as String,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,lastSyncedCount: null == lastSyncedCount ? _self.lastSyncedCount : lastSyncedCount // ignore: cast_nullable_to_non_nullable
as int,roundIndex: null == roundIndex ? _self.roundIndex : roundIndex // ignore: cast_nullable_to_non_nullable
as int,roundTotal: null == roundTotal ? _self.roundTotal : roundTotal // ignore: cast_nullable_to_non_nullable
as int,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [JaapPageState].
extension JaapPageStatePatterns on JaapPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JaapPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JaapPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JaapPageState value)  $default,){
final _that = this;
switch (_that) {
case _JaapPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JaapPageState value)?  $default,){
final _that = this;
switch (_that) {
case _JaapPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalCount,  int currentCount,  int duration,  DateTime? resumeTime,  bool isCompleted,  String mantraName,  String? sessionId,  int lastSyncedCount,  int roundIndex,  int roundTotal,  DateTime? startTime,  DateTime? endTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JaapPageState() when $default != null:
return $default(_that.totalCount,_that.currentCount,_that.duration,_that.resumeTime,_that.isCompleted,_that.mantraName,_that.sessionId,_that.lastSyncedCount,_that.roundIndex,_that.roundTotal,_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalCount,  int currentCount,  int duration,  DateTime? resumeTime,  bool isCompleted,  String mantraName,  String? sessionId,  int lastSyncedCount,  int roundIndex,  int roundTotal,  DateTime? startTime,  DateTime? endTime)  $default,) {final _that = this;
switch (_that) {
case _JaapPageState():
return $default(_that.totalCount,_that.currentCount,_that.duration,_that.resumeTime,_that.isCompleted,_that.mantraName,_that.sessionId,_that.lastSyncedCount,_that.roundIndex,_that.roundTotal,_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalCount,  int currentCount,  int duration,  DateTime? resumeTime,  bool isCompleted,  String mantraName,  String? sessionId,  int lastSyncedCount,  int roundIndex,  int roundTotal,  DateTime? startTime,  DateTime? endTime)?  $default,) {final _that = this;
switch (_that) {
case _JaapPageState() when $default != null:
return $default(_that.totalCount,_that.currentCount,_that.duration,_that.resumeTime,_that.isCompleted,_that.mantraName,_that.sessionId,_that.lastSyncedCount,_that.roundIndex,_that.roundTotal,_that.startTime,_that.endTime);case _:
  return null;

}
}

}

/// @nodoc


class _JaapPageState implements JaapPageState {
  const _JaapPageState({this.totalCount = 0, this.currentCount = 0, this.duration = 0, this.resumeTime, this.isCompleted = false, this.mantraName = '', this.sessionId, this.lastSyncedCount = 0, this.roundIndex = 1, this.roundTotal = 108, this.startTime, this.endTime});
  

/// 🔢 TOTAL JAP (example 151 / 251)
@override@JsonKey() final  int totalCount;
/// 🔢 OVERALL CURRENT COUNT
@override@JsonKey() final  int currentCount;
/// ⏱ duration
@override@JsonKey() final  int duration;
@override final  DateTime? resumeTime;
/// ✅ completed flag
@override@JsonKey() final  bool isCompleted;
/// mantra name
@override@JsonKey() final  String mantraName;
/// session
@override final  String? sessionId;
/// sync helper
@override@JsonKey() final  int lastSyncedCount;
/// 🧿 CURRENT MALA INDEX (1,2,3…)
@override@JsonKey() final  int roundIndex;
/// 🧿 CURRENT MALA TOTAL (max 108)
@override@JsonKey() final  int roundTotal;
@override final  DateTime? startTime;
@override final  DateTime? endTime;

/// Create a copy of JaapPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JaapPageStateCopyWith<_JaapPageState> get copyWith => __$JaapPageStateCopyWithImpl<_JaapPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JaapPageState&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.resumeTime, resumeTime) || other.resumeTime == resumeTime)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.mantraName, mantraName) || other.mantraName == mantraName)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.lastSyncedCount, lastSyncedCount) || other.lastSyncedCount == lastSyncedCount)&&(identical(other.roundIndex, roundIndex) || other.roundIndex == roundIndex)&&(identical(other.roundTotal, roundTotal) || other.roundTotal == roundTotal)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,totalCount,currentCount,duration,resumeTime,isCompleted,mantraName,sessionId,lastSyncedCount,roundIndex,roundTotal,startTime,endTime);

@override
String toString() {
  return 'JaapPageState(totalCount: $totalCount, currentCount: $currentCount, duration: $duration, resumeTime: $resumeTime, isCompleted: $isCompleted, mantraName: $mantraName, sessionId: $sessionId, lastSyncedCount: $lastSyncedCount, roundIndex: $roundIndex, roundTotal: $roundTotal, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$JaapPageStateCopyWith<$Res> implements $JaapPageStateCopyWith<$Res> {
  factory _$JaapPageStateCopyWith(_JaapPageState value, $Res Function(_JaapPageState) _then) = __$JaapPageStateCopyWithImpl;
@override @useResult
$Res call({
 int totalCount, int currentCount, int duration, DateTime? resumeTime, bool isCompleted, String mantraName, String? sessionId, int lastSyncedCount, int roundIndex, int roundTotal, DateTime? startTime, DateTime? endTime
});




}
/// @nodoc
class __$JaapPageStateCopyWithImpl<$Res>
    implements _$JaapPageStateCopyWith<$Res> {
  __$JaapPageStateCopyWithImpl(this._self, this._then);

  final _JaapPageState _self;
  final $Res Function(_JaapPageState) _then;

/// Create a copy of JaapPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? currentCount = null,Object? duration = null,Object? resumeTime = freezed,Object? isCompleted = null,Object? mantraName = null,Object? sessionId = freezed,Object? lastSyncedCount = null,Object? roundIndex = null,Object? roundTotal = null,Object? startTime = freezed,Object? endTime = freezed,}) {
  return _then(_JaapPageState(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,resumeTime: freezed == resumeTime ? _self.resumeTime : resumeTime // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,mantraName: null == mantraName ? _self.mantraName : mantraName // ignore: cast_nullable_to_non_nullable
as String,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,lastSyncedCount: null == lastSyncedCount ? _self.lastSyncedCount : lastSyncedCount // ignore: cast_nullable_to_non_nullable
as int,roundIndex: null == roundIndex ? _self.roundIndex : roundIndex // ignore: cast_nullable_to_non_nullable
as int,roundTotal: null == roundTotal ? _self.roundTotal : roundTotal // ignore: cast_nullable_to_non_nullable
as int,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
