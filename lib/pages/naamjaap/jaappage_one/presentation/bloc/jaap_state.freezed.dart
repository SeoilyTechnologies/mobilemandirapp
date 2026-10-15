// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jaap_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JaapState {

 bool get isLoading; bool get isSuccess; bool get isServerError; String get apiErrorMessage; String get selectedGodId; String get mantraLyrics; String get selectedMantraId; String get selectedMantraTitle; String get apiSuccessMessage; bool get isGodSelectedByUser; bool get isWishlistLoading; String get wishlistMessage;/// ✅ Jap Count
 String get selectedJapCount; HomeForYouApiResponse get items; String? get jaapSessionId; NaamJaapNewGodListResponse get godResponse; AartiResponse get aartiResponse;
/// Create a copy of JaapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JaapStateCopyWith<JaapState> get copyWith => _$JaapStateCopyWithImpl<JaapState>(this as JaapState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JaapState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.selectedGodId, selectedGodId) || other.selectedGodId == selectedGodId)&&(identical(other.mantraLyrics, mantraLyrics) || other.mantraLyrics == mantraLyrics)&&(identical(other.selectedMantraId, selectedMantraId) || other.selectedMantraId == selectedMantraId)&&(identical(other.selectedMantraTitle, selectedMantraTitle) || other.selectedMantraTitle == selectedMantraTitle)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.isGodSelectedByUser, isGodSelectedByUser) || other.isGodSelectedByUser == isGodSelectedByUser)&&(identical(other.isWishlistLoading, isWishlistLoading) || other.isWishlistLoading == isWishlistLoading)&&(identical(other.wishlistMessage, wishlistMessage) || other.wishlistMessage == wishlistMessage)&&(identical(other.selectedJapCount, selectedJapCount) || other.selectedJapCount == selectedJapCount)&&(identical(other.items, items) || other.items == items)&&(identical(other.jaapSessionId, jaapSessionId) || other.jaapSessionId == jaapSessionId)&&(identical(other.godResponse, godResponse) || other.godResponse == godResponse)&&(identical(other.aartiResponse, aartiResponse) || other.aartiResponse == aartiResponse));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,isServerError,apiErrorMessage,selectedGodId,mantraLyrics,selectedMantraId,selectedMantraTitle,apiSuccessMessage,isGodSelectedByUser,isWishlistLoading,wishlistMessage,selectedJapCount,items,jaapSessionId,godResponse,aartiResponse);

@override
String toString() {
  return 'JaapState(isLoading: $isLoading, isSuccess: $isSuccess, isServerError: $isServerError, apiErrorMessage: $apiErrorMessage, selectedGodId: $selectedGodId, mantraLyrics: $mantraLyrics, selectedMantraId: $selectedMantraId, selectedMantraTitle: $selectedMantraTitle, apiSuccessMessage: $apiSuccessMessage, isGodSelectedByUser: $isGodSelectedByUser, isWishlistLoading: $isWishlistLoading, wishlistMessage: $wishlistMessage, selectedJapCount: $selectedJapCount, items: $items, jaapSessionId: $jaapSessionId, godResponse: $godResponse, aartiResponse: $aartiResponse)';
}


}

/// @nodoc
abstract mixin class $JaapStateCopyWith<$Res>  {
  factory $JaapStateCopyWith(JaapState value, $Res Function(JaapState) _then) = _$JaapStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSuccess, bool isServerError, String apiErrorMessage, String selectedGodId, String mantraLyrics, String selectedMantraId, String selectedMantraTitle, String apiSuccessMessage, bool isGodSelectedByUser, bool isWishlistLoading, String wishlistMessage, String selectedJapCount, HomeForYouApiResponse items, String? jaapSessionId, NaamJaapNewGodListResponse godResponse, AartiResponse aartiResponse
});


