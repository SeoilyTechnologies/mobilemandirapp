import 'dart:io';

import 'package:flutter/material.dart';
import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/fonts.dart';
import '../../../../../../common/values/screenUtils.dart';


class CommonTopBanner extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final String background;
  final int position;

  const CommonTopBanner({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.background,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return CommonTopBannerSmall(
        title: title,
        subtitle: subtitle,
        image: image,
        background: background,
        position: position,
      );
    } else {
      return CommonTopBannerMedium(
        title: title,
        subtitle: subtitle,
        image: image,
        background: background,
        position: position,
      );
    }
  }
}

class CommonTopBannerSmall extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final String background;
  final int position;

  const CommonTopBannerSmall({
    super.key,
    required this.position,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.background,
  });

  Size _getImageSize(BuildContext context) {
    switch (position) {


      case 0:
        return Size(
          MediaQuery.of(context).size.width * 0.23,
          MediaQuery.of(context).size.height * 0.12,
        );

      case 1:
        return Size(
          MediaQuery.of(context).size.width * 0.32,
          MediaQuery.of(context).size.height * 0.12,
        );

      case 2:
        return Size(
          MediaQuery.of(context).size.width * 0.32,
          MediaQuery.of(context).size.height * 0.16,
        );

      case 3:
        return Size(
          MediaQuery.of(context).size.width * 0.2,
          MediaQuery.of(context).size.height * 0.16,
        );

      case 4:
        return Size(
          MediaQuery.of(context).size.width * 0.38,
          MediaQuery.of(context).size.height * 0.16,
        );
      case 5:
        return Size(
          MediaQuery.of(context).size.width * 0.32,
          MediaQuery.of(context).size.height * 0.16,
        );

      case 6:
        return Size(
          MediaQuery.of(context).size.width * 0.32,
          MediaQuery.of(context).size.height * 0.16,
        );

      default:
        return Size(
          MediaQuery.of(context).size.width * 0.23,
          MediaQuery.of(context).size.height * 0.12,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final imageSize = _getImageSize(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.17,
        padding: const EdgeInsets.only(left: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(background),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    // style: AppTextStyle.gilroyBold(
                    //   MediaQuery.of(context).size.width * 0.0426,
                    // ),
                    style: AppTextStyle.gilroyBold(
                      fontWeight: FontWeight.w400,

                      context.screenWidth * 0.053,
                      color: AppColor.fullBlack,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    // style: AppTextStyle.gilroyMedium(
                    //   MediaQuery.of(context).size.width * 0.027,
                    // ),
                    style:  TextStyle(
                      fontSize: Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
                      fontFamily: AppFont.gilroyBold,
                      color: AppColor.fullBlack,

                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Image.asset(
                  image,
                  width: imageSize.width,
                  height: imageSize.height,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommonTopBannerMedium extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final String background;
  final int position;

  const CommonTopBannerMedium({
    super.key,
    required this.position,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.background,
  });

  Size _getImageSize(BuildContext context) {
    switch (position) {


      case 0:
        return Size(
          MediaQuery.of(context).size.width * 0.23,
          MediaQuery.of(context).size.height * 0.12,
        );

      case 1:
        return Size(
          MediaQuery.of(context).size.width * 0.32,
          MediaQuery.of(context).size.height * 0.12,
        );

      case 2:
        return Size(
          MediaQuery.of(context).size.width * 0.32,
          MediaQuery.of(context).size.height * 0.16,
        );

      case 3:
        return Size(
          MediaQuery.of(context).size.width * 0.2,
          MediaQuery.of(context).size.height * 0.16,
        );

      case 4:
        return Size(
          MediaQuery.of(context).size.width * 0.38,
          MediaQuery.of(context).size.height * 0.16,
        );
      case 5:
        return Size(
          MediaQuery.of(context).size.width * 0.32,
          MediaQuery.of(context).size.height * 0.16,
        );

      case 6:
        return Size(
          MediaQuery.of(context).size.width * 0.32,
          MediaQuery.of(context).size.height * 0.16,
        );

      default:
        return Size(
          MediaQuery.of(context).size.width * 0.23,
          MediaQuery.of(context).size.height * 0.12,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final imageSize = _getImageSize(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.2,
        padding: const EdgeInsets.only(left: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(background),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.gilroyBold(
                      MediaQuery.of(context).size.width * 0.04,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: AppTextStyle.gilroyMedium(
                      MediaQuery.of(context).size.width * 0.024,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Image.asset(
                  image,
                  width: imageSize.width,
                  height: imageSize.height,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}