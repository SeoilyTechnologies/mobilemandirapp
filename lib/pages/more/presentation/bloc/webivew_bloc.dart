import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/pages/more/presentation/bloc/webivew_event.dart';
import 'package:mandirapp/pages/more/presentation/bloc/webivew_state.dart';

import '../../../../common/service_locator/setivelocator.dart';
import '../../../auth/otp/domain/usecase/otp_usecase.dart';


class WebViewBloc extends Bloc<WebViewEvent, WebViewState> {
  final OtpUsecase _otpUsecase = getIt<OtpUsecase>();

  WebViewBloc() : super(WebViewState.initial()) {

    // LOAD WEBVIEW
    on<LoadWebView>((event, emit) {

      emit(
        state.copyWith(
          title: event.title,
          url: event.url,
          isLoading: false,
          isAccountDeleted: false, // ❗ always reset
        ),
      );
    });

    // START LOADING
    on<StartLoading>((event, emit) {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
    });

    // STOP LOADING
    on<StopLoading>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    });

    // DELETE ACCOUNT
    on<DeleteAccountEvent>((event, emit) async {

      emit(state.copyWith(isLoading: true,isAccountDeleted: false));

      final result =
      await _otpUsecase.callDeleteAccountApi({});

      result.fold(
            (failure) {
          // ❌ Failure → account deleted FALSE
          emit(
            state.copyWith(
              isLoading: false,
              isAccountDeleted: false,
            ),
          );
        },
            (success) {
          // ✅ SUCCESS → account deleted TRUE
          emit(
            state.copyWith(
              isLoading: false,
              isAccountDeleted: true,
            ),
          );

            },
      );
    });
  }
}

