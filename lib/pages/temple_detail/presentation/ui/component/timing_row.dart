import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';

import '../../../../../common/values/screenUtils.dart';

class TimingRow extends StatelessWidget {
  final String title;
  final String time;

  const TimingRow({super.key, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: AppColor.appSantbackground,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.034,
                color: AppColor.fullBlack,
              ),
            ),
          ),
          Text(
            time,
            style: AppTextStyle.gilroyBold(
        Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
              color: AppColor.newsecondaruy,
            ),
          ),
        ],
      ),
    );
  }
}
