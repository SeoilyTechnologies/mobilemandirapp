import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../../../../common/values/values_exports.dart';

class JaapBannerItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const JaapBannerItem({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          imagePath,
          width: 34,
          height: 34,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          // style: AppTextStyle.gilroyBold(
          //   context.screenWidth * 0.024,
          //   color: AppColor.appWhiteColor,
          // ),
          style:  TextStyle(
            fontSize: Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
            fontFamily: AppFont.gilroyBold,
            color: AppColor.appWhiteColor,
          ),

        ),
      ],
    );
  }
}