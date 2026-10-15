
import 'package:equatable/equatable.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/main.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';
import 'package:mandirapp/pages/splash/presentation/bloc/splash_state.dart';

import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../ui/app_initializer.dart';

part 'splash_event.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<StartTimerEvent>(startTimer);
  }

  Future<void> startTimer(
    StartTimerEvent event,
    Emitter<SplashState> emit,
  ) async {
    Future<void>? initialDataFuture;
    final navContext = navigatorKey.currentContext ?? navigatorKey.currentState?.context;
    if (navContext != null) {
      try {
        initialDataFuture = AppInitializer.loadInitialData(navContext);
      } catch (e) {
        debugPrint('Splash loadInitialData error: $e');
      }
    }

    final minSplashDuration = Future.delayed(const Duration(seconds: 3));

    // Wait until minimum splash duration has elapsed AND critical home data is ready
    await Future.wait([
      if (initialDataFuture != null) initialDataFuture,
      minSplashDuration,
    ]).timeout(
      const Duration(seconds: 5),
      onTimeout: () => [],
    );

    final prefs = getIt<SharedPrefs>();

    final token = prefs.getString(AppConstant.token);
    final LoginResponse? userData = prefs.getModel<LoginResponse>(
      AppConstant.userModel,
      (json) => LoginResponse.fromJson(json),
    );

    if (token.trim().isNotEmpty && userData != null) {
      final bool isProfileComplete =
          userData.isProfileComplete || (userData.user.isProfileComplete == true);

      if (isProfileComplete) {
        emit(const SplashNavigateToHome());
      } else {
        emit(const SplashNavigatToProgileUpdate());
      }
    } else {
      emit(const SplashNavigateToLogin());
    }
  }

}
