import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../common/values/fonts.dart';

class SantInfoCard extends StatelessWidget {
  final String title;
  final String value;

  const SantInfoCard({super.key, required this.title, required this.value});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            // style: AppTextStyle.gilroySemiBold(
            //   context.screenWidth * 0.026,
            //   color: AppColor.newsecondaruy,
            // ),
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.026,
              color: AppColor.newsecondaruy,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            value,
            style:  TextStyle(
              fontSize: Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
              fontFamily: AppFont.gilroyBold,
              color: AppColor.fullBlack,

            ),
          ),
        ],
      ),
    );
  }
}
