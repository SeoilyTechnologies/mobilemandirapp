import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';

import '../../../../common/values/screenUtils.dart';

class SantListCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final String tags;
  final bool isFavorite;
  final VoidCallback? onFavTap;

  const SantListCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.tags,
    this.isFavorite = false,
    this.onFavTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image
          NetworkImageWidget(
            imageUrl:
                AppConstant.fileBaseUrl1 +
                "/" +
                "${imageUrl.isEmpty ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imageUrl}",
            imageHeight: context.screenWidth * 0.18,
            imageWidth: context.screenWidth * 0.18,
            fullimage: true,
            radiusAll: 12,
            imageFitType: BoxFit.contain,
          ),

          const SizedBox(width: 12),

          /// Text Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Name
                Text(
                  name,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.034,
                    color: AppColor.newsecondaruy,
                  ),
                ),

                const SizedBox(height: 6),

                /// Location
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        location,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.03,
                          color: AppColor.newGreyy,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                /// Tags
                buildScrollableTags(tags),

                //  Text(tags, style: const TextStyle(fontSize: 13, color: Colors.grey),),
              ],
            ),
          ),

          const SizedBox(width: 8),

          if (onFavTap != null)
            GestureDetector(
              onTap: onFavTap,
              behavior: HitTestBehavior.opaque,
              child: Image.asset(
                isFavorite
                    ? 'assets/new_design/icon/rounded_circle_heart.png'
                    : 'assets/new_design/icon/rounded_line_favourite.png',
                width: 28,
                height: 28,
              ),
            ),
        ],
      ),
    );
  }

  Widget buildScrollableTags(String tags) {
    final tagList = tags
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(tagList.length, (index) {
          return Row(
            children: [
              Text(
                tagList[index],
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFont.gilroyBold,
                ),
              ),
              // 👇 dot after every item except last
              if (index != tagList.length - 1)
                Text(
                  " • ",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: AppFont.gilroyBold,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }

  String commaSeparated(List<String>? items) {
    if (items == null || items.isEmpty) return "";
    return items.join(", ");
  }
}

class SantListCardMedium extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final String tags;
  final bool isFavorite;
  final VoidCallback? onFavTap;

  const SantListCardMedium({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.tags,
    this.isFavorite = false,
    this.onFavTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image
          NetworkImageWidget(
            imageUrl:
                AppConstant.fileBaseUrl1 +
                "/" +
                "${imageUrl.isEmpty ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imageUrl}",
            imageHeight: context.screenWidth * 0.18,
            imageWidth: context.screenWidth * 0.18,
            fullimage: true,
            radiusAll: 12,
            imageFitType: BoxFit.contain,
          ),

          const SizedBox(width: 12),

          /// Text Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Name
                Text(
                  name,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.034,
                    color: AppColor.newsecondaruy,
                  ),
                ),

                const SizedBox(height: 6),

                /// Location
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 32,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        location,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.03,
                          color: AppColor.newGreyy,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                /// Tags
                buildScrollableTags(tags),

                //  Text(tags, style: const TextStyle(fontSize: 13, color: Colors.grey),),
              ],
            ),
          ),

          const SizedBox(width: 8),

          if (onFavTap != null)
            GestureDetector(
              onTap: onFavTap,
              behavior: HitTestBehavior.opaque,
              child: Image.asset(
                isFavorite
                    ? 'assets/new_design/icon/rounded_circle_heart.png'
                    : 'assets/new_design/icon/rounded_line_favourite.png',
                width: 28,
                height: 28,
              ),
            ),
        ],
      ),
    );
  }

  Widget buildScrollableTags(String tags) {
    final tagList = tags
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(tagList.length, (index) {
          return Row(
            children: [
              Text(
                tagList[index],
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFont.gilroyBold,
                ),
              ),
              // 👇 dot after every item except last
              if (index != tagList.length - 1)
                Text(
                  " • ",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: AppFont.gilroyBold,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }

  String commaSeparated(List<String>? items) {
    if (items == null || items.isEmpty) return "";
    return items.join(", ");
  }
}

class SantListCardLargeLandScape extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final String tags;
  final bool isFavorite;
  final VoidCallback? onFavTap;

  const SantListCardLargeLandScape({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.tags,
    this.isFavorite = false,
    this.onFavTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Image
          NetworkImageWidget(
            imageUrl:
                AppConstant.fileBaseUrl1 +
                "/" +
                "${imageUrl.isEmpty ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imageUrl}",
            imageHeight: context.screenWidth * 0.07,
            imageWidth: context.screenWidth * 0.07,
            fullimage: true,
            radiusAll: 12,
            imageFitType: BoxFit.contain,
          ),

          const SizedBox(width: 12),

          /// Text Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Name
                Text(
                  name,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.02,
                    color: AppColor.newsecondaruy,
                  ),
                ),

                const SizedBox(height: 6),

                /// Location
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        location,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.016,
                          color: AppColor.newGreyy,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                /// Tags
                buildScrollableTags(tags),

                //  Text(tags, style: const TextStyle(fontSize: 13, color: Colors.grey),),
              ],
            ),
          ),

          const SizedBox(width: 8),

          if (onFavTap != null)
            GestureDetector(
              onTap: onFavTap,
              behavior: HitTestBehavior.opaque,
              child: Image.asset(
                isFavorite
                    ? 'assets/new_design/icon/rounded_circle_heart.png'
                    : 'assets/new_design/icon/rounded_line_favourite.png',
                width: 28,
                height: 28,
              ),
            ),
        ],
      ),
    );
  }

  Widget buildScrollableTags(String tags) {
    final tagList = tags
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(tagList.length, (index) {
          return Row(
            children: [
              Text(
                tagList[index],
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFont.gilroyBold,
                ),
              ),
              // 👇 dot after every item except last
              if (index != tagList.length - 1)
                Text(
                  " • ",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: AppFont.gilroyBold,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }

  String commaSeparated(List<String>? items) {
    if (items == null || items.isEmpty) return "";
    return items.join(", ");
  }
}
