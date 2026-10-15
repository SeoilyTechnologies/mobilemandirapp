import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String email) = EmailChanged;
  const factory LoginEvent.passwordChanged(String password) = PasswordChanged;
  const factory LoginEvent.makeInitial() = MakeInitial;
  const factory LoginEvent.makeIsSuccessInitial(bool isSuccess) = MakeIsSuccessInitial;
  const factory LoginEvent.appLogin() = AppleLoginEvent;
  const factory LoginEvent.googleLogin() =GoogleLoginEvent;
  const factory LoginEvent.loginSubmitted() = LoginSubmitted;
  const factory LoginEvent.loginGuestSubmitted() = LoginGuestSubmitted;
  const factory LoginEvent.termsChanged(bool value) = TermsChanged;

  const factory LoginEvent.phoneChanged(String phone) = PhoneChanged;
  const factory LoginEvent.sendPhoneOtp() = SendPhoneOtp;
}
