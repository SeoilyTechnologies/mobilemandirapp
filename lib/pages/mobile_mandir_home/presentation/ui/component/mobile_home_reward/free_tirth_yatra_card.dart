// import 'package:flutter/material.dart';
// import 'package:mandirapp/common/component/app_text_style.dart';
// import 'package:mandirapp/common/values/app_color.dart';
// import 'package:mandirapp/common/values/screenUtils.dart';
//
// class FreeTirthYatraCard extends StatelessWidget {
//   const FreeTirthYatraCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       // height: 180,
//       width: double.infinity,
//       child: Stack(
//         children: [
//
//           Container(
//             width: context.screenWidth,
//             height: context.screenHeight * 0.2,
//             child: Image.asset(
//               "assets/new_design/icon/reward_coupon_background.png",
//               fit: BoxFit.fill,
//             ),
//           ),
//
//           // LEFT CONTENT
//           Positioned(
//             left: 10,
//             top: 35,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   "assets/new_design/icon/earn_ponts.png",
//                   width: 44,
//                   height: 44,
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   "1000",
//                   style: AppTextStyle.gilroyBold(
//                     context.screenWidth * 0.066,
//                     color: AppColor.newsecondaruy,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   "Coins Needed",
//                   style: AppTextStyle.gilroyBold(
//                     context.screenWidth * 0.026,
//                     color: AppColor.fullBlack,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//           // POPULAR
//           Positioned(
//             top: 14,
//             right: 10,
//             child: Container(
//               // padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
//               decoration: BoxDecoration(
//                 color: const Color(0xffE2B300),
//                 borderRadius: BorderRadius.circular(22),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 12,
//                   vertical: 4,
//                 ),
//
//                 child: Text(
//                   "Popular",
//                   style: AppTextStyle.gilroyMedium(
//                     context.screenWidth * 0.026,
//                     color: AppColor.fullBlack,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//
//           // RIGHT CONTENT
//           Positioned(
//             left: context.screenWidth * 0.29,
//             top: 10,
//             right: 10,
//             bottom: 14,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Free Tirth Yatra",
//                   style: AppTextStyle.gilroyBold(
//                     context.screenWidth * 0.05,
//                     color: AppColor.appWhiteColor,
//                   ),
//                 ),
//
//                 const SizedBox(height: 4),
//
//                 Text(
//                   "Delhi → Kedarnath | 2 Members",
//                   style: AppTextStyle.gilroyMedium(
//                     context.screenWidth * 0.032,
//                     color: AppColor.appWhiteColor,
//                   ),
//                 ),
//
//                 const SizedBox(height: 10),
//
//                 Row(
//                   spacing: 4,
//                   children: [
//                     Text(
//                       "Inclusion:-",
//                       style: AppTextStyle.gilroyMedium(
//                         context.screenWidth * 0.032,
//                         color: AppColor.appWhiteColor,
//                       ),
//                     ),
//                     SizedBox(width: 0),
//                     //const SizedBox(width: 8),
//                     _chip(
//                       "Bus Ticket",
//                       "assets/new_design/icon/gren_tick.png",
//                       context,
//                     ),
//                     //  const SizedBox(width: 8),
//                     _chip(
//                       "Hotel Room",
//                       "assets/new_design/icon/gren_tick.png",
//                       context,
//                     ),
//                   ],
//                 ),
//
//                 const SizedBox(height: 10),
//
//                 Row(
//                   children: [
//                     Text(
//                       "Exclusion:-",
//                       style: AppTextStyle.gilroyMedium(
//                         context.screenWidth * 0.032,
//                         color: AppColor.appWhiteColor,
//                       ),
//                     ),
//                     const SizedBox(width: 8),
//                     _chip(
//                       "Food",
//                       "assets/new_design/icon/red_cross.png",
//                       context,
//                     ),
//                   ],
//                 ),
//
//                 const Spacer(),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       child: Text(
//                         "Yatra:- 3 Days & 2 Night",
//                         style: AppTextStyle.gilroyMedium(
//                           context.screenWidth * 0.032,
//                           color: AppColor.appWhiteColor,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 4),
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 7,
//                         vertical: 6,
//                       ),
//                       decoration: BoxDecoration(
//                         color: AppColor.greyBackgrounddddddd,
//                         borderRadius: BorderRadius.circular(3),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Text(
//                             "Claim Now",
//                             style: AppTextStyle.gilroySemiBold(
//                               context.screenWidth * 0.026,
//                               color: AppColor.appWhiteColor,
//                             ),
//                           ),
//                           SizedBox(width: 3),
//                           Icon(
//                             Icons.arrow_forward,
//                             size: 13,
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget _chip(String title, String icon, BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
//       decoration: BoxDecoration(
//         color: AppColor.white.withOpacity(0.2),
//         border: Border.all(color: Colors.white),
//         borderRadius: BorderRadius.circular(4),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(icon, width: 14, height: 14),
//           const SizedBox(width: 5),
//           Text(
//             title,
//             style: AppTextStyle.gilroyMedium(
//               context.screenWidth * 0.023,
//               color: AppColor.appWhiteColor,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:io';

import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/data/entity/reward_entity/overview/reward_overview_api_response.dart';

class FreeTirthYatraCard extends StatelessWidget {
  final RewardCoupon coupon;

  const FreeTirthYatraCard({
    super.key,
    required this.coupon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 16, vertical: Platform.isIOS?10:5),
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            width: context.screenWidth,
            height: Platform.isIOS?context.screenHeight *  0.25:context.screenHeight * 0.26,
            child: Image.asset(
              "assets/new_design/icon/reward_coupon_background.png",
              fit: BoxFit.fill,
            ),
          ),

          /// LEFT
          Positioned(
            left: 10,
            top: 35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/new_design/icon/earn_ponts.png",
                  width: 44,
                  height: 44,
                ),

                const SizedBox(height: 8),

                Text(
                  coupon.coinsRequired.toString(),
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.063,
                    color: AppColor.newsecondaruy,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  context.l10n.coinsNeeded,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.026,
                    color: AppColor.fullBlack,
                  ),
                ),
              ],
            ),
          ),

          /// TOP TAG
          Positioned(
            top: 14,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffE2B300),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Text(
                  coupon.canClaim ? context.l10n.available : context.l10n.popular,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.026,
                    color: AppColor.fullBlack,
                  ),
                ),
              ),
            ),
          ),

          /// RIGHT
          Positioned(
            left: context.screenWidth * 0.29,
            top: 10,
            right: 10,
            bottom: 14,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             SizedBox(
              // width: context.screenWidth*0.45,
               child:   Text(
              coupon.title,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.05,
                color: AppColor.appWhiteColor,
              ),
            ),

          ),
                const SizedBox(height: 4),

                Text(
                  coupon.description,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.034,
                    color: AppColor.appWhiteColor,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.inclusion,
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.034,
                        color: AppColor.appWhiteColor,
                      ),
                    ),

                    const SizedBox(width: 4),

                    Expanded(
                      child: Wrap(
                        spacing: 4,
                        runSpacing: 4,
                        children: coupon.inclusions
                            .map(
                              (e) => _chip(
                            e,
                            "assets/new_design/icon/gren_tick.png",
                            context,
                          ),
                        )
                            .toList(),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.exclusion,
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.034,
                        color: AppColor.appWhiteColor,
                      ),
                    ),

                    const SizedBox(width: 4),

                    Expanded(
                      child: Wrap(
                        spacing: 4,
                        runSpacing: 4,
                        children: coupon.exclusions
                            .map(
                              (e) => _chip(
                            e,
                            "assets/new_design/icon/red_cross.png",
                            context,
                          ),
                        )
                            .toList(),
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        coupon.durationText.isEmpty
                            ? ""
                            : "${coupon.durationText}",
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.032,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                    ),

                    const SizedBox(width: 4),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 7,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: coupon.canClaim
                            ? AppColor.greyBackgrounddddddd
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            coupon.canClaim ? context.l10n.claimNow : context.l10n.locked,
                            style: AppTextStyle.gilroySemiBold(
                              context.screenWidth * 0.026,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                          const SizedBox(width: 3),
                          const Icon(
                            Icons.arrow_forward,
                            size: 13,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _chip(
      String title,
      String icon,
      BuildContext context,
      ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 3,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: AppColor.white.withOpacity(0.2),
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            width: 14,
            height: 14,
          ),
          const SizedBox(width: 5),
          Text(
            title,
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.029,
              color: AppColor.appWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}