// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seva_history_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SevaHistoryEvent {

 String get status; int get page; int get limit;
/// Create a copy of SevaHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaHistoryEventCopyWith<SevaHistoryEvent> get copyWith => _$SevaHistoryEventCopyWithImpl<SevaHistoryEvent>(this as SevaHistoryEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaHistoryEvent&&(identical(other.status, status) || other.status == status)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,status,page,limit);

@override
String toString() {
  return 'SevaHistoryEvent(status: $status, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $SevaHistoryEventCopyWith<$Res>  {
  factory $SevaHistoryEventCopyWith(SevaHistoryEvent value, $Res Function(SevaHistoryEvent) _then) = _$SevaHistoryEventCopyWithImpl;
@useResult
$Res call({
 String status, int page, int limit
});




}
/// @nodoc
class _$SevaHistoryEventCopyWithImpl<$Res>
    implements $SevaHistoryEventCopyWith<$Res> {
  _$SevaHistoryEventCopyWithImpl(this._self, this._then);

  final SevaHistoryEvent _self;
  final $Res Function(SevaHistoryEvent) _then;

/// Create a copy of SevaHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? page = null,Object? limit = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SevaHistoryEvent].
extension SevaHistoryEventPatterns on SevaHistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetSevaHistoryEvent value)?  getSevaHistory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetSevaHistoryEvent() when getSevaHistory != null:
return getSevaHistory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetSevaHistoryEvent value)  getSevaHistory,}){
final _that = this;
switch (_that) {
case GetSevaHistoryEvent():
return getSevaHistory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetSevaHistoryEvent value)?  getSevaHistory,}){
final _that = this;
switch (_that) {
case GetSevaHistoryEvent() when getSevaHistory != null:
return getSevaHistory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String status,  int page,  int limit)?  getSevaHistory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetSevaHistoryEvent() when getSevaHistory != null:
return getSevaHistory(_that.status,_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String status,  int page,  int limit)  getSevaHistory,}) {final _that = this;
switch (_that) {
case GetSevaHistoryEvent():
return getSevaHistory(_that.status,_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String status,  int page,  int limit)?  getSevaHistory,}) {final _that = this;
switch (_that) {
case GetSevaHistoryEvent() when getSevaHistory != null:
return getSevaHistory(_that.status,_that.page,_that.limit);case _:
  return null;

}
}

}

/// @nodoc


class GetSevaHistoryEvent implements SevaHistoryEvent {
  const GetSevaHistoryEvent({this.status = 'all', this.page = 1, this.limit = 10});
  

@override@JsonKey() final  String status;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;

/// Create a copy of SevaHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSevaHistoryEventCopyWith<GetSevaHistoryEvent> get copyWith => _$GetSevaHistoryEventCopyWithImpl<GetSevaHistoryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSevaHistoryEvent&&(identical(other.status, status) || other.status == status)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,status,page,limit);

@override
String toString() {
  return 'SevaHistoryEvent.getSevaHistory(status: $status, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetSevaHistoryEventCopyWith<$Res> implements $SevaHistoryEventCopyWith<$Res> {
  factory $GetSevaHistoryEventCopyWith(GetSevaHistoryEvent value, $Res Function(GetSevaHistoryEvent) _then) = _$GetSevaHistoryEventCopyWithImpl;
@override @useResult
$Res call({
 String status, int page, int limit
});




}
/// @nodoc
class _$GetSevaHistoryEventCopyWithImpl<$Res>
    implements $GetSevaHistoryEventCopyWith<$Res> {
  _$GetSevaHistoryEventCopyWithImpl(this._self, this._then);

  final GetSevaHistoryEvent _self;
  final $Res Function(GetSevaHistoryEvent) _then;

/// Create a copy of SevaHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? page = null,Object? limit = null,}) {
  return _then(GetSevaHistoryEvent(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
