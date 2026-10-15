import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/values_exports.dart';

class TempleGirdItem extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final VoidCallback? onTap;
  final bool showLocationIcon;

  const TempleGirdItem({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    this.onTap,
    this.showLocationIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return TempleGirdItemSmall(
        image: image,
        title: title,
        location: location,
        onTap: onTap,
        showLocationIcon: showLocationIcon,
      );
    } else if (context.isMediumScreen) {
      return TempleGirdItemMedium(
        image: image,
        title: title,
        location: location,
        onTap: onTap,
        showLocationIcon: showLocationIcon,
      );
    } else {
      return TempleGirdItemMedium(
        image: image,
        title: title,
        location: location,
        onTap: onTap,
        showLocationIcon: showLocationIcon,
      );
    }
  }
}

class TempleGirdItemSmall extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final VoidCallback? onTap;
  final bool showLocationIcon;

  const TempleGirdItemSmall({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    this.onTap,
    this.showLocationIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 165,
        decoration: BoxDecoration(
          color: const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 12,
              spreadRadius: 1,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                 image,
                width: double.infinity,
                height: context.screenHeight * 0.11,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 14),

            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.0323,
                color: AppColor.newsecondaruy,
              ),
            ),

            const SizedBox(height: 6),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showLocationIcon) ...[
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Image.asset(
                      "assets/new_design/icon/akar-icons_location.png",
                      width: 10,
                    ),
                  ),
                  const SizedBox(width: 4),
                ],

                Expanded(
                  child: Text(
                    location,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.026,
                      color: AppColor.newGreyy,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TempleGirdItemMedium extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final VoidCallback? onTap;
  final bool showLocationIcon;

  const TempleGirdItemMedium({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    this.onTap,
    this.showLocationIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 165,
        decoration: BoxDecoration(
          color: const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 12,
              spreadRadius: 1,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                image,
                width: double.infinity,
                height: context.screenHeight * 0.11,
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 14),

            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.03,
                color: AppColor.newsecondaruy,
              ),
            ),

            const SizedBox(height: 6),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (showLocationIcon) ...[
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Image.asset(
                      "assets/new_design/icon/akar-icons_location.png",
                      width: 10,
                    ),
                  ),
                  const SizedBox(width: 4),
                ],

                Expanded(
                  child: Text(
                    location,
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.026,
                      color: AppColor.newGreyy,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}