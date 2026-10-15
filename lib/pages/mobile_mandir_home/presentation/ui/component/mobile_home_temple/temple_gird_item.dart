import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/values_exports.dart';


class TempleGridItem extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final VoidCallback? onTap;
  final bool showLocationIcon;

  const TempleGridItem({
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
      return TempleGridItemSmall(
        image: image,
        title: title,
        location: location,
        onTap: onTap,
        showLocationIcon: showLocationIcon,
      );
    } else if (context.isMediumScreen) {
      return TempleGridItemMedium(
        image: image,
        title: title,
        location: location,
        onTap: onTap,
        showLocationIcon: showLocationIcon,
      );
    } else {
      return TempleGridItemMedium(
        image: image,
        title: title,
        location: location,
        onTap: onTap,
        showLocationIcon: showLocationIcon,
      );
    }
  }
}

class TempleGridItemSmall extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final VoidCallback? onTap;
  final bool showLocationIcon;

  const TempleGridItemSmall({
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
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                AppConstant.fileBaseUrl + image,
                width: double.infinity,
                height: context.screenHeight * 0.12,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 14),

            Text(
              title,
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              // style: AppTextStyle.gilroyBold(
              //   context.screenWidth * 0.0323,
              //   color: AppColor.newsecondaruy,
              // ),
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.038,
                color: AppColor.newsecondaruy,
              ),
            ),

            const SizedBox(height: 4),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showLocationIcon) ...[
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Image.asset(
                      "assets/new_design/icon/akar-icons_location.png",
                      width: 12,
                    ),
                  ),
                  const SizedBox(width: 4),
                ],

                Expanded(
                  child: Text(
                    location,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.029,
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

class TempleGridItemMedium extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final VoidCallback? onTap;
  final bool showLocationIcon;

  const TempleGridItemMedium({
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
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                AppConstant.fileBaseUrl + image,
                width: double.infinity,
                height: context.screenHeight * 0.12,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 14),

            Text(
              title,
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              // style: AppTextStyle.gilroyBold(
              //   context.screenWidth * 0.0323,
              //   color: AppColor.newsecondaruy,
              // ),
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.038,
                color: AppColor.newsecondaruy,
              ),
            ),

            const SizedBox(height: 4),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showLocationIcon) ...[
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Image.asset(
                      "assets/new_design/icon/akar-icons_location.png",
                      width: 12,
                    ),
                  ),
                  const SizedBox(width: 4),
                ],

                Expanded(
                  child: Text(
                    location,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.029,
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