// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 bool get isLoading; bool get isSuccess; String get validationErrorMessage; bool get isServerError; String get apiErrorMessage; String get apiSuccessMessage; String get email; String get password; bool get isOtpSent; bool get isGuestButtonClick; String get phone; bool get isTermsAccepted; bool get isSocialLogin; LoginResponse get loginResponse;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.validationErrorMessage, validationErrorMessage) || other.validationErrorMessage == validationErrorMessage)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isOtpSent, isOtpSent) || other.isOtpSent == isOtpSent)&&(identical(other.isGuestButtonClick, isGuestButtonClick) || other.isGuestButtonClick == isGuestButtonClick)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isTermsAccepted, isTermsAccepted) || other.isTermsAccepted == isTermsAccepted)&&(identical(other.isSocialLogin, isSocialLogin) || other.isSocialLogin == isSocialLogin)&&(identical(other.loginResponse, loginResponse) || other.loginResponse == loginResponse));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,validationErrorMessage,isServerError,apiErrorMessage,apiSuccessMessage,email,password,isOtpSent,isGuestButtonClick,phone,isTermsAccepted,isSocialLogin,loginResponse);

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, isSuccess: $isSuccess, validationErrorMessage: $validationErrorMessage, isServerError: $isServerError, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, email: $email, password: $password, isOtpSent: $isOtpSent, isGuestButtonClick: $isGuestButtonClick, phone: $phone, isTermsAccepted: $isTermsAccepted, isSocialLogin: $isSocialLogin, loginResponse: $loginResponse)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSuccess, String validationErrorMessage, bool isServerError, String apiErrorMessage, String apiSuccessMessage, String email, String password, bool isOtpSent, bool isGuestButtonClick, String phone, bool isTermsAccepted, bool isSocialLogin, LoginResponse loginResponse
});


