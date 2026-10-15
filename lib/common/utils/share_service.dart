import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ShareService {
  ShareService._();

  static Future<void> shareImageFromUrl(String imageUrl, String title, [String ti = ""]) async {
    try {
      final response = await http.get(Uri.parse(imageUrl));
      if (response.statusCode != 200) return;

      final tempDir = await getTemporaryDirectory();
      final file = File(
        '${tempDir.path}/share_${DateTime.now().millisecondsSinceEpoch}.jpg',
      );

      await file.writeAsBytes(response.bodyBytes);

      String formattedTitle = title;
      if (!formattedTitle.contains('/go/') && formattedTitle.contains(AppConstant.domainBasseUrl)) {
        formattedTitle = formattedTitle.replaceFirst(
          AppConstant.domainBasseUrl,
          '${AppConstant.domainBasseUrl}/go',
        );
      }

      await Share.shareXFiles(
        [XFile(file.path)],
        text: '''
$formattedTitle
Download Mobile Mandir App
''',
        subject: '$ti',
      );
    } catch (e) {
    }
  }
}
