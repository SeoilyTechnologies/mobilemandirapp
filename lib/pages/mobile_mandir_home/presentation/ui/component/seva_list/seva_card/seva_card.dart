import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import 'seva_card_medium.dart';
import 'seva_card_small.dart';

class SevaCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color startColor;
  final Color endColor;
  final VoidCallback? onTap;

  const SevaCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.startColor,
    required this.endColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return SevaCardSmall(
        title: title,
        imagePath: imagePath,
        startColor: startColor,
        endColor: endColor,
        onTap: onTap,
      );
    } else if (context.isMediumScreen) {
      return SevaCardMedium(
        title: title,
        imagePath: imagePath,
        startColor: startColor,
        endColor: endColor,
        onTap: onTap,
      );
    } else {
      return SevaCardMedium(
        title: title,
        imagePath: imagePath,
        startColor: startColor,
        endColor: endColor,
        onTap: onTap,
      );
    }
  }
}