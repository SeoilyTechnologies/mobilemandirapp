import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_event.freezed.dart';

@freezed
abstract class OtpEvent with _$OtpEvent {
  const factory OtpEvent.emailChanged(String email) = OtpEmailChanged;
  const factory OtpEvent.otpChanged(String otp) = OtpChanged;
  const factory OtpEvent.makeInitial() = OtpMakeInitial;
  const factory OtpEvent.otpSubmitted() = OtpSubmitted;
  const factory OtpEvent.otpSubmittedForForgetPassword() = OtpSubmittedForForgetpassword;

  // 🔥 ADD
  const factory OtpEvent.phoneChanged(String phone) = OtpPhoneChanged;
  const factory OtpEvent.phoneOtpSubmitted() = PhoneOtpSubmitted;
  const factory OtpEvent.resendPhoneOtp() = ResendPhoneOtp;

  // 🔥 Resend Timer Events
  const factory OtpEvent.startResendTimer() = StartResendTimer;
  const factory OtpEvent.tickResendTimer() = TickResendTimer;

}

