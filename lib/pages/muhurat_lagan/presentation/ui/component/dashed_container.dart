import 'package:flutter/material.dart';

class DashedContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final Color? strokeColor;
  final double strokeWidth;
  final double gap;
  final double dashLength;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const DashedContainer({
    super.key,
    required this.child,
    this.color = Colors.transparent,
    this.strokeColor,
    this.strokeWidth = 1.2,
    this.gap = 4.0,
    this.dashLength = 5.0,
    this.borderRadius = 10.0,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveStrokeColor = strokeColor ?? const Color(0xFFC68B1E);
    return Container(
      margin: margin,
      child: CustomPaint(
        painter: _DashedBorderPainter(
          fillColor: color,
          strokeColor: effectiveStrokeColor,
          strokeWidth: strokeWidth,
          gap: gap,
          dashLength: dashLength,
          borderRadius: borderRadius,
        ),
        child: Container(
          padding: padding ?? const EdgeInsets.all(12),
          child: child,
        ),
      ),
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  final Color fillColor;
  final Color strokeColor;
  final double strokeWidth;
  final double gap;
  final double dashLength;
  final double borderRadius;

  _DashedBorderPainter({
    required this.fillColor,
    required this.strokeColor,
    required this.strokeWidth,
    required this.gap,
    required this.dashLength,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(borderRadius));

    // Paint background fill
    if (fillColor != Colors.transparent) {
      final fillPaint = Paint()
        ..color = fillColor
        ..style = PaintingStyle.fill;
      canvas.drawRRect(rrect, fillPaint);
    }

    // Paint dashed border
    final paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final path = Path()..addRRect(rrect);
    final pathMetrics = path.computeMetrics();

    for (final metric in pathMetrics) {
      double distance = 0.0;
      while (distance < metric.length) {
        final double len = (distance + dashLength < metric.length)
            ? dashLength
            : metric.length - distance;
        final extractPath = metric.extractPath(distance, distance + len);
        canvas.drawPath(extractPath, paint);
        distance += dashLength + gap;
      }
    }
  }

  @override
  bool shouldRepaint(covariant _DashedBorderPainter oldDelegate) {
    return oldDelegate.fillColor != fillColor ||
        oldDelegate.strokeColor != strokeColor ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.gap != gap ||
        oldDelegate.dashLength != dashLength ||
        oldDelegate.borderRadius != borderRadius;
  }
}
