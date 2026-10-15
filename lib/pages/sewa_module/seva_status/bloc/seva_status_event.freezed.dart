// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seva_status_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SevaStatusEvent {

 String get id;
/// Create a copy of SevaStatusEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaStatusEventCopyWith<SevaStatusEvent> get copyWith => _$SevaStatusEventCopyWithImpl<SevaStatusEvent>(this as SevaStatusEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaStatusEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SevaStatusEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $SevaStatusEventCopyWith<$Res>  {
  factory $SevaStatusEventCopyWith(SevaStatusEvent value, $Res Function(SevaStatusEvent) _then) = _$SevaStatusEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$SevaStatusEventCopyWithImpl<$Res>
    implements $SevaStatusEventCopyWith<$Res> {
  _$SevaStatusEventCopyWithImpl(this._self, this._then);

  final SevaStatusEvent _self;
  final $Res Function(SevaStatusEvent) _then;

/// Create a copy of SevaStatusEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SevaStatusEvent].
extension SevaStatusEventPatterns on SevaStatusEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetStatus value)?  getStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetStatus() when getStatus != null:
return getStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetStatus value)  getStatus,}){
final _that = this;
switch (_that) {
case GetStatus():
return getStatus(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetStatus value)?  getStatus,}){
final _that = this;
switch (_that) {
case GetStatus() when getStatus != null:
return getStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  getStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetStatus() when getStatus != null:
return getStatus(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  getStatus,}) {final _that = this;
switch (_that) {
case GetStatus():
return getStatus(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  getStatus,}) {final _that = this;
switch (_that) {
case GetStatus() when getStatus != null:
return getStatus(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class GetStatus implements SevaStatusEvent {
  const GetStatus({required this.id});
  

@override final  String id;

/// Create a copy of SevaStatusEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStatusCopyWith<GetStatus> get copyWith => _$GetStatusCopyWithImpl<GetStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStatus&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SevaStatusEvent.getStatus(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetStatusCopyWith<$Res> implements $SevaStatusEventCopyWith<$Res> {
  factory $GetStatusCopyWith(GetStatus value, $Res Function(GetStatus) _then) = _$GetStatusCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetStatusCopyWithImpl<$Res>
    implements $GetStatusCopyWith<$Res> {
  _$GetStatusCopyWithImpl(this._self, this._then);

  final GetStatus _self;
  final $Res Function(GetStatus) _then;

/// Create a copy of SevaStatusEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetStatus(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
