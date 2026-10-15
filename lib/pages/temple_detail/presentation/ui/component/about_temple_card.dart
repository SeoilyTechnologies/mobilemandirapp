import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/values/fonts.dart';

class AboutTempleCard extends StatelessWidget {
  final String description;

  const AboutTempleCard({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xFFE4D7C8),
        ),
      ),
      child: Text(
        description,
        style:  TextStyle(
          fontSize: Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
          fontFamily: AppFont.gilroyMedium,
          color: AppColor.fullBlack,
        ),
        // style: AppTextStyle.gilroyMedium(
        //   context.screenWidth * 0.026,
        //   height: 2,
        //   color: AppColor.fullBlack,
        // ),
      ),
    );
  }
}