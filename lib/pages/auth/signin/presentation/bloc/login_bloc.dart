import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:mandirapp/pages/auth/signin/domain/usecase/login_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../../common/analytics/facebook_analytics.dart';
import '../../../../../common/analytics/facebook_events.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../../common/utils/utils.dart';
import '../../data/entity/login_response.dart';
import '../../data/entity/sociallogin/social_login_entity.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase _loginUsecase = getIt<LoginUsecase>();

  LoginBloc() : super(LoginState.initial()) {
    /// Register all event handlers
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<MakeInitial>(_onMakeInitial);
    on<LoginSubmitted>(_onLoginSubmitted);
    on<AppleLoginEvent>(_appleLogin);
    on<MakeIsSuccessInitial>(_onmakeIsSuccessInitialEvent);
    on<GoogleLoginEvent>(_googleLogin);

    on<PhoneChanged>(_onPhoneChanged);
    on<SendPhoneOtp>(_onSendPhoneOtp);
    on<TermsChanged>(_onTermsChanged);
    on<LoginGuestSubmitted>(_onGuestLoginSubmitted);
  }

  Future<void> _onGuestLoginSubmitted(
    LoginGuestSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isSocialLogin: false,
          isGuestButtonClick: true,
          isLoading: true,
          validationErrorMessage: "",
          apiErrorMessage: "",
          isServerError: false,
          isSuccess: false,
          apiSuccessMessage: "",
          loginResponse: LoginResponse(),
        ),
      );

      /// 🔹 Guest API (no body required usually)
      final response = await _loginUsecase.guestLoginApiCall({
        "appType": "USER_APP",
        "platform": "mobile",
      });

      response.fold(
        (err) {
          emit(
            state.copyWith(
              isLoading: false,
              isServerError: true,
              apiErrorMessage: err.message,
              isSuccess: false,
            ),
          );
        },
        (success) {
          emit(
            state.copyWith(
              isLoading: false,
              isServerError: false,
              loginResponse: success,
              isSuccess: true,
              apiSuccessMessage: success.message,
              validationErrorMessage: "",
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          isServerError: true,
          apiErrorMessage: e.toString(),
          isSuccess: false,
        ),
      );
    }
  }

  void _onTermsChanged(TermsChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(isTermsAccepted: event.value));
  }

  void _onmakeIsSuccessInitialEvent(
    MakeIsSuccessInitial event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        isSuccess: event.isSuccess,
        isOtpSent: false,
        isSocialLogin: false,
      ),
    );
  }

  void _onPhoneChanged(PhoneChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        phone: event.phone,
        validationErrorMessage: '',
        apiErrorMessage: '',
        isSuccess: false,
        isServerError: false,
        apiSuccessMessage: "",
        loginResponse: LoginResponse(),
        isLoading: false,
        email: "",
        isOtpSent: false,
      ),
    );
  }

  Future<void> _onSendPhoneOtp(
    SendPhoneOtp event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        validationErrorMessage: "",
        apiErrorMessage: "",
        isServerError: false,
        isOtpSent: false,
        isGuestButtonClick: false,
      ),
    );

    final response = await _loginUsecase.callSendPhoneOtp({
      "phone": state.phone.toString() ?? "2222222222",
      "latitude": "",
      "longitude": "",
      "location": "",
      "language": "en",
    });

    response.fold(
      (err) {
        emit(
          state.copyWith(
            isLoading: false,
            isServerError: true,
            apiErrorMessage: err.message,
          ),
        );
      },
      (success) {
        emit(
          state.copyWith(
            isLoading: false,
            isOtpSent: true,
            isServerError: false,
            apiErrorMessage: "",
            isSuccess: true,
            validationErrorMessage: "",
            apiSuccessMessage: success.message,
            loginResponse: success,
          ),
        );
        FacebookAnalytics.logEvent(
          FacebookEvents.login,
          parameters: {
            "method": "mobile_otp",
            "user_type": "existing",
          },
        );
      },
    );
  }

  /// -------------------------------------------------------------------------
  /// 🔹 Handle: Email changed
  /// -------------------------------------------------------------------------
  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        email: event.email,
        validationErrorMessage: '',
        isServerError: false,
        apiErrorMessage: '',
        isSuccess: false,
      ),
    );
  }

  /// -------------------------------------------------------------------------
  /// 🔹 Handle: Password changed
  /// -------------------------------------------------------------------------
  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        password: event.password,
        validationErrorMessage: '',
        isServerError: false,
        apiErrorMessage: '',
        isSuccess: false,
      ),
    );
  }

  Future<void> _appleLogin(
    AppleLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        apiErrorMessage: "",
        isServerError: false,
      ),
    );

    final response = await _loginUsecase.callAppleLogin({});

    if (response.isLeft) {
      final err = response.left;

      emit(
        state.copyWith(
          isLoading: false,
          isServerError: true,
          apiErrorMessage: err.message,
          isSuccess: false,
        ),
      );
      return;
    }

    final appleResult = response.right;

    if (appleResult.uid.isNotEmpty) {
      await _handleSocialLogin(
        socialUser: appleResult,
        loginSource: "apple",
        emit: emit,
      );
    }
  }

  // Future<void> _appleLogin(
  //   AppleLoginEvent event,
  //   Emitter<LoginState> emit,
  // ) async {
  //   emit(state.copyWith(isLoading: true));
  //   final response = await _loginUsecase.callAppleLogin({});
  //   response.fold(
  //     (err) {
  //       print(err.message);
  //       emit(
  //         state.copyWith(
  //           isLoading: false,
  //           isServerError: true,
  //           apiErrorMessage: err.message,
  //           isSuccess: false,
  //         ),
  //       );
  //     },
  //     (appleResult) async {
  //       if (appleResult.uid.isNotEmpty) {
  //         await _handleSocialLogin(
  //           socialUser: appleResult,
  //           loginSource: "apple",
  //           emit: emit,
  //         );
  //       }
  //     },
  //   );
  // }

  Future<void> _googleLogin(
    GoogleLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        apiErrorMessage: "",
        isServerError: false,
      ),
    );

    final response = await _loginUsecase.callGoogleLogin({});

    if (response.isLeft) {
      final err = response.left;

      emit(
        state.copyWith(
          isLoading: false,
          isServerError: true,
          apiErrorMessage: err.message,
          isSuccess: false,
        ),
      );
      return;
    }

    final googleResult = response.right;

    if (googleResult.uid.isNotEmpty) {
      await _handleSocialLogin(
        socialUser: googleResult,
        loginSource: "google",
        emit: emit,
      );
    }
  }

  // Future<void> _googleLogin(
  //   GoogleLoginEvent event,
  //   Emitter<LoginState> emit,
  // ) async
  // {
  //   final response = await _loginUsecase.callGoogleLogin({});
  //   response.fold(
  //     (err) {
  //       print(err.message);
  //       emit(
  //         state.copyWith(
  //           isLoading: false,
  //           isServerError: true,
  //           apiErrorMessage: err.message,
  //           isSuccess: false,
  //         ),
  //       );
  //     },
  //     (appleResult) async {
  //       if (appleResult.uid.isNotEmpty) {
  //         await _handleSocialLogin(
  //           socialUser: appleResult,
  //           loginSource: "google",
  //           emit: emit,
  //         );
  //       }
  //     },
  //   );
  // }

  /// -------------------------------------------------------------------------
  /// 🔹 Handle: Reset to initial state
  /// -------------------------------------------------------------------------
  void _onMakeInitial(MakeInitial event, Emitter<LoginState> emit) {
    emit(LoginState.initial());
  }

  /// -------------------------------------------------------------------------
  /// 🔹 Handle: Login submitted (API simulation)
  /// -------------------------------------------------------------------------
  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    // Step 2: Input validation
    if (state.email.isEmpty || state.password.isEmpty) {
      emit(
        state.copyWith(
          isLoading: false,
          validationErrorMessage: "Email and password cannot be empty.",
        ),
      );
      return;
    }

    try {
      emit(
        state.copyWith(
          isLoading: true,
          validationErrorMessage: "",
          isSuccess: false,
          apiErrorMessage: '',
          apiSuccessMessage: '',
          loginResponse: LoginResponse(),
          isServerError: false,
        ),
      );
      Map<String, String> userLoginMap = {
        'email': state.email ?? "",
        'password': state.password,
      };
      final response = await _loginUsecase.loginAccoun(userLoginMap);

      response.fold(
        (err) {
          emit(
            state.copyWith(
              isLoading: false,
              isServerError: true,
              apiErrorMessage: err.message,
              loginResponse: LoginResponse(),
              isSuccess: false,
              apiSuccessMessage: '',
              validationErrorMessage: '',
            ),
          );
        },
        (loginSuccess) {
          emit(
            state.copyWith(
              isLoading: false,
              isServerError: false,
              apiErrorMessage: '',
              loginResponse: loginSuccess,
              isSuccess: true,
              apiSuccessMessage: loginSuccess.message,
              validationErrorMessage: '',
            ),
          );
        },
      );
    } catch (err) {
      emit(
        state.copyWith(
          isLoading: false,
          isServerError: true,
          apiErrorMessage: err.toString(),
          loginResponse: LoginResponse(),
          isSuccess: false,
          apiSuccessMessage: '',
          validationErrorMessage: '',
        ),
      );
    }
  }

  Future<void> _handleSocialLogin({
    required SocialLoginEntity socialUser,
    required String loginSource,
    required Emitter<LoginState> emit,
  }) async {
    if (socialUser.uid.isEmpty) return;
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
    final socialLoginUserData = {
      "idToken": socialUser.firebaseToken,
      "osType": Platform.isAndroid ? "android" : "ios",
      "loginType": loginSource,
      // "name": socialUser.name ?? "",
      // "email": socialUser.email ?? "",
      // "social_auth": socialUser.uid,
      "appType": "USER_APP",
      'deviceName': deviceName ?? "",
      'deviceType': deviceType,
      'appVersion': Platform.isIOS ? "23" : "119",
    };
    final response = await _loginUsecase.socailLoginExecute(
      socialLoginUserData,
    );

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isServerError: true,
            apiErrorMessage: failure.message,
            isSuccess: false,
            apiSuccessMessage: "",
            loginResponse: LoginResponse(),
          ),
        );
      },
      (result) {
        emit(
          state.copyWith(
            isSocialLogin: true,
            isLoading: false,
            isServerError: false,
            isSuccess: true,
            apiSuccessMessage: "Login Successfully",
            loginResponse: result,
            apiErrorMessage: "",
          ),
        );
        FacebookAnalytics.logEvent(
          FacebookEvents.login,
          parameters: {
            "method": "$loginSource",
          },
        );
      },
    );
  }
}
