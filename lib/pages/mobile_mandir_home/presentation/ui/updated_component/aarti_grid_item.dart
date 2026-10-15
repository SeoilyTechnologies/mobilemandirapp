import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/routes/exports.dart';

class AartiGridItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback? onSocialTap;
  final VoidCallback? onPlayTap;
  final VoidCallback? onFavTap;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onMediaPlay;
  final VoidCallback? onBookmarkTap;

  const AartiGridItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.onSocialTap,
    this.onPlayTap,
    this.onFavTap,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onMediaPlay,
    this.onBookmarkTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 6, left: 6, right: 6),
            child: Stack(
              children: [
                // Image.network(
                //   "$imagePath",
                //   errorBuilder: (_, e, __) {
                //     print("IMAGE ERROR => $e");
                //     return Icon(Icons.error);
                //   },
                // ),
                //                 ClipRRect(
                //                   borderRadius: BorderRadius.circular(10),
                //                   child: Image.network(
                // imagePath,
                //                     height: context.screenWidth*0.282,
                //                     width: double.infinity,
                //                     fit: BoxFit.cover,
                //                   ),
                //                 ),
                NetworkImageWidget(
                  imageUrl: imagePath,
                  imageHeight: context.screenWidth * 0.33,
                  fullimage: false,
                  imageWidth: double.infinity,
                  radiusAll: 4,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: GestureDetector(
                    onTap: onFavTap,
                    child: Image.asset(
                      color: Colors.white,
                      isAddedInWishList
                          ? "assets/new_design/icon/fav_with_circle.png"
                          : "assets/new_design/icon/fav_without_fill.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.032,
                    color: AppColor.newsecondaruy,
                  ),
                ),
               SizedBox(height: 6,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onSocialTap,
                      child: Image.asset(
                        "assets/new_design/icon/lyrci_circle_button.png",
                        width: 26,
                        height: 26,
                      ),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: onMediaPlay,
                      child: Image.asset(
                        "assets/new_design/icon/media_play_button.png",
                        width: 26,
                        height: 26,
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
}


class AartiGridItemMedium extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback? onSocialTap;
  final VoidCallback? onPlayTap;
  final VoidCallback? onFavTap;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onMediaPlay;
  final VoidCallback? onBookmarkTap;

  const AartiGridItemMedium({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.onSocialTap,
    this.onPlayTap,
    this.onFavTap,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onMediaPlay,
    this.onBookmarkTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 6, left: 6, right: 6),
            child: Stack(
              children: [
                // Image.network(
                //   "$imagePath",
                //   errorBuilder: (_, e, __) {
                //     print("IMAGE ERROR => $e");
                //     return Icon(Icons.error);
                //   },
                // ),
                //                 ClipRRect(
                //                   borderRadius: BorderRadius.circular(10),
                //                   child: Image.network(
                // imagePath,
                //                     height: context.screenWidth*0.282,
                //                     width: double.infinity,
                //                     fit: BoxFit.cover,
                //                   ),
                //                 ),
                NetworkImageWidget(
                  imageUrl: imagePath,
                  imageHeight: context.screenWidth * 0.282,
                  fullimage: false,
                  imageWidth: double.infinity,
                  radiusAll: 4,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: GestureDetector(
                    onTap: onFavTap,
                    child: Image.asset(
                      color: Colors.white,
                      isAddedInWishList
                          ? "assets/new_design/icon/fav_with_circle.png"
                          : "assets/new_design/icon/fav_without_fill.png",
                      width: context.screenWidth*0.05,
                      height: context.screenWidth*0.05,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  style: AppTextStyle.gilroySemiBold(
                    context.screenWidth * 0.032,
                    color: AppColor.newsecondaruy,
                  ),
                ),
                Text(
                  subtitle,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.024,
                    color: AppColor.newGreyy,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onSocialTap,
                      child: Image.asset(
                        "assets/new_design/icon/lyrci_circle_button.png",
                        width: context.screenWidth*0.05,
                        height: context.screenWidth*0.05,
                      ),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: onMediaPlay,
                      child: Image.asset(
                        "assets/new_design/icon/media_play_button.png",
                        width: context.screenWidth*0.05,
                        height: context.screenWidth*0.05,
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
}


class AartiGridItemWishList extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback? onSocialTap;
  final VoidCallback? onPlayTap;
  final VoidCallback? onFavTap;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onMediaPlay;
  final VoidCallback? onBookmarkTap;

  const AartiGridItemWishList({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.onSocialTap,
    this.onPlayTap,
    this.onFavTap,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onMediaPlay,
    this.onBookmarkTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 6, left: 6, right: 6),
            child: Stack(
              children: [
                // Image.network(
                //   "$imagePath",
                //   errorBuilder: (_, e, __) {
                //     print("IMAGE ERROR => $e");
                //     return Icon(Icons.error);
                //   },
                // ),
                //                 ClipRRect(
                //                   borderRadius: BorderRadius.circular(10),
                //                   child: Image.network(
                // imagePath,
                //                     height: context.screenWidth*0.282,
                //                     width: double.infinity,
                //                     fit: BoxFit.cover,
                //                   ),
                //                 ),
                NetworkImageWidget(
                  imageUrl: imagePath,
                  imageHeight: context.screenWidth * 0.382,
                  fullimage: false,
                  imageWidth: double.infinity,
                  radiusAll: 6,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: GestureDetector(
                    onTap: onFavTap,
                    child: Image.asset(
                      color: Colors.white,
                      isAddedInWishList
                          ? "assets/new_design/icon/fav_with_circle.png"
                          : "assets/new_design/icon/fav_without_fill.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  style: AppTextStyle.gilroySemiBold(
                    context.screenWidth * 0.032,
                    color: AppColor.newsecondaruy,
                  ),
                ),
                Text(
                  subtitle,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.024,
                    color: AppColor.newGreyy,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onSocialTap,
                      child: Image.asset(
                        "assets/new_design/icon/lyrci_circle_button.png",
                        width: 26,
                        height: 26,
                      ),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: onMediaPlay,
                      child: Image.asset(
                        "assets/new_design/icon/media_play_button.png",
                        width: 26,
                        height: 26,
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
}

class AartiGridItemWishListMedium extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback? onSocialTap;
  final VoidCallback? onPlayTap;
  final VoidCallback? onFavTap;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onMediaPlay;
  final VoidCallback? onBookmarkTap;

  const AartiGridItemWishListMedium({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.onSocialTap,
    this.onPlayTap,
    this.onFavTap,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onMediaPlay,
    this.onBookmarkTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 6, left: 6, right: 6),
            child: Stack(
              children: [
                // Image.network(
                //   "$imagePath",
                //   errorBuilder: (_, e, __) {
                //     print("IMAGE ERROR => $e");
                //     return Icon(Icons.error);
                //   },
                // ),
                //                 ClipRRect(
                //                   borderRadius: BorderRadius.circular(10),
                //                   child: Image.network(
                // imagePath,
                //                     height: context.screenWidth*0.282,
                //                     width: double.infinity,
                //                     fit: BoxFit.cover,
                //                   ),
                //                 ),
                NetworkImageWidget(
                  imageUrl: imagePath,
                  imageHeight: context.screenWidth * 0.382,
                  fullimage: false,
                  imageWidth: double.infinity,
                  radiusAll: 6,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: GestureDetector(
                    onTap: onFavTap,
                    child: Image.asset(
                      color: Colors.white,
                      isAddedInWishList
                          ? "assets/new_design/icon/fav_with_circle.png"
                          : "assets/new_design/icon/fav_without_fill.png",
                      width: context.screenWidth*0.05,
                      height: context.screenWidth*0.05,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  style: AppTextStyle.gilroySemiBold(
                    context.screenWidth * 0.032,
                    color: AppColor.newsecondaruy,
                  ),
                ),
                Text(
                  subtitle,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.024,
                    color: AppColor.newGreyy,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onSocialTap,
                      child: Image.asset(
                        "assets/new_design/icon/lyrci_circle_button.png",
                        width: context.screenWidth*0.05,
                        height: context.screenWidth*0.05,
                      ),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: onMediaPlay,
                      child: Image.asset(
                        "assets/new_design/icon/media_play_button.png",
                        width: context.screenWidth*0.05,
                        height: context.screenWidth*0.05,
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
}

class AartiGridItemWishListLargeLandScape extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback? onSocialTap;
  final VoidCallback? onPlayTap;
  final VoidCallback? onFavTap;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onMediaPlay;
  final VoidCallback? onBookmarkTap;

  const AartiGridItemWishListLargeLandScape({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.onSocialTap,
    this.onPlayTap,
    this.onFavTap,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onMediaPlay,
    this.onBookmarkTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 6, left: 6, right: 6),
            child: Stack(
              children: [
                // Image.network(
                //   "$imagePath",
                //   errorBuilder: (_, e, __) {
                //     print("IMAGE ERROR => $e");
                //     return Icon(Icons.error);
                //   },
                // ),
                //                 ClipRRect(
                //                   borderRadius: BorderRadius.circular(10),
                //                   child: Image.network(
                // imagePath,
                //                     height: context.screenWidth*0.282,
                //                     width: double.infinity,
                //                     fit: BoxFit.cover,
                //                   ),
                //                 ),
                NetworkImageWidget(
                  imageUrl: imagePath,
                  imageHeight: context.screenWidth * 0.3,
                  fullimage: false,
                  imageWidth: double.infinity,
                  radiusAll: 6,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: GestureDetector(
                    onTap: onFavTap,
                    child: Image.asset(
                      color: Colors.white,
                      isAddedInWishList
                          ? "assets/new_design/icon/fav_with_circle.png"
                          : "assets/new_design/icon/fav_without_fill.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  style: AppTextStyle.gilroySemiBold(
                    context.screenWidth * 0.032,
                    color: AppColor.newsecondaruy,
                  ),
                ),
                Text(
                  subtitle,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.024,
                    color: AppColor.newGreyy,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onSocialTap,
                      child: Image.asset(
                        "assets/new_design/icon/lyrci_circle_button.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: onMediaPlay,
                      child: Image.asset(
                        "assets/new_design/icon/media_play_button.png",
                        width: 20,
                        height: 20,
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
}
