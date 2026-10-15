// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgetPasswordState {

 String get email; bool get isLoading; bool get isSuccess; bool get isError; bool get isServerError; String get errorMessage; ForgotPasswordModel get forgotpasswordresponse;
/// Create a copy of ForgetPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgetPasswordStateCopyWith<ForgetPasswordState> get copyWith => _$ForgetPasswordStateCopyWithImpl<ForgetPasswordState>(this as ForgetPasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetPasswordState&&(identical(other.email, email) || other.email == email)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.forgotpasswordresponse, forgotpasswordresponse) || other.forgotpasswordresponse == forgotpasswordresponse));
}


@override
int get hashCode => Object.hash(runtimeType,email,isLoading,isSuccess,isError,isServerError,errorMessage,forgotpasswordresponse);

@override
String toString() {
  return 'ForgetPasswordState(email: $email, isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError, isServerError: $isServerError, errorMessage: $errorMessage, forgotpasswordresponse: $forgotpasswordresponse)';
}


}

/// @nodoc
abstract mixin class $ForgetPasswordStateCopyWith<$Res>  {
  factory $ForgetPasswordStateCopyWith(ForgetPasswordState value, $Res Function(ForgetPasswordState) _then) = _$ForgetPasswordStateCopyWithImpl;
@useResult
$Res call({
 String email, bool isLoading, bool isSuccess, bool isError, bool isServerError, String errorMessage, ForgotPasswordModel forgotpasswordresponse
});


$ForgotPasswordModelCopyWith<$Res> get forgotpasswordresponse;

}
/// @nodoc
class _$ForgetPasswordStateCopyWithImpl<$Res>
    implements $ForgetPasswordStateCopyWith<$Res> {
  _$ForgetPasswordStateCopyWithImpl(this._self, this._then);

  final ForgetPasswordState _self;
  final $Res Function(ForgetPasswordState) _then;

/// Create a copy of ForgetPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? isLoading = null,Object? isSuccess = null,Object? isError = null,Object? isServerError = null,Object? errorMessage = null,Object? forgotpasswordresponse = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,forgotpasswordresponse: null == forgotpasswordresponse ? _self.forgotpasswordresponse : forgotpasswordresponse // ignore: cast_nullable_to_non_nullable
as ForgotPasswordModel,
  ));
}
/// Create a copy of ForgetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForgotPasswordModelCopyWith<$Res> get forgotpasswordresponse {
  
  return $ForgotPasswordModelCopyWith<$Res>(_self.forgotpasswordresponse, (value) {
    return _then(_self.copyWith(forgotpasswordresponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForgetPasswordState].
extension ForgetPasswordStatePatterns on ForgetPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgetPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgetPasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgetPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ForgetPasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgetPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ForgetPasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  bool isLoading,  bool isSuccess,  bool isError,  bool isServerError,  String errorMessage,  ForgotPasswordModel forgotpasswordresponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgetPasswordState() when $default != null:
return $default(_that.email,_that.isLoading,_that.isSuccess,_that.isError,_that.isServerError,_that.errorMessage,_that.forgotpasswordresponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  bool isLoading,  bool isSuccess,  bool isError,  bool isServerError,  String errorMessage,  ForgotPasswordModel forgotpasswordresponse)  $default,) {final _that = this;
switch (_that) {
case _ForgetPasswordState():
return $default(_that.email,_that.isLoading,_that.isSuccess,_that.isError,_that.isServerError,_that.errorMessage,_that.forgotpasswordresponse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  bool isLoading,  bool isSuccess,  bool isError,  bool isServerError,  String errorMessage,  ForgotPasswordModel forgotpasswordresponse)?  $default,) {final _that = this;
switch (_that) {
case _ForgetPasswordState() when $default != null:
return $default(_that.email,_that.isLoading,_that.isSuccess,_that.isError,_that.isServerError,_that.errorMessage,_that.forgotpasswordresponse);case _:
  return null;

}
}

}

/// @nodoc


class _ForgetPasswordState implements ForgetPasswordState {
  const _ForgetPasswordState({this.email = '', this.isLoading = false, this.isSuccess = false, this.isError = false, this.isServerError = false, this.errorMessage = '', this.forgotpasswordresponse = const ForgotPasswordModel()});
  

@override@JsonKey() final  String email;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool isError;
@override@JsonKey() final  bool isServerError;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  ForgotPasswordModel forgotpasswordresponse;

/// Create a copy of ForgetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgetPasswordStateCopyWith<_ForgetPasswordState> get copyWith => __$ForgetPasswordStateCopyWithImpl<_ForgetPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgetPasswordState&&(identical(other.email, email) || other.email == email)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.forgotpasswordresponse, forgotpasswordresponse) || other.forgotpasswordresponse == forgotpasswordresponse));
}


@override
int get hashCode => Object.hash(runtimeType,email,isLoading,isSuccess,isError,isServerError,errorMessage,forgotpasswordresponse);

@override
String toString() {
  return 'ForgetPasswordState(email: $email, isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError, isServerError: $isServerError, errorMessage: $errorMessage, forgotpasswordresponse: $forgotpasswordresponse)';
}


}

/// @nodoc
abstract mixin class _$ForgetPasswordStateCopyWith<$Res> implements $ForgetPasswordStateCopyWith<$Res> {
  factory _$ForgetPasswordStateCopyWith(_ForgetPasswordState value, $Res Function(_ForgetPasswordState) _then) = __$ForgetPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 String email, bool isLoading, bool isSuccess, bool isError, bool isServerError, String errorMessage, ForgotPasswordModel forgotpasswordresponse
});


@override $ForgotPasswordModelCopyWith<$Res> get forgotpasswordresponse;

}
/// @nodoc
class __$ForgetPasswordStateCopyWithImpl<$Res>
    implements _$ForgetPasswordStateCopyWith<$Res> {
  __$ForgetPasswordStateCopyWithImpl(this._self, this._then);

  final _ForgetPasswordState _self;
  final $Res Function(_ForgetPasswordState) _then;

/// Create a copy of ForgetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? isLoading = null,Object? isSuccess = null,Object? isError = null,Object? isServerError = null,Object? errorMessage = null,Object? forgotpasswordresponse = null,}) {
  return _then(_ForgetPasswordState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,forgotpasswordresponse: null == forgotpasswordresponse ? _self.forgotpasswordresponse : forgotpasswordresponse // ignore: cast_nullable_to_non_nullable
as ForgotPasswordModel,
  ));
}

/// Create a copy of ForgetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForgotPasswordModelCopyWith<$Res> get forgotpasswordresponse {
  
  return $ForgotPasswordModelCopyWith<$Res>(_self.forgotpasswordresponse, (value) {
    return _then(_self.copyWith(forgotpasswordresponse: value));
  });
}
}

// dart format on
