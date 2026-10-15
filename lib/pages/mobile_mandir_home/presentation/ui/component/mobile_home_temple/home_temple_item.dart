import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/values_exports.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_temple/temple_name_component.dart';

import '../../../../../../common/component/favourite_icon.dart';
import '../../../../../../common/routes/routes.dart';
import '../../../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_event.dart';

class HomeTempleItem extends StatelessWidget {
  final String imagePath;
  final String id;
  final String templeName;
  final String location;
  final double latitude;
  final double longitude;
  final List<String> tags;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onDirectionTap;
  final VoidCallback? onCallTap;
  final VoidCallback? onShareTap;
  final VoidCallback? onBookPoojaTap;
  final VoidCallback? onWishListAddTap;

  const HomeTempleItem({
    super.key,
    required this.imagePath,
    required this.id,
    required this.templeName,
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.tags,
    this.isFavorite = false,
    this.onFavoriteTap,
    this.onDirectionTap,
    this.onCallTap,
    this.onShareTap,
    this.onBookPoojaTap,
    this.onWishListAddTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<TempleDetailNewBloc>(
          context,
        ).add(GetTempleDetailById(id: id));
        Navigator.pushNamed(context, AppRoutes.TEMPLE_DETAIL_PAGE);
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        padding: const EdgeInsets.only(left: 8, right: 0, top: 0, bottom: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColor.goldDark,
            width: 1.5
          )
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// Temple Image
                    imagePath.toString().trim().isNotEmpty?   ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        AppConstant.fileBaseUrl + imagePath,
                        width: context.screenHeight * 0.1,
                        height: context.screenHeight * 0.1,
                        fit: BoxFit.cover,
                      ),
                    ):SizedBox(),

                    const SizedBox(width: 12),

                    /// Content
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                right: context.screenWidth * 0.1,
                              ),
                              child:TempleNameText(templeName: templeName,
                              maxLines: 2,
                              )
                        // Text(
                        //         templeName,
                        //         maxLines: 2,
                        //         overflow: TextOverflow.ellipsis,
                        //         // style: AppTextStyle.gilroyBold(
                        //         //   context.screenWidth * 0.0373,
                        //         //   color: AppColor.newsecondaruy,
                        //         // ),
                        //         style: AppTextStyle.gilroyBold(
                        //           context.screenWidth * 0.038,
                        //           color: AppColor.newsecondaruy,
                        //         ),
                        //       ),
                            ),

                            const SizedBox(height: 4),

                            Row(
                              children: [
                                Image.asset(
                                  "assets/new_design/icon/akar-icons_location.png",
                                  width: 12,
                                ),
                                const SizedBox(width: 6),
                                Expanded(
                                  // child: Text(
                                  //   location,
                                  //   maxLines: 1,
                                  //   overflow: TextOverflow.ellipsis,
                                  //   style: AppTextStyle.gilroyMedium(
                                  //     context.screenWidth * 0.029,
                                  //     color: AppColor.newGreyy,
                                  //   ),
                                  // ),
                                 child: TempleLocationText(
                                    location: location,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),

                           /// const SizedBox(height: 2),

                            // Wrap(
                            //   spacing: 4,
                            //   crossAxisAlignment: WrapCrossAlignment.center,
                            //   children: _buildTags(context),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    _ActionButton(title: context.l10n.direction, onTap: onDirectionTap),
                    const SizedBox(width: 5),

                    // _ActionButton(title: "Call", onTap: onCallTap),
                    // const SizedBox(width: 5),

                    _ActionButton(title: context.l10n.shareCta, onTap: onShareTap),

                    const Spacer(),

                    BookPoojaButton(onTap: onBookPoojaTap),
                  ],
                ),
              ],
            ),
            // Positioned(
            //   right: -10,
            //   top: -8,
            //   child: GestureDetector(
            //     onTap: onWishListAddTap,
            //     child: FavoriteIcon(isFavorite: isFavorite)
            //   )
            // ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTags(BuildContext context) {
    List<Widget> widgets = [];

    for (int i = 0; i < tags.length; i++) {
      widgets.add(
        Text(
          tags[i],
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.029,
            color: AppColor.newGreyy,
          ),
        ),
      );

      if (i != tags.length - 1) {
        widgets.add(
          Text(
            "•",
            style: TextStyle(fontSize: 20, color: Color(0xFF666666)),
          ),
        );
      }
    }

    return widgets;
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

class BookPoojaButton extends StatelessWidget {
  final VoidCallback? onTap;

