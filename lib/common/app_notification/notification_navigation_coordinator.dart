import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/main.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/service_locator/setivelocator.dart';
import 'package:mandirapp/common/local/SharedPrefs.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';
import 'package:mandirapp/common/app_notification/notification_service.dart';
import 'package:mandirapp/common/deep_link/deep_link_service.dart';

// Blocs and Events
import '../../pages/lyrics/bloc/aartiplayer_bloc.dart';
import '../../pages/lyrics/bloc/aartiplayer_event.dart';
import '../../pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../pages/mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../pages/naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../pages/naamjaap/jaappage_one/presentation/bloc/jaap_event.dart'
    hide GetGodData;
import '../../pages/sewa_module/seva_status/bloc/seva_status_bloc.dart';
import '../../pages/sewa_module/seva_status/bloc/seva_status_event.dart';
import '../../pages/sewa_module/sewa_page/presentation/bloc/seva_page_bloc.dart';
import '../../pages/sewa_module/sewa_page/presentation/bloc/seva_page_event.dart';

/// Tracks the active route globally to prevent duplicate screen pushes.
class AppRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      NotificationNavigationCoordinator.instance.updateCurrentRoute(
        route.settings.name,
      );
      DeepLinkService.instance.updateCurrentRoute(
        route.settings.name,
      );
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute) {
      NotificationNavigationCoordinator.instance.updateCurrentRoute(
        previousRoute.settings.name,
      );
      DeepLinkService.instance.updateCurrentRoute(
        previousRoute.settings.name,
      );
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) {
      NotificationNavigationCoordinator.instance.updateCurrentRoute(
        newRoute.settings.name,
      );
      DeepLinkService.instance.updateCurrentRoute(
        newRoute.settings.name,
      );
    }
  }
}

class NotificationNavigationCoordinator {
  static final NotificationNavigationCoordinator _instance =
      NotificationNavigationCoordinator._internal();

  factory NotificationNavigationCoordinator() => _instance;

  static NotificationNavigationCoordinator get instance => _instance;

  NotificationNavigationCoordinator._internal();

  StreamSubscription<String>? _notificationSubscription;
  bool _isAppInitialized = false;
  String? _pendingNotificationPayload;
  String? _currentRoute;
  bool _navigationLock = false;

  /// Update the current route to prevent duplicate navigation target pushes.
  void updateCurrentRoute(String? routeName) {
    _currentRoute = routeName;
  }

  /// Initialize listeners for notification click/tap events.
  void setupListeners() {
    _notificationSubscription?.cancel();
    _notificationSubscription = AppNotificationService().notificationTapsStream
        .listen((payload) {
          handleNotificationClick(payload);
        });
  }

  /// Handle incoming notification payload based on application state.
  Future<void> handleNotificationClick(String? payload) async {
    if (payload == null || payload.isEmpty) return;

    if (!_isAppInitialized) {
      _pendingNotificationPayload = payload;
      return;
    }

    if (_navigationLock) {
      return;
    }

    _navigationLock = true;
    try {
      await _executeNotificationNavigation(payload);
    } catch (e) {
    } finally {
      // Debounce navigation lock
      await Future.delayed(const Duration(milliseconds: 500));
      _navigationLock = false;
    }
  }

