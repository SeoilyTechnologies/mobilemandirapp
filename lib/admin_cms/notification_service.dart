import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NotificationService {
  static const baseUrl = "https://mobilemandirapp.com/api";

  static String? token;

  static void setToken(String t) {
    token = t;
  }

  static Map<String, String> headers() => {
    "Content-Type": "application/json",
    "Authorization": "Bearer $token",
  };

  static Future<Map<String, dynamic>> postRequest(
      String endpoint, Map body) async {
    try {
      final res = await http
          .post(
        Uri.parse("$baseUrl$endpoint"),
        headers: headers(),
        body: jsonEncode(body),
      )
          .timeout(const Duration(seconds: 20));

      if (kDebugMode) {
      }

      final data = jsonDecode(res.body);

      if (res.statusCode == 200) {
        return data;
      } else {
        return {
          "success": false,
          "message": data["message"] ?? "Server Error",
          "raw": res.body
        };
      }
    } catch (e) {
      return {
        "success": false,
        "message": "Network/Error",
        "error": e.toString()
      };
    }
  }

  /// ================= APIs =================

  static Future sendAarti({
    required String aartiId,
    required String title,
    required String body,
  }) {
    return postRequest("/notification/aarti", {
      "aartiId": aartiId,
      "title": title,
      "body": body,
      "topic": "all_users"
    });
  }

  static Future sendCalendar({
    required String date,
    required String title,
    required String body,
  }) {
    return postRequest("/notification/calendar", {
      "date": date,
      "title": title,
      "body": body,
    });
  }

  static Future sendDayWise({
    required String title,
    required String body,
  }) {
    return postRequest("/notification/daywise", {
      "title": title,
      "body": body,
    });
  }

  static Future sendCustom({
    required String title,
    required String body,
  }) {
    return postRequest("/notification/custom", {
      "title": title,
      "body": body,
    });
  }
}