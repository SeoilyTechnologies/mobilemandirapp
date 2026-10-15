import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import 'package:flutter/material.dart';

import '../../../../../common/component/network_image.dart';

class SaintCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String subtitle;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;

  const SaintCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.subtitle,
    this.isFavorite = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     // padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),

      // width: 220,
      alignment: Alignment.center,
      // padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 4,
            children: [
             // SizedBox(width: 4),
              NetworkImageWidget(
                imageUrl:
                    AppConstant.fileBaseUrl1 +
                    "/" +
                    "${imagePath == "" ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imagePath}",
                //placeHolder:"assets/new_design/icon/aarti_category.png",
                fullimage: true,
                imageHeight: 60,
                imageWidth: 60,
                imageFitType: BoxFit.fill,
                radiusBottomLeft: 4,
                radiusTopLeft: 4,
              ),

              const SizedBox(width: 8),
            Expanded(child:   Column(
             // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  name.length > 40 ? name.substring(0, 40) + '...' : name,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.038,
                    color: AppColor.newsecondaruy,
                  ),
                ),

                // Row(
                //   spacing: 4,
                //   children: <Widget>[
                //     Image.asset(
                //       "assets/new_design/icon/akar-icons_location.png",
                //       width: 10,
                //     ),
                //     Text(
                //       subtitle.length > 20
                //           ? subtitle.substring(0, 20) + '...'
                //           : subtitle,
                //       maxLines: 1,
                //       overflow: TextOverflow.ellipsis,
                //       style: AppTextStyle.gilroyMedium(
                //         context.screenWidth * 0.032,
                //         color: AppColor.newGreyy,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),),
             SizedBox(width: context.screenWidth*0.1,)
            ],
          ),
          Positioned(
            top: 0,
            right: 8,
            bottom: 0,

          child:  GestureDetector(
              onTap: onFavoriteTap,
              child: Image.asset(
                isFavorite
                    ? "assets/new_design/icon/fav_with_circle.png"
                    : "assets/new_design/icon/fav_without_fill.png",
                width: 24,
                height: 24,
              ),
            ),

            // GestureDetector(
            //   onTap: onFavoriteTap,
            //   child: Icon(
            //     isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
            //     size: 18,
            //     color: AppColor.newsecondaruy,
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}

class SaintCardMedium extends StatelessWidget {
  final String imagePath;
  final String name;
  final String subtitle;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;