$LoginResponseCopyWith<$Res> get loginResponse;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSuccess = null,Object? validationErrorMessage = null,Object? isServerError = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? email = null,Object? password = null,Object? isOtpSent = null,Object? isGuestButtonClick = null,Object? phone = null,Object? isTermsAccepted = null,Object? isSocialLogin = null,Object? loginResponse = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,validationErrorMessage: null == validationErrorMessage ? _self.validationErrorMessage : validationErrorMessage // ignore: cast_nullable_to_non_nullable
as String,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isOtpSent: null == isOtpSent ? _self.isOtpSent : isOtpSent // ignore: cast_nullable_to_non_nullable
as bool,isGuestButtonClick: null == isGuestButtonClick ? _self.isGuestButtonClick : isGuestButtonClick // ignore: cast_nullable_to_non_nullable
as bool,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isTermsAccepted: null == isTermsAccepted ? _self.isTermsAccepted : isTermsAccepted // ignore: cast_nullable_to_non_nullable
as bool,isSocialLogin: null == isSocialLogin ? _self.isSocialLogin : isSocialLogin // ignore: cast_nullable_to_non_nullable
as bool,loginResponse: null == loginResponse ? _self.loginResponse : loginResponse // ignore: cast_nullable_to_non_nullable
as LoginResponse,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res> get loginResponse {
  
  return $LoginResponseCopyWith<$Res>(_self.loginResponse, (value) {
    return _then(_self.copyWith(loginResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  String validationErrorMessage,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  String email,  String password,  bool isOtpSent,  bool isGuestButtonClick,  String phone,  bool isTermsAccepted,  bool isSocialLogin,  LoginResponse loginResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.validationErrorMessage,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.email,_that.password,_that.isOtpSent,_that.isGuestButtonClick,_that.phone,_that.isTermsAccepted,_that.isSocialLogin,_that.loginResponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  String validationErrorMessage,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  String email,  String password,  bool isOtpSent,  bool isGuestButtonClick,  String phone,  bool isTermsAccepted,  bool isSocialLogin,  LoginResponse loginResponse)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.isLoading,_that.isSuccess,_that.validationErrorMessage,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.email,_that.password,_that.isOtpSent,_that.isGuestButtonClick,_that.phone,_that.isTermsAccepted,_that.isSocialLogin,_that.loginResponse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSuccess,  String validationErrorMessage,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  String email,  String password,  bool isOtpSent,  bool isGuestButtonClick,  String phone,  bool isTermsAccepted,  bool isSocialLogin,  LoginResponse loginResponse)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.validationErrorMessage,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.email,_that.password,_that.isOtpSent,_that.isGuestButtonClick,_that.phone,_that.isTermsAccepted,_that.isSocialLogin,_that.loginResponse);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
  const _LoginState({this.isLoading = false, this.isSuccess = false, this.validationErrorMessage = '', this.isServerError = false, this.apiErrorMessage = '', this.apiSuccessMessage = '', this.email = '', this.password = '', this.isOtpSent = false, this.isGuestButtonClick = false, this.phone = '', this.isTermsAccepted = false, this.isSocialLogin = false, this.loginResponse = const LoginResponse()});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  String validationErrorMessage;
@override@JsonKey() final  bool isServerError;
@override@JsonKey() final  String apiErrorMessage;
@override@JsonKey() final  String apiSuccessMessage;
@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  bool isOtpSent;
@override@JsonKey() final  bool isGuestButtonClick;
@override@JsonKey() final  String phone;
@override@JsonKey() final  bool isTermsAccepted;
@override@JsonKey() final  bool isSocialLogin;
@override@JsonKey() final  LoginResponse loginResponse;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.validationErrorMessage, validationErrorMessage) || other.validationErrorMessage == validationErrorMessage)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isOtpSent, isOtpSent) || other.isOtpSent == isOtpSent)&&(identical(other.isGuestButtonClick, isGuestButtonClick) || other.isGuestButtonClick == isGuestButtonClick)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isTermsAccepted, isTermsAccepted) || other.isTermsAccepted == isTermsAccepted)&&(identical(other.isSocialLogin, isSocialLogin) || other.isSocialLogin == isSocialLogin)&&(identical(other.loginResponse, loginResponse) || other.loginResponse == loginResponse));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,validationErrorMessage,isServerError,apiErrorMessage,apiSuccessMessage,email,password,isOtpSent,isGuestButtonClick,phone,isTermsAccepted,isSocialLogin,loginResponse);

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, isSuccess: $isSuccess, validationErrorMessage: $validationErrorMessage, isServerError: $isServerError, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, email: $email, password: $password, isOtpSent: $isOtpSent, isGuestButtonClick: $isGuestButtonClick, phone: $phone, isTermsAccepted: $isTermsAccepted, isSocialLogin: $isSocialLogin, loginResponse: $loginResponse)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSuccess, String validationErrorMessage, bool isServerError, String apiErrorMessage, String apiSuccessMessage, String email, String password, bool isOtpSent, bool isGuestButtonClick, String phone, bool isTermsAccepted, bool isSocialLogin, LoginResponse loginResponse
});


@override $LoginResponseCopyWith<$Res> get loginResponse;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSuccess = null,Object? validationErrorMessage = null,Object? isServerError = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? email = null,Object? password = null,Object? isOtpSent = null,Object? isGuestButtonClick = null,Object? phone = null,Object? isTermsAccepted = null,Object? isSocialLogin = null,Object? loginResponse = null,}) {
  return _then(_LoginState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,validationErrorMessage: null == validationErrorMessage ? _self.validationErrorMessage : validationErrorMessage // ignore: cast_nullable_to_non_nullable
as String,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isOtpSent: null == isOtpSent ? _self.isOtpSent : isOtpSent // ignore: cast_nullable_to_non_nullable
as bool,isGuestButtonClick: null == isGuestButtonClick ? _self.isGuestButtonClick : isGuestButtonClick // ignore: cast_nullable_to_non_nullable
as bool,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isTermsAccepted: null == isTermsAccepted ? _self.isTermsAccepted : isTermsAccepted // ignore: cast_nullable_to_non_nullable
as bool,isSocialLogin: null == isSocialLogin ? _self.isSocialLogin : isSocialLogin // ignore: cast_nullable_to_non_nullable
as bool,loginResponse: null == loginResponse ? _self.loginResponse : loginResponse // ignore: cast_nullable_to_non_nullable
as LoginResponse,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res> get loginResponse {
  
  return $LoginResponseCopyWith<$Res>(_self.loginResponse, (value) {
    return _then(_self.copyWith(loginResponse: value));
  });
}
}

// dart format on
