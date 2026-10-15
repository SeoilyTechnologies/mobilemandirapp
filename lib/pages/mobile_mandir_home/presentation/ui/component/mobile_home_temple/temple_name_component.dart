
import 'package:flutter/material.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/screenUtils.dart';



class TempleNameText extends StatelessWidget {
  final String templeName;
  final int maxLines;

  const TempleNameText({
    super.key,
    required this.templeName,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      templeName,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyle.gilroyBold(
        context.screenWidth * 0.038,
        color: AppColor.newsecondaruy,
      ),
    );
  }
}


class TempleLocationText extends StatelessWidget {
  final String location;
  final int maxLines;

  const TempleLocationText({
    super.key,
    required this.location,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      location,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyle.gilroyMedium(
        context.screenWidth * 0.029,
        color: AppColor.newGreyy,
      ),
    );
  }
}