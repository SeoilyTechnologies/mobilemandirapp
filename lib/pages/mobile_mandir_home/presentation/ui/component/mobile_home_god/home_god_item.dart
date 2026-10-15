import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/routes/exports.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/values_exports.dart';

import '../../../../../../common/component/favourite_icon.dart';
import '../mobile_home_temple/home_temple_item.dart';
import '../mobile_home_temple/temple_name_component.dart';
import '../../updated_component/updated_categories/aarti_bhajan_tab.dart';

class HomeGodItem extends StatelessWidget {
  final String imagePath;
  final String category;
  final String templeName;
  final String location;
  final List<String> tags;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onDirectionTap;
  final VoidCallback? onCallTap;
  final VoidCallback? onShareTap;
  final VoidCallback? onBookPoojaTap;
  final VoidCallback? onwishlistaddTap;
  final bool showWishlistIcon;

  const HomeGodItem({
    super.key,
    required this.imagePath,
    required this.category,
    this.showWishlistIcon = true,
    required this.templeName,
    required this.location,
    required this.tags,
    this.isFavorite = false,
    this.onFavoriteTap,
    this.onDirectionTap,
    this.onCallTap,
    this.onShareTap,
    this.onBookPoojaTap,
    this.onwishlistaddTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.18,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        padding: const EdgeInsets.only(left: 8, right: 0, top: 0, bottom: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.goldDark, width: 1.5),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Temple Image
                    imagePath.toString().trim().isNotEmpty? ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child:imagePath.isNotEmpty? Image.network(
                        AppConstant.fileBaseUrl + imagePath,
                        width: context.screenHeight * 0.1,
                        height: context.screenHeight * 0.1,
                        fit: BoxFit.cover,
                      ):Image.asset('assets/icons/no-image.png'),
                    ):SizedBox(),

                    const SizedBox(width: 12),

                    /// Content
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          spacing: 4,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(
                            //   templeName,
                            //   maxLines: 1,
                            //   overflow: TextOverflow.ellipsis,
                            //   style: AppTextStyle.gilroyBold(
                            //     context.screenWidth * 0.0373,
                            //     color: AppColor.newsecondaruy,
                            //   ),
                            // ),
                            TempleNameText(templeName: templeName),
                            //  const SizedBox(height: 1),
                            TempleLocationText(
                              location: "${context.l10n.category} - ${getLocalizedCategoryName(context, category)}",
                              maxLines: 2,
                            ),
                            // Text(
                            //   "Category - $category",
                            //   maxLines: 1,
                            //   overflow: TextOverflow.ellipsis,
                            //   style: AppTextStyle.gilroyMedium(
                            //     context.screenWidth * 0.029,
                            //     color: AppColor.newGreyy,
                            //   ),
                            // ),
                            const SizedBox(height: 2),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/new_design/icon/akar-icons_location.png",
                                  width: 12,
                                ),
                                const SizedBox(width: 6),
                                Expanded(
                                  child:
                                      // Text(
                                      //   location.isNotEmpty ? location : "N/A",
                                      //   maxLines: 1,
                                      //   overflow: TextOverflow.ellipsis,
                                      //   style: AppTextStyle.gilroyMedium(
                                      //     context.screenWidth * 0.029,
                                      //     color: AppColor.newGreyy,
                                      //   ),
                                      // ),
                                      TempleLocationText(
                                        location: location.isNotEmpty
                                            ? location
                                            : "N/A",
                                        maxLines: 2,
                                      ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 2),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    _ActionButton(title: context.l10n.aarti, onTap: onDirectionTap),
                    const SizedBox(width: 5),

                    _ActionButton(title: context.l10n.naamJaap, onTap: onCallTap),
                    const SizedBox(width: 5),

                    _ActionButton(title: context.l10n.seva, onTap: onShareTap),

                    const Spacer(),

                    BookPoojaButton(onTap: onBookPoojaTap),
                  ],
                ),
              ],
            ),
            // if (showWishlistIcon)
            //   Positioned(
            //     right: -10,
            //     top: -8,
            //     child: GestureDetector(
            //       onTap: onwishlistaddTap,
            //       child: FavoriteIcon(isFavorite: isFavorite),
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const _ActionButton({required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // image: DecorationImage(
          //   image: AssetImage("assets/new_design/icon/aati_badge.png"),
          //   fit: BoxFit.fill,
          // ),
          color: AppColor.newsecondaruy.withOpacity(0.2),
          border: Border.all(color: AppColor.newsecondaruy, width: 1.3),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
          child: Center(
            child: Text(
              title,
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.0293,
                color: AppColor.newsecondaruy,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BookPoojaButton extends StatelessWidget {
  final VoidCallback? onTap;

  const _BookPoojaButton({this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 12),
        //width: context.screenWidth * 0.25,
        height: context.screenHeight * 0.035,
        padding: EdgeInsets.only(left: 12, right: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.appYellow,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          spacing: 6,
          children: <Widget>[
            Text(
              context.l10n.seeDetail,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.026,
                color: AppColor.appWhiteColor,
              ),
            ),
            //Image.asset("assets/new_design/icon/angle_back_right.png",width: 16,color: AppColor.white,)
          ],
        ),
      ),
    );
  }
}
//=====================================medium ka page hai==========================================
class HomeGodItemMedium extends StatelessWidget {
  final String imagePath;
  final String category;
  final String templeName;
  final String location;
  final List<String> tags;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onDirectionTap;
  final VoidCallback? onCallTap;
  final VoidCallback? onShareTap;
  final VoidCallback? onBookPoojaTap;
  final VoidCallback? onwishlistaddTap;
  final bool showWishlistIcon;

  const HomeGodItemMedium({
    super.key,
    required this.imagePath,
    required this.category,
    this.showWishlistIcon = true,
    required this.templeName,
    required this.location,
    required this.tags,
    this.isFavorite = false,
    this.onFavoriteTap,
    this.onDirectionTap,
    this.onCallTap,
    this.onShareTap,
    this.onBookPoojaTap,
    this.onwishlistaddTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: context.screenHeight * 0.2,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        padding:  EdgeInsets.only(left: context.screenHeight*0.01, right: context.screenHeight*0.01, top: context.screenHeight*0.01, bottom: context.screenHeight*0.01),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.goldDark, width: 1.5),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Temple Image
                    imagePath.toString().trim().isNotEmpty? ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child:imagePath.isNotEmpty? Image.network(
                        AppConstant.fileBaseUrl + imagePath,
                        width: context.screenHeight * 0.1,
                        height: context.screenHeight * 0.1,
                        fit: BoxFit.cover,
                      ):Image.asset('assets/icons/no-image.png'),
                    ):SizedBox(),

                    const SizedBox(width: 12),

                    /// Content
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          spacing: 4,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(
                            //   templeName,
                            //   maxLines: 1,
                            //   overflow: TextOverflow.ellipsis,
                            //   style: AppTextStyle.gilroyBold(
                            //     context.screenWidth * 0.0373,
                            //     color: AppColor.newsecondaruy,
                            //   ),
                            // ),
                            TempleNameText(templeName: templeName),
                            //  const SizedBox(height: 1),
                            TempleLocationText(
                              location: "${context.l10n.category} - ${getLocalizedCategoryName(context, category)}",
                              maxLines: 2,
                            ),
                            // Text(
                            //   "Category - $category",
                            //   maxLines: 1,
                            //   overflow: TextOverflow.ellipsis,
                            //   style: AppTextStyle.gilroyMedium(
                            //     context.screenWidth * 0.029,
                            //     color: AppColor.newGreyy,
                            //   ),
                            // ),
                            const SizedBox(height: 2),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/new_design/icon/akar-icons_location.png",
                                  width: 12,
                                ),
                                const SizedBox(width: 6),
                                Expanded(
                                  child:
                                  // Text(
                                  //   location.isNotEmpty ? location : "N/A",
                                  //   maxLines: 1,
                                  //   overflow: TextOverflow.ellipsis,
                                  //   style: AppTextStyle.gilroyMedium(
                                  //     context.screenWidth * 0.029,
                                  //     color: AppColor.newGreyy,
                                  //   ),
                                  // ),
                                  TempleLocationText(
                                    location: location.isNotEmpty
                                        ? location
                                        : "N/A",
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 2),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    _ActionButton(title: context.l10n.aarti, onTap: onDirectionTap),
                    const SizedBox(width: 5),

                    _ActionButton(title: context.l10n.naamJaap, onTap: onCallTap),
                    const SizedBox(width: 5),

                    _ActionButton(title: context.l10n.seva, onTap: onShareTap),

                    const Spacer(),

                    BookPoojaButton(onTap: onBookPoojaTap),
                  ],
                ),
              ],
            ),
            // if (showWishlistIcon)
            //   Positioned(
            //     right: -10,
            //     top: -8,
            //     child: GestureDetector(
            //       onTap: onwishlistaddTap,
            //       child: FavoriteIcon(isFavorite: isFavorite),
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
