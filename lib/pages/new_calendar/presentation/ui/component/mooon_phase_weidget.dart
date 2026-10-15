import 'package:flutter/material.dart';

class MoonPhaseWidget extends StatelessWidget {
  final double illumination; // 0-100
  final double phase; // 0-1
  final double size;

  const MoonPhaseWidget({
    super.key,
    required this.illumination,
    required this.phase,
    this.size = 44,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(size),
      painter: MoonPainter(illumination: illumination, phase: phase),
    );
  }
}

class MoonPainter extends CustomPainter {
  final double illumination;
  final double phase;

  MoonPainter({required this.illumination, required this.phase});

  static const double rFactor = 0.47;

  double shadowCx(double cx, double radius, double phase, double illumination) {
    final f = illumination.clamp(0, 100) / 100;

    final p = phase % 1;

    final waxing = p <= 0.5;

    final shift = f * radius * 2;

    if (f <= 0.02) return cx;

    if (f >= 0.98) {
      return waxing ? cx - radius * 2 - 6 : cx + radius * 2 + 6;
    }

    return waxing ? cx - shift : cx + shift;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final radius = size.width * rFactor;

    final center = Offset(cx, cy);

    final moonPath = Path()
      ..addOval(Rect.fromCircle(center: center, radius: radius));

    /// clip
    canvas.save();
    canvas.clipPath(moonPath);

    /// base moon
    final shader = RadialGradient(
      center: const Alignment(-0.3, -0.4),
      radius: 0.9,
      colors: const [Color(0xffF2EFE6), Color(0xffD8D2C6), Color(0xffB5AEA4)],
      stops: const [0, 0.45, 1],
    ).createShader(Rect.fromCircle(center: center, radius: radius));

    canvas.drawCircle(center, radius, Paint()..shader = shader);

    /// craters

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(cx - radius * .30, cy - radius * .18),
        width: radius * .40,
        height: radius * .30,
      ),
      Paint()..color = const Color(0xffA8A298).withOpacity(.22),
    );

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(cx + radius * .18, cy + radius * .18),
        width: radius * .46,
        height: radius * .30,
      ),
      Paint()..color = const Color(0xff9A948C).withOpacity(.18),
    );

    canvas.drawCircle(
      Offset(cx - radius * .48, cy + radius * .06),
      radius * .05,
      Paint()..color = const Color(0xffC5BFB5).withOpacity(.28),
    );

    canvas.drawCircle(
      Offset(cx + radius * .42, cy - radius * .08),
      radius * .04,
      Paint()..color = const Color(0xffD0CAC0).withOpacity(.24),
    );

    /// shadow

    final lit = illumination.clamp(0, 100);

    if (lit < 98) {
      final shadowCenterX = shadowCx(cx, radius, phase, illumination);

      canvas.drawCircle(
        Offset(shadowCenterX, cy),
        radius + 1,
        Paint()..color = const Color(0xff1A1816),
      );
    }

    canvas.restore();

    /// inner border

    canvas.drawCircle(
      center,
      radius - .5,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = .8
        ..color = const Color(0xffEBE6DC).withOpacity(.6),
    );

    /// outer border

    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.2
        ..color = const Color(0xff9A948C),
    );
  }

  @override
  bool shouldRepaint(covariant MoonPainter oldDelegate) {
    return oldDelegate.illumination != illumination ||
        oldDelegate.phase != phase;
  }
}
