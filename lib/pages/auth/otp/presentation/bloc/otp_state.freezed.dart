// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpState {

 bool get isLoading; bool get isSuccess; String get validationErrorMessage; bool get isServerError; String get apiErrorMessage; String get apiSuccessMessage; String get otp; String get email;// 🔥 ADD
 String get phone; bool get isResending;// 🔥 Resend Timer
 int get resendTimerSeconds; bool get canResend; LoginResponse get loginResponse;
/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpStateCopyWith<OtpState> get copyWith => _$OtpStateCopyWithImpl<OtpState>(this as OtpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.validationErrorMessage, validationErrorMessage) || other.validationErrorMessage == validationErrorMessage)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isResending, isResending) || other.isResending == isResending)&&(identical(other.resendTimerSeconds, resendTimerSeconds) || other.resendTimerSeconds == resendTimerSeconds)&&(identical(other.canResend, canResend) || other.canResend == canResend)&&(identical(other.loginResponse, loginResponse) || other.loginResponse == loginResponse));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,validationErrorMessage,isServerError,apiErrorMessage,apiSuccessMessage,otp,email,phone,isResending,resendTimerSeconds,canResend,loginResponse);

@override
String toString() {
  return 'OtpState(isLoading: $isLoading, isSuccess: $isSuccess, validationErrorMessage: $validationErrorMessage, isServerError: $isServerError, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, otp: $otp, email: $email, phone: $phone, isResending: $isResending, resendTimerSeconds: $resendTimerSeconds, canResend: $canResend, loginResponse: $loginResponse)';
}


}

/// @nodoc
abstract mixin class $OtpStateCopyWith<$Res>  {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) _then) = _$OtpStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSuccess, String validationErrorMessage, bool isServerError, String apiErrorMessage, String apiSuccessMessage, String otp, String email, String phone, bool isResending, int resendTimerSeconds, bool canResend, LoginResponse loginResponse
});


$LoginResponseCopyWith<$Res> get loginResponse;

}
/// @nodoc
class _$OtpStateCopyWithImpl<$Res>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._self, this._then);

  final OtpState _self;
  final $Res Function(OtpState) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSuccess = null,Object? validationErrorMessage = null,Object? isServerError = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? otp = null,Object? email = null,Object? phone = null,Object? isResending = null,Object? resendTimerSeconds = null,Object? canResend = null,Object? loginResponse = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,validationErrorMessage: null == validationErrorMessage ? _self.validationErrorMessage : validationErrorMessage // ignore: cast_nullable_to_non_nullable
