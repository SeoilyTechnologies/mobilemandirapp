import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = SplashInitial;
  const factory SplashState.navigateToHome() = SplashNavigateToHome;
  const factory SplashState.navigateToLogin() = SplashNavigateToLogin;
  const factory SplashState.navigateToDetail()=SplashNavigatToDetail;
  const factory SplashState.navigateToProfileUpdate()=SplashNavigatToProgileUpdate;
  const factory SplashState.navigateToOtpVerify()=SplashNavigatToOtpVerify;

}

