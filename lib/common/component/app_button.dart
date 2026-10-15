import 'package:flutter/material.dart';

import '../values/app_color.dart';
import '../values/screenUtils.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double? horizontalPadding; // 👈 optional

  const AppButton({
    super.key,
    required this.title,
    required this.onTap,
    this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ??
            context.screenWidth * 0.06, // 👈 default fallback
      ),
      child: SizedBox(
        width: double.infinity,
        height: h * 0.045,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.newsecondaruy,
            elevation: 6,
            shadowColor: AppColor.newsecondaruy.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onTap,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}


class AppButtonLarge extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double? horizontalPadding; // 👈 optional

  const AppButtonLarge({
    super.key,
    required this.title,
    required this.onTap,
    this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ??
            context.screenWidth * 0.04, // 👈 default fallback
      ),
      child: SizedBox(
        width: context.screenWidth*0.3,
        height: h * 0.045,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.newsecondaruy,
            elevation: 6,
            shadowColor: AppColor.newsecondaruy.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onTap,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
