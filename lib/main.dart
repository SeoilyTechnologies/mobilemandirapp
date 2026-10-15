import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:intl/date_symbol_data_local.dart';
import 'package:clarity_flutter/clarity_flutter.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:audio_service/audio_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart' hide X509Certificate;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'audio_player/audio_handler.dart';
import 'common/analytics/analytics_services.dart';

import 'common/app_notification/notification_service.dart';
import 'common/app_notification/notification_navigation_coordinator.dart';
import 'common/deep_link/deep_link_service.dart';
import 'common/routes/pages.dart';
import 'common/routes/routes.dart';
import 'common/service_locator/setivelocator.dart';
import 'l10n/l10n.dart';
import 'pages/language/bloc/language_bloc.dart';
import 'pages/splash/presentation/ui/app_initializer.dart';
/// ---------------------------------------------------------------------------
/// HTTP OVERRIDE (as in your original code)
/// ---------------------------------------------------------------------------

bool openedFromTerminatedNotification = false;
bool isClickFronNotificaiton = false;
var aartiIddd = "";
var godiddd = "";
var isComingFromNotificatin = false;

//comment for web
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    final client = super.createHttpClient(context);
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  }
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

/// Global navigator key
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final AppRouteObserver routeObserver = AppRouteObserver();

/// Global audio handler
//late final AudioHandler audioHandler;
AudioHandler? audioHandler;

//AudioHandler? _audioHandler;
Future<AudioHandler>? _audioInitFuture;

Future<void> main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    debugPrint('--- FLUTTER ERROR: ${details.exceptionAsString()} ---');
    try {
      FirebaseCrashlytics.instance.recordFlutterFatalError(details);
    } catch (_) {}
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    try {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    } catch (_) {}
    return true;
  };

  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb) {
    try {
      PlatformInAppWebViewController.debugLoggingSettings.enabled = false;
    } catch (_) {}
  }

  try {
    await initializeDateFormatting('hi', null);
  } catch (_) {}

  try {
    await Firebase.initializeApp();
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  } catch (e) {
    debugPrint('Firebase init error: $e');
  }

  if (!kIsWeb) {
    try {
      await FacebookAppEvents().setAutoLogAppEventsEnabled(true);
      if (Platform.isIOS) {
        await FacebookAppEvents().setAdvertiserTracking(enabled: false);
      } else {
        await FacebookAppEvents().setAdvertiserTracking(enabled: true);
      }
    } catch (e) {
      debugPrint('FacebookAppEvents startup error: $e');
    }
  }

  try {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  } catch (e) {
    debugPrint('FirebaseMessaging background handler error: $e');
  }

  try {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  } catch (_) {}

  // Service locator
  try {
    await serviceLocator();
  } catch (e) {
    debugPrint('Service locator error: $e');
  }

  try {
    await AnalyticsService.initialize();
  } catch (e) {
    debugPrint('AnalyticsService init error: $e');
  }

  // ✅ Initialize AudioService HERE, before runApp(), so that audioHandler
  // is never null when AartiPlayerBloc is first created from a route.
  try {
    _audioInitFuture = AudioService.init(
      builder: () => AartiAudioHandler(),
      config: AudioServiceConfig(
        androidNotificationChannelId: 'mandir.aarti.audio',
        androidNotificationChannelName: 'Aarti Playback',
        // androidNotificationOngoing must NOT be set when
        // androidStopForegroundOnPause: false (library assertion)
        androidStopForegroundOnPause: false,
      ),
    );
    audioHandler = await _audioInitFuture!;
  } catch (e) {
    debugPrint('AudioService init error: $e');
  }

  // NOTE: On iOS, clarity_flutter v1.0.0 causes fatal launch crashes (SIGABRT/EXC_BAD_ACCESS).
  // On iOS, runApp(MyApp()) runs directly for rock-solid stability.
  if (!kIsWeb && Platform.isIOS) {
    runApp(const MyApp());
  } else {
    try {
      final config = ClarityConfig(
        projectId: "xpe5j0vrwx",
        logLevel: LogLevel.None,
      );
      runApp(ClarityWidget(
        app: const MyApp(),
        clarityConfig: config,
      ));
    } catch (e) {
      runApp(const MyApp());
    }
  }
}




/// ---------------------------------------------------------------------------
/// ROOT APP
/// ---------------------------------------------------------------------------
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// Guard: if AudioService was already initialized in main(), this is a no-op.
  Future<AudioHandler> initAudioServiceOnce() {
    if (audioHandler != null) {
      return Future.value(audioHandler);
    }
    // Fallback: should never reach here in normal flow after main() fix,
    // but kept as safety net.
    if (_audioInitFuture != null) {
      return _audioInitFuture!;
    }
    _audioInitFuture = AudioService.init(
      builder: () => AartiAudioHandler(),
      config: AudioServiceConfig(
        androidNotificationChannelId: 'mandir.aarti.audio',
        androidNotificationChannelName: 'Aarti Playback',
        androidStopForegroundOnPause: false,
      ),
    ).then((handler) {
      audioHandler = handler;
      return handler;
    });
    return _audioInitFuture!;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {

      try{
        initAudioServiceOnce();
      }catch (e) {
      }

      try {
        await AppNotificationService().init();
        NotificationNavigationCoordinator.instance.setupListeners();

        final RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

        if (initialMessage != null) {
          openedFromTerminatedNotification = true;

          // Pass cold-start payload to the coordinator (it will be queued until app is ready)
          await NotificationNavigationCoordinator.instance.handleNotificationClick(
            jsonEncode(initialMessage.data),
          );
        }
      } catch (e) {
      }

      try {
        await DeepLinkService.instance.init();
      } catch (e) {
        debugPrint("DeepLinkService init error: $e");
      }

    });

  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.linear(MediaQuery.of(context).textScaleFactor),
      ),
      child: GestureDetector(
        onTap: () {
          final currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: ScreenUtilInit(
          useInheritedMediaQuery: true,
          builder: (context, widget) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => LanguageBloc()),
                ...AppPages.allblocProviders(context),
              ],
              child: BlocConsumer<LanguageBloc, LanguageState>(
                listenWhen: (previous, current) => previous.locale != current.locale,
                listener: (context, state) async {
                  final navContext = navigatorKey.currentContext ?? context;
                  await AppInitializer.loadInitialData(
                    navContext,
                    force: true,
                    isLanguageChange: true,
                  );
                },
                builder: (context, langState) {
                  return MaterialApp(
                    navigatorKey: navigatorKey,
                    navigatorObservers: [routeObserver],
                    debugShowCheckedModeBanner: false,

                    /// Localization
                    locale: langState.locale,
                    supportedLocales: L10n.supportedLocales,
                    localizationsDelegates: L10n.localizationsDelegates,

                    /// Navigation
                    onGenerateRoute: AppPages.GenerateRoutesSetting,

                    ///  initialRoute: AppRoutes.SPLASH,
                    initialRoute: AppRoutes.SPLASH,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
