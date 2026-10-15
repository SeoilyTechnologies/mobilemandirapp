import 'package:flutter/material.dart';

class SevaBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(.18)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2;

    for (double i = -100; i < size.width + 100; i += 12) {
      final path = Path();

      path.moveTo(i, size.height);

      path.quadraticBezierTo(
        size.width * .5,
        size.height * .45,
        i + 120,
        0,
      );

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}