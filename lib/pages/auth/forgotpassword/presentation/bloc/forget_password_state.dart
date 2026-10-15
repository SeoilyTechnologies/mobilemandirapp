import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/forgot_password_model.dart';




part 'forget_password_state.freezed.dart';

@freezed
abstract class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState({
    @Default('') String email,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isError,
    @Default(false) bool isServerError,
    @Default('') String errorMessage,
    @Default(ForgotPasswordModel())ForgotPasswordModel forgotpasswordresponse
  }) = _ForgetPasswordState;

  factory ForgetPasswordState.initial() => const ForgetPasswordState();
}
