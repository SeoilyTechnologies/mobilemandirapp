import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/values/app_color.dart';

class ServiceChip extends StatelessWidget {
  final String title;

  const ServiceChip({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: 36,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: AppColor.chipsBackgroundColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: AppColor.newsecondaruy,
            width: 1.2,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.gilroyMedium(context.screenWidth*0.038,color: AppColor.newsecondaruy)
          ),
        ),
      ),
    );
  }
}