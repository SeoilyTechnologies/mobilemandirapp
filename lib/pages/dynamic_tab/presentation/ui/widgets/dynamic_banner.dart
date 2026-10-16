import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../../data/entity/dynamic_tab_models.dart';
import '../dynamic_action_router.dart';
import 'dynamic_image.dart';
import 'dynamic_style.dart';

/// Admin banner: image / GIF / SVG from the CDN, or raw HTML in a WebView.
/// Full width; height from the admin (393-px design units) or the media ratio.
class DynamicBanner extends StatelessWidget {
  final DynamicBannerModel banner;

  const DynamicBanner({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    final double? height = banner.height > 0 ? context.dp(banner.height) : null;

    Widget child;
    if (banner.format == 'html') {
      if (banner.html.trim().isEmpty) return const SizedBox.shrink();
      child = SizedBox(
        width: double.infinity,
        height: height ?? context.dp(101),
        child: _HtmlBanner(html: banner.html, action: banner.action),
      );
    } else {
      if (banner.url.isEmpty) return const SizedBox.shrink();
      child = DynamicImage(
        url: banner.url,
        format: banner.format,
        width: double.infinity,
        height: height,
        fit: height == null ? BoxFit.fitWidth : BoxFit.cover,
      );
    }

    if (banner.format == 'html' || !DynamicActionRouter.isTappable(banner.action)) {
      return child;
    }
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => DynamicActionRouter.open(context, banner.action),
      child: child,
    );
  }
}

class _HtmlBanner extends StatelessWidget {
  final String html;
  final DynamicAction action;

  const _HtmlBanner({required this.html, required this.action});

  String get _document {
    // Admins usually paste a fragment; wrap it so it fills the box transparently.
    if (html.toLowerCase().contains('<html')) return html;
    return '<!doctype html><html><head><meta name="viewport" '
        'content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">'
        '<style>html,body{margin:0;padding:0;height:100%;overflow:hidden;background:transparent}</style>'
        '</head><body>$html</body></html>';
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: InAppWebView(
            initialData: InAppWebViewInitialData(data: _document, baseUrl: WebUri('about:blank')),
            initialSettings: InAppWebViewSettings(
              javaScriptEnabled: true,
              transparentBackground: true,
              disableVerticalScroll: true,
              disableHorizontalScroll: true,
              supportZoom: false,
              disableContextMenu: true,
              mediaPlaybackRequiresUserGesture: false,
              allowsInlineMediaPlayback: true,
              useShouldOverrideUrlLoading: true,
            ),
            // Links inside the HTML open via the banner action, never inside the box.
            shouldOverrideUrlLoading: (controller, nav) async {
              final url = nav.request.url?.toString() ?? '';
              if (url.isEmpty || url == 'about:blank') return NavigationActionPolicy.ALLOW;
              if (context.mounted) DynamicActionRouter.open(context, action);
              return NavigationActionPolicy.CANCEL;
            },
          ),
        ),
        if (DynamicActionRouter.isTappable(action))
          Positioned.fill(
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => DynamicActionRouter.open(context, action),
            ),
          ),
      ],
    );
  }
}
