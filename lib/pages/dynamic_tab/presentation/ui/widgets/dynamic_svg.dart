import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

/// CMS SVG. Static SVGs render natively; SVGs with CSS / SMIL animation
/// (flutter_svg ignores those) render in a transparent, non-interactive
/// WebView so they move like on the web.
class DynamicSvg extends StatefulWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Color? color;

  /// False for tiny icons (tab bar) where a WebView would be too heavy.
  final bool animate;
  final Widget placeholder;
  final Widget empty;

  const DynamicSvg({
    super.key,
    required this.url,
    required this.placeholder,
    required this.empty,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.color,
    this.animate = true,
  });

  @override
  State<DynamicSvg> createState() => _DynamicSvgState();
}

class _SvgDoc {
  final String source;
  final bool animated;

  /// width / height from viewBox (or width/height attributes); null if unknown.
  final double? aspect;

  const _SvgDoc(this.source, this.animated, this.aspect);

  static final RegExp _animation = RegExp(
    r'<animate|<animateTransform|<animateMotion|<set\b|@keyframes|animation\s*:',
    caseSensitive: false,
  );

  static double? _aspectOf(String svg) {
    final root = RegExp(r'<svg\b[^>]*>', caseSensitive: false).firstMatch(svg)?.group(0) ?? '';
    final vb = RegExp(r'''viewBox\s*=\s*["']([^"']+)["']''', caseSensitive: false).firstMatch(root);
    if (vb != null) {
      final p = vb.group(1)!.trim().split(RegExp(r'[\s,]+')).map(double.tryParse).toList();
      if (p.length == 4 && p[2] != null && p[3] != null && p[2]! > 0 && p[3]! > 0) {
        return p[2]! / p[3]!;
      }
    }
    double? attr(String name) {
      final m = RegExp('$name\\s*=\\s*["\']([0-9.]+)', caseSensitive: false).firstMatch(root);
      return m == null ? null : double.tryParse(m.group(1)!);
    }

    final w = attr('width'), h = attr('height');
    return (w != null && h != null && w > 0 && h > 0) ? w / h : null;
  }

  factory _SvgDoc.parse(String svg) => _SvgDoc(svg, _animation.hasMatch(svg), _aspectOf(svg));
}

class _DynamicSvgState extends State<DynamicSvg> {
  // One download per URL for the app session.
  static final Map<String, Future<_SvgDoc?>> _cache = {};

  late Future<_SvgDoc?> _doc;

  static Future<_SvgDoc?> _load(String url) async {
    try {
      final res = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 15));
      if (res.statusCode != 200) return null;
      return _SvgDoc.parse(utf8.decode(res.bodyBytes, allowMalformed: true));
    } catch (_) {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    _doc = _cache.putIfAbsent(widget.url, () => _load(widget.url).then((d) {
          if (d == null) _cache.remove(widget.url); // retry next time
          return d;
        }));
  }

  @override
  void didUpdateWidget(DynamicSvg old) {
    super.didUpdateWidget(old);
    if (old.url != widget.url) {
      _doc = _cache.putIfAbsent(widget.url, () => _load(widget.url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<_SvgDoc?>(
      future: _doc,
      builder: (context, snap) {
        if (snap.connectionState != ConnectionState.done) return widget.placeholder;
        final doc = snap.data;
        if (doc == null) return widget.empty;

        return LayoutBuilder(
          builder: (context, c) {
            final screen = MediaQuery.sizeOf(context);
            // Resolve double.infinity / null to a finite box using the SVG ratio.
            double? w = widget.width;
            if (w != null && !w.isFinite) w = c.maxWidth.isFinite ? c.maxWidth : screen.width;
            double? h = widget.height;
            if (h != null && !h.isFinite) h = c.maxHeight.isFinite ? c.maxHeight : null;

            final useWebView = widget.animate && doc.animated && widget.color == null;
            if (!useWebView) {
              return SvgPicture.string(
                doc.source,
                width: w,
                height: h,
                fit: widget.fit,
                colorFilter:
                    widget.color == null ? null : ColorFilter.mode(widget.color!, BlendMode.srcIn),
              );
            }

            final boxW = w ?? (c.maxWidth.isFinite ? c.maxWidth : screen.width);
            final boxH = h ?? (doc.aspect != null ? boxW / doc.aspect! : boxW / 4);
            return SizedBox(
              width: boxW,
              height: boxH,
              // Taps go to the parent (banner / card action), never into the WebView.
              child: IgnorePointer(child: _AnimatedSvgWebView(svg: doc.source, fit: widget.fit)),
            );
          },
        );
      },
    );
  }
}

class _AnimatedSvgWebView extends StatelessWidget {
  final String svg;
  final BoxFit fit;

  const _AnimatedSvgWebView({required this.svg, required this.fit});

  String get _par {
    switch (fit) {
      case BoxFit.cover:
        return 'xMidYMid slice';
      case BoxFit.fill:
        return 'none';
      default:
        return 'xMidYMid meet';
    }
  }

  String get _html =>
      '<!doctype html><html><head><meta name="viewport" content="width=device-width,initial-scale=1">'
      '<style>html,body{margin:0;padding:0;width:100%;height:100%;overflow:hidden;background:transparent}'
      'svg{display:block;width:100%;height:100%}</style></head><body>$svg'
      '<script>var s=document.querySelector("svg");if(s){s.removeAttribute("width");'
      's.removeAttribute("height");s.setAttribute("preserveAspectRatio","$_par");}</script>'
      '</body></html>';

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialData: InAppWebViewInitialData(data: _html, baseUrl: WebUri('about:blank')),
      initialSettings: InAppWebViewSettings(
        transparentBackground: true,
        javaScriptEnabled: true,
        disableVerticalScroll: true,
        disableHorizontalScroll: true,
        supportZoom: false,
        disableContextMenu: true,
        useShouldOverrideUrlLoading: true,
      ),
      shouldOverrideUrlLoading: (_, nav) async {
        final url = nav.request.url?.toString() ?? '';
        return url.isEmpty || url == 'about:blank'
            ? NavigationActionPolicy.ALLOW
            : NavigationActionPolicy.CANCEL;
      },
    );
  }
}
