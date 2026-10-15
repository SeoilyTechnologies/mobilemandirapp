import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class RouteRow extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const RouteRow({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF1E3),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 0,
        children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: context.screenWidth*0.16, // same width for every row
              //color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(icon, width: 24, height: 24),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.gilroyBold(
                      context.screenWidth * 0.034,
                      color: AppColor.fullBlack,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 6),
            Image.asset(
              "assets/new_design/icon/dotted_line.png",
              width: context.screenWidth * 0.25,
              fit: BoxFit.fill,
              alignment: Alignment.centerLeft,
            ),
          ],

        ),
          SizedBox(width: 6),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(top: 3),
              child: Text(
                subtitle,
                textAlign: TextAlign.start,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.034,
                  color: AppColor.fullBlack,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
