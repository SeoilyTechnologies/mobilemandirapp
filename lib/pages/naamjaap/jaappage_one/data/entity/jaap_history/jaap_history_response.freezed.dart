// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jaap_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JaapHistoryResponse {

 bool get success; Summary get summary; List<JaapSession> get data;
/// Create a copy of JaapHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JaapHistoryResponseCopyWith<JaapHistoryResponse> get copyWith => _$JaapHistoryResponseCopyWithImpl<JaapHistoryResponse>(this as JaapHistoryResponse, _$identity);

  /// Serializes this JaapHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JaapHistoryResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,summary,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'JaapHistoryResponse(success: $success, summary: $summary, data: $data)';
}


}

/// @nodoc
abstract mixin class $JaapHistoryResponseCopyWith<$Res>  {
  factory $JaapHistoryResponseCopyWith(JaapHistoryResponse value, $Res Function(JaapHistoryResponse) _then) = _$JaapHistoryResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Summary summary, List<JaapSession> data
});


$SummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$JaapHistoryResponseCopyWithImpl<$Res>
    implements $JaapHistoryResponseCopyWith<$Res> {
  _$JaapHistoryResponseCopyWithImpl(this._self, this._then);

  final JaapHistoryResponse _self;
  final $Res Function(JaapHistoryResponse) _then;

/// Create a copy of JaapHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? summary = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Summary,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<JaapSession>,
  ));
}
/// Create a copy of JaapHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryCopyWith<$Res> get summary {
  
  return $SummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [JaapHistoryResponse].
