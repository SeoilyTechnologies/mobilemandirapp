import 'dart:io';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/utils/share_service.dart';
import 'package:share_plus/share_plus.dart';

/// Centralized Reusable Share Helper for Mobile Mandir App
class ShareHelper {
  ShareHelper._(); // private constructor

  static const String androidAppStoreUrl =
      "https://play.google.com/store/apps/details?id=com.seoily.mobilemandir";
  static const String iosAppStoreUrl =
      "https://apps.apple.com/us/app/mobile-mandir/id6757151198";

  /// ──────────────────────────────────────────────────────────────────────────
  /// 1. TEMPLE SHARE
  /// ──────────────────────────────────────────────────────────────────────────
  static Future<void> shareTemple({
    required String slug,
    String? name,
    String? customMessage,
  }) async {
    final String url = buildGoUrl(slug.startsWith('temple/') ? slug : 'temple/$slug');
    final String message = customMessage ??
        (name != null && name.isNotEmpty ? "$name Mandir Darshan kre" : "Mandir Darshan kre");
    await shareGenericUrl(url: url, message: message);
  }

  /// ──────────────────────────────────────────────────────────────────────────
  /// 2. GOD / DEVI / DEVTA SHARE
  /// ──────────────────────────────────────────────────────────────────────────
  static Future<void> shareGod({
    required String slug,
    String? name,
    String? customMessage,
  }) async {
    final String url = buildGoUrl(slug);
    final String message = customMessage ??
        (name != null && name.isNotEmpty ? "$name ka darshan kre" : "Darshan kre");
    await shareGenericUrl(url: url, message: message);
  }

  /// ──────────────────────────────────────────────────────────────────────────
  /// 3. AARTI / BHAJAN / CHALISA / KATHA / MANTRA SHARE
  /// ──────────────────────────────────────────────────────────────────────────
  static Future<void> shareAarti({
    required String title,
    String? slugUrl,
    String? lyricsImageUrl,
    String? customMessage,
  }) async {
    final String shareUrl = (slugUrl != null && slugUrl.isNotEmpty)
        ? buildGoUrl(slugUrl)
        : buildGoUrl('');

    if (lyricsImageUrl != null && lyricsImageUrl.trim().isNotEmpty) {
      final String fullImageUrl = lyricsImageUrl.startsWith('http')
          ? lyricsImageUrl
          : "${AppConstant.fileBaseUrl}$lyricsImageUrl";
      await ShareService.shareImageFromUrl(fullImageUrl, shareUrl, title);
    } else {
      final String msg = customMessage ?? title;
      await shareGenericUrl(url: shareUrl, message: msg);
    }
  }

  /// ──────────────────────────────────────────────────────────────────────────
  /// 4. SEVA SHARE
  /// ──────────────────────────────────────────────────────────────────────────
  static Future<void> shareSeva({
    String? sevaType,
    String? orderId,
    String? customMessage,
  }) async {
    final String sevaLink = (orderId != null && orderId.isNotEmpty)
        ? buildGoUrl('seva/track/$orderId')
        : buildGoUrl('seva');

    final String typeName = sevaType ?? 'Seva';
    final String shareText = customMessage ??
        '''
I just completed $typeName through Mobile Mandir.

$sevaLink

Join me in supporting sacred seva.
Download Today!

👉 Android:
$androidAppStoreUrl

👉 iOS:
$iosAppStoreUrl
''';

    await Share.share(shareText.trim());
  }

  /// ──────────────────────────────────────────────────────────────────────────
  /// 5. APP GENERAL SHARE
  /// ──────────────────────────────────────────────────────────────────────────
  static Future<void> shareApp() async {
    final String goUrl = buildGoUrl('');
    final String shareMessage = '''
Mobile Mandir App is a spiritual app with Aarti, Chalisa, Mantra, Katha, Naam Jap, Daily Horoscope & Astrology tips to keep you peaceful and connected every day.

“आरती, चालीसा, नाम जप, मंत्र, कथा, रोज़ का राशिफल, ज्योतिष जानकारी, त्योहार और मुहूर्त”

$goUrl

Download Today!

👉 Android:
$androidAppStoreUrl

👉 iOS:
$iosAppStoreUrl
''';

    await Share.share(shareMessage.trim());
  }

  /// ──────────────────────────────────────────────────────────────────────────
  /// HELPER: BUILD /go/ URL FOR ANY SLUG
  /// ──────────────────────────────────────────────────────────────────────────
  static String buildGoUrl(String pathOrSlug) {
    final String cleanedSlug = pathOrSlug.trim().replaceAll(RegExp(r'^/+'), '');
    if (cleanedSlug.isEmpty) {
      return "${AppConstant.domainBasseUrl}/go";
    }
    if (cleanedSlug.startsWith('go/')) {
      return "${AppConstant.domainBasseUrl}/$cleanedSlug";
    }
    return "${AppConstant.domainBasseUrl}/go/$cleanedSlug";
  }

  /// ──────────────────────────────────────────────────────────────────────────
  /// 6. GENERIC URL / TEXT SHARE (Ensures /go/ is present)
  /// ──────────────────────────────────────────────────────────────────────────
  static Future<void> shareGenericUrl({
    required String url,
    String? message,
  }) async {
    String formattedUrl = url.trim();
    if (!formattedUrl.contains('/go/') &&
        formattedUrl.contains(AppConstant.domainBasseUrl)) {
      formattedUrl = formattedUrl.replaceFirst(
        AppConstant.domainBasseUrl,
        '${AppConstant.domainBasseUrl}/go',
      );
    }

    final String textToShare = (message == null || message.trim().isEmpty)
        ? formattedUrl
        : "${message.trim()}\n\n$formattedUrl";

    await Share.share(textToShare);
  }

  /// ──────────────────────────────────────────────────────────────────────────
  /// BASIC UTILITIES
  /// ──────────────────────────────────────────────────────────────────────────
  static Future<void> shareText({
    required String text,
    String? subject,
  }) async {
    if (text.trim().isEmpty) return;
    await Share.share(text, subject: subject);
  }

  static Future<void> shareImage({
    required String imagePath,
    String? subject,
  }) async {
    final file = File(imagePath);
    if (!file.existsSync()) return;
    await Share.shareXFiles([XFile(imagePath)], subject: subject);
  }

  static Future<void> shareImageWithText({
    required String imagePath,
    required String text,
    String? subject,
  }) async {
    final file = File(imagePath);
    if (!file.existsSync()) return;
    await Share.shareXFiles([XFile(imagePath)], text: text, subject: subject);
  }
}
