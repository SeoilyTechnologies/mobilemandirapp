import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaOfferingHeader extends StatelessWidget {
  final String title;

  const ChadavaOfferingHeader({
    super.key,
    this.title = 'Select Chadava ',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Left Golden Decorative Ornament
        Image.asset(
          "assets/new_design/chadhawa_image/left_side_golden decorative_ornament.png",
          width: context.w(27),
          height: context.h(11),
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
        ),

        SizedBox(width: context.w(8)),

        // Centered Title
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyle.gilroyBold(
            context.sp(16),
            color: const Color(0xFF793C01),
          ),
        ),

        SizedBox(width: context.w(8)),

        // Right Golden Decorative Ornament
        Image.asset(
          "assets/new_design/chadhawa_image/right_side_golden decorative_ornament.png",
          width: context.w(27),
          height: context.h(11),
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
        ),
      ],
    );
  }
}
