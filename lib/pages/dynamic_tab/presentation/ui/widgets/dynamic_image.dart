import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../data/entity/dynamic_tab_models.dart';
import 'dynamic_svg.dart';

/// Network image from the CMS: PNG/JPG/WebP, animated GIF or SVG.
class DynamicImage extends StatelessWidget {
  final String url;
  final String format;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Color? color;
  final Widget? fallback;

  /// Play CSS / SMIL animations inside SVGs (via WebView). Off for tiny icons.
  final bool animate;

  const DynamicImage({
    super.key,
    required this.url,
    this.format = 'image',
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.color,
    this.fallback,
    this.animate = true,
  });

  factory DynamicImage.media(
    DynamicMedia? media, {
    Key? key,
    BoxFit fit = BoxFit.cover,
    double? width,
    double? height,
    Color? color,
    Widget? fallback,
    bool animate = true,
  }) =>
      DynamicImage(
        key: key,
        url: media?.url ?? '',
        format: media?.format ?? 'image',
        fit: fit,
        width: width,
        height: height,
        color: color,
        fallback: fallback,
        animate: animate,
      );

  bool get _isSvg => format == 'svg' || url.toLowerCase().split('?').first.endsWith('.svg');

  Widget _placeholder() => Shimmer.fromColors(
        baseColor: const Color(0xFFF3E6D6),
        highlightColor: const Color(0xFFFFF6EE),
        child: Container(width: width, height: height, color: Colors.white),
      );

  @override
  Widget build(BuildContext context) {
    final empty = fallback ?? SizedBox(width: width, height: height);
    if (url.isEmpty) return empty;

    if (_isSvg) {
      return DynamicSvg(
        url: url,
        width: width,
        height: height,
        fit: fit,
        color: color,
        animate: animate,
        placeholder: _placeholder(),
        empty: empty,
      );
    }

    // CachedNetworkImage plays animated GIFs too.
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      color: color,
      placeholder: (_, _) => _placeholder(),
      errorWidget: (_, _, _) => empty,
    );
  }
}
