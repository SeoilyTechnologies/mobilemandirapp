// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent()';
}


}

/// @nodoc
class $OtpEventCopyWith<$Res>  {
$OtpEventCopyWith(OtpEvent _, $Res Function(OtpEvent) __);
}


/// Adds pattern-matching-related methods to [OtpEvent].
extension OtpEventPatterns on OtpEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OtpEmailChanged value)?  emailChanged,TResult Function( OtpChanged value)?  otpChanged,TResult Function( OtpMakeInitial value)?  makeInitial,TResult Function( OtpSubmitted value)?  otpSubmitted,TResult Function( OtpSubmittedForForgetpassword value)?  otpSubmittedForForgetPassword,TResult Function( OtpPhoneChanged value)?  phoneChanged,TResult Function( PhoneOtpSubmitted value)?  phoneOtpSubmitted,TResult Function( ResendPhoneOtp value)?  resendPhoneOtp,TResult Function( StartResendTimer value)?  startResendTimer,TResult Function( TickResendTimer value)?  tickResendTimer,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OtpEmailChanged() when emailChanged != null:
return emailChanged(_that);case OtpChanged() when otpChanged != null:
return otpChanged(_that);case OtpMakeInitial() when makeInitial != null:
return makeInitial(_that);case OtpSubmitted() when otpSubmitted != null:
return otpSubmitted(_that);case OtpSubmittedForForgetpassword() when otpSubmittedForForgetPassword != null:
return otpSubmittedForForgetPassword(_that);case OtpPhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case PhoneOtpSubmitted() when phoneOtpSubmitted != null:
return phoneOtpSubmitted(_that);case ResendPhoneOtp() when resendPhoneOtp != null:
return resendPhoneOtp(_that);case StartResendTimer() when startResendTimer != null:
return startResendTimer(_that);case TickResendTimer() when tickResendTimer != null:
return tickResendTimer(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OtpEmailChanged value)  emailChanged,required TResult Function( OtpChanged value)  otpChanged,required TResult Function( OtpMakeInitial value)  makeInitial,required TResult Function( OtpSubmitted value)  otpSubmitted,required TResult Function( OtpSubmittedForForgetpassword value)  otpSubmittedForForgetPassword,required TResult Function( OtpPhoneChanged value)  phoneChanged,required TResult Function( PhoneOtpSubmitted value)  phoneOtpSubmitted,required TResult Function( ResendPhoneOtp value)  resendPhoneOtp,required TResult Function( StartResendTimer value)  startResendTimer,required TResult Function( TickResendTimer value)  tickResendTimer,}){
final _that = this;
switch (_that) {
case OtpEmailChanged():
return emailChanged(_that);case OtpChanged():
return otpChanged(_that);case OtpMakeInitial():
return makeInitial(_that);case OtpSubmitted():
return otpSubmitted(_that);case OtpSubmittedForForgetpassword():
return otpSubmittedForForgetPassword(_that);case OtpPhoneChanged():
return phoneChanged(_that);case PhoneOtpSubmitted():
return phoneOtpSubmitted(_that);case ResendPhoneOtp():
return resendPhoneOtp(_that);case StartResendTimer():
return startResendTimer(_that);case TickResendTimer():
return tickResendTimer(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OtpEmailChanged value)?  emailChanged,TResult? Function( OtpChanged value)?  otpChanged,TResult? Function( OtpMakeInitial value)?  makeInitial,TResult? Function( OtpSubmitted value)?  otpSubmitted,TResult? Function( OtpSubmittedForForgetpassword value)?  otpSubmittedForForgetPassword,TResult? Function( OtpPhoneChanged value)?  phoneChanged,TResult? Function( PhoneOtpSubmitted value)?  phoneOtpSubmitted,TResult? Function( ResendPhoneOtp value)?  resendPhoneOtp,TResult? Function( StartResendTimer value)?  startResendTimer,TResult? Function( TickResendTimer value)?  tickResendTimer,}){
final _that = this;
switch (_that) {
case OtpEmailChanged() when emailChanged != null:
return emailChanged(_that);case OtpChanged() when otpChanged != null:
return otpChanged(_that);case OtpMakeInitial() when makeInitial != null:
return makeInitial(_that);case OtpSubmitted() when otpSubmitted != null:
return otpSubmitted(_that);case OtpSubmittedForForgetpassword() when otpSubmittedForForgetPassword != null:
return otpSubmittedForForgetPassword(_that);case OtpPhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case PhoneOtpSubmitted() when phoneOtpSubmitted != null:
return phoneOtpSubmitted(_that);case ResendPhoneOtp() when resendPhoneOtp != null:
return resendPhoneOtp(_that);case StartResendTimer() when startResendTimer != null:
return startResendTimer(_that);case TickResendTimer() when tickResendTimer != null:
return tickResendTimer(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  emailChanged,TResult Function( String otp)?  otpChanged,TResult Function()?  makeInitial,TResult Function()?  otpSubmitted,TResult Function()?  otpSubmittedForForgetPassword,TResult Function( String phone)?  phoneChanged,TResult Function()?  phoneOtpSubmitted,TResult Function()?  resendPhoneOtp,TResult Function()?  startResendTimer,TResult Function()?  tickResendTimer,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OtpEmailChanged() when emailChanged != null:
return emailChanged(_that.email);case OtpChanged() when otpChanged != null:
return otpChanged(_that.otp);case OtpMakeInitial() when makeInitial != null:
return makeInitial();case OtpSubmitted() when otpSubmitted != null:
return otpSubmitted();case OtpSubmittedForForgetpassword() when otpSubmittedForForgetPassword != null:
return otpSubmittedForForgetPassword();case OtpPhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case PhoneOtpSubmitted() when phoneOtpSubmitted != null:
return phoneOtpSubmitted();case ResendPhoneOtp() when resendPhoneOtp != null:
return resendPhoneOtp();case StartResendTimer() when startResendTimer != null:
return startResendTimer();case TickResendTimer() when tickResendTimer != null:
return tickResendTimer();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  emailChanged,required TResult Function( String otp)  otpChanged,required TResult Function()  makeInitial,required TResult Function()  otpSubmitted,required TResult Function()  otpSubmittedForForgetPassword,required TResult Function( String phone)  phoneChanged,required TResult Function()  phoneOtpSubmitted,required TResult Function()  resendPhoneOtp,required TResult Function()  startResendTimer,required TResult Function()  tickResendTimer,}) {final _that = this;
switch (_that) {
case OtpEmailChanged():
return emailChanged(_that.email);case OtpChanged():
return otpChanged(_that.otp);case OtpMakeInitial():
return makeInitial();case OtpSubmitted():
return otpSubmitted();case OtpSubmittedForForgetpassword():
return otpSubmittedForForgetPassword();case OtpPhoneChanged():
return phoneChanged(_that.phone);case PhoneOtpSubmitted():
return phoneOtpSubmitted();case ResendPhoneOtp():
return resendPhoneOtp();case StartResendTimer():
return startResendTimer();case TickResendTimer():
return tickResendTimer();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  emailChanged,TResult? Function( String otp)?  otpChanged,TResult? Function()?  makeInitial,TResult? Function()?  otpSubmitted,TResult? Function()?  otpSubmittedForForgetPassword,TResult? Function( String phone)?  phoneChanged,TResult? Function()?  phoneOtpSubmitted,TResult? Function()?  resendPhoneOtp,TResult? Function()?  startResendTimer,TResult? Function()?  tickResendTimer,}) {final _that = this;
switch (_that) {
case OtpEmailChanged() when emailChanged != null:
return emailChanged(_that.email);case OtpChanged() when otpChanged != null:
return otpChanged(_that.otp);case OtpMakeInitial() when makeInitial != null:
return makeInitial();case OtpSubmitted() when otpSubmitted != null:
return otpSubmitted();case OtpSubmittedForForgetpassword() when otpSubmittedForForgetPassword != null:
return otpSubmittedForForgetPassword();case OtpPhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case PhoneOtpSubmitted() when phoneOtpSubmitted != null:
return phoneOtpSubmitted();case ResendPhoneOtp() when resendPhoneOtp != null:
return resendPhoneOtp();case StartResendTimer() when startResendTimer != null:
return startResendTimer();case TickResendTimer() when tickResendTimer != null:
return tickResendTimer();case _:
  return null;

}
}

}

