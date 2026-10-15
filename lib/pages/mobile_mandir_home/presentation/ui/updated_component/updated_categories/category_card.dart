import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final List<String> assets;
  final double width;
  final bool isCoomingSoon;
  final VoidCallback? onTap;

  const CategoryCard({
    super.key,
    required this.title,
    required this.assets,
    this.width = 120,
    this.isCoomingSoon = true,
    this.onTap,
  }) : assert(assets.length == 4, 'Exactly 4 assets required');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: isCoomingSoon ? null : onTap, // disable click if coming soon
        child: Stack(
          children: [
            /// Main Card
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 1),
                  _IconRow(assets[0], assets[1]),
                  const SizedBox(height: 6),
                  _IconRow(assets[2], assets[3]),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          fontSize: Platform.isIOS?context.screenWidth*0.038:context.screenWidth*0.038,
                          fontFamily: AppFont.gilroyBold,

                        ),
                      ),
                      // Image.asset(
                      //   "assets/new_design/icon/back_with_icon.png",
                      //   width: 16,
                      // ),
                    ],
                  ),
                ],
              ),
            ),

            /// 🔒 Coming Soon Overlay
            if (isCoomingSoon)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.45), // grey shadow
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.appWhiteColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Text(
                        context.l10n.comingSoon,
                        // style: AppTextStyle.gilroySemiBold(
                        //   context.screenWidth * 0.027,
                        //   color: AppColor.newsecondaruy,
                        // ),
                        style:  TextStyle(
                          fontSize: Platform.isIOS?context.screenWidth*0.03:context.screenWidth*0.03,
                          fontFamily: AppFont.gilroyBold,
                          color: AppColor.newsecondaruy,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
class _IconTile extends StatelessWidget {
  final String asset;

  const _IconTile({required this.asset});

  @override
  Widget build(BuildContext context) {
    final bool removePadding = [
      "assets/categories_images/aa_1.png",
      "assets/categories_images/a_2.png",
      "assets/categories_images/aa_3.png",
      "assets/categories_images/aa_4.png",
    ].contains(asset);
    return Container(
      padding: removePadding
          ? EdgeInsets.zero
          : const EdgeInsets.all(12),
      height: context.screenWidth * 0.12,
      decoration: BoxDecoration(
        color: AppColor.newCategoriesImageBackgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        asset,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _IconRow extends StatelessWidget {
  final String left;
  final String right;

  const _IconRow(this.left, this.right);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _IconTile(asset: left)),
        const SizedBox(width: 4),
        Expanded(child: _IconTile(asset: right)),
      ],
    );
  }
}