extension JaapHistoryResponsePatterns on JaapHistoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JaapHistoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JaapHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JaapHistoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _JaapHistoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JaapHistoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _JaapHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Summary summary,  List<JaapSession> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JaapHistoryResponse() when $default != null:
return $default(_that.success,_that.summary,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Summary summary,  List<JaapSession> data)  $default,) {final _that = this;
switch (_that) {
case _JaapHistoryResponse():
return $default(_that.success,_that.summary,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Summary summary,  List<JaapSession> data)?  $default,) {final _that = this;
switch (_that) {
case _JaapHistoryResponse() when $default != null:
return $default(_that.success,_that.summary,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JaapHistoryResponse implements JaapHistoryResponse {
  const _JaapHistoryResponse({required this.success, required this.summary, required final  List<JaapSession> data}): _data = data;
  factory _JaapHistoryResponse.fromJson(Map<String, dynamic> json) => _$JaapHistoryResponseFromJson(json);

@override final  bool success;
@override final  Summary summary;
 final  List<JaapSession> _data;
@override List<JaapSession> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of JaapHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JaapHistoryResponseCopyWith<_JaapHistoryResponse> get copyWith => __$JaapHistoryResponseCopyWithImpl<_JaapHistoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JaapHistoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JaapHistoryResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,summary,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'JaapHistoryResponse(success: $success, summary: $summary, data: $data)';
}


}

/// @nodoc
abstract mixin class _$JaapHistoryResponseCopyWith<$Res> implements $JaapHistoryResponseCopyWith<$Res> {
  factory _$JaapHistoryResponseCopyWith(_JaapHistoryResponse value, $Res Function(_JaapHistoryResponse) _then) = __$JaapHistoryResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Summary summary, List<JaapSession> data
});


@override $SummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$JaapHistoryResponseCopyWithImpl<$Res>
    implements _$JaapHistoryResponseCopyWith<$Res> {
  __$JaapHistoryResponseCopyWithImpl(this._self, this._then);

  final _JaapHistoryResponse _self;
  final $Res Function(_JaapHistoryResponse) _then;

/// Create a copy of JaapHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? summary = null,Object? data = null,}) {
  return _then(_JaapHistoryResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Summary,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<JaapSession>,
  ));
}

/// Create a copy of JaapHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryCopyWith<$Res> get summary {
  
  return $SummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$Summary {

 int get totalSessions; int get totalCount;
/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryCopyWith<Summary> get copyWith => _$SummaryCopyWithImpl<Summary>(this as Summary, _$identity);

  /// Serializes this Summary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Summary&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSessions,totalCount);

@override
String toString() {
  return 'Summary(totalSessions: $totalSessions, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $SummaryCopyWith<$Res>  {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) _then) = _$SummaryCopyWithImpl;
@useResult
$Res call({
 int totalSessions, int totalCount
});




}
/// @nodoc
class _$SummaryCopyWithImpl<$Res>
    implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._self, this._then);

  final Summary _self;
  final $Res Function(Summary) _then;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSessions = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
totalSessions: null == totalSessions ? _self.totalSessions : totalSessions // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Summary].
extension SummaryPatterns on Summary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Summary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Summary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Summary value)  $default,){
final _that = this;
switch (_that) {
case _Summary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Summary value)?  $default,){
final _that = this;
switch (_that) {
case _Summary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalSessions,  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Summary() when $default != null:
return $default(_that.totalSessions,_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalSessions,  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _Summary():
return $default(_that.totalSessions,_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalSessions,  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _Summary() when $default != null:
return $default(_that.totalSessions,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Summary implements Summary {
  const _Summary({required this.totalSessions, required this.totalCount});
  factory _Summary.fromJson(Map<String, dynamic> json) => _$SummaryFromJson(json);

@override final  int totalSessions;
@override final  int totalCount;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryCopyWith<_Summary> get copyWith => __$SummaryCopyWithImpl<_Summary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Summary&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSessions,totalCount);

@override
String toString() {
  return 'Summary(totalSessions: $totalSessions, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$SummaryCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$SummaryCopyWith(_Summary value, $Res Function(_Summary) _then) = __$SummaryCopyWithImpl;
@override @useResult
$Res call({
 int totalSessions, int totalCount
});




}
/// @nodoc
class __$SummaryCopyWithImpl<$Res>
    implements _$SummaryCopyWith<$Res> {
  __$SummaryCopyWithImpl(this._self, this._then);

  final _Summary _self;
  final $Res Function(_Summary) _then;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSessions = null,Object? totalCount = null,}) {
  return _then(_Summary(
totalSessions: null == totalSessions ? _self.totalSessions : totalSessions // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$JaapSession {

 String get sessionId; Mantra? get mantra; int get targetCount; int get currentCount; String get dateLabel; String get timeRange; String get durationText; String get createdAt; int get durationSeconds; String get status; bool get isCompleted;
/// Create a copy of JaapSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JaapSessionCopyWith<JaapSession> get copyWith => _$JaapSessionCopyWithImpl<JaapSession>(this as JaapSession, _$identity);

  /// Serializes this JaapSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JaapSession&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.mantra, mantra) || other.mantra == mantra)&&(identical(other.targetCount, targetCount) || other.targetCount == targetCount)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.dateLabel, dateLabel) || other.dateLabel == dateLabel)&&(identical(other.timeRange, timeRange) || other.timeRange == timeRange)&&(identical(other.durationText, durationText) || other.durationText == durationText)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.status, status) || other.status == status)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,mantra,targetCount,currentCount,dateLabel,timeRange,durationText,createdAt,durationSeconds,status,isCompleted);

@override
String toString() {
  return 'JaapSession(sessionId: $sessionId, mantra: $mantra, targetCount: $targetCount, currentCount: $currentCount, dateLabel: $dateLabel, timeRange: $timeRange, durationText: $durationText, createdAt: $createdAt, durationSeconds: $durationSeconds, status: $status, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class $JaapSessionCopyWith<$Res>  {
  factory $JaapSessionCopyWith(JaapSession value, $Res Function(JaapSession) _then) = _$JaapSessionCopyWithImpl;
@useResult
$Res call({
 String sessionId, Mantra? mantra, int targetCount, int currentCount, String dateLabel, String timeRange, String durationText, String createdAt, int durationSeconds, String status, bool isCompleted
});


$MantraCopyWith<$Res>? get mantra;

}
/// @nodoc
class _$JaapSessionCopyWithImpl<$Res>
    implements $JaapSessionCopyWith<$Res> {
  _$JaapSessionCopyWithImpl(this._self, this._then);

  final JaapSession _self;
  final $Res Function(JaapSession) _then;

/// Create a copy of JaapSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? mantra = freezed,Object? targetCount = null,Object? currentCount = null,Object? dateLabel = null,Object? timeRange = null,Object? durationText = null,Object? createdAt = null,Object? durationSeconds = null,Object? status = null,Object? isCompleted = null,}) {
  return _then(_self.copyWith(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,mantra: freezed == mantra ? _self.mantra : mantra // ignore: cast_nullable_to_non_nullable
as Mantra?,targetCount: null == targetCount ? _self.targetCount : targetCount // ignore: cast_nullable_to_non_nullable
as int,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,dateLabel: null == dateLabel ? _self.dateLabel : dateLabel // ignore: cast_nullable_to_non_nullable
as String,timeRange: null == timeRange ? _self.timeRange : timeRange // ignore: cast_nullable_to_non_nullable
as String,durationText: null == durationText ? _self.durationText : durationText // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of JaapSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MantraCopyWith<$Res>? get mantra {
    if (_self.mantra == null) {
    return null;
  }

  return $MantraCopyWith<$Res>(_self.mantra!, (value) {
    return _then(_self.copyWith(mantra: value));
  });
}
}


/// Adds pattern-matching-related methods to [JaapSession].
extension JaapSessionPatterns on JaapSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JaapSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JaapSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JaapSession value)  $default,){
final _that = this;
switch (_that) {
case _JaapSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JaapSession value)?  $default,){
final _that = this;
switch (_that) {
case _JaapSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sessionId,  Mantra? mantra,  int targetCount,  int currentCount,  String dateLabel,  String timeRange,  String durationText,  String createdAt,  int durationSeconds,  String status,  bool isCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JaapSession() when $default != null:
return $default(_that.sessionId,_that.mantra,_that.targetCount,_that.currentCount,_that.dateLabel,_that.timeRange,_that.durationText,_that.createdAt,_that.durationSeconds,_that.status,_that.isCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sessionId,  Mantra? mantra,  int targetCount,  int currentCount,  String dateLabel,  String timeRange,  String durationText,  String createdAt,  int durationSeconds,  String status,  bool isCompleted)  $default,) {final _that = this;
switch (_that) {
case _JaapSession():
return $default(_that.sessionId,_that.mantra,_that.targetCount,_that.currentCount,_that.dateLabel,_that.timeRange,_that.durationText,_that.createdAt,_that.durationSeconds,_that.status,_that.isCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sessionId,  Mantra? mantra,  int targetCount,  int currentCount,  String dateLabel,  String timeRange,  String durationText,  String createdAt,  int durationSeconds,  String status,  bool isCompleted)?  $default,) {final _that = this;
switch (_that) {
case _JaapSession() when $default != null:
return $default(_that.sessionId,_that.mantra,_that.targetCount,_that.currentCount,_that.dateLabel,_that.timeRange,_that.durationText,_that.createdAt,_that.durationSeconds,_that.status,_that.isCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JaapSession implements JaapSession {
  const _JaapSession({required this.sessionId, this.mantra, required this.targetCount, required this.currentCount, required this.dateLabel, required this.timeRange, required this.durationText, required this.createdAt, required this.durationSeconds, required this.status, required this.isCompleted});
  factory _JaapSession.fromJson(Map<String, dynamic> json) => _$JaapSessionFromJson(json);

@override final  String sessionId;
@override final  Mantra? mantra;
@override final  int targetCount;
@override final  int currentCount;
@override final  String dateLabel;
@override final  String timeRange;
@override final  String durationText;
@override final  String createdAt;
@override final  int durationSeconds;
@override final  String status;
@override final  bool isCompleted;

/// Create a copy of JaapSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JaapSessionCopyWith<_JaapSession> get copyWith => __$JaapSessionCopyWithImpl<_JaapSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JaapSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JaapSession&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.mantra, mantra) || other.mantra == mantra)&&(identical(other.targetCount, targetCount) || other.targetCount == targetCount)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.dateLabel, dateLabel) || other.dateLabel == dateLabel)&&(identical(other.timeRange, timeRange) || other.timeRange == timeRange)&&(identical(other.durationText, durationText) || other.durationText == durationText)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.status, status) || other.status == status)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,mantra,targetCount,currentCount,dateLabel,timeRange,durationText,createdAt,durationSeconds,status,isCompleted);

@override
String toString() {
  return 'JaapSession(sessionId: $sessionId, mantra: $mantra, targetCount: $targetCount, currentCount: $currentCount, dateLabel: $dateLabel, timeRange: $timeRange, durationText: $durationText, createdAt: $createdAt, durationSeconds: $durationSeconds, status: $status, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$JaapSessionCopyWith<$Res> implements $JaapSessionCopyWith<$Res> {
  factory _$JaapSessionCopyWith(_JaapSession value, $Res Function(_JaapSession) _then) = __$JaapSessionCopyWithImpl;
@override @useResult
$Res call({
 String sessionId, Mantra? mantra, int targetCount, int currentCount, String dateLabel, String timeRange, String durationText, String createdAt, int durationSeconds, String status, bool isCompleted
});


@override $MantraCopyWith<$Res>? get mantra;

}
/// @nodoc
class __$JaapSessionCopyWithImpl<$Res>
    implements _$JaapSessionCopyWith<$Res> {
  __$JaapSessionCopyWithImpl(this._self, this._then);

  final _JaapSession _self;
  final $Res Function(_JaapSession) _then;

/// Create a copy of JaapSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? mantra = freezed,Object? targetCount = null,Object? currentCount = null,Object? dateLabel = null,Object? timeRange = null,Object? durationText = null,Object? createdAt = null,Object? durationSeconds = null,Object? status = null,Object? isCompleted = null,}) {
  return _then(_JaapSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,mantra: freezed == mantra ? _self.mantra : mantra // ignore: cast_nullable_to_non_nullable
as Mantra?,targetCount: null == targetCount ? _self.targetCount : targetCount // ignore: cast_nullable_to_non_nullable
as int,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,dateLabel: null == dateLabel ? _self.dateLabel : dateLabel // ignore: cast_nullable_to_non_nullable
as String,timeRange: null == timeRange ? _self.timeRange : timeRange // ignore: cast_nullable_to_non_nullable
as String,durationText: null == durationText ? _self.durationText : durationText // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of JaapSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MantraCopyWith<$Res>? get mantra {
    if (_self.mantra == null) {
    return null;
  }

  return $MantraCopyWith<$Res>(_self.mantra!, (value) {
    return _then(_self.copyWith(mantra: value));
  });
}
}


/// @nodoc
mixin _$Mantra {

 String get id; String get nameEn; String get nameHi; String get plainLyricsEn; String get plainLyricsHi;
/// Create a copy of Mantra
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MantraCopyWith<Mantra> get copyWith => _$MantraCopyWithImpl<Mantra>(this as Mantra, _$identity);

  /// Serializes this Mantra to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Mantra&&(identical(other.id, id) || other.id == id)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameHi, nameHi) || other.nameHi == nameHi)&&(identical(other.plainLyricsEn, plainLyricsEn) || other.plainLyricsEn == plainLyricsEn)&&(identical(other.plainLyricsHi, plainLyricsHi) || other.plainLyricsHi == plainLyricsHi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameEn,nameHi,plainLyricsEn,plainLyricsHi);

@override
String toString() {
  return 'Mantra(id: $id, nameEn: $nameEn, nameHi: $nameHi, plainLyricsEn: $plainLyricsEn, plainLyricsHi: $plainLyricsHi)';
}


}

/// @nodoc
abstract mixin class $MantraCopyWith<$Res>  {
  factory $MantraCopyWith(Mantra value, $Res Function(Mantra) _then) = _$MantraCopyWithImpl;
@useResult
$Res call({
 String id, String nameEn, String nameHi, String plainLyricsEn, String plainLyricsHi
});




}
/// @nodoc
class _$MantraCopyWithImpl<$Res>
    implements $MantraCopyWith<$Res> {
  _$MantraCopyWithImpl(this._self, this._then);

  final Mantra _self;
  final $Res Function(Mantra) _then;

/// Create a copy of Mantra
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameEn = null,Object? nameHi = null,Object? plainLyricsEn = null,Object? plainLyricsHi = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,nameHi: null == nameHi ? _self.nameHi : nameHi // ignore: cast_nullable_to_non_nullable
as String,plainLyricsEn: null == plainLyricsEn ? _self.plainLyricsEn : plainLyricsEn // ignore: cast_nullable_to_non_nullable
as String,plainLyricsHi: null == plainLyricsHi ? _self.plainLyricsHi : plainLyricsHi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Mantra].
extension MantraPatterns on Mantra {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Mantra value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Mantra() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Mantra value)  $default,){
final _that = this;
switch (_that) {
case _Mantra():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Mantra value)?  $default,){
final _that = this;
switch (_that) {
case _Mantra() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameEn,  String nameHi,  String plainLyricsEn,  String plainLyricsHi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Mantra() when $default != null:
return $default(_that.id,_that.nameEn,_that.nameHi,_that.plainLyricsEn,_that.plainLyricsHi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameEn,  String nameHi,  String plainLyricsEn,  String plainLyricsHi)  $default,) {final _that = this;
switch (_that) {
case _Mantra():
return $default(_that.id,_that.nameEn,_that.nameHi,_that.plainLyricsEn,_that.plainLyricsHi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameEn,  String nameHi,  String plainLyricsEn,  String plainLyricsHi)?  $default,) {final _that = this;
switch (_that) {
case _Mantra() when $default != null:
return $default(_that.id,_that.nameEn,_that.nameHi,_that.plainLyricsEn,_that.plainLyricsHi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Mantra implements Mantra {
  const _Mantra({required this.id, required this.nameEn, required this.nameHi, required this.plainLyricsEn, required this.plainLyricsHi});
  factory _Mantra.fromJson(Map<String, dynamic> json) => _$MantraFromJson(json);

@override final  String id;
@override final  String nameEn;
@override final  String nameHi;
@override final  String plainLyricsEn;
@override final  String plainLyricsHi;

/// Create a copy of Mantra
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MantraCopyWith<_Mantra> get copyWith => __$MantraCopyWithImpl<_Mantra>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MantraToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Mantra&&(identical(other.id, id) || other.id == id)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameHi, nameHi) || other.nameHi == nameHi)&&(identical(other.plainLyricsEn, plainLyricsEn) || other.plainLyricsEn == plainLyricsEn)&&(identical(other.plainLyricsHi, plainLyricsHi) || other.plainLyricsHi == plainLyricsHi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameEn,nameHi,plainLyricsEn,plainLyricsHi);

@override
String toString() {
  return 'Mantra(id: $id, nameEn: $nameEn, nameHi: $nameHi, plainLyricsEn: $plainLyricsEn, plainLyricsHi: $plainLyricsHi)';
}


}

/// @nodoc
abstract mixin class _$MantraCopyWith<$Res> implements $MantraCopyWith<$Res> {
  factory _$MantraCopyWith(_Mantra value, $Res Function(_Mantra) _then) = __$MantraCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameEn, String nameHi, String plainLyricsEn, String plainLyricsHi
});




}
/// @nodoc
class __$MantraCopyWithImpl<$Res>
    implements _$MantraCopyWith<$Res> {
  __$MantraCopyWithImpl(this._self, this._then);

  final _Mantra _self;
  final $Res Function(_Mantra) _then;

/// Create a copy of Mantra
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameEn = null,Object? nameHi = null,Object? plainLyricsEn = null,Object? plainLyricsHi = null,}) {
  return _then(_Mantra(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,nameHi: null == nameHi ? _self.nameHi : nameHi // ignore: cast_nullable_to_non_nullable
as String,plainLyricsEn: null == plainLyricsEn ? _self.plainLyricsEn : plainLyricsEn // ignore: cast_nullable_to_non_nullable
as String,plainLyricsHi: null == plainLyricsHi ? _self.plainLyricsHi : plainLyricsHi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
