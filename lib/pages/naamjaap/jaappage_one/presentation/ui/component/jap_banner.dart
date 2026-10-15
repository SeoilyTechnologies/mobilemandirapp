import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';

import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/network/app_constant.dart';
import '../../../../../../common/routes/exports.dart';

class JapBanner extends StatelessWidget {
  const JapBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Platform.isIOS ? 154 : 135,
            margin: EdgeInsets.only(left: 1, right: 4),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/new_design/icon/rtrtrtrttt.png"),
                fit: BoxFit.fill,
              ),
              // color: AppColor.purple,
              borderRadius: BorderRadius.circular(12),
            ),
            // child: NetworkImageWidget(imageUrl: "${image}",fullimage: false, imageHeight: 140, imageWidth: double.infinity,
            //
            //   radiusAll: 12,),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 18, top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: context.screenWidth * 0.6,
                          child: Text(
                            context.l10n.digitalCounterForNaamJaap,
                            style: AppTextStyle.gilroyBlack(
                              context.screenWidth * 0.055,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          context.l10n.digitalCounterSubtitle,
                          style: AppTextStyle.gilroySemiBold(
                            context.screenWidth * 0.026,
                            color: AppColor.appWhiteColor,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 2),

                        // Text(
                        //   subtitle,
                        //   style: AppTextStyle.gilroyMedium(
                        //     context.screenWidth * 0.0229,
                        //     color: AppColor.appWhiteColor,
                        //   ),
                        // ),
                        const SizedBox(height: 7),
                      ],
                    ),
                  ),
                ),
                //Expanded(child:   Image.network("${AppConstant.fileBaseUrl}${image}",))
              ],
            ),
          ),
          SizedBox(height: 0),
          // Padding(
          //   padding: EdgeInsets.only(left: 2),
          //   child: Text(
          //     "Chant with focus, complete each mala mindfully",
          //     style: AppTextStyle.gilroyMedium(
          //       context.screenWidth * 0.04,
          //       color: AppColor.fullBlack,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class JapBannerMedium extends StatelessWidget {
  const JapBannerMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Platform.isIOS ? 220 : 200,
            margin: const EdgeInsets.only(left: 1, right: 4),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  "assets/new_design/icon/rtrtrtrttt.png",
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: context.screenWidth * 0.55,
                          child: Text(
                            context.l10n.digitalCounterForNaamJaap,
                            style: AppTextStyle.gilroyBlack(
                              context.screenWidth * 0.038,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                        ),

                        const SizedBox(height: 14),

                        Text(
                          context.l10n.digitalCounterSubtitle,
                          style: AppTextStyle.gilroySemiBold(
                            context.screenWidth * 0.018,
                            color: AppColor.appWhiteColor,
                            height: 1.5,
                          ),
                        ),

                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
// class JapBannerMedium extends StatelessWidget {
//   const JapBannerMedium({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 180,
//             margin: EdgeInsets.only(left: 1, right: 4),
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: NetworkImage(
//                   "https://cdn.mobilemandirapp.com/uploads/1768221898696-67c58fd1-aa51-4bb4-a976-6c2d3f19a0d1-jaan_banner.png",
//                 ),
//                 fit: BoxFit.fill,
//               ),
//               // color: AppColor.purple,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             // child: NetworkImageWidget(imageUrl: "${image}",fullimage: false, imageHeight: 140, imageWidth: double.infinity,
//             //
//             //   radiusAll: 12,),
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 18, top: 0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         // Container(
//                         //   padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
//                         //   decoration: BoxDecoration(
//                         //     image: DecorationImage(image: NetworkImage("${AppConstant.fileBaseUrl}${image}"))
//                         //   ),
//                         //   child: Padding(padding: EdgeInsets.all(4),
//                         //   child: Text(
//                         //       "AARTI",
//                         //       style: AppTextStyle.gilroyMedium(context.screenWidth*0.020,color:AppColor.appWhiteColor )
//                         //   ),)
//                         // ),
//                         //const SizedBox(height: 8),
//                         SizedBox(
//                           width: context.screenWidth * 0.6,
//                           child: Text(
//                             "Digital Counter For Naap Jaap",
//                             style: AppTextStyle.gilroyBlack(
//                               context.screenWidth * 0.055,
//                               color: AppColor.appWhiteColor,
//                             ),
//                           ),
//                         ),
//
//                         const SizedBox(height: 2),
//
//                         // Text(
//                         //   subtitle,
//                         //   style: AppTextStyle.gilroyMedium(
//                         //     context.screenWidth * 0.0229,
//                         //     color: AppColor.appWhiteColor,
//                         //   ),
//                         // ),
//                         const SizedBox(height: 7),
//                       ],
//                     ),
//                   ),
//                 ),
//                 //Expanded(child:   Image.network("${AppConstant.fileBaseUrl}${image}",))
//               ],
//             ),
//           ),
//           SizedBox(height: 12),
//           Text(
//             "Chant with focus, complete each mala mindfully",
//             style: AppTextStyle.gilroyMedium(
//               context.screenWidth * 0.04,
//               color: AppColor.fullBlack,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
