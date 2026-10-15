import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/values/fonts.dart';

class InfoTile extends StatelessWidget {
  final String title;
  final String value;
  final bool highlight;
  final int maxLines;

  const InfoTile({
    super.key,
    required this.title,
    required this.value,
    this.highlight = false,
    this.maxLines = 1, // Default 1 line
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColor.appWhiteColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.detialBxBorderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.gilroySemiBold(
              context.screenWidth * 0.026,
              color: AppColor.newsecondaruy,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            style:  TextStyle(
              fontSize: Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
              fontFamily: AppFont.gilroyBold,
                color: highlight
                    ? const Color(0xFFD18B00)
                    : AppColor.fullBlack,

            ),
            // style: AppTextStyle.gilroyBold(
            //   context.screenWidth * 0.032,
            //   color: highlight
            //       ? const Color(0xFFD18B00)
            //       : AppColor.fullBlack,
            // ),
          ),
        ],
      ),
    );
  }
}