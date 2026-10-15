import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/network/network_eport.dart';
import 'package:mandirapp/common/values/app_color.dart';

import '../../../../common/component/network_image.dart';
import '../../../../common/values/screenUtils.dart';

class GuruCard extends StatelessWidget {
  final String name;
  final String location;
  final String imageUrl;
  final String tags;
  final VoidCallback onWatchTap;

  const GuruCard({
    super.key,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.tags,
    required this.onWatchTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Top Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Image
              NetworkImageWidget(
                imageUrl:
                AppConstant.fileBaseUrl1 +
                    "/" +
                    "${imageUrl.isEmpty ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imageUrl}",
                imageHeight: context.screenWidth * 0.3,
                imageWidth: context.screenWidth * 0.3,
                fullimage: true,
                radiusAll: 12,
              ),
              const SizedBox(width: 12),

              /// Name & Location
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      maxLines:
                      3,
                      style: AppTextStyle.gilroyBold(context.screenWidth*0.055,color: AppColor.newsecondaruy),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 18,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            location,
                            style: AppTextStyle.gilroyMedium(context.screenWidth*0.034,color: AppColor.newGreyy),
                        ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),

                    /// Tags
                    buildTagChips(tags,context),

                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          /// Watch Button

          SizedBox(
            width: double.infinity,
            height: 44,
            child: ElevatedButton.icon(
              onPressed: onWatchTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7B3F0E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
              label: Text(
                "Watch Videos",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
  Widget buildTagChips(String tags,BuildContext context) {
    final tagList = tags
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();

    return Wrap(
      spacing: 8,
      runSpacing: 6,
      children: tagList.map((e) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFFFDE6CF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            e,
            style:AppTextStyle.gilroyMedium(context.screenWidth*0.028,color: AppColor.newsecondaruy),
          ),
        );
      }).toList(),
    );
  }

}


class GuruCardMedium extends StatelessWidget {
  final String name;
  final String location;
  final String imageUrl;
  final String tags;
  final VoidCallback onWatchTap;

  const GuruCardMedium({
    super.key,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.tags,
    required this.onWatchTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Top Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Image
              NetworkImageWidget(
                imageUrl:
                AppConstant.fileBaseUrl1 +
                    "/" +
                    "${imageUrl.isEmpty ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imageUrl}",
                imageHeight: context.screenWidth * 0.3,
                imageWidth: context.screenWidth * 0.3,
                fullimage: true,
                radiusAll: 12,
              ),
              const SizedBox(width: 12),

              /// Name & Location
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      maxLines:
                      3,
                      style: AppTextStyle.gilroyBold(context.screenWidth*0.055,color: AppColor.newsecondaruy),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Padding(padding: EdgeInsets.only(top: 4),
                      child:   const Icon(
                        Icons.location_on_outlined,
                        size: 22,
                        color: Colors.grey,
                      ),),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            location,
                            style: AppTextStyle.gilroyMedium(context.screenWidth*0.034,color: AppColor.newGreyy),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),

                    /// Tags
                    buildTagChips(tags,context),

                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          /// Watch Button

          SizedBox(
            width: double.infinity,
            height: 44,
            child: ElevatedButton.icon(
              onPressed: onWatchTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7B3F0E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
              label: Text(
                "Watch Videos",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
  Widget buildTagChips(String tags,BuildContext context) {
    final tagList = tags
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();

    return Wrap(
      spacing: 8,
      runSpacing: 6,
      children: tagList.map((e) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFFFDE6CF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            e,
            style:AppTextStyle.gilroyMedium(context.screenWidth*0.028,color: AppColor.newsecondaruy),
          ),
        );
      }).toList(),
    );
  }

}
