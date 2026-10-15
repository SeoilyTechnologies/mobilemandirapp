// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temple_detail_new_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TempleDetailNewEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TempleDetailNewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TempleDetailNewEvent()';
}


}

/// @nodoc
class $TempleDetailNewEventCopyWith<$Res>  {
$TempleDetailNewEventCopyWith(TempleDetailNewEvent _, $Res Function(TempleDetailNewEvent) __);
}


/// Adds pattern-matching-related methods to [TempleDetailNewEvent].
extension TempleDetailNewEventPatterns on TempleDetailNewEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetTempleDetailById value)?  getTempleDetailById,TResult Function( TempleWishlistvent value)?  templeToggleWishlist,TResult Function( RelatedTempleWishlistEvent value)?  relatedTempleToggleWishlist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetTempleDetailById() when getTempleDetailById != null:
return getTempleDetailById(_that);case TempleWishlistvent() when templeToggleWishlist != null:
return templeToggleWishlist(_that);case RelatedTempleWishlistEvent() when relatedTempleToggleWishlist != null:
return relatedTempleToggleWishlist(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetTempleDetailById value)  getTempleDetailById,required TResult Function( TempleWishlistvent value)  templeToggleWishlist,required TResult Function( RelatedTempleWishlistEvent value)  relatedTempleToggleWishlist,}){
final _that = this;
switch (_that) {
case GetTempleDetailById():
return getTempleDetailById(_that);case TempleWishlistvent():
return templeToggleWishlist(_that);case RelatedTempleWishlistEvent():
return relatedTempleToggleWishlist(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetTempleDetailById value)?  getTempleDetailById,TResult? Function( TempleWishlistvent value)?  templeToggleWishlist,TResult? Function( RelatedTempleWishlistEvent value)?  relatedTempleToggleWishlist,}){
final _that = this;
switch (_that) {
case GetTempleDetailById() when getTempleDetailById != null:
return getTempleDetailById(_that);case TempleWishlistvent() when templeToggleWishlist != null:
return templeToggleWishlist(_that);case RelatedTempleWishlistEvent() when relatedTempleToggleWishlist != null:
return relatedTempleToggleWishlist(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  getTempleDetailById,TResult Function( String itemId,  String itemModel)?  templeToggleWishlist,TResult Function( String itemId,  String itemModel)?  relatedTempleToggleWishlist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetTempleDetailById() when getTempleDetailById != null:
return getTempleDetailById(_that.id);case TempleWishlistvent() when templeToggleWishlist != null:
return templeToggleWishlist(_that.itemId,_that.itemModel);case RelatedTempleWishlistEvent() when relatedTempleToggleWishlist != null:
return relatedTempleToggleWishlist(_that.itemId,_that.itemModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  getTempleDetailById,required TResult Function( String itemId,  String itemModel)  templeToggleWishlist,required TResult Function( String itemId,  String itemModel)  relatedTempleToggleWishlist,}) {final _that = this;
switch (_that) {
case GetTempleDetailById():
return getTempleDetailById(_that.id);case TempleWishlistvent():
return templeToggleWishlist(_that.itemId,_that.itemModel);case RelatedTempleWishlistEvent():
return relatedTempleToggleWishlist(_that.itemId,_that.itemModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  getTempleDetailById,TResult? Function( String itemId,  String itemModel)?  templeToggleWishlist,TResult? Function( String itemId,  String itemModel)?  relatedTempleToggleWishlist,}) {final _that = this;
switch (_that) {
case GetTempleDetailById() when getTempleDetailById != null:
return getTempleDetailById(_that.id);case TempleWishlistvent() when templeToggleWishlist != null:
return templeToggleWishlist(_that.itemId,_that.itemModel);case RelatedTempleWishlistEvent() when relatedTempleToggleWishlist != null:
return relatedTempleToggleWishlist(_that.itemId,_that.itemModel);case _:
  return null;

}
}

}

/// @nodoc


class GetTempleDetailById implements TempleDetailNewEvent {
  const GetTempleDetailById({required this.id});
  

 final  String id;

/// Create a copy of TempleDetailNewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTempleDetailByIdCopyWith<GetTempleDetailById> get copyWith => _$GetTempleDetailByIdCopyWithImpl<GetTempleDetailById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTempleDetailById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TempleDetailNewEvent.getTempleDetailById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetTempleDetailByIdCopyWith<$Res> implements $TempleDetailNewEventCopyWith<$Res> {
  factory $GetTempleDetailByIdCopyWith(GetTempleDetailById value, $Res Function(GetTempleDetailById) _then) = _$GetTempleDetailByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetTempleDetailByIdCopyWithImpl<$Res>
    implements $GetTempleDetailByIdCopyWith<$Res> {
  _$GetTempleDetailByIdCopyWithImpl(this._self, this._then);

  final GetTempleDetailById _self;
  final $Res Function(GetTempleDetailById) _then;

/// Create a copy of TempleDetailNewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetTempleDetailById(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TempleWishlistvent implements TempleDetailNewEvent {
  const TempleWishlistvent({required this.itemId, required this.itemModel});
  

 final  String itemId;
 final  String itemModel;

/// Create a copy of TempleDetailNewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleWishlistventCopyWith<TempleWishlistvent> get copyWith => _$TempleWishlistventCopyWithImpl<TempleWishlistvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TempleWishlistvent&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,itemModel);

@override
String toString() {
  return 'TempleDetailNewEvent.templeToggleWishlist(itemId: $itemId, itemModel: $itemModel)';
}


}

/// @nodoc
abstract mixin class $TempleWishlistventCopyWith<$Res> implements $TempleDetailNewEventCopyWith<$Res> {
  factory $TempleWishlistventCopyWith(TempleWishlistvent value, $Res Function(TempleWishlistvent) _then) = _$TempleWishlistventCopyWithImpl;
@useResult
$Res call({
 String itemId, String itemModel
});




}
/// @nodoc
class _$TempleWishlistventCopyWithImpl<$Res>
    implements $TempleWishlistventCopyWith<$Res> {
  _$TempleWishlistventCopyWithImpl(this._self, this._then);

  final TempleWishlistvent _self;
  final $Res Function(TempleWishlistvent) _then;

/// Create a copy of TempleDetailNewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? itemModel = null,}) {
  return _then(TempleWishlistvent(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemModel: null == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RelatedTempleWishlistEvent implements TempleDetailNewEvent {
  const RelatedTempleWishlistEvent({required this.itemId, required this.itemModel});
  

 final  String itemId;
 final  String itemModel;

/// Create a copy of TempleDetailNewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelatedTempleWishlistEventCopyWith<RelatedTempleWishlistEvent> get copyWith => _$RelatedTempleWishlistEventCopyWithImpl<RelatedTempleWishlistEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelatedTempleWishlistEvent&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,itemModel);

@override
String toString() {
  return 'TempleDetailNewEvent.relatedTempleToggleWishlist(itemId: $itemId, itemModel: $itemModel)';
}


}

/// @nodoc
abstract mixin class $RelatedTempleWishlistEventCopyWith<$Res> implements $TempleDetailNewEventCopyWith<$Res> {
  factory $RelatedTempleWishlistEventCopyWith(RelatedTempleWishlistEvent value, $Res Function(RelatedTempleWishlistEvent) _then) = _$RelatedTempleWishlistEventCopyWithImpl;
@useResult
$Res call({
 String itemId, String itemModel
});




}
/// @nodoc
class _$RelatedTempleWishlistEventCopyWithImpl<$Res>
    implements $RelatedTempleWishlistEventCopyWith<$Res> {
  _$RelatedTempleWishlistEventCopyWithImpl(this._self, this._then);

  final RelatedTempleWishlistEvent _self;
  final $Res Function(RelatedTempleWishlistEvent) _then;

/// Create a copy of TempleDetailNewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? itemModel = null,}) {
  return _then(RelatedTempleWishlistEvent(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemModel: null == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
