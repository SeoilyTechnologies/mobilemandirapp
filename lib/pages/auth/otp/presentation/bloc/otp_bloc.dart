import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandirapp/pages/auth/otp/domain/usecase/otp_usecase.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../signin/domain/usecase/login_usecase.dart';
import 'otp_event.dart';
import 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  final OtpUsecase _otpUsecase = getIt<OtpUsecase>();
  Timer? _resendTimer;

  OtpBloc() : super(const OtpState()) {
    on<OtpMakeInitial>(_onMakeInitial);
    on<OtpSubmitted>(_onOtpSubmitted);
    on<OtpEmailChanged>(_onEmailChanged);
    on<OtpChanged>(_onOtplChanged);
    on<OtpSubmittedForForgetpassword>(_onOtpSubmittedForForgetPassword);

    on<OtpPhoneChanged>(_onPhoneChanged);
    on<PhoneOtpSubmitted>(_onPhoneOtpSubmitted);
    on<ResendPhoneOtp>(_onResendPhoneOtp);

    // 🔥 Resend Timer
    on<StartResendTimer>(_onStartResendTimer);
    on<TickResendTimer>(_onTickResendTimer);
  }

  void _onPhoneChanged(OtpPhoneChanged event, Emitter<OtpState> emit) {
    emit(
      state.copyWith(
        phone: event.phone,
        validationErrorMessage: '',
        apiErrorMessage: '',
        isSuccess: false,
        apiSuccessMessage: '',
        loginResponse: LoginResponse(),
      ),
    );
    // 🔥 Auto-start resend timer when phone is set
    if (event.phone.isNotEmpty) {
      add(const StartResendTimer());
    }
  }

  Future<void> _onPhoneOtpSubmitted(
      PhoneOtpSubmitted event,
      Emitter<OtpState> emit,
      ) async
  {
    emit(state.copyWith(
      isLoading: false,
      validationErrorMessage: '',
      isServerError: false,
      apiErrorMessage: '',
      isSuccess: false,
      apiSuccessMessage: '',
      loginResponse: LoginResponse(),
    ));

    // 1️⃣ Validate
    if (state.otp.length != 6) {
      emit(
        state.copyWith(
          isLoading: false,
          validationErrorMessage: "Please enter 6 digit OTP.",
        ),
      );
      return;
    }

    emit(state.copyWith(isLoading: true));

    try {
      final response = await _otpUsecase.verifyOtpCalling({
        "phone": state.phone,
        "otp": state.otp,
      });

      response.fold(
            (error) {
          emit(
            state.copyWith(
              isLoading: false,
              isServerError: true,
              apiErrorMessage: error.message,
              isSuccess: false,
              apiSuccessMessage: '',
              loginResponse: LoginResponse(),
            ),
          );
        },
            (success) {
          if (success.success == true) {
            emit(
              state.copyWith(
                isLoading: false,
                isServerError: false,
                apiErrorMessage: '',
                isSuccess: true,
                apiSuccessMessage: success.message ?? '',
                loginResponse: success,
              ),
            );
          } else {
            emit(
              state.copyWith(
                isLoading: false,
                isServerError: false,
                apiErrorMessage: success.message ?? '',
                isSuccess: false,
                apiSuccessMessage: '',
                loginResponse: success,
              ),
            );
          }
        },
      );
    } catch (error) {
      emit(
        state.copyWith(
          isLoading: false,
          isServerError: true,
          apiErrorMessage: error.toString(),
          isSuccess: false,
          apiSuccessMessage: '',
          loginResponse: LoginResponse(),
        ),
      );
    }
  }

  Future<void> _onResendPhoneOtp(
      ResendPhoneOtp event,
      Emitter<OtpState> emit,
      ) async {
    // 🔥 Guard: only allow resend when timer has expired
    if (!state.canResend) return;

    emit(state.copyWith(
      isResending: true,
      apiErrorMessage: '',
      apiSuccessMessage: '',
      validationErrorMessage: '',
    ));

    try {
      final loginUsecase = getIt<LoginUsecase>();

      final response = await loginUsecase.callSendPhoneOtp({
        "phone": state.phone,
      });

      response.fold(
            (error) {
          emit(
            state.copyWith(
              isResending: false,
              isServerError: true,
              apiErrorMessage: error.message.toString(),
            ),
          );
        },
            (success) {
          emit(
            state.copyWith(
              isResending: false,
              isServerError: false,
              apiSuccessMessage: "OTP resent successfully",
            ),
          );
          // 🔥 Restart timer after successful resend
          add(const StartResendTimer());
        },
      );
    } catch (error) {
      emit(
        state.copyWith(
          isResending: false,
          isServerError: true,
          apiErrorMessage: error.toString(),
        ),
      );
    }
  }

  // 🔥 Start Resend Timer
  void _onStartResendTimer(
      StartResendTimer event, Emitter<OtpState> emit) {
    _resendTimer?.cancel();
    emit(state.copyWith(
      resendTimerSeconds: 30,
      canResend: false,
    ));
    _resendTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const TickResendTimer());
    });
  }

  // 🔥 Tick Resend Timer
  void _onTickResendTimer(
      TickResendTimer event, Emitter<OtpState> emit) {
    final newSeconds = state.resendTimerSeconds - 1;
    if (newSeconds <= 0) {
      _resendTimer?.cancel();
      emit(state.copyWith(
        resendTimerSeconds: 0,
        canResend: true,
      ));
    } else {
      emit(state.copyWith(
        resendTimerSeconds: newSeconds,
      ));
    }
  }

  void _onMakeInitial(OtpMakeInitial event, Emitter<OtpState> emit) {
    _resendTimer?.cancel();
    emit(const OtpState());
  }
  void _onEmailChanged(OtpEmailChanged event, Emitter<OtpState> emit) {
    emit(
      state.copyWith(
        email: event.email,
        validationErrorMessage: '',
        isServerError: false,
        apiErrorMessage: '',
        isSuccess: false,
        apiSuccessMessage: '',
        loginResponse: LoginResponse()
      ),
    );
  }
  void _onOtplChanged(OtpChanged event, Emitter<OtpState> emit) {
    emit(
      state.copyWith(
         otp: event.otp,
          validationErrorMessage: '',
          isServerError: false,
          apiErrorMessage: '',
          isSuccess: false,
          apiSuccessMessage: '',
          loginResponse: LoginResponse()
      ),
    );
  }

  Future<void> _onOtpSubmitted(OtpSubmitted event, Emitter<OtpState> emit) async {
    emit(state.copyWith(isLoading: false, validationErrorMessage: '', isServerError: false, apiErrorMessage: '', isSuccess: false, apiSuccessMessage: '', loginResponse: LoginResponse()));

    // Step 2: Validate OTP input
    if (state.otp.isEmpty) {
      emit(
        state.copyWith(
          isLoading: false,
          validationErrorMessage: "Please enter OTP.",
        ),
      );
      return;
    }
    emit(state.copyWith(isLoading: true, validationErrorMessage: '', isServerError: false, apiErrorMessage: '', isSuccess: false, apiSuccessMessage: '', loginResponse: LoginResponse()));

    try {
      String deviceName = '';
      String osVersion = '';
      String deviceType = Platform.isAndroid ? 'android' : 'ios';
      final deviceInfo = DeviceInfoPlugin();

      if (Platform.isAndroid) {
        final androidInfo = await deviceInfo.androidInfo;
        if (!androidInfo.isPhysicalDevice) {
          deviceName = 'Realme';
        } else {
          deviceName = '${androidInfo.brand} ${androidInfo.model}';
        }
        osVersion = 'Android ${androidInfo.version.release}';
      } else if (Platform.isIOS) {
        final iosInfo = await deviceInfo.iosInfo;

        deviceName = iosInfo.utsname.machine; // iPhone16,2
        osVersion = 'iOS ${iosInfo.systemVersion}';
      }

      Map<String, String> verifyOtpData = {
        'phone': state.phone ?? "",
        'otp': state.otp,
        'deviceName':deviceName??"",
        'osType':Platform.isIOS?"ios":"android",
        'deviceType':deviceType,
        'appVersion':Platform.isIOS?"23":"119"
      };

      final response=await _otpUsecase.verifyOtpCalling(verifyOtpData);
      response.fold((error){
        emit(
            state.copyWith(
              isLoading: false,
              isServerError: true,
              apiErrorMessage: error.message.toString(),
              isSuccess: false,
              apiSuccessMessage: '',
                loginResponse: LoginResponse()
            ),
        );
      }, (success){
        if (success.success == true) {
          emit(
            state.copyWith(
                isLoading: false,
                isServerError: false,
                apiErrorMessage: '',
                isSuccess: true,
                apiSuccessMessage: success.message ?? '',
                loginResponse: success
            ),
          );
        } else {
          emit(
            state.copyWith(
                isLoading: false,
                isServerError: false,
                apiErrorMessage: success.message ?? '',
                isSuccess: false,
                apiSuccessMessage: '',
                loginResponse: success
            ),
          );
        }
      });

    } catch (error) {
      emit(
        state.copyWith(
            isLoading: false,
            isServerError: true,
            apiErrorMessage: error.toString(),
            isSuccess: false,
            apiSuccessMessage: '',
            loginResponse: LoginResponse()
        ),
      );
    }
  }

  Future<void> _onOtpSubmittedForForgetPassword(OtpSubmittedForForgetpassword event, Emitter<OtpState> emit) async {
    emit(state.copyWith(isLoading: false, validationErrorMessage: '', isServerError: false, apiErrorMessage: '', isSuccess: false, apiSuccessMessage: '', loginResponse: LoginResponse()));

    // Step 2: Validate OTP input
    if (state.otp.isEmpty) {
      emit(
        state.copyWith(
          isLoading: false,
          validationErrorMessage: "Please enter OTP.",
        ),
      );
      return;
    }
    emit(state.copyWith(isLoading: true, validationErrorMessage: '', isServerError: false, apiErrorMessage: '', isSuccess: false, apiSuccessMessage: '', loginResponse: LoginResponse()));

    try {

      Map<String, String> verifyOtpData = {
        'email': state.email ?? "",
        'otp': state.otp,
      };
      final response=await _otpUsecase.callVerifyForgetPasswordOtpApi(verifyOtpData);
      response.fold((error){
        emit(
          state.copyWith(
              isLoading: false,
              isServerError: true,
              apiErrorMessage: error.message.toString(),
              isSuccess: false,
              apiSuccessMessage: '',
              loginResponse: LoginResponse()
          ),
        );
      }, (success){
        if (success.success == true) {
          emit(
            state.copyWith(
                isLoading: false,
                isServerError: false,
                apiErrorMessage: '',
                isSuccess: true,
                apiSuccessMessage: success.message ?? '',
                loginResponse: LoginResponse()
            ),
          );
        } else {
          emit(
            state.copyWith(
                isLoading: false,
                isServerError: false,
                apiErrorMessage: success.message ?? '',
                isSuccess: false,
                apiSuccessMessage: '',
                loginResponse: LoginResponse()
            ),
          );
        }
      });

    } catch (error) {
      emit(
        state.copyWith(
            isLoading: false,
            isServerError: true,
            apiErrorMessage: error.toString(),
            isSuccess: false,
            apiSuccessMessage: '',
            loginResponse: LoginResponse()
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _resendTimer?.cancel();
    return super.close();
  }
}