$HomeForYouApiResponseCopyWith<$Res> get items;$NaamJaapNewGodListResponseCopyWith<$Res> get godResponse;$AartiResponseCopyWith<$Res> get aartiResponse;

}
/// @nodoc
class _$JaapStateCopyWithImpl<$Res>
    implements $JaapStateCopyWith<$Res> {
  _$JaapStateCopyWithImpl(this._self, this._then);

  final JaapState _self;
  final $Res Function(JaapState) _then;

/// Create a copy of JaapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSuccess = null,Object? isServerError = null,Object? apiErrorMessage = null,Object? selectedGodId = null,Object? mantraLyrics = null,Object? selectedMantraId = null,Object? selectedMantraTitle = null,Object? apiSuccessMessage = null,Object? isGodSelectedByUser = null,Object? isWishlistLoading = null,Object? wishlistMessage = null,Object? selectedJapCount = null,Object? items = null,Object? jaapSessionId = freezed,Object? godResponse = null,Object? aartiResponse = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,selectedGodId: null == selectedGodId ? _self.selectedGodId : selectedGodId // ignore: cast_nullable_to_non_nullable
as String,mantraLyrics: null == mantraLyrics ? _self.mantraLyrics : mantraLyrics // ignore: cast_nullable_to_non_nullable
as String,selectedMantraId: null == selectedMantraId ? _self.selectedMantraId : selectedMantraId // ignore: cast_nullable_to_non_nullable
as String,selectedMantraTitle: null == selectedMantraTitle ? _self.selectedMantraTitle : selectedMantraTitle // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,isGodSelectedByUser: null == isGodSelectedByUser ? _self.isGodSelectedByUser : isGodSelectedByUser // ignore: cast_nullable_to_non_nullable
as bool,isWishlistLoading: null == isWishlistLoading ? _self.isWishlistLoading : isWishlistLoading // ignore: cast_nullable_to_non_nullable
as bool,wishlistMessage: null == wishlistMessage ? _self.wishlistMessage : wishlistMessage // ignore: cast_nullable_to_non_nullable
as String,selectedJapCount: null == selectedJapCount ? _self.selectedJapCount : selectedJapCount // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as HomeForYouApiResponse,jaapSessionId: freezed == jaapSessionId ? _self.jaapSessionId : jaapSessionId // ignore: cast_nullable_to_non_nullable
as String?,godResponse: null == godResponse ? _self.godResponse : godResponse // ignore: cast_nullable_to_non_nullable
as NaamJaapNewGodListResponse,aartiResponse: null == aartiResponse ? _self.aartiResponse : aartiResponse // ignore: cast_nullable_to_non_nullable
as AartiResponse,
  ));
}
/// Create a copy of JaapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeForYouApiResponseCopyWith<$Res> get items {
  
  return $HomeForYouApiResponseCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}/// Create a copy of JaapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NaamJaapNewGodListResponseCopyWith<$Res> get godResponse {
  
  return $NaamJaapNewGodListResponseCopyWith<$Res>(_self.godResponse, (value) {
    return _then(_self.copyWith(godResponse: value));
  });
}/// Create a copy of JaapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AartiResponseCopyWith<$Res> get aartiResponse {
  
  return $AartiResponseCopyWith<$Res>(_self.aartiResponse, (value) {
    return _then(_self.copyWith(aartiResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [JaapState].
extension JaapStatePatterns on JaapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JaapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JaapState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JaapState value)  $default,){
final _that = this;
switch (_that) {
case _JaapState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JaapState value)?  $default,){
final _that = this;
switch (_that) {
case _JaapState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  bool isServerError,  String apiErrorMessage,  String selectedGodId,  String mantraLyrics,  String selectedMantraId,  String selectedMantraTitle,  String apiSuccessMessage,  bool isGodSelectedByUser,  bool isWishlistLoading,  String wishlistMessage,  String selectedJapCount,  HomeForYouApiResponse items,  String? jaapSessionId,  NaamJaapNewGodListResponse godResponse,  AartiResponse aartiResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JaapState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.isServerError,_that.apiErrorMessage,_that.selectedGodId,_that.mantraLyrics,_that.selectedMantraId,_that.selectedMantraTitle,_that.apiSuccessMessage,_that.isGodSelectedByUser,_that.isWishlistLoading,_that.wishlistMessage,_that.selectedJapCount,_that.items,_that.jaapSessionId,_that.godResponse,_that.aartiResponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  bool isServerError,  String apiErrorMessage,  String selectedGodId,  String mantraLyrics,  String selectedMantraId,  String selectedMantraTitle,  String apiSuccessMessage,  bool isGodSelectedByUser,  bool isWishlistLoading,  String wishlistMessage,  String selectedJapCount,  HomeForYouApiResponse items,  String? jaapSessionId,  NaamJaapNewGodListResponse godResponse,  AartiResponse aartiResponse)  $default,) {final _that = this;
switch (_that) {
case _JaapState():
return $default(_that.isLoading,_that.isSuccess,_that.isServerError,_that.apiErrorMessage,_that.selectedGodId,_that.mantraLyrics,_that.selectedMantraId,_that.selectedMantraTitle,_that.apiSuccessMessage,_that.isGodSelectedByUser,_that.isWishlistLoading,_that.wishlistMessage,_that.selectedJapCount,_that.items,_that.jaapSessionId,_that.godResponse,_that.aartiResponse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSuccess,  bool isServerError,  String apiErrorMessage,  String selectedGodId,  String mantraLyrics,  String selectedMantraId,  String selectedMantraTitle,  String apiSuccessMessage,  bool isGodSelectedByUser,  bool isWishlistLoading,  String wishlistMessage,  String selectedJapCount,  HomeForYouApiResponse items,  String? jaapSessionId,  NaamJaapNewGodListResponse godResponse,  AartiResponse aartiResponse)?  $default,) {final _that = this;
switch (_that) {
case _JaapState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.isServerError,_that.apiErrorMessage,_that.selectedGodId,_that.mantraLyrics,_that.selectedMantraId,_that.selectedMantraTitle,_that.apiSuccessMessage,_that.isGodSelectedByUser,_that.isWishlistLoading,_that.wishlistMessage,_that.selectedJapCount,_that.items,_that.jaapSessionId,_that.godResponse,_that.aartiResponse);case _:
  return null;

}
}

}

/// @nodoc


class _JaapState implements JaapState {
  const _JaapState({this.isLoading = false, this.isSuccess = false, this.isServerError = false, this.apiErrorMessage = '', this.selectedGodId = '', this.mantraLyrics = '', this.selectedMantraId = '', this.selectedMantraTitle = '', this.apiSuccessMessage = '', this.isGodSelectedByUser = false, this.isWishlistLoading = false, this.wishlistMessage = '', this.selectedJapCount = '108', this.items = const HomeForYouApiResponse(), this.jaapSessionId, this.godResponse = const NaamJaapNewGodListResponse(), this.aartiResponse = const AartiResponse()});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool isServerError;
@override@JsonKey() final  String apiErrorMessage;
@override@JsonKey() final  String selectedGodId;
@override@JsonKey() final  String mantraLyrics;
@override@JsonKey() final  String selectedMantraId;
@override@JsonKey() final  String selectedMantraTitle;
@override@JsonKey() final  String apiSuccessMessage;
@override@JsonKey() final  bool isGodSelectedByUser;
@override@JsonKey() final  bool isWishlistLoading;
@override@JsonKey() final  String wishlistMessage;
/// ✅ Jap Count
@override@JsonKey() final  String selectedJapCount;
@override@JsonKey() final  HomeForYouApiResponse items;
@override final  String? jaapSessionId;
@override@JsonKey() final  NaamJaapNewGodListResponse godResponse;
@override@JsonKey() final  AartiResponse aartiResponse;

/// Create a copy of JaapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JaapStateCopyWith<_JaapState> get copyWith => __$JaapStateCopyWithImpl<_JaapState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JaapState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.selectedGodId, selectedGodId) || other.selectedGodId == selectedGodId)&&(identical(other.mantraLyrics, mantraLyrics) || other.mantraLyrics == mantraLyrics)&&(identical(other.selectedMantraId, selectedMantraId) || other.selectedMantraId == selectedMantraId)&&(identical(other.selectedMantraTitle, selectedMantraTitle) || other.selectedMantraTitle == selectedMantraTitle)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.isGodSelectedByUser, isGodSelectedByUser) || other.isGodSelectedByUser == isGodSelectedByUser)&&(identical(other.isWishlistLoading, isWishlistLoading) || other.isWishlistLoading == isWishlistLoading)&&(identical(other.wishlistMessage, wishlistMessage) || other.wishlistMessage == wishlistMessage)&&(identical(other.selectedJapCount, selectedJapCount) || other.selectedJapCount == selectedJapCount)&&(identical(other.items, items) || other.items == items)&&(identical(other.jaapSessionId, jaapSessionId) || other.jaapSessionId == jaapSessionId)&&(identical(other.godResponse, godResponse) || other.godResponse == godResponse)&&(identical(other.aartiResponse, aartiResponse) || other.aartiResponse == aartiResponse));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,isServerError,apiErrorMessage,selectedGodId,mantraLyrics,selectedMantraId,selectedMantraTitle,apiSuccessMessage,isGodSelectedByUser,isWishlistLoading,wishlistMessage,selectedJapCount,items,jaapSessionId,godResponse,aartiResponse);

@override
String toString() {
  return 'JaapState(isLoading: $isLoading, isSuccess: $isSuccess, isServerError: $isServerError, apiErrorMessage: $apiErrorMessage, selectedGodId: $selectedGodId, mantraLyrics: $mantraLyrics, selectedMantraId: $selectedMantraId, selectedMantraTitle: $selectedMantraTitle, apiSuccessMessage: $apiSuccessMessage, isGodSelectedByUser: $isGodSelectedByUser, isWishlistLoading: $isWishlistLoading, wishlistMessage: $wishlistMessage, selectedJapCount: $selectedJapCount, items: $items, jaapSessionId: $jaapSessionId, godResponse: $godResponse, aartiResponse: $aartiResponse)';
}


}

/// @nodoc
abstract mixin class _$JaapStateCopyWith<$Res> implements $JaapStateCopyWith<$Res> {
  factory _$JaapStateCopyWith(_JaapState value, $Res Function(_JaapState) _then) = __$JaapStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSuccess, bool isServerError, String apiErrorMessage, String selectedGodId, String mantraLyrics, String selectedMantraId, String selectedMantraTitle, String apiSuccessMessage, bool isGodSelectedByUser, bool isWishlistLoading, String wishlistMessage, String selectedJapCount, HomeForYouApiResponse items, String? jaapSessionId, NaamJaapNewGodListResponse godResponse, AartiResponse aartiResponse
});