/// @nodoc


class OtpEmailChanged implements OtpEvent {
  const OtpEmailChanged(this.email);
  

 final  String email;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpEmailChangedCopyWith<OtpEmailChanged> get copyWith => _$OtpEmailChangedCopyWithImpl<OtpEmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpEmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'OtpEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $OtpEmailChangedCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory $OtpEmailChangedCopyWith(OtpEmailChanged value, $Res Function(OtpEmailChanged) _then) = _$OtpEmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$OtpEmailChangedCopyWithImpl<$Res>
    implements $OtpEmailChangedCopyWith<$Res> {
  _$OtpEmailChangedCopyWithImpl(this._self, this._then);

  final OtpEmailChanged _self;
  final $Res Function(OtpEmailChanged) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(OtpEmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OtpChanged implements OtpEvent {
  const OtpChanged(this.otp);
  

 final  String otp;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpChangedCopyWith<OtpChanged> get copyWith => _$OtpChangedCopyWithImpl<OtpChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpChanged&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'OtpEvent.otpChanged(otp: $otp)';
}


}

/// @nodoc
abstract mixin class $OtpChangedCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory $OtpChangedCopyWith(OtpChanged value, $Res Function(OtpChanged) _then) = _$OtpChangedCopyWithImpl;
@useResult
$Res call({
 String otp
});




}
/// @nodoc
class _$OtpChangedCopyWithImpl<$Res>
    implements $OtpChangedCopyWith<$Res> {
  _$OtpChangedCopyWithImpl(this._self, this._then);

  final OtpChanged _self;
  final $Res Function(OtpChanged) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(OtpChanged(
null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OtpMakeInitial implements OtpEvent {
  const OtpMakeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpMakeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent.makeInitial()';
}


}




/// @nodoc


class OtpSubmitted implements OtpEvent {
  const OtpSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent.otpSubmitted()';
}


}




/// @nodoc


class OtpSubmittedForForgetpassword implements OtpEvent {
  const OtpSubmittedForForgetpassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpSubmittedForForgetpassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent.otpSubmittedForForgetPassword()';
}


}




/// @nodoc


class OtpPhoneChanged implements OtpEvent {
  const OtpPhoneChanged(this.phone);
  

