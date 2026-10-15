// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WishlistEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WishlistEvent()';
}


}

/// @nodoc
class $WishlistEventCopyWith<$Res>  {
$WishlistEventCopyWith(WishlistEvent _, $Res Function(WishlistEvent) __);
}


/// Adds pattern-matching-related methods to [WishlistEvent].
extension WishlistEventPatterns on WishlistEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetWishlist value)?  getWishlist,TResult Function( ToggleWishlist value)?  toggleWishlist,TResult Function( ToggleWishlistAartiChalisaListNew value)?  toggleWishlistnew,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetWishlist() when getWishlist != null:
return getWishlist(_that);case ToggleWishlist() when toggleWishlist != null:
return toggleWishlist(_that);case ToggleWishlistAartiChalisaListNew() when toggleWishlistnew != null:
return toggleWishlistnew(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetWishlist value)  getWishlist,required TResult Function( ToggleWishlist value)  toggleWishlist,required TResult Function( ToggleWishlistAartiChalisaListNew value)  toggleWishlistnew,}){
final _that = this;
switch (_that) {
case GetWishlist():
return getWishlist(_that);case ToggleWishlist():
return toggleWishlist(_that);case ToggleWishlistAartiChalisaListNew():
return toggleWishlistnew(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetWishlist value)?  getWishlist,TResult? Function( ToggleWishlist value)?  toggleWishlist,TResult? Function( ToggleWishlistAartiChalisaListNew value)?  toggleWishlistnew,}){
final _that = this;
switch (_that) {
case GetWishlist() when getWishlist != null:
return getWishlist(_that);case ToggleWishlist() when toggleWishlist != null:
return toggleWishlist(_that);case ToggleWishlistAartiChalisaListNew() when toggleWishlistnew != null:
return toggleWishlistnew(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  getWishlist,TResult Function( String userId,  String itemId,  String itemModel)?  toggleWishlist,TResult Function( String itemId,  String itemModel)?  toggleWishlistnew,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetWishlist() when getWishlist != null:
return getWishlist(_that.userId);case ToggleWishlist() when toggleWishlist != null:
return toggleWishlist(_that.userId,_that.itemId,_that.itemModel);case ToggleWishlistAartiChalisaListNew() when toggleWishlistnew != null:
return toggleWishlistnew(_that.itemId,_that.itemModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  getWishlist,required TResult Function( String userId,  String itemId,  String itemModel)  toggleWishlist,required TResult Function( String itemId,  String itemModel)  toggleWishlistnew,}) {final _that = this;
switch (_that) {
case GetWishlist():
return getWishlist(_that.userId);case ToggleWishlist():
return toggleWishlist(_that.userId,_that.itemId,_that.itemModel);case ToggleWishlistAartiChalisaListNew():
return toggleWishlistnew(_that.itemId,_that.itemModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  getWishlist,TResult? Function( String userId,  String itemId,  String itemModel)?  toggleWishlist,TResult? Function( String itemId,  String itemModel)?  toggleWishlistnew,}) {final _that = this;
switch (_that) {
case GetWishlist() when getWishlist != null:
return getWishlist(_that.userId);case ToggleWishlist() when toggleWishlist != null:
return toggleWishlist(_that.userId,_that.itemId,_that.itemModel);case ToggleWishlistAartiChalisaListNew() when toggleWishlistnew != null:
return toggleWishlistnew(_that.itemId,_that.itemModel);case _:
  return null;

}
}

}

/// @nodoc


class GetWishlist implements WishlistEvent {
  const GetWishlist({this.userId = ''});
  

@JsonKey() final  String userId;

/// Create a copy of WishlistEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWishlistCopyWith<GetWishlist> get copyWith => _$GetWishlistCopyWithImpl<GetWishlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWishlist&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'WishlistEvent.getWishlist(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetWishlistCopyWith<$Res> implements $WishlistEventCopyWith<$Res> {
  factory $GetWishlistCopyWith(GetWishlist value, $Res Function(GetWishlist) _then) = _$GetWishlistCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetWishlistCopyWithImpl<$Res>
    implements $GetWishlistCopyWith<$Res> {
  _$GetWishlistCopyWithImpl(this._self, this._then);

  final GetWishlist _self;
  final $Res Function(GetWishlist) _then;

/// Create a copy of WishlistEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(GetWishlist(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ToggleWishlist implements WishlistEvent {
  const ToggleWishlist({this.userId = '', this.itemId = '', this.itemModel = ''});
  

@JsonKey() final  String userId;
@JsonKey() final  String itemId;
@JsonKey() final  String itemModel;

/// Create a copy of WishlistEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleWishlistCopyWith<ToggleWishlist> get copyWith => _$ToggleWishlistCopyWithImpl<ToggleWishlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleWishlist&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel));
}


@override
int get hashCode => Object.hash(runtimeType,userId,itemId,itemModel);

@override
String toString() {
  return 'WishlistEvent.toggleWishlist(userId: $userId, itemId: $itemId, itemModel: $itemModel)';
}


}

/// @nodoc
abstract mixin class $ToggleWishlistCopyWith<$Res> implements $WishlistEventCopyWith<$Res> {
  factory $ToggleWishlistCopyWith(ToggleWishlist value, $Res Function(ToggleWishlist) _then) = _$ToggleWishlistCopyWithImpl;
@useResult
$Res call({
 String userId, String itemId, String itemModel
});




}
/// @nodoc
class _$ToggleWishlistCopyWithImpl<$Res>
    implements $ToggleWishlistCopyWith<$Res> {
  _$ToggleWishlistCopyWithImpl(this._self, this._then);

  final ToggleWishlist _self;
  final $Res Function(ToggleWishlist) _then;

/// Create a copy of WishlistEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? itemId = null,Object? itemModel = null,}) {
  return _then(ToggleWishlist(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemModel: null == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ToggleWishlistAartiChalisaListNew implements WishlistEvent {
  const ToggleWishlistAartiChalisaListNew({required this.itemId, required this.itemModel});
  

 final  String itemId;
 final  String itemModel;

/// Create a copy of WishlistEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleWishlistAartiChalisaListNewCopyWith<ToggleWishlistAartiChalisaListNew> get copyWith => _$ToggleWishlistAartiChalisaListNewCopyWithImpl<ToggleWishlistAartiChalisaListNew>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleWishlistAartiChalisaListNew&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,itemModel);

@override
String toString() {
  return 'WishlistEvent.toggleWishlistnew(itemId: $itemId, itemModel: $itemModel)';
}


}

/// @nodoc
abstract mixin class $ToggleWishlistAartiChalisaListNewCopyWith<$Res> implements $WishlistEventCopyWith<$Res> {
  factory $ToggleWishlistAartiChalisaListNewCopyWith(ToggleWishlistAartiChalisaListNew value, $Res Function(ToggleWishlistAartiChalisaListNew) _then) = _$ToggleWishlistAartiChalisaListNewCopyWithImpl;
@useResult
$Res call({
 String itemId, String itemModel
});




}
/// @nodoc
class _$ToggleWishlistAartiChalisaListNewCopyWithImpl<$Res>
    implements $ToggleWishlistAartiChalisaListNewCopyWith<$Res> {
  _$ToggleWishlistAartiChalisaListNewCopyWithImpl(this._self, this._then);

  final ToggleWishlistAartiChalisaListNew _self;
  final $Res Function(ToggleWishlistAartiChalisaListNew) _then;

/// Create a copy of WishlistEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? itemModel = null,}) {
  return _then(ToggleWishlistAartiChalisaListNew(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemModel: null == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