@override $HomeForYouApiResponseCopyWith<$Res> get items;@override $NaamJaapNewGodListResponseCopyWith<$Res> get godResponse;@override $AartiResponseCopyWith<$Res> get aartiResponse;

}
/// @nodoc
class __$JaapStateCopyWithImpl<$Res>
    implements _$JaapStateCopyWith<$Res> {
  __$JaapStateCopyWithImpl(this._self, this._then);

  final _JaapState _self;
  final $Res Function(_JaapState) _then;

/// Create a copy of JaapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSuccess = null,Object? isServerError = null,Object? apiErrorMessage = null,Object? selectedGodId = null,Object? mantraLyrics = null,Object? selectedMantraId = null,Object? selectedMantraTitle = null,Object? apiSuccessMessage = null,Object? isGodSelectedByUser = null,Object? isWishlistLoading = null,Object? wishlistMessage = null,Object? selectedJapCount = null,Object? items = null,Object? jaapSessionId = freezed,Object? godResponse = null,Object? aartiResponse = null,}) {
  return _then(_JaapState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,selectedGodId: null == selectedGodId ? _self.selectedGodId : selectedGodId // ignore: cast_nullable_to_non_nullable
as String,mantraLyrics: null == mantraLyrics ? _self.mantraLyrics : mantraLyrics // ignore: cast_nullable_to_non_nullable
as String,selectedMantraId: null == selectedMantraId ? _self.selectedMantraId : selectedMantraId // ignore: cast_nullable_to_non_nullable
as String,selectedMantraTitle: null == selectedMantraTitle ? _self.selectedMantraTitle : selectedMantraTitle // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,isGodSelectedByUser: null == isGodSelectedByUser ? _self.isGodSelectedByUser : isGodSelectedByUser // ignore: cast_nullable_to_non_nullable
as bool,isWishlistLoading: null == isWishlistLoading ? _self.isWishlistLoading : isWishlistLoading // ignore: cast_nullable_to_non_nullable
as bool,wishlistMessage: null == wishlistMessage ? _self.wishlistMessage : wishlistMessage // ignore: cast_nullable_to_non_nullable
as String,selectedJapCount: null == selectedJapCount ? _self.selectedJapCount : selectedJapCount // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as HomeForYouApiResponse,jaapSessionId: freezed == jaapSessionId ? _self.jaapSessionId : jaapSessionId // ignore: cast_nullable_to_non_nullable
as String?,godResponse: null == godResponse ? _self.godResponse : godResponse // ignore: cast_nullable_to_non_nullable
as NaamJaapNewGodListResponse,aartiResponse: null == aartiResponse ? _self.aartiResponse : aartiResponse // ignore: cast_nullable_to_non_nullable
as AartiResponse,
  ));
}

/// Create a copy of JaapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeForYouApiResponseCopyWith<$Res> get items {
  
  return $HomeForYouApiResponseCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}/// Create a copy of JaapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NaamJaapNewGodListResponseCopyWith<$Res> get godResponse {
  
  return $NaamJaapNewGodListResponseCopyWith<$Res>(_self.godResponse, (value) {
    return _then(_self.copyWith(godResponse: value));
  });
}/// Create a copy of JaapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AartiResponseCopyWith<$Res> get aartiResponse {
  
  return $AartiResponseCopyWith<$Res>(_self.aartiResponse, (value) {
    return _then(_self.copyWith(aartiResponse: value));
  });
}
}

// dart format on
