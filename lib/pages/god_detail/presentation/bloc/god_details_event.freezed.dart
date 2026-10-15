// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'god_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GodDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GodDetailsEvent()';
}


}

/// @nodoc
class $GodDetailsEventCopyWith<$Res>  {
$GodDetailsEventCopyWith(GodDetailsEvent _, $Res Function(GodDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [GodDetailsEvent].
extension GodDetailsEventPatterns on GodDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetGodDetailById value)?  getGodDetailById,TResult Function( GodWishlistvent value)?  godToggleWishlist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetGodDetailById() when getGodDetailById != null:
return getGodDetailById(_that);case GodWishlistvent() when godToggleWishlist != null:
return godToggleWishlist(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetGodDetailById value)  getGodDetailById,required TResult Function( GodWishlistvent value)  godToggleWishlist,}){
final _that = this;
switch (_that) {
case GetGodDetailById():
return getGodDetailById(_that);case GodWishlistvent():
return godToggleWishlist(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetGodDetailById value)?  getGodDetailById,TResult? Function( GodWishlistvent value)?  godToggleWishlist,}){
final _that = this;
switch (_that) {
case GetGodDetailById() when getGodDetailById != null:
return getGodDetailById(_that);case GodWishlistvent() when godToggleWishlist != null:
return godToggleWishlist(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  getGodDetailById,TResult Function( String itemId,  String itemModel)?  godToggleWishlist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetGodDetailById() when getGodDetailById != null:
return getGodDetailById(_that.id);case GodWishlistvent() when godToggleWishlist != null:
return godToggleWishlist(_that.itemId,_that.itemModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  getGodDetailById,required TResult Function( String itemId,  String itemModel)  godToggleWishlist,}) {final _that = this;
switch (_that) {
case GetGodDetailById():
return getGodDetailById(_that.id);case GodWishlistvent():
return godToggleWishlist(_that.itemId,_that.itemModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  getGodDetailById,TResult? Function( String itemId,  String itemModel)?  godToggleWishlist,}) {final _that = this;
switch (_that) {
case GetGodDetailById() when getGodDetailById != null:
return getGodDetailById(_that.id);case GodWishlistvent() when godToggleWishlist != null:
return godToggleWishlist(_that.itemId,_that.itemModel);case _:
  return null;

}
}

}

/// @nodoc


class GetGodDetailById implements GodDetailsEvent {
  const GetGodDetailById({required this.id});
  

 final  String id;

/// Create a copy of GodDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGodDetailByIdCopyWith<GetGodDetailById> get copyWith => _$GetGodDetailByIdCopyWithImpl<GetGodDetailById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGodDetailById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GodDetailsEvent.getGodDetailById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetGodDetailByIdCopyWith<$Res> implements $GodDetailsEventCopyWith<$Res> {
  factory $GetGodDetailByIdCopyWith(GetGodDetailById value, $Res Function(GetGodDetailById) _then) = _$GetGodDetailByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetGodDetailByIdCopyWithImpl<$Res>
    implements $GetGodDetailByIdCopyWith<$Res> {
  _$GetGodDetailByIdCopyWithImpl(this._self, this._then);

  final GetGodDetailById _self;
  final $Res Function(GetGodDetailById) _then;

/// Create a copy of GodDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetGodDetailById(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GodWishlistvent implements GodDetailsEvent {
  const GodWishlistvent({required this.itemId, required this.itemModel});
  

 final  String itemId;
 final  String itemModel;

/// Create a copy of GodDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodWishlistventCopyWith<GodWishlistvent> get copyWith => _$GodWishlistventCopyWithImpl<GodWishlistvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodWishlistvent&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,itemModel);

@override
String toString() {
  return 'GodDetailsEvent.godToggleWishlist(itemId: $itemId, itemModel: $itemModel)';
}


}

/// @nodoc
abstract mixin class $GodWishlistventCopyWith<$Res> implements $GodDetailsEventCopyWith<$Res> {
  factory $GodWishlistventCopyWith(GodWishlistvent value, $Res Function(GodWishlistvent) _then) = _$GodWishlistventCopyWithImpl;
@useResult
$Res call({
 String itemId, String itemModel
});




}
/// @nodoc
class _$GodWishlistventCopyWithImpl<$Res>
    implements $GodWishlistventCopyWith<$Res> {
  _$GodWishlistventCopyWithImpl(this._self, this._then);

  final GodWishlistvent _self;
  final $Res Function(GodWishlistvent) _then;

/// Create a copy of GodDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? itemModel = null,}) {
  return _then(GodWishlistvent(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemModel: null == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
