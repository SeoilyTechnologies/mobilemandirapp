// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jaap_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JaapHistoryState {

/// 🔹 API flags
 bool get isLoading; bool get isSuccess; bool get isServerError; String get apiErrorMessage; String get apiSuccessMessage;/// 🔹 Filters
 DateTime? get startDate; DateTime? get endDate;/// 🔹 Summary
 int get totalSessions; int get totalCount;/// 🔹 Data list
 List<JaapSession> get sessions;
/// Create a copy of JaapHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JaapHistoryStateCopyWith<JaapHistoryState> get copyWith => _$JaapHistoryStateCopyWithImpl<JaapHistoryState>(this as JaapHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JaapHistoryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other.sessions, sessions));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,isServerError,apiErrorMessage,apiSuccessMessage,startDate,endDate,totalSessions,totalCount,const DeepCollectionEquality().hash(sessions));

@override
String toString() {
  return 'JaapHistoryState(isLoading: $isLoading, isSuccess: $isSuccess, isServerError: $isServerError, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, startDate: $startDate, endDate: $endDate, totalSessions: $totalSessions, totalCount: $totalCount, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $JaapHistoryStateCopyWith<$Res>  {
  factory $JaapHistoryStateCopyWith(JaapHistoryState value, $Res Function(JaapHistoryState) _then) = _$JaapHistoryStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSuccess, bool isServerError, String apiErrorMessage, String apiSuccessMessage, DateTime? startDate, DateTime? endDate, int totalSessions, int totalCount, List<JaapSession> sessions
});




}
/// @nodoc
class _$JaapHistoryStateCopyWithImpl<$Res>
    implements $JaapHistoryStateCopyWith<$Res> {
  _$JaapHistoryStateCopyWithImpl(this._self, this._then);

  final JaapHistoryState _self;
  final $Res Function(JaapHistoryState) _then;

/// Create a copy of JaapHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSuccess = null,Object? isServerError = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? startDate = freezed,Object? endDate = freezed,Object? totalSessions = null,Object? totalCount = null,Object? sessions = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalSessions: null == totalSessions ? _self.totalSessions : totalSessions // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,sessions: null == sessions ? _self.sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<JaapSession>,
  ));
}

}


/// Adds pattern-matching-related methods to [JaapHistoryState].
extension JaapHistoryStatePatterns on JaapHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JaapHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JaapHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JaapHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _JaapHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JaapHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _JaapHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  DateTime? startDate,  DateTime? endDate,  int totalSessions,  int totalCount,  List<JaapSession> sessions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JaapHistoryState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.startDate,_that.endDate,_that.totalSessions,_that.totalCount,_that.sessions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  DateTime? startDate,  DateTime? endDate,  int totalSessions,  int totalCount,  List<JaapSession> sessions)  $default,) {final _that = this;
switch (_that) {
case _JaapHistoryState():
return $default(_that.isLoading,_that.isSuccess,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.startDate,_that.endDate,_that.totalSessions,_that.totalCount,_that.sessions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSuccess,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  DateTime? startDate,  DateTime? endDate,  int totalSessions,  int totalCount,  List<JaapSession> sessions)?  $default,) {final _that = this;
switch (_that) {
case _JaapHistoryState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.startDate,_that.endDate,_that.totalSessions,_that.totalCount,_that.sessions);case _:
  return null;

}
}

}

/// @nodoc


class _JaapHistoryState implements JaapHistoryState {
  const _JaapHistoryState({this.isLoading = false, this.isSuccess = false, this.isServerError = false, this.apiErrorMessage = '', this.apiSuccessMessage = '', this.startDate, this.endDate, this.totalSessions = 0, this.totalCount = 0, final  List<JaapSession> sessions = const []}): _sessions = sessions;
  

/// 🔹 API flags
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool isServerError;
@override@JsonKey() final  String apiErrorMessage;
@override@JsonKey() final  String apiSuccessMessage;
/// 🔹 Filters
@override final  DateTime? startDate;
@override final  DateTime? endDate;
/// 🔹 Summary
@override@JsonKey() final  int totalSessions;
@override@JsonKey() final  int totalCount;
/// 🔹 Data list
 final  List<JaapSession> _sessions;
/// 🔹 Data list
@override@JsonKey() List<JaapSession> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}


/// Create a copy of JaapHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JaapHistoryStateCopyWith<_JaapHistoryState> get copyWith => __$JaapHistoryStateCopyWithImpl<_JaapHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JaapHistoryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,isServerError,apiErrorMessage,apiSuccessMessage,startDate,endDate,totalSessions,totalCount,const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'JaapHistoryState(isLoading: $isLoading, isSuccess: $isSuccess, isServerError: $isServerError, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, startDate: $startDate, endDate: $endDate, totalSessions: $totalSessions, totalCount: $totalCount, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class _$JaapHistoryStateCopyWith<$Res> implements $JaapHistoryStateCopyWith<$Res> {
  factory _$JaapHistoryStateCopyWith(_JaapHistoryState value, $Res Function(_JaapHistoryState) _then) = __$JaapHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSuccess, bool isServerError, String apiErrorMessage, String apiSuccessMessage, DateTime? startDate, DateTime? endDate, int totalSessions, int totalCount, List<JaapSession> sessions
});




}
/// @nodoc
class __$JaapHistoryStateCopyWithImpl<$Res>
    implements _$JaapHistoryStateCopyWith<$Res> {
  __$JaapHistoryStateCopyWithImpl(this._self, this._then);

  final _JaapHistoryState _self;
  final $Res Function(_JaapHistoryState) _then;

/// Create a copy of JaapHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSuccess = null,Object? isServerError = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? startDate = freezed,Object? endDate = freezed,Object? totalSessions = null,Object? totalCount = null,Object? sessions = null,}) {
  return _then(_JaapHistoryState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalSessions: null == totalSessions ? _self.totalSessions : totalSessions // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<JaapSession>,
  ));
}


}

// dart format on
