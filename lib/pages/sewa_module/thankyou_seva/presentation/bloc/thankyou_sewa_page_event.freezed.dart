// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thankyou_sewa_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThankyouSewaPageEvent {

 String get id;
/// Create a copy of ThankyouSewaPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThankyouSewaPageEventCopyWith<ThankyouSewaPageEvent> get copyWith => _$ThankyouSewaPageEventCopyWithImpl<ThankyouSewaPageEvent>(this as ThankyouSewaPageEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThankyouSewaPageEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ThankyouSewaPageEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $ThankyouSewaPageEventCopyWith<$Res>  {
  factory $ThankyouSewaPageEventCopyWith(ThankyouSewaPageEvent value, $Res Function(ThankyouSewaPageEvent) _then) = _$ThankyouSewaPageEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$ThankyouSewaPageEventCopyWithImpl<$Res>
    implements $ThankyouSewaPageEventCopyWith<$Res> {
  _$ThankyouSewaPageEventCopyWithImpl(this._self, this._then);

  final ThankyouSewaPageEvent _self;
  final $Res Function(ThankyouSewaPageEvent) _then;

/// Create a copy of ThankyouSewaPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ThankyouSewaPageEvent].
extension ThankyouSewaPageEventPatterns on ThankyouSewaPageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetThankyou value)?  getThankyou,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetThankyou() when getThankyou != null:
return getThankyou(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetThankyou value)  getThankyou,}){
final _that = this;
switch (_that) {
case GetThankyou():
return getThankyou(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetThankyou value)?  getThankyou,}){
final _that = this;
switch (_that) {
case GetThankyou() when getThankyou != null:
return getThankyou(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  getThankyou,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetThankyou() when getThankyou != null:
return getThankyou(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  getThankyou,}) {final _that = this;
switch (_that) {
case GetThankyou():
return getThankyou(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  getThankyou,}) {final _that = this;
switch (_that) {
case GetThankyou() when getThankyou != null:
return getThankyou(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class GetThankyou implements ThankyouSewaPageEvent {
  const GetThankyou({required this.id});
  

@override final  String id;

/// Create a copy of ThankyouSewaPageEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetThankyouCopyWith<GetThankyou> get copyWith => _$GetThankyouCopyWithImpl<GetThankyou>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetThankyou&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ThankyouSewaPageEvent.getThankyou(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetThankyouCopyWith<$Res> implements $ThankyouSewaPageEventCopyWith<$Res> {
  factory $GetThankyouCopyWith(GetThankyou value, $Res Function(GetThankyou) _then) = _$GetThankyouCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetThankyouCopyWithImpl<$Res>
    implements $GetThankyouCopyWith<$Res> {
  _$GetThankyouCopyWithImpl(this._self, this._then);

  final GetThankyou _self;
  final $Res Function(GetThankyou) _then;

/// Create a copy of ThankyouSewaPageEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetThankyou(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