 final  String phone;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpPhoneChangedCopyWith<OtpPhoneChanged> get copyWith => _$OtpPhoneChangedCopyWithImpl<OtpPhoneChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPhoneChanged&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'OtpEvent.phoneChanged(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $OtpPhoneChangedCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory $OtpPhoneChangedCopyWith(OtpPhoneChanged value, $Res Function(OtpPhoneChanged) _then) = _$OtpPhoneChangedCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$OtpPhoneChangedCopyWithImpl<$Res>
    implements $OtpPhoneChangedCopyWith<$Res> {
  _$OtpPhoneChangedCopyWithImpl(this._self, this._then);

  final OtpPhoneChanged _self;
  final $Res Function(OtpPhoneChanged) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(OtpPhoneChanged(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PhoneOtpSubmitted implements OtpEvent {
  const PhoneOtpSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneOtpSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent.phoneOtpSubmitted()';
}


}




/// @nodoc


class ResendPhoneOtp implements OtpEvent {
  const ResendPhoneOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendPhoneOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent.resendPhoneOtp()';
}


}




/// @nodoc


class StartResendTimer implements OtpEvent {
  const StartResendTimer();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartResendTimer);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent.startResendTimer()';
}


}




/// @nodoc


class TickResendTimer implements OtpEvent {
  const TickResendTimer();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TickResendTimer);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent.tickResendTimer()';
}


}




// dart format on