  const BookPoojaButton({this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        //width: context.screenWidth * 0.25,
        height: context.screenHeight * 0.035,
        padding: EdgeInsets.only(left: 12, right: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.goldDark,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          spacing: 6,
          children: <Widget>[
            Text(
              context.l10n.seeDetail,
              // style: AppTextStyle.gilroyBold(
              //   context.screenWidth * 0.026,
              //   color: AppColor.appWhiteColor,
              // ),
              style: AppTextStyle.gilroyBold(
                context.screenWidth*0.034,
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

class _FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback? onTap;

  const _FavoriteButton({required this.isFavorite, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.screenWidth * 0.2,
        height: context.screenHeight * 0.07,
        decoration: const BoxDecoration(
          color: Color(0xFF8A4A00),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(36),
          ),
        ),
        child: Center(
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.white,
            size: 34,
          ),
        ),
      ),
    );
  }
}


//====================================Medium page==============================

class HomeTempleItemMedium extends StatelessWidget {
  final String imagePath;
  final String id;
  final String templeName;
  final String location;
  final double latitude;
  final double longitude;
  final List<String> tags;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onDirectionTap;
  final VoidCallback? onCallTap;
  final VoidCallback? onShareTap;
  final VoidCallback? onBookPoojaTap;
  final VoidCallback? onWishListAddTap;

  const HomeTempleItemMedium({
    super.key,
    required this.imagePath,
    required this.id,
    required this.templeName,
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.tags,
    this.isFavorite = false,
    this.onFavoriteTap,
    this.onDirectionTap,
    this.onCallTap,
    this.onShareTap,
    this.onBookPoojaTap,
    this.onWishListAddTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<TempleDetailNewBloc>(
          context,
        ).add(GetTempleDetailById(id: id));
        Navigator.pushNamed(context, AppRoutes.TEMPLE_DETAIL_PAGE);
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        padding:  EdgeInsets.all(context.screenHeight*0.01),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: AppColor.goldDark,
                width: 1.5
            )
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// Temple Image
                    imagePath.toString().trim().isNotEmpty?   ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        AppConstant.fileBaseUrl + imagePath,
                        width: context.screenHeight * 0.1,
                        height: context.screenHeight * 0.1,
                        fit: BoxFit.cover,
                      ),
                    ):SizedBox(),

                    const SizedBox(width: 12),

                    /// Content
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                  right: context.screenWidth * 0.1,
                                ),
                                child:TempleNameText(templeName: templeName,
                                  maxLines: 2,
                                )
                              // Text(
                              //         templeName,
                              //         maxLines: 2,
                              //         overflow: TextOverflow.ellipsis,
                              //         // style: AppTextStyle.gilroyBold(
                              //         //   context.screenWidth * 0.0373,
                              //         //   color: AppColor.newsecondaruy,
                              //         // ),
                              //         style: AppTextStyle.gilroyBold(
                              //           context.screenWidth * 0.038,
                              //           color: AppColor.newsecondaruy,
                              //         ),
                              //       ),
                            ),

                            const SizedBox(height: 4),

                            Row(
                              children: [
                                Image.asset(
                                  "assets/new_design/icon/akar-icons_location.png",
                                  width: 12,
                                ),
                                const SizedBox(width: 6),
                                Expanded(
                                  // child: Text(
                                  //   location,
                                  //   maxLines: 1,
                                  //   overflow: TextOverflow.ellipsis,
                                  //   style: AppTextStyle.gilroyMedium(
                                  //     context.screenWidth * 0.029,
                                  //     color: AppColor.newGreyy,
                                  //   ),
                                  // ),
                                  child: TempleLocationText(
                                    location: location,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),

                            /// const SizedBox(height: 2),

                            // Wrap(
                            //   spacing: 4,
                            //   crossAxisAlignment: WrapCrossAlignment.center,
                            //   children: _buildTags(context),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    _ActionButton(title: context.l10n.direction, onTap: onDirectionTap),
                    const SizedBox(width: 5),

                    // _ActionButton(title: "Call", onTap: onCallTap),
                    // const SizedBox(width: 5),

                    _ActionButton(title: context.l10n.shareCta, onTap: onShareTap),

                    const Spacer(),

                    BookPoojaButton(onTap: onBookPoojaTap),
                  ],
                ),
              ],
            ),
            // Positioned(
            //   right: -10,
            //   top: -8,
            //   child: GestureDetector(
            //     onTap: onWishListAddTap,
            //     child: FavoriteIcon(isFavorite: isFavorite)
            //   )
            // ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTags(BuildContext context) {
    List<Widget> widgets = [];

    for (int i = 0; i < tags.length; i++) {
      widgets.add(
        Text(
          tags[i],
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.029,
            color: AppColor.newGreyy,
          ),
        ),
      );

      if (i != tags.length - 1) {
        widgets.add(
          Text(
            "•",
            style: TextStyle(fontSize: 20, color: Color(0xFF666666)),
          ),
        );
      }
    }

    return widgets;
  }
}
