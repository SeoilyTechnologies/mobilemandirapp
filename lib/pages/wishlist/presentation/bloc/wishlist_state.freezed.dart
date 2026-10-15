// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WishlistState {

/// UI State
 bool get isLoading; bool get isSuccess; String get apiErrorMessage; String get apiSuccessMessage; bool get isWishlistLoading; String get wishlistMessage;/// API Data
 int get count; WishlistResponse get items;
/// Create a copy of WishlistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistStateCopyWith<WishlistState> get copyWith => _$WishlistStateCopyWithImpl<WishlistState>(this as WishlistState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.isWishlistLoading, isWishlistLoading) || other.isWishlistLoading == isWishlistLoading)&&(identical(other.wishlistMessage, wishlistMessage) || other.wishlistMessage == wishlistMessage)&&(identical(other.count, count) || other.count == count)&&(identical(other.items, items) || other.items == items));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,apiErrorMessage,apiSuccessMessage,isWishlistLoading,wishlistMessage,count,items);

@override
String toString() {
  return 'WishlistState(isLoading: $isLoading, isSuccess: $isSuccess, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, isWishlistLoading: $isWishlistLoading, wishlistMessage: $wishlistMessage, count: $count, items: $items)';
}


}

/// @nodoc
abstract mixin class $WishlistStateCopyWith<$Res>  {
  factory $WishlistStateCopyWith(WishlistState value, $Res Function(WishlistState) _then) = _$WishlistStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSuccess, String apiErrorMessage, String apiSuccessMessage, bool isWishlistLoading, String wishlistMessage, int count, WishlistResponse items
});


$WishlistResponseCopyWith<$Res> get items;

}
/// @nodoc
class _$WishlistStateCopyWithImpl<$Res>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._self, this._then);

  final WishlistState _self;
  final $Res Function(WishlistState) _then;

/// Create a copy of WishlistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSuccess = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? isWishlistLoading = null,Object? wishlistMessage = null,Object? count = null,Object? items = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,isWishlistLoading: null == isWishlistLoading ? _self.isWishlistLoading : isWishlistLoading // ignore: cast_nullable_to_non_nullable
as bool,wishlistMessage: null == wishlistMessage ? _self.wishlistMessage : wishlistMessage // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as WishlistResponse,
  ));
}
/// Create a copy of WishlistState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WishlistResponseCopyWith<$Res> get items {
  
  return $WishlistResponseCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [WishlistState].
extension WishlistStatePatterns on WishlistState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WishlistState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WishlistState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WishlistState value)  $default,){
final _that = this;
switch (_that) {
case _WishlistState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WishlistState value)?  $default,){
final _that = this;
switch (_that) {
case _WishlistState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  String apiErrorMessage,  String apiSuccessMessage,  bool isWishlistLoading,  String wishlistMessage,  int count,  WishlistResponse items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishlistState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.apiErrorMessage,_that.apiSuccessMessage,_that.isWishlistLoading,_that.wishlistMessage,_that.count,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  String apiErrorMessage,  String apiSuccessMessage,  bool isWishlistLoading,  String wishlistMessage,  int count,  WishlistResponse items)  $default,) {final _that = this;
switch (_that) {
case _WishlistState():
return $default(_that.isLoading,_that.isSuccess,_that.apiErrorMessage,_that.apiSuccessMessage,_that.isWishlistLoading,_that.wishlistMessage,_that.count,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSuccess,  String apiErrorMessage,  String apiSuccessMessage,  bool isWishlistLoading,  String wishlistMessage,  int count,  WishlistResponse items)?  $default,) {final _that = this;
switch (_that) {
case _WishlistState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.apiErrorMessage,_that.apiSuccessMessage,_that.isWishlistLoading,_that.wishlistMessage,_that.count,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _WishlistState implements WishlistState {
  const _WishlistState({this.isLoading = false, this.isSuccess = false, this.apiErrorMessage = '', this.apiSuccessMessage = '', this.isWishlistLoading = false, this.wishlistMessage = '', this.count = 0, this.items = const WishlistResponse()});
  

/// UI State
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  String apiErrorMessage;
@override@JsonKey() final  String apiSuccessMessage;
@override@JsonKey() final  bool isWishlistLoading;
@override@JsonKey() final  String wishlistMessage;
/// API Data
@override@JsonKey() final  int count;
@override@JsonKey() final  WishlistResponse items;

/// Create a copy of WishlistState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistStateCopyWith<_WishlistState> get copyWith => __$WishlistStateCopyWithImpl<_WishlistState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.isWishlistLoading, isWishlistLoading) || other.isWishlistLoading == isWishlistLoading)&&(identical(other.wishlistMessage, wishlistMessage) || other.wishlistMessage == wishlistMessage)&&(identical(other.count, count) || other.count == count)&&(identical(other.items, items) || other.items == items));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,apiErrorMessage,apiSuccessMessage,isWishlistLoading,wishlistMessage,count,items);

@override
String toString() {
  return 'WishlistState(isLoading: $isLoading, isSuccess: $isSuccess, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, isWishlistLoading: $isWishlistLoading, wishlistMessage: $wishlistMessage, count: $count, items: $items)';
}


}

/// @nodoc
abstract mixin class _$WishlistStateCopyWith<$Res> implements $WishlistStateCopyWith<$Res> {
  factory _$WishlistStateCopyWith(_WishlistState value, $Res Function(_WishlistState) _then) = __$WishlistStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSuccess, String apiErrorMessage, String apiSuccessMessage, bool isWishlistLoading, String wishlistMessage, int count, WishlistResponse items
});


@override $WishlistResponseCopyWith<$Res> get items;

}
/// @nodoc
class __$WishlistStateCopyWithImpl<$Res>
    implements _$WishlistStateCopyWith<$Res> {
  __$WishlistStateCopyWithImpl(this._self, this._then);

  final _WishlistState _self;
  final $Res Function(_WishlistState) _then;

/// Create a copy of WishlistState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSuccess = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? isWishlistLoading = null,Object? wishlistMessage = null,Object? count = null,Object? items = null,}) {
  return _then(_WishlistState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,isWishlistLoading: null == isWishlistLoading ? _self.isWishlistLoading : isWishlistLoading // ignore: cast_nullable_to_non_nullable
as bool,wishlistMessage: null == wishlistMessage ? _self.wishlistMessage : wishlistMessage // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as WishlistResponse,
  ));
}

/// Create a copy of WishlistState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WishlistResponseCopyWith<$Res> get items {
  
  return $WishlistResponseCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}

// dart format on
