// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmailChanged value)?  emailChanged,TResult Function( PasswordChanged value)?  passwordChanged,TResult Function( MakeInitial value)?  makeInitial,TResult Function( MakeIsSuccessInitial value)?  makeIsSuccessInitial,TResult Function( AppleLoginEvent value)?  appLogin,TResult Function( GoogleLoginEvent value)?  googleLogin,TResult Function( LoginSubmitted value)?  loginSubmitted,TResult Function( LoginGuestSubmitted value)?  loginGuestSubmitted,TResult Function( TermsChanged value)?  termsChanged,TResult Function( PhoneChanged value)?  phoneChanged,TResult Function( SendPhoneOtp value)?  sendPhoneOtp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case MakeInitial() when makeInitial != null:
return makeInitial(_that);case MakeIsSuccessInitial() when makeIsSuccessInitial != null:
return makeIsSuccessInitial(_that);case AppleLoginEvent() when appLogin != null:
return appLogin(_that);case GoogleLoginEvent() when googleLogin != null:
return googleLogin(_that);case LoginSubmitted() when loginSubmitted != null:
return loginSubmitted(_that);case LoginGuestSubmitted() when loginGuestSubmitted != null:
return loginGuestSubmitted(_that);case TermsChanged() when termsChanged != null:
return termsChanged(_that);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case SendPhoneOtp() when sendPhoneOtp != null:
return sendPhoneOtp(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmailChanged value)  emailChanged,required TResult Function( PasswordChanged value)  passwordChanged,required TResult Function( MakeInitial value)  makeInitial,required TResult Function( MakeIsSuccessInitial value)  makeIsSuccessInitial,required TResult Function( AppleLoginEvent value)  appLogin,required TResult Function( GoogleLoginEvent value)  googleLogin,required TResult Function( LoginSubmitted value)  loginSubmitted,required TResult Function( LoginGuestSubmitted value)  loginGuestSubmitted,required TResult Function( TermsChanged value)  termsChanged,required TResult Function( PhoneChanged value)  phoneChanged,required TResult Function( SendPhoneOtp value)  sendPhoneOtp,}){
final _that = this;
switch (_that) {
case EmailChanged():
return emailChanged(_that);case PasswordChanged():
return passwordChanged(_that);case MakeInitial():
return makeInitial(_that);case MakeIsSuccessInitial():
return makeIsSuccessInitial(_that);case AppleLoginEvent():
return appLogin(_that);case GoogleLoginEvent():
return googleLogin(_that);case LoginSubmitted():
return loginSubmitted(_that);case LoginGuestSubmitted():
return loginGuestSubmitted(_that);case TermsChanged():
return termsChanged(_that);case PhoneChanged():
return phoneChanged(_that);case SendPhoneOtp():
return sendPhoneOtp(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmailChanged value)?  emailChanged,TResult? Function( PasswordChanged value)?  passwordChanged,TResult? Function( MakeInitial value)?  makeInitial,TResult? Function( MakeIsSuccessInitial value)?  makeIsSuccessInitial,TResult? Function( AppleLoginEvent value)?  appLogin,TResult? Function( GoogleLoginEvent value)?  googleLogin,TResult? Function( LoginSubmitted value)?  loginSubmitted,TResult? Function( LoginGuestSubmitted value)?  loginGuestSubmitted,TResult? Function( TermsChanged value)?  termsChanged,TResult? Function( PhoneChanged value)?  phoneChanged,TResult? Function( SendPhoneOtp value)?  sendPhoneOtp,}){
final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case MakeInitial() when makeInitial != null:
return makeInitial(_that);case MakeIsSuccessInitial() when makeIsSuccessInitial != null:
return makeIsSuccessInitial(_that);case AppleLoginEvent() when appLogin != null:
return appLogin(_that);case GoogleLoginEvent() when googleLogin != null:
return googleLogin(_that);case LoginSubmitted() when loginSubmitted != null:
return loginSubmitted(_that);case LoginGuestSubmitted() when loginGuestSubmitted != null:
return loginGuestSubmitted(_that);case TermsChanged() when termsChanged != null:
return termsChanged(_that);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case SendPhoneOtp() when sendPhoneOtp != null:
return sendPhoneOtp(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  emailChanged,TResult Function( String password)?  passwordChanged,TResult Function()?  makeInitial,TResult Function( bool isSuccess)?  makeIsSuccessInitial,TResult Function()?  appLogin,TResult Function()?  googleLogin,TResult Function()?  loginSubmitted,TResult Function()?  loginGuestSubmitted,TResult Function( bool value)?  termsChanged,TResult Function( String phone)?  phoneChanged,TResult Function()?  sendPhoneOtp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case MakeInitial() when makeInitial != null:
return makeInitial();case MakeIsSuccessInitial() when makeIsSuccessInitial != null:
return makeIsSuccessInitial(_that.isSuccess);case AppleLoginEvent() when appLogin != null:
return appLogin();case GoogleLoginEvent() when googleLogin != null:
return googleLogin();case LoginSubmitted() when loginSubmitted != null:
return loginSubmitted();case LoginGuestSubmitted() when loginGuestSubmitted != null:
return loginGuestSubmitted();case TermsChanged() when termsChanged != null:
return termsChanged(_that.value);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case SendPhoneOtp() when sendPhoneOtp != null:
return sendPhoneOtp();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  emailChanged,required TResult Function( String password)  passwordChanged,required TResult Function()  makeInitial,required TResult Function( bool isSuccess)  makeIsSuccessInitial,required TResult Function()  appLogin,required TResult Function()  googleLogin,required TResult Function()  loginSubmitted,required TResult Function()  loginGuestSubmitted,required TResult Function( bool value)  termsChanged,required TResult Function( String phone)  phoneChanged,required TResult Function()  sendPhoneOtp,}) {final _that = this;
switch (_that) {
case EmailChanged():
return emailChanged(_that.email);case PasswordChanged():
return passwordChanged(_that.password);case MakeInitial():
return makeInitial();case MakeIsSuccessInitial():
return makeIsSuccessInitial(_that.isSuccess);case AppleLoginEvent():
return appLogin();case GoogleLoginEvent():
return googleLogin();case LoginSubmitted():
return loginSubmitted();case LoginGuestSubmitted():
return loginGuestSubmitted();case TermsChanged():
return termsChanged(_that.value);case PhoneChanged():
return phoneChanged(_that.phone);case SendPhoneOtp():
return sendPhoneOtp();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  emailChanged,TResult? Function( String password)?  passwordChanged,TResult? Function()?  makeInitial,TResult? Function( bool isSuccess)?  makeIsSuccessInitial,TResult? Function()?  appLogin,TResult? Function()?  googleLogin,TResult? Function()?  loginSubmitted,TResult? Function()?  loginGuestSubmitted,TResult? Function( bool value)?  termsChanged,TResult? Function( String phone)?  phoneChanged,TResult? Function()?  sendPhoneOtp,}) {final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case MakeInitial() when makeInitial != null:
return makeInitial();case MakeIsSuccessInitial() when makeIsSuccessInitial != null:
return makeIsSuccessInitial(_that.isSuccess);case AppleLoginEvent() when appLogin != null:
return appLogin();case GoogleLoginEvent() when googleLogin != null:
return googleLogin();case LoginSubmitted() when loginSubmitted != null:
return loginSubmitted();case LoginGuestSubmitted() when loginGuestSubmitted != null:
return loginGuestSubmitted();case TermsChanged() when termsChanged != null:
return termsChanged(_that.value);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case SendPhoneOtp() when sendPhoneOtp != null:
return sendPhoneOtp();case _:
  return null;

}
}

}

