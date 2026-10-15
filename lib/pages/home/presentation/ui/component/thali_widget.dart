import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class ThaliWidget extends StatelessWidget {
  final Animation<double> thaliAnimation;
  final bool aartitap;
  final double defaultTop;
  final double defaultLeft;
  final double positionX;
  final double positionY;
  final bool isDragging;
  final VoidCallback onPanStart;
  final VoidCallback onPanEnd;
  final Function(double dx, double dy) onPanUpdate;

  const ThaliWidget({
    required this.thaliAnimation,
    required this.aartitap,
    required this.defaultTop,
    required this.defaultLeft,
    required this.positionX,
    required this.positionY,
    required this.isDragging,
    required this.onPanStart,
    required this.onPanEnd,
    required this.onPanUpdate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: thaliAnimation,
      builder: (context, child) {
        final double angle = 2 * math.pi * thaliAnimation.value;
        double currentTop = aartitap == false
            ? defaultTop
            : context.screenHeight * 0.9 -
            context.screenHeight * 0.45 +
            100 * math.sin(angle);
        double currentLeft = aartitap == false
            ? defaultLeft
            : context.screenWidth * 0.5 -
            context.screenWidth * 0.17 +
            100 * math.cos(angle) +
            20;

        return Positioned(
          top: currentTop,
          left: currentLeft,
          child: Transform.translate(
            offset: Offset(positionX, positionY),
            child: GestureDetector(
              onPanUpdate: (details) =>
                  onPanUpdate(details.delta.dx, details.delta.dy),
              onPanStart: (_) => onPanStart(),
              onPanEnd: (_) => onPanEnd(),
              child: SizedBox(
                width: context.screenWidth * 0.5 - context.screenHeight * 0.07,
                height: context.screenHeight * 0.3,
                child: Image.asset(
                  //   'assets/images/pujathali.png',
                  isDragging || aartitap
                      ? 'assets/images/flamethali.gif'
                      : 'assets/images/pujathali.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