  /// Execute navigation based on current login session and parsed route.
  Future<void> _executeNotificationNavigation(String payload) async {
    final Map<String, dynamic>? data = await AppNotificationService()
        .parseNotificationPayload(payload);
    if (data == null) return;

    final String type = data["type"] ?? "";
    final String deepLinkUrl =
        data["url"] ?? data["link"] ?? data["deep_link"] ?? "";
    if (deepLinkUrl.isNotEmpty) {
      final Uri? uri = Uri.tryParse(deepLinkUrl);
      if (uri != null) {
        await DeepLinkService.instance.handleDeepLink(uri);
        return;
      }
    }
    final String godId = data["godId"] ?? "";
    final String aartiId = data["aartiId"] ?? "";
    final String sevaId = data["sevaId"] ?? "";
    final String serviceId = data["serviceId"] ?? "";

    final prefs = getIt<SharedPrefs>();
    final token = prefs.getString(AppConstant.token);
    final LoginResponse? userData = prefs.getModel<LoginResponse>(
      AppConstant.userModel,
      (json) => LoginResponse.fromJson(json),
    );

    // If user is not logged in or profile is incomplete, discard/prevent deep navigation
    if (token.trim().isEmpty ||
        userData == null ||
        userData.user.isProfileComplete != true) {
      return;
    }

    final context = navigatorKey.currentState?.context;
    if (context == null) {
      return;
    }

    switch (type) {
      case "daily_aarti":
        await _navigateWithBackStack(
          context,
          targetRoute: AppRoutes.AARTI_PLAYER_PAGE,
          arguments: null,
          preNavigationActions: () async {
            BlocProvider.of<AartiPlayerBloc>(
              context,
            ).add(GetAartiByAartiIdEventPlayer(aartiId));
            BlocProvider.of<MobileHomeBloc>(
              context,
            ).add(HomeGetGetAartiChalisaGodWise(godId, "all"));
            await Future.delayed(const Duration(milliseconds: 150));
          },
        );
        break;

      case "seva_type":
        await _navigateWithBackStack(
          context,
          targetRoute: AppRoutes.SEVA_PAGE,
          arguments: null,
          preNavigationActions: () async {
            BlocProvider.of<SevaPageBloc>(context).add(
              SevaPageEvent.getSewaPriceList(
                categoryId: serviceId,
                categoryName: "",
                categoryDescription: "",
              ),
            );
            await Future.delayed(const Duration(milliseconds: 150));
          },
        );
        break;

      case "daily_jaap":
        await _navigateWithBackStack(
          context,
          targetRoute: AppRoutes.JAAP_MALA_ONE_PAGE,
          arguments: {"godId": godId, "fromNotification": true},
          preNavigationActions: () async {
            BlocProvider.of<JaapBloc>(
              context,
            ).add(JaapEvent.getGodData(selectedGodId: godId));
            BlocProvider.of<JaapBloc>(
              context,
            ).add(JaapEvent.selectMantra("", "", ""));
            BlocProvider.of<JaapBloc>(
              context,
            ).add(GetWishlistMantra(userId: ""));
          },
        );
        break;

      case "seva_status":
      case "seva_time_out":
      case "seva_history":
        await _navigateWithBackStack(
          context,
          targetRoute: AppRoutes.SEWA_STATUS_PAGE,
          arguments: null,
          preNavigationActions: () async {
            BlocProvider.of<SevaStatusBloc>(context).add(GetStatus(id: sevaId));
            await Future.delayed(const Duration(milliseconds: 150));
          },
        );
        break;

      default:
    }
  }

  /// Navigates to the target page while ensuring the back-stack leads to ApplicationPage (Home).
  /// Prevents pushing multiple instances of the same route.
  Future<void> _navigateWithBackStack(
    BuildContext context, {
    required String targetRoute,
    required dynamic arguments,
    required Future<void> Function()? preNavigationActions,
  }) async {
    final nav = navigatorKey.currentState;
    if (nav == null) return;

    if (preNavigationActions != null) {
      await preNavigationActions();
    }

    // Prevent duplicate navigation target screens if we're already there.
    if (_currentRoute == targetRoute) {
      nav.pop();
    }

    // Clean back-stack implementation:
    // If we are currently on the Splash Screen (initial route), we push Home and target immediately.
    if (_currentRoute == AppRoutes.SPLASH || _currentRoute == null) {
      nav.pushNamedAndRemoveUntil(AppRoutes.APPLICATION, (route) => false);
      nav.pushNamed(targetRoute, arguments: arguments);
    } else {
      // If already inside the app running, just push the target route.
      nav.pushNamed(targetRoute, arguments: arguments);
    }
  }

  /// Called when Splash Page is fully initialized and login timer confirms readiness.
  /// Decides if we process a pending notification navigation or proceed to normal Home launch.
  Future<void> onAppReadyToNavigate(BuildContext context) async {
    _isAppInitialized = true;

    final bool handledDeepLink =
        await DeepLinkService.instance.onAppReadyToNavigate(context);
    if (handledDeepLink) {
      return;
    }

    if (_pendingNotificationPayload != null) {
      final payload = _pendingNotificationPayload!;
      _pendingNotificationPayload = null;
      await handleNotificationClick(payload);
    } else {
      final nav = navigatorKey.currentState ?? Navigator.of(context);
      nav.pushNamedAndRemoveUntil(
        AppRoutes.APPLICATION,
        (route) => false,
      );
    }
  }

  /// Clean up resources on disposal.
  void dispose() {
    _notificationSubscription?.cancel();
  }
}
