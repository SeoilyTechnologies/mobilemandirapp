import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/values_exports.dart';

import '../../../../../common/routes/routes.dart';
import '../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../lyrics/track_model.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../bloc/god_details_bloc.dart';
import '../../bloc/god_details_state.dart';

class BhajanSection extends StatelessWidget {
  BhajanSection({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return BhajanSectionSmall();
    } else if (context.isMediumScreen) {
      return BhajanSectionMedium();
    } else {
      return BhajanSectionMedium();
    }
  }
}


class BhajanSectionSmall extends StatelessWidget {
  const BhajanSectionSmall({super.key});

  Widget actionButton(String title, BuildContext context) {
    return Container(
      //height: 44,

      decoration: BoxDecoration(
        color: AppColor.newsecondaruy,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE0B24D), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.034,
                  color: Colors.white,
                ),
              ),
            ),

            Image.asset(
              "assets/new_design/icon/angle_back_right.png",
              color: Colors.white,
              width: 12,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GodDetailsBloc, GodDetailsState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 26),
          decoration: BoxDecoration(
            color: const Color(0xFFFDFDFD),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: const Color(0xFFE3D4C3)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child:state.godDetailApiResponse.data.image.isNotEmpty? Image.network(
                  AppConstant.fileBaseUrl +
                      state.godDetailApiResponse.data.image,
                  height: context.screenWidth * 0.46,
                  width: context.screenWidth * 0.46,
                  fit: BoxFit.cover,
                ):Image.asset("assets/icons/no-image.png"),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 185,
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: Platform.isIOS ? 0.35 : 0.37,
                  ),

                  itemCount: state.godDetailApiResponse.data.devotional.length,

                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        var data =
                            state.godDetailApiResponse.data.devotional[index];
                        BlocProvider.of<MobileHomeBloc>(context).add(
                          HomeGetGetAartiChalisaGodWise(data.god.id, "all"),
                        );
                        //if (data.audioAsset.isNotEmpty) {

                        BlocProvider.of<AartiPlayerBloc>(
                          context,
                        ).add(OnlyShowLyrics(false));

                        BlocProvider.of<AartiPlayerBloc>(context).add(
                          LoadTrack(
                            Track(
                              isAddedInWishlist: data.isAddedInWishlist,
                              slugUrl: data.slug??"",
                              aartiChaliaid: data.id,
                              hiHtmLText: data!.testLyrics_hi!,
                              enHtmlText: data.testLyrics_en,

                              isMpfileAvilable: data.audioAsset.isNotEmpty
                                  ? true
                                  : false,
                              bannerImage: data.mainBanner,
                              lyircsImage: data.lyricBannerImage,
                              youtubeVideoLink: data.youtubeLink,
                              htmlText: data.testLyrics,

                              godName: data.god.godName,
                              type: data.type,
                              thumbnail: (data.thumbnail != null && data.thumbnail.toString().isNotEmpty) ? data.thumbnail : data.mainBanner,
                              title: data.title,
                              audioAsset:
                                  "${AppConstant.fileBaseUrl}${data.audioAsset}",
                              lyrics: [],
                              god: data.god,
                            ),
                          ),
                        );

                        Navigator.pushNamed(
                          context,
                          AppRoutes.AARTI_PLAYER_PAGE,
                          arguments: {
                            "title": data.title,
                            "html_text": data.testLyrics ?? "",

                            "youtubeVideoLink": data.youtubeLink ?? "",
                            "banner_image": data.mainBanner,
                            "lyricsImage": data.lyricBannerImage,
                          },
                        );
                        // } else {
                        //   context.showCustomSnackbar(
                        //     "No Audio Available For This",
                        //   );
                        // }
                      },

                      child: actionButton(
                        "${state.godDetailApiResponse.data.devotional[index].title}",
                        context,
                      ),
                    );
                  },
                ),
              ),

              // ClipRRect(
              //   borderRadius: BorderRadius.circular(4),
              //   child: Image.network(
              //     'https://images.unsplash.com/photo-1582510003544-4d00b7f74220',
              //     height: context.screenWidth * 0.46,
              //     width: context.screenHeight * 0.23,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              //
              // const SizedBox(height: 24),
              //
              // Row(
              //   children: [
              //     Expanded(child: actionButton("Ram Ji Aarti", context)),
              //
              //     const SizedBox(width: 22),
              //
              //     Expanded(child: actionButton("Ram Ji Katha", context)),
              //   ],
              // ),
              //
              // const SizedBox(height: 22),
              //
              // Row(
              //   children: [
              //     Expanded(child: actionButton("Ram Ji Mantra", context)),
              //
              //     const SizedBox(width: 22),
              //
              //     Expanded(child: actionButton("Ram Ji Stuti", context)),
              //   ],
              // ),
              //
              // const SizedBox(height: 22),
              //
              // Row(
              //   children: [
              //     Expanded(child: actionButton("Ram Ji Chalisa", context)),
              //
              //     const SizedBox(width: 22),
              //
              //     Expanded(child: actionButton("Raghupati Raghav", context)),
              //   ],
              // ),
            ],
          ),
        );
      },
    );
  }
}



