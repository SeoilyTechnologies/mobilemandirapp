// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'god_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GodDetailsState {

 bool get isLoading; String get apiError; String get apiSuccess; GodDetailApiResponse get godDetailApiResponse; bool get isWishlistLoading; String get apiErrorMessage; String get wishlistMessage;
/// Create a copy of GodDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodDetailsStateCopyWith<GodDetailsState> get copyWith => _$GodDetailsStateCopyWithImpl<GodDetailsState>(this as GodDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodDetailsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiError, apiError) || other.apiError == apiError)&&(identical(other.apiSuccess, apiSuccess) || other.apiSuccess == apiSuccess)&&(identical(other.godDetailApiResponse, godDetailApiResponse) || other.godDetailApiResponse == godDetailApiResponse)&&(identical(other.isWishlistLoading, isWishlistLoading) || other.isWishlistLoading == isWishlistLoading)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.wishlistMessage, wishlistMessage) || other.wishlistMessage == wishlistMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiError,apiSuccess,godDetailApiResponse,isWishlistLoading,apiErrorMessage,wishlistMessage);

@override
String toString() {
  return 'GodDetailsState(isLoading: $isLoading, apiError: $apiError, apiSuccess: $apiSuccess, godDetailApiResponse: $godDetailApiResponse, isWishlistLoading: $isWishlistLoading, apiErrorMessage: $apiErrorMessage, wishlistMessage: $wishlistMessage)';
}


}

/// @nodoc
abstract mixin class $GodDetailsStateCopyWith<$Res>  {
  factory $GodDetailsStateCopyWith(GodDetailsState value, $Res Function(GodDetailsState) _then) = _$GodDetailsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String apiError, String apiSuccess, GodDetailApiResponse godDetailApiResponse, bool isWishlistLoading, String apiErrorMessage, String wishlistMessage
});


