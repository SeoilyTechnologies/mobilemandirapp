import 'package:mandirapp/common/network/app_constant.dart';

import '../../common/service_locator/setivelocator.dart';
import '../../common/local/SharedPrefs.dart';

class JaapLocalHelper {
  static Future<void> saveDelta({
    required String sessionId,
    required int delta,
    required int duration,
  }) async {
    final prefs = getIt<SharedPrefs>();

    final old = prefs.getInt(AppConstant.pendingCount);

    await prefs.setString(AppConstant.sessionId, sessionId);
    await prefs.setInt(AppConstant.pendingCount, old + delta);
    await prefs.setInt(AppConstant.duration, duration);
  }

  static Map<String, dynamic>? getPending() {
    final prefs = getIt<SharedPrefs>();

    final sessionId = prefs.getString(AppConstant.sessionId);
    final count = prefs.getInt(AppConstant.pendingCount);
    final duration = prefs.getInt(AppConstant.duration);

    if (sessionId.isEmpty || count == 0) return null;

    return {
      "sessionId": sessionId,
      "count": count,
      "duration": duration,
    };
  }

  static Future<void> clear() async {
    final prefs = getIt<SharedPrefs>();

    await prefs.remove(AppConstant.sessionId);
    await prefs.remove(AppConstant.pendingCount);
    await prefs.remove(AppConstant.duration);
  }
}
