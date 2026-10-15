import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../signin/data/entity/login_response.dart';

part 'otp_state.freezed.dart';

@freezed
abstract class OtpState with _$OtpState {
  const factory OtpState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default('') String validationErrorMessage,
    @Default(false) bool isServerError,
    @Default('') String apiErrorMessage,
    @Default('') String apiSuccessMessage,
    @Default('') String otp,
    @Default('') String email,

    // 🔥 ADD
    @Default('') String phone,
    @Default(false) bool isResending,

    // 🔥 Resend Timer
    @Default(30) int resendTimerSeconds,
    @Default(false) bool canResend,

    @Default(LoginResponse()) LoginResponse loginResponse,
  }) = _OtpState;


  /// 👇 Optional helper for initial state
  factory OtpState.initial() => const OtpState();
}

