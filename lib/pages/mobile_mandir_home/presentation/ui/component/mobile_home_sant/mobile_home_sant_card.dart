import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../../../common/component/favourite_icon.dart';
import '../../../../../../common/component/network_image.dart';
import '../../../../../../common/values/fonts.dart';

class MobileHomeSantCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String subtitle;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  const MobileHomeSantCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.subtitle,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 8,top: 2,left: 4,right: 6),
    child: SizedBox(
        height: context.screenHeight * 0.1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            //clipBehavior: Clip.none,
            children: <Widget>[
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.only(left: 2, right: 0, top: 0, bottom: 0),

                  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Padding(padding: EdgeInsets.only(left: 2,right: 6,top: 6,bottom: 6),
                        child: NetworkImageWidget(
                          imageUrl:
                          "${AppConstant.fileBaseUrl1}/${imagePath.isEmpty ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imagePath}",
                          fullimage: true,
                          imageHeight: 64,
                          imageWidth: 54,
                          radiusAll: 4,
                        ),
                      ),

                      const SizedBox(width: 8),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8),
                            Text(
                              name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.gilroyBold(
                                  context.screenWidth * 0.038,
                                  color: AppColor.newsecondaruy
                              ),
                            ),

                            const SizedBox(height: 2),

                            Padding(padding: EdgeInsets.only(right: 24),
                              child: Text(
                                subtitle,
                                maxLines: 2,
                                softWrap: true,
                                style: AppTextStyle.gilroyMedium(
                                  context.screenWidth * 0.028,
                                  color: AppColor.newGreyy,
                                ),
                              ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: -10,
                top: -8,
                child: GestureDetector(
                  onTap: onFavoriteTap,
                  behavior: HitTestBehavior.opaque,
                  child: FavoriteIcon(isFavorite: isFavorite),
                ),
              ),
            ],
          ),
        )
    ),);
  }
}

class MobileHomeSantCardMedium extends StatelessWidget {
  final String imagePath;
  final String name;
  final String subtitle;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  const MobileHomeSantCardMedium({
    super.key,
    required this.imagePath,
    required this.name,
    required this.subtitle,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 8,top: 2,left: 4,right: 6),
      child: SizedBox(
          height: context.screenHeight * 0.1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              //clipBehavior: Clip.none,
              children: <Widget>[
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.only(left: 2, right: 0, top: 0, bottom: 0),

                    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        Padding(padding: EdgeInsets.only(left: 2,right: 6,top: 6,bottom: 6),
                          child: NetworkImageWidget(
                            imageUrl:
                            "${AppConstant.fileBaseUrl1}/${imagePath.isEmpty ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imagePath}",
                            fullimage: true,
                            imageHeight: 64,
                            imageWidth: 54,
                            radiusAll: 4,
                          ),
                        ),

                        const SizedBox(width: 8),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Text(
                                name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.gilroyBold(
                                    context.screenWidth * 0.038,
                                    color: AppColor.newsecondaruy
                                ),
                              ),

                              const SizedBox(height: 2),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: -10,
                  top: -8,
                  child: GestureDetector(
                    onTap: onFavoriteTap,
                    behavior: HitTestBehavior.opaque,
                    child: FavoriteIcon(isFavorite: isFavorite),
                  ),
                ),
              ],
            ),
          )
      ),);
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
        spacing: 4,
        children: [
          SizedBox(width: 4),
          NetworkImageWidget(
            imageUrl:
                "${AppConstant.fileBaseUrl1}/${imagePath == "" ? "uploads/1768410332106-9a2fac59-13f8-4e24-8288-f7672085b3d2-swami-ramdev.jpg" : imagePath}",
            //placeHolder:"assets/new_design/icon/aarti_category.png",
            fullimage: true,
            imageHeight: 56,
            imageWidth: 56,
            radiusAll: 4,
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
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.038,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle.length > 20
                    ? subtitle.substring(0, 20) + '...'
                    : subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.gilroyMedium(
                  context.screenWidth * 0.028,
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
