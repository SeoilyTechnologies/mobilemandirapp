import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../pages/auth/signin/data/entity/login_response.dart';
import '../local/SharedPrefs.dart';
import '../network/app_constant.dart';
import '../service_locator/setivelocator.dart';

class AnalyticsService {
  AnalyticsService._();

  static final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  static String _appVersion = "";
  static String _os = "";
  static String _userId = "";
  static String _userName = "";


  /// Call once after login or app start
  static Future<void> initialize() async {
    final prefs = getIt<SharedPrefs>();
    final packageInfo = await PackageInfo.fromPlatform();
    final LoginResponse? userData = prefs.getModel<LoginResponse>(
      AppConstant.userModel,
          (json) => LoginResponse.fromJson(json),
    );
    final user = userData?.user;

    _userId = user?.id ?? "";
    _userName = user?.username ?? "";
    _appVersion = packageInfo.version;
    _os = Platform.isAndroid ? "Android" : "iOS";

    /// Optional - Firebase User Id
    await _analytics.setUserId(id: _userId);
  }
  /// Common Parameters
  static Map<String, Object> _commonParams() {
    return {
      "user_id": _userId,
      "user_name": "${_userName}",
      "app_version": _appVersion,
      "os": _os,
    };
  }

  /// Generic Event
  static Future<void> logEvent({
    required String eventName,
    Map<String, Object>? parameters,
  }) async {
    final params = {
      ..._commonParams(),
      if (parameters != null) ...parameters,
    };


    await _analytics.logEvent(
      name: eventName,
      parameters: params,
    );
  }

  /// Screen Tracking
  static Future<void> logScreen({
    required String screenName,
  }) async {
    final params = {
      ..._commonParams(),
      "screen_name": screenName,
    };

    await _analytics.logScreenView(
      screenName: screenName,
      screenClass: screenName,
    );

    /// Extra event so that common params are visible in Analytics
    await _analytics.logEvent(
      name: "screen_view_custom",
      parameters: params,
    );
  }

  /// Play Aarti
  static Future<void> playAarti({
    required String aartiName,
  }) async {
    await logEvent(
      eventName: "play_aarti",
      parameters: {
        "aarti_name": aartiName,
      },
    );
  }

  /// Favourite Aarti
  static Future<void> favouriteAarti({
    required String aartiName,
  }) async {

    await logEvent(
      eventName: "favorite_aarti",
      parameters: {
        "aarti_name": aartiName,
      },
    );
  }

  /// Donation
  static Future<void> donation({
    required int amount,
  }) async {
    await logEvent(
      eventName: "donation_success",
      parameters: {
        "amount": amount,
      },
    );
  }

  /// Reward Claim
  static Future<void> rewardClaim() async {
    await logEvent(
      eventName: "reward_claim",
    );
  }

  /// Jaap Started
  static Future<void> startJaap({
    required String mantraName,
  }) async {
    await logEvent(
      eventName: "start_jaap",
      parameters: {
        "mantra_name": mantraName,
      },
    );
  }

  /// Pitru Paksha
  static Future<void> pitruPaksha({
    String? action,
    String? title,
    String? slug,
    Map<String, Object>? parameters,
  }) async {
    final params = <String, Object>{
      if (action != null) "action": action,
      if (title != null) "title": title,
      if (slug != null) "slug": slug,
      ...?parameters,
    };
    await logEvent(
      eventName: "pitru-paksha",
      parameters: params,
    );
  }
}