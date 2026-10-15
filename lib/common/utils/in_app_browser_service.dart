import 'package:url_launcher/url_launcher.dart';

class InAppBrowserService {
  InAppBrowserService._();

  static Future<void> openWebPage(String url) async {
    final uri = Uri.parse(url);

    await launchUrl(
      uri,
      mode: LaunchMode.inAppBrowserView, // 👈 IMPORTANT
      webViewConfiguration: const WebViewConfiguration(
        enableJavaScript: true,
        enableDomStorage: true,
      ),
    );
  }
}
