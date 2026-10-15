import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class VideoProofStatusCard extends StatelessWidget {
  final Widget icon;
  final String title;
  final String subtitle;
  final double? height;

  const VideoProofStatusCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
    //  height: height, // Dynamic height
      margin: const EdgeInsets.symmetric(horizontal: 14),
      padding: const EdgeInsets.only(
        left: 14,
        top: 8,
        right: 14,
        bottom: 2,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/background_image/video_proof_status_background.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: icon,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.042,
                    color: AppColor.fullBlack,
                  ),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Text(
                    subtitle,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.032,
                      color: AppColor.newGreyy,
                    ),
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