$GodDetailApiResponseCopyWith<$Res> get godDetailApiResponse;

}
/// @nodoc
class _$GodDetailsStateCopyWithImpl<$Res>
    implements $GodDetailsStateCopyWith<$Res> {
  _$GodDetailsStateCopyWithImpl(this._self, this._then);

  final GodDetailsState _self;
  final $Res Function(GodDetailsState) _then;

/// Create a copy of GodDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? apiError = null,Object? apiSuccess = null,Object? godDetailApiResponse = null,Object? isWishlistLoading = null,Object? apiErrorMessage = null,Object? wishlistMessage = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiError: null == apiError ? _self.apiError : apiError // ignore: cast_nullable_to_non_nullable
as String,apiSuccess: null == apiSuccess ? _self.apiSuccess : apiSuccess // ignore: cast_nullable_to_non_nullable
as String,godDetailApiResponse: null == godDetailApiResponse ? _self.godDetailApiResponse : godDetailApiResponse // ignore: cast_nullable_to_non_nullable
as GodDetailApiResponse,isWishlistLoading: null == isWishlistLoading ? _self.isWishlistLoading : isWishlistLoading // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,wishlistMessage: null == wishlistMessage ? _self.wishlistMessage : wishlistMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of GodDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodDetailApiResponseCopyWith<$Res> get godDetailApiResponse {
  
  return $GodDetailApiResponseCopyWith<$Res>(_self.godDetailApiResponse, (value) {
    return _then(_self.copyWith(godDetailApiResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [GodDetailsState].
extension GodDetailsStatePatterns on GodDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GodDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GodDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GodDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _GodDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GodDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _GodDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String apiError,  String apiSuccess,  GodDetailApiResponse godDetailApiResponse,  bool isWishlistLoading,  String apiErrorMessage,  String wishlistMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodDetailsState() when $default != null:
return $default(_that.isLoading,_that.apiError,_that.apiSuccess,_that.godDetailApiResponse,_that.isWishlistLoading,_that.apiErrorMessage,_that.wishlistMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String apiError,  String apiSuccess,  GodDetailApiResponse godDetailApiResponse,  bool isWishlistLoading,  String apiErrorMessage,  String wishlistMessage)  $default,) {final _that = this;
switch (_that) {
case _GodDetailsState():
return $default(_that.isLoading,_that.apiError,_that.apiSuccess,_that.godDetailApiResponse,_that.isWishlistLoading,_that.apiErrorMessage,_that.wishlistMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String apiError,  String apiSuccess,  GodDetailApiResponse godDetailApiResponse,  bool isWishlistLoading,  String apiErrorMessage,  String wishlistMessage)?  $default,) {final _that = this;
switch (_that) {
case _GodDetailsState() when $default != null:
return $default(_that.isLoading,_that.apiError,_that.apiSuccess,_that.godDetailApiResponse,_that.isWishlistLoading,_that.apiErrorMessage,_that.wishlistMessage);case _:
  return null;

}
}

}

/// @nodoc


class _GodDetailsState implements GodDetailsState {
  const _GodDetailsState({this.isLoading = false, this.apiError = '', this.apiSuccess = '', this.godDetailApiResponse = const GodDetailApiResponse(), this.isWishlistLoading = false, this.apiErrorMessage = '', this.wishlistMessage = ''});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String apiError;
@override@JsonKey() final  String apiSuccess;
@override@JsonKey() final  GodDetailApiResponse godDetailApiResponse;
@override@JsonKey() final  bool isWishlistLoading;
@override@JsonKey() final  String apiErrorMessage;
@override@JsonKey() final  String wishlistMessage;

/// Create a copy of GodDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodDetailsStateCopyWith<_GodDetailsState> get copyWith => __$GodDetailsStateCopyWithImpl<_GodDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodDetailsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiError, apiError) || other.apiError == apiError)&&(identical(other.apiSuccess, apiSuccess) || other.apiSuccess == apiSuccess)&&(identical(other.godDetailApiResponse, godDetailApiResponse) || other.godDetailApiResponse == godDetailApiResponse)&&(identical(other.isWishlistLoading, isWishlistLoading) || other.isWishlistLoading == isWishlistLoading)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.wishlistMessage, wishlistMessage) || other.wishlistMessage == wishlistMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiError,apiSuccess,godDetailApiResponse,isWishlistLoading,apiErrorMessage,wishlistMessage);

@override
String toString() {
  return 'GodDetailsState(isLoading: $isLoading, apiError: $apiError, apiSuccess: $apiSuccess, godDetailApiResponse: $godDetailApiResponse, isWishlistLoading: $isWishlistLoading, apiErrorMessage: $apiErrorMessage, wishlistMessage: $wishlistMessage)';
}


}

/// @nodoc
abstract mixin class _$GodDetailsStateCopyWith<$Res> implements $GodDetailsStateCopyWith<$Res> {
  factory _$GodDetailsStateCopyWith(_GodDetailsState value, $Res Function(_GodDetailsState) _then) = __$GodDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String apiError, String apiSuccess, GodDetailApiResponse godDetailApiResponse, bool isWishlistLoading, String apiErrorMessage, String wishlistMessage
});


@override $GodDetailApiResponseCopyWith<$Res> get godDetailApiResponse;

}
/// @nodoc
class __$GodDetailsStateCopyWithImpl<$Res>
    implements _$GodDetailsStateCopyWith<$Res> {
  __$GodDetailsStateCopyWithImpl(this._self, this._then);

  final _GodDetailsState _self;
  final $Res Function(_GodDetailsState) _then;

/// Create a copy of GodDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? apiError = null,Object? apiSuccess = null,Object? godDetailApiResponse = null,Object? isWishlistLoading = null,Object? apiErrorMessage = null,Object? wishlistMessage = null,}) {
  return _then(_GodDetailsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiError: null == apiError ? _self.apiError : apiError // ignore: cast_nullable_to_non_nullable
as String,apiSuccess: null == apiSuccess ? _self.apiSuccess : apiSuccess // ignore: cast_nullable_to_non_nullable
as String,godDetailApiResponse: null == godDetailApiResponse ? _self.godDetailApiResponse : godDetailApiResponse // ignore: cast_nullable_to_non_nullable
as GodDetailApiResponse,isWishlistLoading: null == isWishlistLoading ? _self.isWishlistLoading : isWishlistLoading // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,wishlistMessage: null == wishlistMessage ? _self.wishlistMessage : wishlistMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of GodDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodDetailApiResponseCopyWith<$Res> get godDetailApiResponse {
  
  return $GodDetailApiResponseCopyWith<$Res>(_self.godDetailApiResponse, (value) {
    return _then(_self.copyWith(godDetailApiResponse: value));
  });
}
}

// dart format on
