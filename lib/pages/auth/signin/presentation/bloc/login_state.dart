
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/login_response.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default('') String validationErrorMessage,
    @Default(false) bool isServerError,
    @Default('') String apiErrorMessage,
    @Default('') String apiSuccessMessage,
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isOtpSent,
    @Default(false) bool isGuestButtonClick,
    @Default('') String phone,
    @Default(false) bool isTermsAccepted,
    @Default(false) bool isSocialLogin,
    @Default(LoginResponse()) LoginResponse loginResponse,
  }) = _LoginState;

  /// Initial/default state
  factory LoginState.initial() => LoginState(
    isLoading: false,
    isSocialLogin: false,
    isSuccess: false,
    validationErrorMessage: '',
    isServerError: false,
    apiErrorMessage: '',
    apiSuccessMessage: '',
    email: '',
    password: '',
    isOtpSent: false,
    isGuestButtonClick: false,
    phone: '',
    isTermsAccepted: false,
    loginResponse: LoginResponse(),
  );

}
