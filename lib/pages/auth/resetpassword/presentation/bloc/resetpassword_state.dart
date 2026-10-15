import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/reset_password_model.dart';

part 'resetpassword_state.freezed.dart';

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    @Default('') String newPassword,
    @Default('') String confirmPassword,
    @Default(ResetPasswordModel()) ResetPasswordModel resetPasswordModel,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
    @Default('') String successMessage,
    @Default(false) bool isServerError,

  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => const ResetPasswordState();
}
