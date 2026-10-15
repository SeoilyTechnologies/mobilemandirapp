import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class BellWidget extends StatelessWidget {
  final AnimationController controller;
  final VoidCallback onTap;
  final bool side;

  const BellWidget({required this.controller, required this.onTap,required this.side, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: context.screenWidth * 0.1,
        height: context.screenHeight *0.2,
        child: Padding(
          padding:  EdgeInsets.only(left: side==true?2.0:0.0,right: side==false?2.0:0.0),
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              final angle =
                  math.sin(controller.value * 2 * math.pi) * (math.pi / 16);
              return Transform.rotate(
                angle: angle,
                child: Image.asset(
                  fit: BoxFit.fill,
                  'assets/new_design/icon/bell.png',
                  // width: 50,
                  // height: 50,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}