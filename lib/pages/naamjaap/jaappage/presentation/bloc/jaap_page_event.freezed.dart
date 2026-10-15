// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jaap_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JaapPageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JaapPageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapPageEvent()';
}


}

/// @nodoc
class $JaapPageEventCopyWith<$Res>  {
$JaapPageEventCopyWith(JaapPageEvent _, $Res Function(JaapPageEvent) __);
}


/// Adds pattern-matching-related methods to [JaapPageEvent].
extension JaapPageEventPatterns on JaapPageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitJaapPage value)?  init,TResult Function( IncrementJaap value)?  increment,TResult Function( CompleteJaap value)?  complete,TResult Function( ResetJaap value)?  reset,TResult Function( TickJaap value)?  tick,TResult Function( CompleteResetJaap value)?  completeReset,TResult Function( CreateSameJaapSession value)?  createJaapSession,TResult Function( SyncProgress value)?  syncProgress,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitJaapPage() when init != null:
return init(_that);case IncrementJaap() when increment != null:
return increment(_that);case CompleteJaap() when complete != null:
return complete(_that);case ResetJaap() when reset != null:
return reset(_that);case TickJaap() when tick != null:
return tick(_that);case CompleteResetJaap() when completeReset != null:
return completeReset(_that);case CreateSameJaapSession() when createJaapSession != null:
return createJaapSession(_that);case SyncProgress() when syncProgress != null:
return syncProgress(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitJaapPage value)  init,required TResult Function( IncrementJaap value)  increment,required TResult Function( CompleteJaap value)  complete,required TResult Function( ResetJaap value)  reset,required TResult Function( TickJaap value)  tick,required TResult Function( CompleteResetJaap value)  completeReset,required TResult Function( CreateSameJaapSession value)  createJaapSession,required TResult Function( SyncProgress value)  syncProgress,}){
final _that = this;
switch (_that) {
case InitJaapPage():
return init(_that);case IncrementJaap():
return increment(_that);case CompleteJaap():
return complete(_that);case ResetJaap():
return reset(_that);case TickJaap():
return tick(_that);case CompleteResetJaap():
return completeReset(_that);case CreateSameJaapSession():
return createJaapSession(_that);case SyncProgress():
return syncProgress(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitJaapPage value)?  init,TResult? Function( IncrementJaap value)?  increment,TResult? Function( CompleteJaap value)?  complete,TResult? Function( ResetJaap value)?  reset,TResult? Function( TickJaap value)?  tick,TResult? Function( CompleteResetJaap value)?  completeReset,TResult? Function( CreateSameJaapSession value)?  createJaapSession,TResult? Function( SyncProgress value)?  syncProgress,}){
final _that = this;
switch (_that) {
case InitJaapPage() when init != null:
return init(_that);case IncrementJaap() when increment != null:
return increment(_that);case CompleteJaap() when complete != null:
return complete(_that);case ResetJaap() when reset != null:
return reset(_that);case TickJaap() when tick != null:
return tick(_that);case CompleteResetJaap() when completeReset != null:
return completeReset(_that);case CreateSameJaapSession() when createJaapSession != null:
return createJaapSession(_that);case SyncProgress() when syncProgress != null:
return syncProgress(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int totalCount,  String mantraName,  String sessionId,  int currentCount,  int duration,  String createdAt)?  init,TResult Function()?  increment,TResult Function( Map<String, dynamic> dayData)?  complete,TResult Function()?  reset,TResult Function()?  tick,TResult Function()?  completeReset,TResult Function( String jaapcpunt,  String selectedmantra)?  createJaapSession,TResult Function( bool isFinal)?  syncProgress,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitJaapPage() when init != null:
return init(_that.totalCount,_that.mantraName,_that.sessionId,_that.currentCount,_that.duration,_that.createdAt);case IncrementJaap() when increment != null:
return increment();case CompleteJaap() when complete != null:
return complete(_that.dayData);case ResetJaap() when reset != null:
return reset();case TickJaap() when tick != null:
return tick();case CompleteResetJaap() when completeReset != null:
return completeReset();case CreateSameJaapSession() when createJaapSession != null:
return createJaapSession(_that.jaapcpunt,_that.selectedmantra);case SyncProgress() when syncProgress != null:
return syncProgress(_that.isFinal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int totalCount,  String mantraName,  String sessionId,  int currentCount,  int duration,  String createdAt)  init,required TResult Function()  increment,required TResult Function( Map<String, dynamic> dayData)  complete,required TResult Function()  reset,required TResult Function()  tick,required TResult Function()  completeReset,required TResult Function( String jaapcpunt,  String selectedmantra)  createJaapSession,required TResult Function( bool isFinal)  syncProgress,}) {final _that = this;
switch (_that) {
case InitJaapPage():
return init(_that.totalCount,_that.mantraName,_that.sessionId,_that.currentCount,_that.duration,_that.createdAt);case IncrementJaap():
return increment();case CompleteJaap():
return complete(_that.dayData);case ResetJaap():
return reset();case TickJaap():
return tick();case CompleteResetJaap():
return completeReset();case CreateSameJaapSession():
return createJaapSession(_that.jaapcpunt,_that.selectedmantra);case SyncProgress():
return syncProgress(_that.isFinal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int totalCount,  String mantraName,  String sessionId,  int currentCount,  int duration,  String createdAt)?  init,TResult? Function()?  increment,TResult? Function( Map<String, dynamic> dayData)?  complete,TResult? Function()?  reset,TResult? Function()?  tick,TResult? Function()?  completeReset,TResult? Function( String jaapcpunt,  String selectedmantra)?  createJaapSession,TResult? Function( bool isFinal)?  syncProgress,}) {final _that = this;
switch (_that) {
case InitJaapPage() when init != null:
return init(_that.totalCount,_that.mantraName,_that.sessionId,_that.currentCount,_that.duration,_that.createdAt);case IncrementJaap() when increment != null:
return increment();case CompleteJaap() when complete != null:
return complete(_that.dayData);case ResetJaap() when reset != null:
return reset();case TickJaap() when tick != null:
return tick();case CompleteResetJaap() when completeReset != null:
return completeReset();case CreateSameJaapSession() when createJaapSession != null:
return createJaapSession(_that.jaapcpunt,_that.selectedmantra);case SyncProgress() when syncProgress != null:
return syncProgress(_that.isFinal);case _:
  return null;

}
}

}

