import 'package:flutter/material.dart';

import '../../../data/entity/dynamic_tab_models.dart';

/// Typed reads from a section's free-form `config` map (server already localized it).
extension DynamicConfigX on Map<String, dynamic> {
  String str(String key) {
    final v = this[key];
    return v is String ? v : (v is num ? v.toString() : '');
  }

  int integer(String key, [int fallback = 0]) {
    final v = this[key];
    if (v is num) return v.toInt();
    return int.tryParse('${v ?? ''}') ?? fallback;
  }

  List<Map<String, dynamic>> maps(String key) {
    final v = this[key];
    if (v is! List) return const [];
    return v.whereType<Map>().map((m) => Map<String, dynamic>.from(m)).toList();
  }

  DynamicAction? action(String key) {
    final v = this[key];
    if (v is! Map) return null;
    try {
      return DynamicAction.fromJson(Map<String, dynamic>.from(v));
    } catch (_) {
      return null;
    }
  }

  DynamicMedia? media(String key) {
    final v = this[key];
    if (v is! Map) return null;
    try {
      return DynamicMedia.fromJson(Map<String, dynamic>.from(v));
    } catch (_) {
      return null;
    }
  }
}

/// Rounded rect with a dashed border (Figma "dashed" stroke).
class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double radius;
  final double dash;
  final double gap;

  const DashedBorderPainter({
    required this.color,
    this.strokeWidth = 0.7,
    this.radius = 5,
    this.dash = 3,
    this.gap = 2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    final rrect = RRect.fromRectAndRadius(
      Offset.zero & size,
      Radius.circular(radius),
    ).deflate(strokeWidth / 2);
    final path = Path()..addRRect(rrect);
    for (final metric in path.computeMetrics()) {
      double distance = 0;
      while (distance < metric.length) {
        canvas.drawPath(metric.extractPath(distance, distance + dash), paint);
        distance += dash + gap;
      }
    }
  }

  @override
  bool shouldRepaint(DashedBorderPainter old) =>
      old.color != color || old.strokeWidth != strokeWidth || old.radius != radius;
}
