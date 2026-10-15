import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../common/values/app_color.dart';
import '../../../../common/values/fonts.dart';

class SantAboutCard extends StatelessWidget {
  final String description;

  const SantAboutCard({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: AppColor.lightyellobackground,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.detialBxBorderColor),
      ),
      child: Text(
        description,
        style:  TextStyle(
          fontSize: Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
          fontFamily: AppFont.gilroyMedium,
          color: AppColor.fullBlack,
        ),
        // style: AppTextStyle.gilroyMedium(context.screenWidth*0.032,color: AppColor.appNewBlackColor)
      ),
    );
  }
}