import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/foundation.dart';

class FacebookAnalytics {
  FacebookAnalytics._();

  static final FacebookAppEvents _fb = FacebookAppEvents();

  static Future<void> logEvent(
      String eventName, {
        Map<String, dynamic>? parameters,
      }) async {
    try {
      if (kDebugMode) {
        if (parameters != null && parameters.isNotEmpty) {
        }
      }

      await _fb.logEvent(
        name: eventName,
        parameters: parameters,
      );

      if (kDebugMode) {
      }
    } catch (e) {
      if (kDebugMode) {
      }
    }
  }
}