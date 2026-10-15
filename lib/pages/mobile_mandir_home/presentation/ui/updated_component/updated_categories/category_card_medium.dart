import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class CategoryCardMedium extends StatelessWidget {
  final String title;
  final List<String> assets;
  final double width;
  final bool isCoomingSoon;
  final VoidCallback? onTap;

  const CategoryCardMedium({
    super.key,
    required this.title,
    required this.assets,
    this.width = 170,
    this.isCoomingSoon = true,
    this.onTap,
  }) : assert(assets.length == 4, 'Exactly 4 assets required');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.5, vertical: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: isCoomingSoon ? null : onTap,
        child: Stack(
          children: [
            /// Main Card
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _IconRow(assets[0], assets[1]),

                  const SizedBox(height: 12),

                  _IconRow(assets[2], assets[3]),

                  const SizedBox(height: 14),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 18,
                            fontFamily: AppFont.gilroySemiBold,
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),

                      Image.asset(
                        "assets/new_design/icon/back_with_icon.png",
                        width: 22,
                        height: 22,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Coming Soon Overlay
            if (isCoomingSoon)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.45),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.appWhiteColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Text(
                        context.l10n.comingSoon,
                        style: AppTextStyle.gilroySemiBold(
                          context.screenWidth * 0.018,
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
    return Container(
      height: 82,
      width: 82,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColor.newCategoriesImageBackgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Image.asset(
        asset,
        fit: BoxFit.contain,
        color: AppColor.newsecondaruy,
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
        Expanded(
          child: _IconTile(asset: left),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _IconTile(asset: right),
        ),
      ],
    );
  }
}
// class CategoryCardMedium extends StatelessWidget {
//   final String title;
//   final List<String> assets;
//   final double width;
//   final bool isCoomingSoon;
//   final VoidCallback? onTap;
//
//   const CategoryCardMedium({
//     super.key,
//     required this.title,
//     required this.assets,
//     this.width = 170,
//     this.isCoomingSoon = true,
//     this.onTap,
//   }) : assert(assets.length == 4, 'Exactly 4 assets required');
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 14.5, vertical: 4),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(4),
//         onTap: isCoomingSoon ? null : onTap, // disable click if coming soon
//         child: Stack(
//           children: [
//             /// Main Card
//             Container(
//               width: width,
//               padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(4),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const SizedBox(height: 14),
//                   _IconRow(assets[0], assets[1]),
//                   const SizedBox(height: 14),
//                   _IconRow(assets[2], assets[3]),
//                   const SizedBox(height: 12),
//                   Text(
//                     title,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                       fontSize: 22,
//                       fontFamily: AppFont.gilroyMedium,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             /// 🔒 Coming Soon Overlay
//             if (isCoomingSoon)
//               Positioned.fill(
//                 child: Container(
//
//                   decoration: BoxDecoration(
//                     color: Colors.black.withOpacity(0.45), // grey shadow
//                     borderRadius: BorderRadius.circular(4),
//                   ),
//                   child: Center(
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 12,
//                         vertical: 6,
//                       ),
//                       decoration: BoxDecoration(
//                         color: AppColor.newsecondaruy,
//                         borderRadius: BorderRadius.circular(2),
//                       ),
//                       child:  Text(
//                         context.l10n.comingSoon,
//                         style: AppTextStyle.gilroyBold(context.screenWidth*0.027,color: AppColor.appWhiteColor),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
// class _IconTile extends StatelessWidget {
//   final String asset;
//
//   const _IconTile({required this.asset});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 82,
//       width: 82,
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: AppColor.newCategoriesImageBackgroundColor,
//         borderRadius: BorderRadius.circular(6),
//       ),
//       child: Image.asset(
//         asset,
//         fit: BoxFit.contain,
//         height: 82,
//         width: 82,
//         color: AppColor.newsecondaruy,
//       ),
//     );
//   }
// }
//
class _IconTileLarge extends StatelessWidget {
  final String asset;

  const _IconTileLarge({required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight*0.13,
      width: context.screenWidth*0.11,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColor.newCategoriesImageBackgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Image.asset(
        asset,
        fit: BoxFit.contain,
        height: context.screenHeight*0.11,
        width: context.screenWidth*0.11,
        color: AppColor.newsecondaruy,
      ),
    );
  }
}
//
class _IconRowLarge extends StatelessWidget {
  final String left;
  final String right;

  const _IconRowLarge(this.left, this.right);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _IconTileLarge(asset: left)),
        const SizedBox(width: 12),
        Expanded(child: _IconTileLarge(asset: right)),
      ],
    );
  }
}
//
//
// class _IconRow extends StatelessWidget {
//   final String left;
//   final String right;
//
//   const _IconRow(this.left, this.right);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(child: _IconTile(asset: left)),
//         const SizedBox(width: 12),
//         Expanded(child: _IconTile(asset: right)),
//       ],
//     );
//   }
// }


class CategoryCardLarg extends StatelessWidget {
  final String title;
  final List<String> assets;
  final double width;
  final bool isCoomingSoon;
  final VoidCallback? onTap;

  const CategoryCardLarg({
    super.key,
    required this.title,
    required this.assets,
    this.width = 170,
    this.isCoomingSoon = true,
    this.onTap,
  }) : assert(assets.length == 4, 'Exactly 4 assets required');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: isCoomingSoon ? null : onTap, // disable click if coming soon
        child: Stack(
          children: [
            /// Main Card
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 14),
                  _IconRowLarge(assets[0], assets[1]),
                  const SizedBox(height: 14),
                  _IconRowLarge(assets[2], assets[3]),
                  const SizedBox(height: 12),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontFamily: AppFont.gilroyMedium,
                    ),
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
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child:  Text(
                        context.l10n.comingSoon,
                        style: AppTextStyle.gilroySemiBold(context.screenWidth*0.023,color: AppColor.newsecondaruy),
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