  const SaintCardMedium({
    super.key,
    required this.imagePath,
    required this.name,
    required this.subtitle,
    this.isFavorite = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),

      // width: 220,
      alignment: Alignment.center,
      // padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 4,
            children: [
              // SizedBox(width: 4),
             Padding(padding: EdgeInsets.all(12),
             child:  NetworkImageWidget(
               imageUrl:
               AppConstant.fileBaseUrl1 +
                   "/" +
                   "${imagePath == "" ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imagePath}",
               //placeHolder:"assets/new_design/icon/aarti_category.png",
               fullimage: true,
               imageHeight: 90,
               imageWidth: 90,
               imageFitType: BoxFit.fill,
               radiusBottomLeft: 4,
               radiusTopLeft: 4,
             ),),

              const SizedBox(width: 8),
              Expanded(child:   Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    name.length > 40 ? name.substring(0, 40) + '...' : name,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: AppTextStyle.gilroyBold(
                      context.screenWidth * 0.038,
                      color: AppColor.newsecondaruy,
                    ),
                  ),

                  // Row(
                  //   spacing: 4,
                  //   children: <Widget>[
                  //     Image.asset(
                  //       "assets/new_design/icon/akar-icons_location.png",
                  //       width: 10,
                  //     ),
                  //     Text(
                  //       subtitle.length > 20
                  //           ? subtitle.substring(0, 20) + '...'
                  //           : subtitle,
                  //       maxLines: 1,
                  //       overflow: TextOverflow.ellipsis,
                  //       style: AppTextStyle.gilroyMedium(
                  //         context.screenWidth * 0.032,
                  //         color: AppColor.newGreyy,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),),
              SizedBox(width: context.screenWidth*0.1,)
            ],
          ),
          Positioned(
            top: 0,
            right: 19,
            bottom: 0,

            child:  GestureDetector(
              onTap: onFavoriteTap,
              child: Image.asset(
                isFavorite
                    ? "assets/new_design/icon/fav_with_circle.png"
                    : "assets/new_design/icon/fav_without_fill.png",
                width: 38,
                height: 38,
              ),
            ),

            // GestureDetector(
            //   onTap: onFavoriteTap,
            //   child: Icon(
            //     isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
            //     size: 18,
            //     color: AppColor.newsecondaruy,
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}

// class SaintCardMedium extends StatelessWidget {
//   final String imagePath;
//   final String name;
//   final String subtitle;
//   final bool isFavorite;
//   final VoidCallback? onFavoriteTap;
//
//   const SaintCardMedium({
//     super.key,
//     required this.imagePath,
//     required this.name,
//     required this.subtitle,
//     this.isFavorite = false,
//     this.onFavoriteTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
//
//       // width: 220,
//       alignment: Alignment.center,
//       // padding: EdgeInsets.all(2),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//
//         mainAxisAlignment: MainAxisAlignment.start,
//         spacing: 4,
//         children: [
//           SizedBox(width: 4),
//           NetworkImageWidget(
//             imageUrl:
//                 AppConstant.fileBaseUrl1 +
//                 "/" +
//                 "${imagePath == "" ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imagePath}",
//             //placeHolder:"assets/new_design/icon/aarti_category.png",
//             fullimage: true,
//             imageHeight: 56,
//             imageWidth: 56,
//             radiusAll: 4,
//           ),
//           // ClipRRect(
//           //   borderRadius: BorderRadius.circular(1),
//           //   child: Image.network(
//           //    AppConstant.fileBaseUrl1+"/"+ "${imagePath==""?"uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg":imagePath}",
//           //     height: 64,
//           //     width: 64,
//           //     fit: BoxFit.contain,
//           //
//           //   ),
//           // ),
//           const SizedBox(width: 12),
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 name,
//                 maxLines: 1,
//                 style: AppTextStyle.gilroyBold(
//                   context.screenWidth * 0.038,
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 subtitle.length > 20
//                     ? subtitle.substring(0, 20) + '...'
//                     : subtitle,
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//                 style: AppTextStyle.gilroyMedium(
//                   context.screenWidth * 0.028,
//                   color: AppColor.newGreyy,
//                 ),
//               ),
//             ],
//           ),
//           Spacer(),
//           // GestureDetector(
//           //   onTap: onFavoriteTap,
//           //   child: Icon(Icons.favorite_border_outlined, size: 18),
//           // ),
//         ],
//       ),
//     );
//   }
// }

class SaintCardLarge extends StatelessWidget {
  final String imagePath;
  final String name;
  final String subtitle;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;

  const SaintCardLarge({
    super.key,
    required this.imagePath,
    required this.name,
    required this.subtitle,
    this.isFavorite = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),

      // width: 220,
      alignment: Alignment.center,
      // padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              AppConstant.fileBaseUrl1 +
                  "/" +
                  "${imagePath == "" ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imagePath}",
              height: 64,
              width: 64,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                maxLines: 1,
                style: TextStyle(
                  fontSize: context.screenWidth * 0.013,
                  fontFamily: AppFont.gilroyBold,
                ),
              ),
              Text(
                subtitle.length > 20
                    ? subtitle.substring(0, 20) + '...'
                    : subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.gilroyMedium(
                  context.screenWidth * 0.02,
                  color: AppColor.newGreyy,
                ),
              ),
            ],
          ),
          Spacer(),
          // GestureDetector(
          //   onTap: onFavoriteTap,
          //   child: Icon(Icons.favorite_border_outlined, size: 18),
          // ),
        ],
      ),
    );
  }
}
