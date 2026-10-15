import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/service_locator/setivelocator.dart';
import '../../data/entity/forgot_password_model.dart';
import '../../domain/usecase/forgot_password_usecase.dart';
import 'forget_password_state.dart';

part 'forget_password_event.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
 final ForgotPasswordUseCase _forgotPasswordUseCase=getIt<ForgotPasswordUseCase>();
  ForgetPasswordBloc()
      : super(ForgetPasswordState.initial()) {
    on<ForgetPasswordEmailChanged>(_onEmailChanged);
    on<ForgetPasswordSubmittedEvent>(_onForgotPasswordSubmitted);
    on<ForgetPasswordResetEvent>(_onResetForgetPasswordState);

  }


 Future<void> _onResetForgetPasswordState(
     ForgetPasswordResetEvent event, Emitter<ForgetPasswordState> emit) async {
   emit(ForgetPasswordState.initial());
 }

 Future<void> _onEmailChanged(ForgetPasswordEmailChanged event,
      Emitter<ForgetPasswordState> emit) async {
    emit(state.copyWith(
        email: event.email,
        errorMessage: '',
        isSuccess: false,
        isServerError:false,
        isError: false));
  }

  Future<void> _onForgotPasswordSubmitted(ForgetPasswordSubmittedEvent event,
      Emitter<ForgetPasswordState> emit) async {
    emit(state.copyWith(errorMessage: '', isSuccess: false, isError: false,isServerError:false,));

    if (state.email.toString().trim().isEmpty) {
      emit(state.copyWith(
          errorMessage: 'Please enter your email', isError: true,isServerError:false,));
      return;
    }

    // Validate email format
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
        .hasMatch(state.email.toString().trim())) {
      emit(state.copyWith(
        errorMessage: 'Please enter a valid email address',
        isError: true,
        isSuccess: false,
        isServerError:false,
      ));
      return; // Exit the function if the email is invalid
    }

    try {
      Map<String, String> forgotpassword = {
        'email': state.email.toString().toLowerCase().trim() ?? "",
      };

      emit(state.copyWith(
          isLoading: true,
          errorMessage: '',
          isSuccess: false,
          isError: false,
          isServerError:false,
          forgotpasswordresponse: ForgotPasswordModel()));
      final response =
          await _forgotPasswordUseCase.executeForgetPassword(forgotpassword);

      response.fold((failure) {
        emit(state.copyWith(
          errorMessage: failure.message,
          isSuccess: false,
          isLoading: false,
            isServerError:true,
          email: state.email
        ));
      }, (forgotPassord) {
        emit(state.copyWith(
            errorMessage: '',
            isSuccess: true,
            isLoading: false,
            isServerError:false,
            forgotpasswordresponse: forgotPassord));
      });
    } catch (e) {
      emit(state.copyWith(
          errorMessage: 'Failed to create account. Please try again.',
          isError: true,
          isSuccess: false));
    }
  }
}
