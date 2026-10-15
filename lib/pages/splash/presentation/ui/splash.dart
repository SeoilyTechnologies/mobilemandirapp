import 'dart:io';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:mandirapp/common/analytics/facebook_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../common/app_notification/notification_navigation_coordinator.dart';
import '../../../../common/deep_link/deep_link_service.dart';
import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/routes/routes.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../bloc/splash_bloc.dart';
import '../bloc/splash_state.dart';
String? pendingNotificationPayload;
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await requestTracking();
      if (mounted) {
        context.read<SplashBloc>().add(StartTimerEvent());
      }
    });
  }

  Future<void> requestTracking() async {
    try {
      await FirebaseMessaging.instance.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
    } catch (e) {}

    if (!kIsWeb && Platform.isIOS) {
      try {
        // Wait for the notification popup dismiss animation to clear
        await Future.delayed(const Duration(milliseconds: 800));
        
        final status = await AppTrackingTransparency.trackingAuthorizationStatus;
        if (status == TrackingStatus.notDetermined) {
          final newStatus = await AppTrackingTransparency.requestTrackingAuthorization();
          await FacebookAppEvents().setAdvertiserTracking(
            enabled: newStatus == TrackingStatus.authorized,
          );
        } else {
          await FacebookAppEvents().setAdvertiserTracking(
            enabled: status == TrackingStatus.authorized,
          );
        }
      } catch (e) {
      }
    } else if (!kIsWeb) {
      try {
        await FacebookAppEvents().setAdvertiserTracking(enabled: true);
      } catch (e) {}
    }

    try {
      await FacebookAnalytics.logEvent("app_open");
    } catch (e) {}

    try {
      FirebaseMessaging.instance.subscribeToTopic("test_notification").catchError((_) {});
      FirebaseMessaging.instance.subscribeToTopic("all_users").catchError((_) {});
      FirebaseMessaging.instance.subscribeToTopic("hanuman").catchError((_) {});
      FirebaseMessaging.instance.subscribeToTopic("aarti").catchError((_) {});
    } catch (e) {}
  }

  Future<void> setupFCM() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    // await FirebaseMessaging.instance.requestPermission();
    if (!kIsWeb) {
      //  Android & iOS
      //FacebookAppEvents().logEvent(name: "fb_mobile_activate_app");
      await messaging.subscribeToTopic("all_users");
      await messaging.subscribeToTopic("hanuman");
      await messaging.subscribeToTopic("aarti");
      await FirebaseMessaging.instance.subscribeToTopic("test_notification");
    } else {
      //  Web - skip
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) async {


          if (state is SplashNavigateToHome) {
            // Initial data was already triggered in SplashBloc; navigate immediately
            await NotificationNavigationCoordinator.instance.onAppReadyToNavigate(context);
          }
          if (state is SplashNavigatToProgileUpdate) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.COMPLETEPROFILE,
              (route) => false,
            );
          }

          if (state is SplashNavigateToLogin) {
            // Check if there is a pending deep link or notification navigation to process
            final bool handledDeepLink =
                await DeepLinkService.instance.onAppReadyToNavigate(context);

            if (!handledDeepLink) {
              final isOnbarding = await getIt<SharedPrefs>().getBool(
                AppConstant.onBoardinPage,
              );
              if (isOnbarding == true) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.SIGNIN,
                  (route) => false,
                );
              } else {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.ONBOARDIN,
                  (route) => false,
                );
              }
            }
          }
        },
        builder: (context, state) {
          return SizedBox(
            width: context.screenWidth,
            height: context.screenHeight,
            child: Stack(
              children: <Widget>[
                Container(
                  width: context.screenWidth,
                  height: context.screenHeight,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/new_design/background/splash_background.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/new_design/background/splash_gkk.gif",
                    width: context.screenWidth * 0.7,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
