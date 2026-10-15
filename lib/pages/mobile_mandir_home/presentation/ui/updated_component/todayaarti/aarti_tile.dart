import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';





class AartiTile extends StatelessWidget {
  // final String image;
  // final String title;
  final String subtitle;
  final String tag;
  final VoidCallback onPlay;
  final VoidCallback onArrow;
  final VoidCallback onFav;
  final VoidCallback onList;
  final String audioAsset;
  final bool isAddedInWishlist;
  final bool showArrow;

  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const AartiTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.audioAsset,
    required this.isAddedInWishlist,
    required this.tag,
    required this.onPlay,
    required this.onArrow,
    required this.onFav,
    required this.onList,

    // required this.image,
    // required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    this.showArrow = true,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    //print("GETTING HERE IMAHGE URL iS $image");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
     // padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // GestureDetector(
          //   onTap: (){
          //     //iske mujhe order change krna hai
          //   },
          //   child:   const Icon(Icons.menu, size: 18),
          // ),
          //   const SizedBox(width: 4),
          NetworkImageWidget(
            imageUrl:  image,
            //placeHolder:"assets/new_design/icon/aarti_category.png",
            fullimage: false,
            imageHeight: 60,
            imageWidth: 60,
           // radiusAll: 4,
            radiusBottomLeft: 4,
            radiusTopLeft: 4,
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   title,
                //   maxLines: 1,
                //   style: AppTextStyle.gilroyBold(
                //     context.screenWidth * 0.038,
                //     color: Colors.black,
                //   ),
                // ),
                Text(
                  title.length > 28 ? "${title.substring(0, 28)}..." : title,
                  maxLines: 1,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.038,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1.4),
                Row(
                  children: [
                    // Text(
                    //   subtitle,
                    //   style: AppTextStyle.gilroyMedium(
                    //     context.screenWidth * 0.029,
                    //     color: AppColor.newGreyy,
                    //   ),
                    // ),
                    // const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/aati_badge.png",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          tag.toUpperCase(),
                          style: AppTextStyle.gilroyMedium(
                            context.screenWidth * 0.023,
                            color: AppColor.newsecondaruy,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: onFav,
            child: Image.asset(
              isAddedInWishlist
                  ? "assets/new_design/icon/fav_with_circle.png"
                  : "assets/new_design/icon/fav_without_fill.png",
              width: 24,
              height: 24,
            ),
          ),
          SizedBox(width: 3),
          // GestureDetector(
          //   onTap: onBookmarkTap,
          //   child: Image.asset(
          //     "assets/new_design/icon/lyrci_circle_button.png",
          //     width: 28,
          //     height: 28,
          //   ),
          // ),
          // SizedBox(width: 6),
          // GestureDetector(
          //   onTap: onMediaPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/media_play_button.png",
          //     width: 28,
          //     height: 28,
          //   ),
          // ),
          if (showArrow) ...[
            const SizedBox(width: 4),
            GestureDetector(
              onTap: onMediaPlay,
              child: Padding(padding: EdgeInsets.only(right: 10),
              child: Image.asset(
                "assets/new_design/icon/right_black.png",
                width: 16,
                height: 14,
              ),)
            ),
          ],
          // const SizedBox(width: 8),
          // GestureDetector(
          //   onTap: onMediaPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/right_black.png",
          //     width: 16,
          //     height: 14,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class AartiTileMediumPage extends StatelessWidget {
  // final String image;
  // final String title;
  final String subtitle;
  final String tag;
  final VoidCallback onPlay;
  final VoidCallback onArrow;
  final VoidCallback onFav;
  final VoidCallback onList;
  final String audioAsset;
  final bool isAddedInWishlist;
  final bool showArrow;

  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const AartiTileMediumPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.audioAsset,
    required this.isAddedInWishlist,
    required this.tag,
    required this.onPlay,
    required this.onArrow,
    required this.onFav,
    required this.onList,

    // required this.image,
    // required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    this.showArrow = true,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    //print("GETTING HERE IMAHGE URL iS $image");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      // padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // GestureDetector(
          //   onTap: (){
          //     //iske mujhe order change krna hai
          //   },
          //   child:   const Icon(Icons.menu, size: 18),
          // ),
           const SizedBox(width: 4),
         Padding(padding: EdgeInsetsGeometry.all(8),
         child:  NetworkImageWidget(
           imageUrl:  image,
           //placeHolder:"assets/new_design/icon/aarti_category.png",
           fullimage: false,
           imageHeight: 90,
           imageWidth: 90,
           // radiusAll: 4,
           radiusBottomLeft: 4,
           radiusTopLeft: 4,
         ),
         ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   title,
                //   maxLines: 1,
                //   style: AppTextStyle.gilroyBold(
                //     context.screenWidth * 0.038,
                //     color: Colors.black,
                //   ),
                // ),
                Text(
                  title.length > 28 ? "${title.substring(0, 28)}..." : title,
                  maxLines: 1,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.038,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1.4),
                Row(
                  children: [
                    // Text(
                    //   subtitle,
                    //   style: AppTextStyle.gilroyMedium(
                    //     context.screenWidth * 0.029,
                    //     color: AppColor.newGreyy,
                    //   ),
                    // ),
                    // const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/aati_badge.png",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          tag.toUpperCase(),
                          style: AppTextStyle.gilroyMedium(
                            context.screenWidth * 0.023,
                            color: AppColor.newsecondaruy,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: onFav,
            child: Image.asset(
              isAddedInWishlist
                  ? "assets/new_design/icon/fav_with_circle.png"
                  : "assets/new_design/icon/fav_without_fill.png",
              width: 42,
              height: 42,
            ),
          ),
          SizedBox(width: 8),
          // GestureDetector(
          //   onTap: onBookmarkTap,
          //   child: Image.asset(
          //     "assets/new_design/icon/lyrci_circle_button.png",
          //     width: 28,
          //     height: 28,
          //   ),
          // ),
          // SizedBox(width: 6),
          // GestureDetector(
          //   onTap: onMediaPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/media_play_button.png",
          //     width: 28,
          //     height: 28,
          //   ),
          // ),
          if (showArrow) ...[
            const SizedBox(width: 4),
            GestureDetector(
                onTap: onMediaPlay,
                child: Padding(padding: EdgeInsets.only(right: 10),
                  child: Image.asset(
                    "assets/new_design/icon/right_black.png",
                    width: 16,
                    height: 14,
                  ),)
            ),
          ],
          // const SizedBox(width: 8),
          // GestureDetector(
          //   onTap: onMediaPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/right_black.png",
          //     width: 16,
          //     height: 14,
          //   ),
          // ),
        ],
      ),
    );
  }
}




class AartiTileRelatedGodData extends StatelessWidget {
  // final String image;
  // final String title;
  final String subtitle;
  final String tag;
  final VoidCallback onPlay;
  final VoidCallback onArrow;
  final VoidCallback onFav;
  final VoidCallback onList;
  final String audioAsset;
  final bool isAddedInWishlist;
  final bool showArrow;

  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const AartiTileRelatedGodData({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.audioAsset,
    required this.isAddedInWishlist,
    required this.tag,
    required this.onPlay,
    required this.onArrow,
    required this.onFav,
    required this.onList,

    // required this.image,
    // required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    this.showArrow = true,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    //print("GETTING HERE IMAHGE URL iS $image");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      padding: const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // GestureDetector(
          //   onTap: (){
          //     //iske mujhe order change krna hai
          //   },
          //   child:   const Icon(Icons.menu, size: 18),
          // ),
          //   const SizedBox(width: 4),
          NetworkImageWidget(
            imageUrl: AppConstant.fileBaseUrl + image,
            //placeHolder:"assets/new_design/icon/aarti_category.png",
            fullimage: true,
            imageHeight: 42,
            imageWidth: 42,
            radiusAll: 4,
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   title,
                //   maxLines: 1,
                //   style: AppTextStyle.gilroyBold(
                //     context.screenWidth * 0.038,
                //     color: Colors.black,
                //   ),
                // ),
                Text(
                  title.length > 25 ? "${title.substring(0, 25)}..." : title,
                  maxLines: 1,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.038,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1.4),
                Row(
                  children: [
                    // Text(
                    //   subtitle,
                    //   style: AppTextStyle.gilroyMedium(
                    //     context.screenWidth * 0.029,
                    //     color: AppColor.newGreyy,
                    //   ),
                    // ),
                    const SizedBox(width: 0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/aati_badge.png",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          tag.toUpperCase(),
                          style: AppTextStyle.gilroyMedium(
                            context.screenWidth * 0.023,
                            color: AppColor.newsecondaruy,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // GestureDetector(
          //   onTap: onFav,
          //   child: Image.asset(
          //     isAddedInWishlist
          //         ? "assets/new_design/icon/fav_with_circle.png"
          //         : "assets/new_design/icon/fav_without_fill.png",
          //     width: 28,
          //     height: 28,
          //   ),
          // ),
          SizedBox(width: 6),
          GestureDetector(
            onTap: onBookmarkTap,
            child: Image.asset(
              "assets/new_design/icon/lyrci_circle_button.png",
              width: 28,
              height: 28,
            ),
          ),
          SizedBox(width: 6),
          GestureDetector(
            onTap: onMediaPlay,
            child: Image.asset(
              "assets/new_design/icon/media_play_button.png",
              width: 28,
              height: 28,
            ),
          ),
          if (showArrow) ...[
            const SizedBox(width: 8),
            GestureDetector(
              onTap: onMediaPlay,
              child: Image.asset(
                "assets/new_design/icon/right_black.png",
                width: 16,
                height: 14,
              ),
            ),
          ],
          // const SizedBox(width: 8),
          // GestureDetector(
          //   onTap: onMediaPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/right_black.png",
          //     width: 16,
          //     height: 14,
          //   ),
          // ),
        ],
      ),
    );
  }
}


class AartiTileRelatedGodDataMedium extends StatelessWidget {
  // final String image;
  // final String title;
  final String subtitle;
  final String tag;
  final VoidCallback onPlay;
  final VoidCallback onArrow;
  final VoidCallback onFav;
  final VoidCallback onList;
  final String audioAsset;
  final bool isAddedInWishlist;
  final bool showArrow;

  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const AartiTileRelatedGodDataMedium({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.audioAsset,
    required this.isAddedInWishlist,
    required this.tag,
    required this.onPlay,
    required this.onArrow,
    required this.onFav,
    required this.onList,

    // required this.image,
    // required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    this.showArrow = true,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    //print("GETTING HERE IMAHGE URL iS $image");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      padding: const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // GestureDetector(
          //   onTap: (){
          //     //iske mujhe order change krna hai
          //   },
          //   child:   const Icon(Icons.menu, size: 18),
          // ),
          //   const SizedBox(width: 4),
          NetworkImageWidget(
            imageUrl: AppConstant.fileBaseUrl + image,
            //placeHolder:"assets/new_design/icon/aarti_category.png",
            fullimage: true,
            imageHeight: 64,
            imageWidth: 64,
            radiusAll: 4,
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   title,
                //   maxLines: 1,
                //   style: AppTextStyle.gilroyBold(
                //     context.screenWidth * 0.038,
                //     color: Colors.black,
                //   ),
                // ),
                Text(
                  title.length > 25 ? "${title.substring(0, 25)}..." : title,
                  maxLines: 1,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.026,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1.4),
                Row(
                  children: [

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/aati_badge.png",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          tag.toUpperCase(),
                          style: AppTextStyle.gilroyMedium(
                            context.screenWidth * 0.016,
                            color: AppColor.newsecondaruy,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // GestureDetector(
          //   onTap: onFav,
          //   child: Image.asset(
          //     isAddedInWishlist
          //         ? "assets/new_design/icon/fav_with_circle.png"
          //         : "assets/new_design/icon/fav_without_fill.png",
          //     width: 28,
          //     height: 28,
          //   ),
          // ),
          SizedBox(width: 6),
          GestureDetector(
            onTap: onBookmarkTap,
            child: Image.asset(
              "assets/new_design/icon/lyrci_circle_button.png",
              width: 28,
              height: 28,
            ),
          ),
          SizedBox(width: 6),
          GestureDetector(
            onTap: onMediaPlay,
            child: Image.asset(
              "assets/new_design/icon/media_play_button.png",
              width: 28,
              height: 28,
            ),
          ),
          if (showArrow) ...[
            const SizedBox(width: 8),
            GestureDetector(
              onTap: onMediaPlay,
              child: Image.asset(
                "assets/new_design/icon/right_black.png",
                width: 16,
                height: 14,
              ),
            ),
          ],
          // const SizedBox(width: 8),
          // GestureDetector(
          //   onTap: onMediaPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/right_black.png",
          //     width: 16,
          //     height: 14,
          //   ),
          // ),
        ],
      ),
    );
  }
}



class AartiTileMedium extends StatelessWidget {
  // final String image;
  // final String title;
  final String subtitle;
  final String tag;
  final VoidCallback onPlay;
  final VoidCallback onArrow;
  final VoidCallback onFav;
  final VoidCallback onList;
  final String audioAsset;
  final bool isAddedInWishlist;
  final bool showArrow;

  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const AartiTileMedium({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.audioAsset,
    required this.isAddedInWishlist,
    required this.tag,
    required this.onPlay,
    required this.onArrow,
    required this.onFav,
    required this.onList,

    // required this.image,
    // required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    this.showArrow = true,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    //print("GETTING HERE IMAHGE URL iS $image");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.only(left: 6, right: 8, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // GestureDetector(
          //   onTap: (){
          //     //iske mujhe order change krna hai
          //   },
          //   child:   const Icon(Icons.menu, size: 18),
          // ),
          //   const SizedBox(width: 4),
          NetworkImageWidget(
            imageUrl: AppConstant.fileBaseUrl + image,
            //placeHolder:"assets/new_design/icon/aarti_category.png",
            fullimage: true,
            imageHeight: 54,
            imageWidth: 54,
            radiusAll: 6,
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.0283,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1.4),
                Row(
                  children: [

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/aati_badge.png",
                          ),
                        ),
                      ),
                      child: Text(
                        tag.toUpperCase(),
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.01664,
                          color: AppColor.newGreyy,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: onFav,
            child: Image.asset(
              isAddedInWishlist
                  ? "assets/new_design/icon/fav_with_circle.png"
                  : "assets/new_design/icon/fav_without_fill.png",
              width: 38,
              height: 38,
            ),
          ),
          SizedBox(width: 6),
          GestureDetector(
            onTap: onBookmarkTap,
            child: Image.asset(
              "assets/new_design/icon/lyrci_circle_button.png",
              width: 38,
              height: 38,
            ),
          ),
          SizedBox(width: 6),
          GestureDetector(
            onTap: onMediaPlay,
            child: Image.asset(
              "assets/new_design/icon/media_play_button.png",
              width: 38,
              height: 38,
            ),
          ),
          // if (showArrow) ...[
          //   const SizedBox(width: 8),
          //   GestureDetector(
          //     onTap: onMediaPlay,
          //     child: Image.asset(
          //       "assets/new_design/icon/right_black.png",
          //       width: 22,
          //       height: 18,
          //     ),
          //   ),
          // ],
          // const SizedBox(width: 8),
          // GestureDetector(
          //   onTap: onMediaPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/right_black.png",
          //     width: 16,
          //     height: 14,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class AartiTileLarge extends StatelessWidget {
  // final String image;
  // final String title;
  final String subtitle;
  final String tag;
  final VoidCallback onPlay;
  final VoidCallback onArrow;
  final VoidCallback onFav;
  final VoidCallback onList;
  final String audioAsset;
  final bool isAddedInWishlist;
  final bool showArrow;

  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const AartiTileLarge({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.audioAsset,
    required this.isAddedInWishlist,
    required this.tag,
    required this.onPlay,
    required this.onArrow,
    required this.onFav,
    required this.onList,

    // required this.image,
    // required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    this.showArrow = true,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    //print("GETTING HERE IMAHGE URL iS $image");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.only(left: 6, right: 8, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // GestureDetector(
          //   onTap: (){
          //     //iske mujhe order change krna hai
          //   },
          //   child:   const Icon(Icons.menu, size: 18),
          // ),
          //   const SizedBox(width: 4),
          NetworkImageWidget(
            imageUrl: AppConstant.fileBaseUrl + image,
            //placeHolder:"assets/new_design/icon/aarti_category.png",
            fullimage: true,
            imageHeight: 54,
            imageWidth: 54,
            radiusAll: 6,
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.013,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1.4),
                Row(
                  children: [
                    Text(
                      subtitle,
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.013,
                        color: AppColor.newGreyy,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/aati_badge.png",
                          ),
                        ),
                      ),
                      child: Text(
                        tag.toUpperCase(),
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.01,
                          color: AppColor.newGreyy,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: onFav,
            child: Image.asset(
              isAddedInWishlist
                  ? "assets/new_design/icon/fav_with_circle.png"
                  : "assets/new_design/icon/fav_without_fill.png",
              width: 38,
              height: 38,
            ),
          ),
          SizedBox(width: 6),
          GestureDetector(
            onTap: onBookmarkTap,
            child: Image.asset(
              "assets/new_design/icon/lyrci_circle_button.png",
              width: 38,
              height: 38,
            ),
          ),
          SizedBox(width: 6),
          GestureDetector(
            onTap: onMediaPlay,
            child: Image.asset(
              "assets/new_design/icon/media_play_button.png",
              width: 38,
              height: 38,
            ),
          ),
          if (showArrow) ...[
            const SizedBox(width: 8),
            GestureDetector(
              onTap: onMediaPlay,
              child: Image.asset(
                "assets/new_design/icon/right_black.png",
                width: 22,
                height: 18,
              ),
            ),
          ],
          // const SizedBox(width: 8),
          // GestureDetector(
          //   onTap: onMediaPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/right_black.png",
          //     width: 16,
          //     height: 14,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class AartiTileLargeLandScape extends StatelessWidget {
  // final String image;
  // final String title;
  final String subtitle;
  final String tag;
  final VoidCallback onPlay;
  final VoidCallback onArrow;
  final VoidCallback onFav;
  final VoidCallback onList;
  final String audioAsset;
  final bool isAddedInWishlist;
  final bool showArrow;

  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const AartiTileLargeLandScape({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.audioAsset,
    required this.isAddedInWishlist,
    required this.tag,
    required this.onPlay,
    required this.onArrow,
    required this.onFav,
    required this.onList,

    // required this.image,
    // required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    this.showArrow = true,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    //print("GETTING HERE IMAHGE URL iS $image");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.only(left: 6, right: 8, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // GestureDetector(
          //   onTap: (){
          //     //iske mujhe order change krna hai
          //   },
          //   child:   const Icon(Icons.menu, size: 18),
          // ),
          //   const SizedBox(width: 4),
          NetworkImageWidget(
            imageUrl: AppConstant.fileBaseUrl + image,
            //placeHolder:"assets/new_design/icon/aarti_category.png",
            fullimage: true,
            imageFitType: BoxFit.cover,
            imageHeight: context.screenWidth * 0.1,
            imageWidth: context.screenWidth * 0.1,
            radiusAll: 6,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.013,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1.4),
                Row(
                  children: [
                    Text(
                      subtitle,
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.013,
                        color: AppColor.newGreyy,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/aati_badge.png",
                          ),
                        ),
                      ),
                      child: Text(
                        tag.toUpperCase(),
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.01,
                          color: AppColor.newGreyy,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: onFav,
            child: Image.asset(
              isAddedInWishlist
                  ? "assets/new_design/icon/fav_with_circle.png"
                  : "assets/new_design/icon/fav_without_fill.png",
              width: 38,
              height: 38,
            ),
          ),
          SizedBox(width: 6),
          GestureDetector(
            onTap: onBookmarkTap,
            child: Image.asset(
              "assets/new_design/icon/lyrci_circle_button.png",
              width: 38,
              height: 38,
            ),
          ),
          SizedBox(width: 6),
          GestureDetector(
            onTap: onMediaPlay,
            child: Image.asset(
              "assets/new_design/icon/media_play_button.png",
              width: 38,
              height: 38,
            ),
          ),
          if (showArrow) ...[
            const SizedBox(width: 8),
            GestureDetector(
              onTap: onMediaPlay,
              child: Image.asset(
                "assets/new_design/icon/right_black.png",
                width: 22,
                height: 18,
              ),
            ),
          ],
          // const SizedBox(width: 8),
          // GestureDetector(
          //   onTap: onMediaPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/right_black.png",
          //     width: 16,
          //     height: 14,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class SuggestionAartiTile extends StatelessWidget {
  // final String image;
  // final String title;
  final String subtitle;
  final String tag;
  final VoidCallback onPlay;
  final VoidCallback onArrow;
  final VoidCallback onFav;
  final VoidCallback onList;
  final String audioAsset;
  final bool isAddedInWishlist;

  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const SuggestionAartiTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.audioAsset,
    required this.isAddedInWishlist,
    required this.tag,
    required this.onPlay,
    required this.onArrow,
    required this.onFav,
    required this.onList,

    // required this.image,
    // required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    //  print("GETTING HERE IMAHGE URL iS $image");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      padding: const EdgeInsets.only(left: 6, right: 8, top: 8, bottom: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.5,
            color: AppColor.newGreyy.withOpacity(0.4),
          ),
        ),
        //color: Colors.white,
        //sborderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Icon(Icons.menu, size: 18),
          const SizedBox(width: 4),

          NetworkImageWidget(
            imageUrl: image,
            //placeHolder:"assets/new_design/icon/aarti_category.png",
            fullimage: false,
            imageHeight: 54,
            imageWidth: 54,
            radiusAll: 24,
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.0283,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1.4),
                Row(
                  children: [
                    Text(
                      subtitle,
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.024,
                        color: AppColor.newGreyy,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/aati_badge.png",
                          ),
                        ),
                      ),
                      child: Text(
                        tag,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.01664,
                          color: AppColor.newGreyy,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: onFav,
            child: Image.asset(
              isAddedInWishlist
                  ? 'assets/new_design/icon/fav_with_circle.png'
                  : 'assets/new_design/icon/fav_without_fill.png',
              width: 22,
              height: 22,
            ),
          ),
          const SizedBox(width: 6),
          GestureDetector(
            onTap: onMediaPlay,
            child: Image.asset(
              'assets/new_design/icon/media_play_button.png',
              width: 22,
              height: 22,
            ),
          ),
          const SizedBox(width: 13),
        ],
      ),
    );
  }
}

class SuggestionAartiTileLargeLandScape extends StatelessWidget {
  // final String image;
  // final String title;
  final String subtitle;
  final String tag;
  final VoidCallback onPlay;
  final VoidCallback onArrow;
  final VoidCallback onFav;
  final VoidCallback onList;
  final String audioAsset;
  final bool isAddedInWishlist;

  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const SuggestionAartiTileLargeLandScape({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.audioAsset,
    required this.isAddedInWishlist,
    required this.tag,
    required this.onPlay,
    required this.onArrow,
    required this.onFav,
    required this.onList,

    // required this.image,
    // required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    //  print("GETTING HERE IMAHGE URL iS $image");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      padding: const EdgeInsets.only(left: 6, right: 8, top: 8, bottom: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.5,
            color: AppColor.newGreyy.withOpacity(0.4),
          ),
        ),
        //color: Colors.white,
        //sborderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Icon(Icons.menu, size: 18),
          const SizedBox(width: 4),

          NetworkImageWidget(
            imageUrl: image,
            //placeHolder:"assets/new_design/icon/aarti_category.png",
            fullimage: false,
            imageHeight: 64,
            imageWidth: 64,
            radiusAll: 10,
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.02,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1.4),
                Row(
                  children: [
                    Text(
                      subtitle,
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.02,
                        color: AppColor.newGreyy,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/aati_badge.png",
                          ),
                        ),
                      ),
                      child: Text(
                        tag,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.01664,
                          color: AppColor.newGreyy,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // GestureDetector(
          //   onTap: onFav,
          //   child: Image.asset(
          //     "assets/new_design/icon/fav_without_fill.png",
          //     width: 22,
          //     height: 22,
          //   ),
          // ),
          // SizedBox(width: 6),
          // GestureDetector(
          //   onTap: onBookmarkTap,
          //   child:   Image.asset(
          //     "assets/new_design/icon/lyrci_circle_button.png",
          //     width: 22,
          //     height: 22,
          //   ),
          // ),
          // SizedBox(width: 6),
          GestureDetector(
            onTap: onMediaPlay,
            child: Image.asset(
              "assets/new_design/icon/media_play_button.png",
              width: 22,
              height: 22,
            ),
          ),
          SizedBox(width: 13),

          // const SizedBox(width: 8),
          // GestureDetector(
          //   onTap: onPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/right_black.png",
          //     width: 16,
          //     height: 14,
          //   ),
          // ),
        ],
      ),
    );
  }
}


class SuggestionAartiTileLargeLandScapeSearch extends StatelessWidget {
  // final String image;
  // final String title;
  final String subtitle;
  final String tag;
  final VoidCallback onPlay;
  final VoidCallback onArrow;
  final VoidCallback onFav;
  final VoidCallback onList;
  final String audioAsset;
  final bool isAddedInWishlist;

  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const SuggestionAartiTileLargeLandScapeSearch({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.audioAsset,
    required this.isAddedInWishlist,
    required this.tag,
    required this.onPlay,
    required this.onArrow,
    required this.onFav,
    required this.onList,

    // required this.image,
    // required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    //  print("GETTING HERE IMAHGE URL iS $image");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    //  padding: const EdgeInsets.only(left: 6, right: 8, top: 2, bottom: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.5,
            color: AppColor.newGreyy.withOpacity(0.4),
          ),
        ),

      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Icon(Icons.menu, size: 18),
          const SizedBox(width: 4),

          NetworkImageWidget(
            imageUrl: image,
            //placeHolder:"assets/new_design/icon/aarti_category.png",
            fullimage: false,
            imageHeight: 48,
            imageWidth: 48,
            radiusAll: 10,
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.015,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1.4),
                Row(
                  children: [
                    Text(
                      subtitle,
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.012,
                        color: AppColor.newGreyy,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/aati_badge.png",
                          ),
                        ),
                      ),
                      child: Text(
                        tag,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.01664,
                          color: AppColor.newGreyy,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // GestureDetector(
          //   onTap: onFav,
          //   child: Image.asset(
          //     "assets/new_design/icon/fav_without_fill.png",
          //     width: 22,
          //     height: 22,
          //   ),
          // ),
          // SizedBox(width: 6),
          // GestureDetector(
          //   onTap: onBookmarkTap,
          //   child:   Image.asset(
          //     "assets/new_design/icon/lyrci_circle_button.png",
          //     width: 22,
          //     height: 22,
          //   ),
          // ),
          // SizedBox(width: 6),
          GestureDetector(
            onTap: onMediaPlay,
            child: Image.asset(
              "assets/new_design/icon/media_play_button.png",
              width: 22,
              height: 22,
            ),
          ),


          // const SizedBox(width: 8),
          // GestureDetector(
          //   onTap: onPlay,
          //   child: Image.asset(
          //     "assets/new_design/icon/right_black.png",
          //     width: 16,
          //     height: 14,
          //   ),
          // ),
        ],
      ),
    );
  }
}

