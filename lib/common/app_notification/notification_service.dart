import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/common/app_notification/notification_navigation_coordinator.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
}

class AppNotificationService {
  static final AppNotificationService _instance =
      AppNotificationService._internal();

  factory AppNotificationService() => _instance;

  AppNotificationService._internal();

  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  bool _isInitialized = false;

  // Stream for notification click/tap events
  final StreamController<String> _notificationTapsController =
      StreamController<String>.broadcast();

  Stream<String> get notificationTapsStream => _notificationTapsController.stream;

  // ================= INIT =================
  Future<void> init() async {
    if (_isInitialized) return;

    await _initLocalNotifications();
    await _initFirebaseMessaging();

    _isInitialized = true;
  }

  // ================= LOCAL =================
  Future<void> _initLocalNotifications() async {
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );

    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      settings: settings,
      onDidReceiveNotificationResponse: (response) async {
        final payload = response.payload;


        if (payload == null || payload.isEmpty) return;

        // Pipe local notification clicks into the stream
        _notificationTapsController.add(payload);
      },
    );

    const channel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      importance: Importance.max,
    );

    await _localNotifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);
  }

  // ================= FIREBASE =================
  Future<void> _initFirebaseMessaging() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    await messaging.requestPermission(alert: true, badge: true, sound: true);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
          alert: true,
          badge: true,
          sound: true,
        );


    // 🔥 FOREGROUND
    FirebaseMessaging.onMessage.listen((message) async {

      await _showNotification(message);
    });

    // 🔥 BACKGROUND CLICK
    FirebaseMessaging.onMessageOpenedApp.listen((message) {

      // Pipe background clicks into the stream
      _notificationTapsController.add(jsonEncode(message.data));
    });
  }

  // ================= SHOW =================
  Future<void> showNotification(RemoteMessage message) async {
    await _showNotification(message);
  }

  Future<void> _showNotification(RemoteMessage message) async {
    // ⚠️ On iOS, if message.notification != null, Firebase Messaging automatically presents
    // the notification banner natively via setForegroundNotificationPresentationOptions(alert: true).
    // Calling _localNotifications.show would display a 2nd duplicate notification on iOS.
    if (Platform.isIOS && message.notification != null) {
      return;
    }

    final title =
        message.notification?.title ?? message.data['title'] ?? "Notification";

    final body = message.notification?.body ?? message.data['body'] ?? "";

    await _localNotifications.show(
      id: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      title: title,
      body: body,
      notificationDetails: const NotificationDetails(
        android: AndroidNotificationDetails(
          'high_importance_channel',
          'High Importance Notifications',
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      payload: jsonEncode(message.data),
    );
  }

  // ================= PARSE =================
  Future<Map<String, dynamic>?> parseNotificationPayload(String payload) async {
    try {
      return jsonDecode(payload);
    } catch (e) {
      return null;
    }
  }

  // ================= CLICK (DEPRECATED REDIRECT) =================
  Future<void> handleNotificationClick(String? payload) async {
    // Forward directly to coordinator to ensure single source of truth and backward compatibility
    await NotificationNavigationCoordinator.instance.handleNotificationClick(payload);
  }
}