/// @nodoc


class EmailChanged implements LoginEvent {
  const EmailChanged(this.email);
  

 final  String email;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailChangedCopyWith<EmailChanged> get copyWith => _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'LoginEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $EmailChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $EmailChangedCopyWith(EmailChanged value, $Res Function(EmailChanged) _then) = _$EmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(this._self, this._then);

  final EmailChanged _self;
  final $Res Function(EmailChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(EmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordChanged implements LoginEvent {
  const PasswordChanged(this.password);
  

 final  String password;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordChangedCopyWith<PasswordChanged> get copyWith => _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'LoginEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $PasswordChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $PasswordChangedCopyWith(PasswordChanged value, $Res Function(PasswordChanged) _then) = _$PasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(this._self, this._then);

  final PasswordChanged _self;
  final $Res Function(PasswordChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(PasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MakeInitial implements LoginEvent {
  const MakeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MakeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.makeInitial()';
}


}




/// @nodoc


class MakeIsSuccessInitial implements LoginEvent {
  const MakeIsSuccessInitial(this.isSuccess);
  

 final  bool isSuccess;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MakeIsSuccessInitialCopyWith<MakeIsSuccessInitial> get copyWith => _$MakeIsSuccessInitialCopyWithImpl<MakeIsSuccessInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MakeIsSuccessInitial&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSuccess);

@override
String toString() {
  return 'LoginEvent.makeIsSuccessInitial(isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $MakeIsSuccessInitialCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $MakeIsSuccessInitialCopyWith(MakeIsSuccessInitial value, $Res Function(MakeIsSuccessInitial) _then) = _$MakeIsSuccessInitialCopyWithImpl;
@useResult
$Res call({
 bool isSuccess
});




}
/// @nodoc
class _$MakeIsSuccessInitialCopyWithImpl<$Res>
    implements $MakeIsSuccessInitialCopyWith<$Res> {
  _$MakeIsSuccessInitialCopyWithImpl(this._self, this._then);

  final MakeIsSuccessInitial _self;
  final $Res Function(MakeIsSuccessInitial) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,}) {
  return _then(MakeIsSuccessInitial(
null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class AppleLoginEvent implements LoginEvent {
  const AppleLoginEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppleLoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.appLogin()';
}


}




/// @nodoc


class GoogleLoginEvent implements LoginEvent {
  const GoogleLoginEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleLoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.googleLogin()';
}


}




/// @nodoc


class LoginSubmitted implements LoginEvent {
  const LoginSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.loginSubmitted()';
}


}




/// @nodoc


class LoginGuestSubmitted implements LoginEvent {
  const LoginGuestSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginGuestSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.loginGuestSubmitted()';
}


}




/// @nodoc


class TermsChanged implements LoginEvent {
  const TermsChanged(this.value);
  

 final  bool value;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TermsChangedCopyWith<TermsChanged> get copyWith => _$TermsChangedCopyWithImpl<TermsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TermsChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'LoginEvent.termsChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $TermsChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $TermsChangedCopyWith(TermsChanged value, $Res Function(TermsChanged) _then) = _$TermsChangedCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$TermsChangedCopyWithImpl<$Res>
    implements $TermsChangedCopyWith<$Res> {
  _$TermsChangedCopyWithImpl(this._self, this._then);

  final TermsChanged _self;
  final $Res Function(TermsChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(TermsChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class PhoneChanged implements LoginEvent {
  const PhoneChanged(this.phone);
  

 final  String phone;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneChangedCopyWith<PhoneChanged> get copyWith => _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneChanged&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'LoginEvent.phoneChanged(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $PhoneChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $PhoneChangedCopyWith(PhoneChanged value, $Res Function(PhoneChanged) _then) = _$PhoneChangedCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(this._self, this._then);

  final PhoneChanged _self;
  final $Res Function(PhoneChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(PhoneChanged(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SendPhoneOtp implements LoginEvent {
  const SendPhoneOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendPhoneOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.sendPhoneOtp()';
}


}




// dart format on
