import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mandirapp/pages/auth/resetpassword/presentation/bloc/resetpassword_state.dart';
import 'package:meta/meta.dart';


import '../../../../../common/service_locator/setivelocator.dart';
import '../../data/entity/reset_password_model.dart';
import '../../domain/usecase/reset_password_usecase.dart';

part 'resetpassword_event.dart';

class ResetpasswordBloc extends Bloc<ResetpasswordEvent, ResetPasswordState> {
 final ResetPasswordUsecase _resetPasswordUsecase=getIt<ResetPasswordUsecase>();
  ResetpasswordBloc()
      : super(ResetPasswordState.initial()) {
    on<ResetNewpasswordChanged>(_onPasswordChanged);
    on<ResetConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<ResetPasswordSubmitted>(_onResetpaswrodSubmitted);
    on<ResetPasswordResetState>(_onResetState);
  }

 Future<void> _onResetState(
     ResetPasswordResetState event, Emitter<ResetPasswordState> emit) async {
   emit(ResetPasswordState.initial());
 }
  Future<void> _onPasswordChanged(
      ResetNewpasswordChanged event, Emitter<ResetPasswordState> emit) async {
    emit(state.copyWith(newPassword: event.password, errorMessage: ''));
  }

  Future<void> _onConfirmPasswordChanged(ResetConfirmPasswordChanged event,
      Emitter<ResetPasswordState> emit) async {
    emit(state.copyWith(
        confirmPassword: event.confirmPassword, errorMessage: ''));
  }

  Future<void> _onResetpaswrodSubmitted(
      ResetPasswordSubmitted event, Emitter<ResetPasswordState> emit) async {
    emit(state.copyWith(errorMessage: '', isSuccess: false));

    if (state.newPassword.toString().trim().isEmpty) {
      emit(state.copyWith(errorMessage: 'Please enter your password',isServerError: false));
      return;
    }

    if (state.confirmPassword.toString().trim().isEmpty) {
      emit(state.copyWith(errorMessage: 'Please enter your confirm password',isServerError: false));
      return;
    }

    // Validate password length



    // if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$')
    //     .hasMatch(state.newPassword.trim())) {
    //   emit(state.copyWith(
    //       errorMessage:
    //       'Password must be at least 6 characters long and include at least one uppercase letter, one lowercase letter, one number, and one special character.',
    //       isServerError: false));
    //   return;
    // }

    // Check if password and confirm password match
    if (state.newPassword != state.confirmPassword) {
      emit(state.copyWith(
          errorMessage: 'Passwords do not match', isSuccess: false,isServerError: false));
      return;
    }

    try {
      Map<String, String> resetPassword = {
        'email': event.email.toString().toLowerCase().trim() ?? "",
        "newPassword": state.newPassword,
        "otp": event.otp
      };
      emit(state.copyWith(
          successMessage: '',
          errorMessage: '',
          isLoading: true,
          isSuccess: false,
          resetPasswordModel: const ResetPasswordModel()));

      final response =
          await _resetPasswordUsecase.resestpasswordExecute(resetPassword);
      response.fold((failure) {
        emit(state.copyWith(
            errorMessage: failure.message,
            isLoading: false,
            isSuccess: false,
            isServerError: true,
            resetPasswordModel: const ResetPasswordModel()));
      }, (resetPasswordResponse) {
        emit(state.copyWith(
            errorMessage: '',
            isLoading: false,
            isSuccess: true,
            isServerError: false,
            successMessage: resetPasswordResponse.message,
            resetPasswordModel: resetPasswordResponse));
      });
    } catch (e) {
      emit(state.copyWith(
          errorMessage: 'Failed to reset password. Please try again.',
          isLoading: false,
          isSuccess: false,
          isServerError: false,
          resetPasswordModel: const ResetPasswordModel()));
    }
  }
}
