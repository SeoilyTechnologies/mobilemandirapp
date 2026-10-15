import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class CommonSectionCard extends StatelessWidget {
  final String title;
  final Widget child;

  const CommonSectionCard({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final double w = context.screenWidth;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.44),
        border: Border.all(color: const Color(0xFFE4AE23), width: 0.5),
        boxShadow: const [
          BoxShadow(
            color: Color(0x408E8E8E),
            blurRadius: 13.46,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.gilroyBold(
              w * 0.036,
              color: const Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}