/// @nodoc


class InitJaapPage implements JaapPageEvent {
  const InitJaapPage({required this.totalCount, required this.mantraName, required this.sessionId, this.currentCount = 0, this.duration = 0, this.createdAt = ""});
  

 final  int totalCount;
 final  String mantraName;
 final  String sessionId;
@JsonKey() final  int currentCount;
@JsonKey() final  int duration;
// ✅ NEW
@JsonKey() final  String createdAt;

/// Create a copy of JaapPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitJaapPageCopyWith<InitJaapPage> get copyWith => _$InitJaapPageCopyWithImpl<InitJaapPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitJaapPage&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.mantraName, mantraName) || other.mantraName == mantraName)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,totalCount,mantraName,sessionId,currentCount,duration,createdAt);

@override
String toString() {
  return 'JaapPageEvent.init(totalCount: $totalCount, mantraName: $mantraName, sessionId: $sessionId, currentCount: $currentCount, duration: $duration, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $InitJaapPageCopyWith<$Res> implements $JaapPageEventCopyWith<$Res> {
  factory $InitJaapPageCopyWith(InitJaapPage value, $Res Function(InitJaapPage) _then) = _$InitJaapPageCopyWithImpl;
@useResult
$Res call({
 int totalCount, String mantraName, String sessionId, int currentCount, int duration, String createdAt
});




}
/// @nodoc
class _$InitJaapPageCopyWithImpl<$Res>
    implements $InitJaapPageCopyWith<$Res> {
  _$InitJaapPageCopyWithImpl(this._self, this._then);

  final InitJaapPage _self;
  final $Res Function(InitJaapPage) _then;

/// Create a copy of JaapPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? mantraName = null,Object? sessionId = null,Object? currentCount = null,Object? duration = null,Object? createdAt = null,}) {
  return _then(InitJaapPage(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,mantraName: null == mantraName ? _self.mantraName : mantraName // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class IncrementJaap implements JaapPageEvent {
  const IncrementJaap();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncrementJaap);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapPageEvent.increment()';
}


}




/// @nodoc


class CompleteJaap implements JaapPageEvent {
  const CompleteJaap(final  Map<String, dynamic> dayData): _dayData = dayData;
  

 final  Map<String, dynamic> _dayData;
 Map<String, dynamic> get dayData {
  if (_dayData is EqualUnmodifiableMapView) return _dayData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_dayData);
}


/// Create a copy of JaapPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteJaapCopyWith<CompleteJaap> get copyWith => _$CompleteJaapCopyWithImpl<CompleteJaap>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteJaap&&const DeepCollectionEquality().equals(other._dayData, _dayData));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_dayData));

@override
String toString() {
  return 'JaapPageEvent.complete(dayData: $dayData)';
}


}

