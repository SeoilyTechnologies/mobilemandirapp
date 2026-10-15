import 'package:flutter/material.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaSankalpStarBadge extends StatelessWidget {
  const ChadavaSankalpStarBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/new_design/chadhawa_image/tag_icon.png",
      width: context.w(18),
      height: context.h(26),
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
    );
  }
}