as String,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isResending: null == isResending ? _self.isResending : isResending // ignore: cast_nullable_to_non_nullable
as bool,resendTimerSeconds: null == resendTimerSeconds ? _self.resendTimerSeconds : resendTimerSeconds // ignore: cast_nullable_to_non_nullable
as int,canResend: null == canResend ? _self.canResend : canResend // ignore: cast_nullable_to_non_nullable
as bool,loginResponse: null == loginResponse ? _self.loginResponse : loginResponse // ignore: cast_nullable_to_non_nullable
as LoginResponse,
  ));
}
/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res> get loginResponse {
  
  return $LoginResponseCopyWith<$Res>(_self.loginResponse, (value) {
    return _then(_self.copyWith(loginResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [OtpState].
extension OtpStatePatterns on OtpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpState value)  $default,){
final _that = this;
switch (_that) {
case _OtpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpState value)?  $default,){
final _that = this;
switch (_that) {
case _OtpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  String validationErrorMessage,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  String otp,  String email,  String phone,  bool isResending,  int resendTimerSeconds,  bool canResend,  LoginResponse loginResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.validationErrorMessage,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.otp,_that.email,_that.phone,_that.isResending,_that.resendTimerSeconds,_that.canResend,_that.loginResponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  String validationErrorMessage,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  String otp,  String email,  String phone,  bool isResending,  int resendTimerSeconds,  bool canResend,  LoginResponse loginResponse)  $default,) {final _that = this;
switch (_that) {
case _OtpState():
return $default(_that.isLoading,_that.isSuccess,_that.validationErrorMessage,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.otp,_that.email,_that.phone,_that.isResending,_that.resendTimerSeconds,_that.canResend,_that.loginResponse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSuccess,  String validationErrorMessage,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  String otp,  String email,  String phone,  bool isResending,  int resendTimerSeconds,  bool canResend,  LoginResponse loginResponse)?  $default,) {final _that = this;
switch (_that) {
case _OtpState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.validationErrorMessage,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.otp,_that.email,_that.phone,_that.isResending,_that.resendTimerSeconds,_that.canResend,_that.loginResponse);case _:
  return null;

}
}

}

/// @nodoc


class _OtpState implements OtpState {
  const _OtpState({this.isLoading = false, this.isSuccess = false, this.validationErrorMessage = '', this.isServerError = false, this.apiErrorMessage = '', this.apiSuccessMessage = '', this.otp = '', this.email = '', this.phone = '', this.isResending = false, this.resendTimerSeconds = 30, this.canResend = false, this.loginResponse = const LoginResponse()});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  String validationErrorMessage;
@override@JsonKey() final  bool isServerError;
@override@JsonKey() final  String apiErrorMessage;
@override@JsonKey() final  String apiSuccessMessage;
@override@JsonKey() final  String otp;
@override@JsonKey() final  String email;
// 🔥 ADD
@override@JsonKey() final  String phone;
@override@JsonKey() final  bool isResending;
// 🔥 Resend Timer
@override@JsonKey() final  int resendTimerSeconds;
@override@JsonKey() final  bool canResend;
@override@JsonKey() final  LoginResponse loginResponse;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpStateCopyWith<_OtpState> get copyWith => __$OtpStateCopyWithImpl<_OtpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.validationErrorMessage, validationErrorMessage) || other.validationErrorMessage == validationErrorMessage)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isResending, isResending) || other.isResending == isResending)&&(identical(other.resendTimerSeconds, resendTimerSeconds) || other.resendTimerSeconds == resendTimerSeconds)&&(identical(other.canResend, canResend) || other.canResend == canResend)&&(identical(other.loginResponse, loginResponse) || other.loginResponse == loginResponse));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,validationErrorMessage,isServerError,apiErrorMessage,apiSuccessMessage,otp,email,phone,isResending,resendTimerSeconds,canResend,loginResponse);

@override
String toString() {
  return 'OtpState(isLoading: $isLoading, isSuccess: $isSuccess, validationErrorMessage: $validationErrorMessage, isServerError: $isServerError, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, otp: $otp, email: $email, phone: $phone, isResending: $isResending, resendTimerSeconds: $resendTimerSeconds, canResend: $canResend, loginResponse: $loginResponse)';
}


}

/// @nodoc
abstract mixin class _$OtpStateCopyWith<$Res> implements $OtpStateCopyWith<$Res> {
  factory _$OtpStateCopyWith(_OtpState value, $Res Function(_OtpState) _then) = __$OtpStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSuccess, String validationErrorMessage, bool isServerError, String apiErrorMessage, String apiSuccessMessage, String otp, String email, String phone, bool isResending, int resendTimerSeconds, bool canResend, LoginResponse loginResponse
});


@override $LoginResponseCopyWith<$Res> get loginResponse;

}
/// @nodoc
class __$OtpStateCopyWithImpl<$Res>
    implements _$OtpStateCopyWith<$Res> {
  __$OtpStateCopyWithImpl(this._self, this._then);

  final _OtpState _self;
  final $Res Function(_OtpState) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSuccess = null,Object? validationErrorMessage = null,Object? isServerError = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? otp = null,Object? email = null,Object? phone = null,Object? isResending = null,Object? resendTimerSeconds = null,Object? canResend = null,Object? loginResponse = null,}) {
  return _then(_OtpState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,validationErrorMessage: null == validationErrorMessage ? _self.validationErrorMessage : validationErrorMessage // ignore: cast_nullable_to_non_nullable
as String,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isResending: null == isResending ? _self.isResending : isResending // ignore: cast_nullable_to_non_nullable
as bool,resendTimerSeconds: null == resendTimerSeconds ? _self.resendTimerSeconds : resendTimerSeconds // ignore: cast_nullable_to_non_nullable
as int,canResend: null == canResend ? _self.canResend : canResend // ignore: cast_nullable_to_non_nullable
as bool,loginResponse: null == loginResponse ? _self.loginResponse : loginResponse // ignore: cast_nullable_to_non_nullable
as LoginResponse,
  ));
}

/// Create a copy of OtpState
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