/// @nodoc
abstract mixin class $CompleteJaapCopyWith<$Res> implements $JaapPageEventCopyWith<$Res> {
  factory $CompleteJaapCopyWith(CompleteJaap value, $Res Function(CompleteJaap) _then) = _$CompleteJaapCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> dayData
});




}
/// @nodoc
class _$CompleteJaapCopyWithImpl<$Res>
    implements $CompleteJaapCopyWith<$Res> {
  _$CompleteJaapCopyWithImpl(this._self, this._then);

  final CompleteJaap _self;
  final $Res Function(CompleteJaap) _then;

/// Create a copy of JaapPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dayData = null,}) {
  return _then(CompleteJaap(
null == dayData ? _self._dayData : dayData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class ResetJaap implements JaapPageEvent {
  const ResetJaap();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetJaap);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapPageEvent.reset()';
}


}




/// @nodoc


class TickJaap implements JaapPageEvent {
  const TickJaap();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TickJaap);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapPageEvent.tick()';
}


}




/// @nodoc


class CompleteResetJaap implements JaapPageEvent {
  const CompleteResetJaap();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteResetJaap);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapPageEvent.completeReset()';
}


}




/// @nodoc


class CreateSameJaapSession implements JaapPageEvent {
  const CreateSameJaapSession(this.jaapcpunt, this.selectedmantra);
  

 final  String jaapcpunt;
 final  String selectedmantra;

/// Create a copy of JaapPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSameJaapSessionCopyWith<CreateSameJaapSession> get copyWith => _$CreateSameJaapSessionCopyWithImpl<CreateSameJaapSession>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSameJaapSession&&(identical(other.jaapcpunt, jaapcpunt) || other.jaapcpunt == jaapcpunt)&&(identical(other.selectedmantra, selectedmantra) || other.selectedmantra == selectedmantra));
}


@override
int get hashCode => Object.hash(runtimeType,jaapcpunt,selectedmantra);

@override
String toString() {
  return 'JaapPageEvent.createJaapSession(jaapcpunt: $jaapcpunt, selectedmantra: $selectedmantra)';
}


}

/// @nodoc
abstract mixin class $CreateSameJaapSessionCopyWith<$Res> implements $JaapPageEventCopyWith<$Res> {
  factory $CreateSameJaapSessionCopyWith(CreateSameJaapSession value, $Res Function(CreateSameJaapSession) _then) = _$CreateSameJaapSessionCopyWithImpl;
@useResult
$Res call({
 String jaapcpunt, String selectedmantra
});




}
/// @nodoc
class _$CreateSameJaapSessionCopyWithImpl<$Res>
    implements $CreateSameJaapSessionCopyWith<$Res> {
  _$CreateSameJaapSessionCopyWithImpl(this._self, this._then);

  final CreateSameJaapSession _self;
  final $Res Function(CreateSameJaapSession) _then;

/// Create a copy of JaapPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jaapcpunt = null,Object? selectedmantra = null,}) {
  return _then(CreateSameJaapSession(
null == jaapcpunt ? _self.jaapcpunt : jaapcpunt // ignore: cast_nullable_to_non_nullable
as String,null == selectedmantra ? _self.selectedmantra : selectedmantra // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SyncProgress implements JaapPageEvent {
  const SyncProgress({this.isFinal = false});
  

@JsonKey() final  bool isFinal;

/// Create a copy of JaapPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncProgressCopyWith<SyncProgress> get copyWith => _$SyncProgressCopyWithImpl<SyncProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncProgress&&(identical(other.isFinal, isFinal) || other.isFinal == isFinal));
}


@override
int get hashCode => Object.hash(runtimeType,isFinal);

@override
String toString() {
  return 'JaapPageEvent.syncProgress(isFinal: $isFinal)';
}


}

/// @nodoc
abstract mixin class $SyncProgressCopyWith<$Res> implements $JaapPageEventCopyWith<$Res> {
  factory $SyncProgressCopyWith(SyncProgress value, $Res Function(SyncProgress) _then) = _$SyncProgressCopyWithImpl;
@useResult
$Res call({
 bool isFinal
});




}
/// @nodoc
class _$SyncProgressCopyWithImpl<$Res>
    implements $SyncProgressCopyWith<$Res> {
  _$SyncProgressCopyWithImpl(this._self, this._then);

  final SyncProgress _self;
  final $Res Function(SyncProgress) _then;

/// Create a copy of JaapPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isFinal = null,}) {
  return _then(SyncProgress(
isFinal: null == isFinal ? _self.isFinal : isFinal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