class BhajanSectionMedium extends StatelessWidget {
  const BhajanSectionMedium({super.key});

  Widget actionButton(String title, BuildContext context) {
    return Container(
      //height: 44,

      decoration: BoxDecoration(
        color: AppColor.newsecondaruy,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE0B24D), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.gilroySemiBold(
                  context.screenWidth * 0.028,
                  color: Colors.white,
                ),
              ),
            ),

            Image.asset(
              "assets/new_design/icon/angle_back_right.png",
              color: Colors.white,
              width: 14,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GodDetailsBloc, GodDetailsState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 26),
          decoration: BoxDecoration(
            color: const Color(0xFFFDFDFD),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: const Color(0xFFE3D4C3)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  AppConstant.fileBaseUrl +
                      state.godDetailApiResponse.data.image,
                  alignment: Alignment.center,
                  height: context.screenWidth * 0.46,
                  width: context.screenWidth * 0.758,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: context.screenHeight*0.21,
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: Platform.isIOS ? 0.26 : 0.26,
                  ),

                  itemCount: state.godDetailApiResponse.data.devotional.length,

                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        var data =
                        state.godDetailApiResponse.data.devotional[index];
                        BlocProvider.of<MobileHomeBloc>(context).add(
                          HomeGetGetAartiChalisaGodWise(data.god.id, "all"),
                        );
                        //if (data.audioAsset.isNotEmpty) {

                        BlocProvider.of<AartiPlayerBloc>(
                          context,
                        ).add(OnlyShowLyrics(false));

                        BlocProvider.of<AartiPlayerBloc>(context).add(
                          LoadTrack(
                            Track(
                              isAddedInWishlist: data.isAddedInWishlist,
                              slugUrl: data.slug??"",
                              aartiChaliaid: data.id,
                              hiHtmLText: data!.testLyrics_hi!,
                              enHtmlText: data.testLyrics_en,

                              isMpfileAvilable: data.audioAsset.isNotEmpty
                                  ? true
                                  : false,
                              bannerImage: data.mainBanner,
                              lyircsImage: data.lyricBannerImage,
                              youtubeVideoLink: data.youtubeLink,
                              htmlText: data.testLyrics,

                              godName: data.god.godName,
                              type: data.type,
                              thumbnail: (data.thumbnail != null && data.thumbnail.toString().isNotEmpty) ? data.thumbnail : data.mainBanner,
                              title: data.title,
                              audioAsset:
                              "${AppConstant.fileBaseUrl}${data.audioAsset}",
                              lyrics: [],
                              god: data.god,
                            ),
                          ),
                        );

                        Navigator.pushNamed(
                          context,
                          AppRoutes.AARTI_PLAYER_PAGE,
                          arguments: {
                            "title": data.title,
                            "html_text": data.testLyrics ?? "",

                            "youtubeVideoLink": data.youtubeLink ?? "",
                            "banner_image": data.mainBanner,
                            "lyricsImage": data.lyricBannerImage,
                          },
                        );
                        // } else {
                        //   context.showCustomSnackbar(
                        //     "No Audio Available For This",
                        //   );
                        // }
                      },

                      child: actionButton(
                        "${state.godDetailApiResponse.data.devotional[index].title}",
                        context,
                      ),
                    );
                  },
                ),
              ),

              // ClipRRect(
              //   borderRadius: BorderRadius.circular(4),
              //   child: Image.network(
              //     'https://images.unsplash.com/photo-1582510003544-4d00b7f74220',
              //     height: context.screenWidth * 0.46,
              //     width: context.screenHeight * 0.23,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              //
              // const SizedBox(height: 24),
              //
              // Row(
              //   children: [
              //     Expanded(child: actionButton("Ram Ji Aarti", context)),
              //
              //     const SizedBox(width: 22),
              //
              //     Expanded(child: actionButton("Ram Ji Katha", context)),
              //   ],
              // ),
              //
              // const SizedBox(height: 22),
              //
              // Row(
              //   children: [
              //     Expanded(child: actionButton("Ram Ji Mantra", context)),
              //
              //     const SizedBox(width: 22),
              //
              //     Expanded(child: actionButton("Ram Ji Stuti", context)),
              //   ],
              // ),
              //
              // const SizedBox(height: 22),
              //
              // Row(
              //   children: [
              //     Expanded(child: actionButton("Ram Ji Chalisa", context)),
              //
              //     const SizedBox(width: 22),
              //
              //     Expanded(child: actionButton("Raghupati Raghav", context)),
              //   ],
              // ),
            ],
          ),
        );
      },
    );
  }
}