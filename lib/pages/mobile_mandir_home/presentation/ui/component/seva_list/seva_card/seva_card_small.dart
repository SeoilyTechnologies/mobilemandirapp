import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class SevaCardSmall extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color startColor;
  final Color endColor;
  final VoidCallback? onTap;

  const SevaCardSmall({
    super.key,
    required this.title,
    required this.imagePath,
    required this.startColor,
    required this.endColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.screenWidth * 0.27,
        height: context.screenHeight * 0.18,
        padding: EdgeInsets.zero,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [startColor, endColor],
          ),
        ),
        child: Stack(
          children: [
            /// Background Pattern
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: CustomPaint(painter: _WavePainter()),
              ),
            ),

            /// Arrow Button
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                height: 22,
                width: 22,
                decoration: const BoxDecoration(
                  color: Color(0xFF9A5300),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_outward_rounded,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),

            /// Title
            Positioned(
              top: 32,
              left: 20,
              right: 20,
              child: Text(
                formatTitle(title),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: context.screenWidth * 0.036,
                  fontFamily: AppFont.gilroyBold,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
            ),

            /// Image
            Align(
              alignment: Alignment.bottomCenter,
              child: NetworkImageWidget(
                imageUrl: imagePath,
                imageHeight: context.screenWidth * 0.21,
                imageWidth: context.screenWidth * 0.21,
                imageFitType: BoxFit.contain,
                placeHolder: 'assets/icons/no-image.png',
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatTitle(String title) {
    final index = title.indexOf(' ');

    if (index == -1) {
      return title;
    }

    return '${title.substring(0, index)}\n${title.substring(index + 1)}';
  }
}

/// Background Curves
class _WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(.18)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    for (double i = -150; i < size.width + 100; i += 18) {
      final path = Path();
      path.moveTo(i, size.height);

      path.quadraticBezierTo(size.width * .45, size.height * .55, i + 120, 0);

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
