import 'dart:io';

import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../common/routes/exports.dart';
import '../../../../common/component/app_text_style.dart';
import '../../../../common/values/app_color.dart';

class JaapTimeSummaryCard extends StatelessWidget {
  final String startTime;
  final String endTime;
  final String durationText;
  final String dateText;

  const JaapTimeSummaryCard({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.durationText,
    required this.dateText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColor.appYelloww,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColor.appYellow, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// ⏱ Clock Icon
          Image.asset(
            "assets/new_design/icon/timer_watch.png",
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 10),

          /// Time + Duration
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 6,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "$startTime – $endTime",
                      style: AppTextStyle.gilroyRegular(
                        Platform.isIOS?    context.screenWidth*0.037: context.screenWidth*0.034,
                      ).copyWith(color: Colors.black87),
                    ),
                    Expanded(
                      child: Text(
                        dateText,
                        textAlign: TextAlign.end,
                        style: AppTextStyle.gilroySemiBold(
                          Platform.isIOS?    context.screenWidth*0.037:  context.screenWidth*0.034,
                        ).copyWith(color: Colors.black87),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  durationText,
                  style: AppTextStyle.gilroyBold(
                    12,
                  ).copyWith(color: Colors.black),
                ),
              ],
            ),
          ),

          /// Date
        ],
      ),
    );
  }
}



class JaapTimeSummaryCardMedium extends StatelessWidget {
  final String startTime;
  final String endTime;
  final String durationText;
  final String dateText;

  const JaapTimeSummaryCardMedium({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.durationText,
    required this.dateText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: AppColor.appYelloww,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: AppColor.appYellow,
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Timer Icon
          Image.asset(
            "assets/new_design/icon/timer_watch.png",
            width: 30,
            height: 30,
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "$startTime – $endTime",
                        style: AppTextStyle.gilroyRegular(
                          context.screenWidth * 0.022,
                        ).copyWith(
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    Text(
                      dateText,
                      style: AppTextStyle.gilroySemiBold(
                        context.screenWidth * 0.022,
                      ).copyWith(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                Text(
                  durationText,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.022,
                  ).copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

