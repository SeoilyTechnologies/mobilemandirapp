import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/home_main/aarti_player/presentation/ui/component/temple_gird_item.dart';
import '../../../../../../common/component/favourite_icon_detail.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/routes/routes.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../../common/utils/share_helper.dart';
import '../../../../../../common/utils/utils.dart';
import '../../../../../../common/values/snack_bar.dart';
import '../../../../../../main.dart';
import '../../../../../../common/component/skeleton_loader.dart';
import '../../../../../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_state.dart';
import '../../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../../lyrics/bloc/aartiplayer_state.dart';
import '../../../../../lyrics/lyricrepositery/lyric_line.dart';
import '../../../../../lyrics/lyricrepositery/lyrics_repositery.dart';
import '../../../../../lyrics/track_model.dart';
import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';
import '../../../../../mobile_mandir_home/presentation/ui/updated_component/title_with_see_allbutton.dart';
import '../../../../../mobile_mandir_home/presentation/ui/updated_component/todayaarti/aarti_tile.dart';
import '../../../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_event.dart';
import '../../../../lyrics_timex.dart';
import '../component/aarti_music_card.dart';
import 'next_three_day_aarti_widget.dart';

class AartiPlayerPageSmall extends StatelessWidget {
  AartiPlayerPageSmall({super.key});

  int _currentIndex(List<LyricsModel> lyrics, Duration position) {
    for (int i = 0; i < lyrics.length; i++) {
      if (position >= lyrics[i].startDuration &&
          position < lyrics[i].endDuration) {
        return i;
      }
    }
    return -1; // start / seek case
  }

  String capitalizeFirst(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    String? title = arguments?['title'] ?? "";
    String? htmltext = arguments?['html_text'] ?? "";
    String? youtubeVideoLink = arguments?['youtubeVideoLink'] ?? "";
    String? banner_image = arguments?['banner_image'] ?? "";
    String? lyricsImage = arguments?['lyricsImage'] ?? "";
    return BlocConsumer<AartiPlayerBloc, AartiPlayerState>(
      listener: (context, state) {
        context.read<AppBloc>().add(
          HideShowMusciActionButtons(state.isPlaying),
        );

        if (state.trackRewardCompleted) {
          context.read<AartiPlayerBloc>().add(
            const ResetTrackRewardCompleted(),
          );
        }
        // if (state.isClickFronNotification && state.track != null) {
        //   print("CODE IS RUNNING IN HERE HERE ..SDF 32324234234234");
        //   if (state.aartiResponseGetAartiById.success) {
        //     print("THIS CLICK IS WORKING HERE HERE ...............");
        //     var data = state.aartiResponseGetAartiById.data[0];
        //
        //     //if (data.audioAsset.isNotEmpty) {
        //     print("Thumbnail: ${data.thumbnail}");
        //     print("Title: ${data.god.godName} ki ${data.type}");
        //     print("Audio Asset: ${data.lyrics.length}");
        //     print("LyricsKey: ${data.audioAsset}");
        //
        //     BlocProvider.of<AartiPlayerBloc>(
        //       context,
        //     ).add(OnlyShowLyrics(false));
        //
        //     BlocProvider.of<AartiPlayerBloc>(context).
        //     add(
        //       LoadTrack(
        //         Track(
        //           isMpfileAvilable: data.audioAsset.isNotEmpty ? true : false,
        //           bannerImage: data.mainBanner,
        //           lyircsImage: data.lyric_banner_image,
        //           youtubeVideoLink: data.youtubeLink,
        //           htmlText: data.testLyrics,
        //
        //           godName: data.god.godName,
        //           type: data.type,
        //           thumbnail: data.mainBanner,
        //           title: data.title,
        //           audioAsset: "${AppConstant.fileBaseUrl}${data.audioAsset}",
        //           lyrics: data.lyrics,
        //           god: data.god,
        //         ),
        //       ),
        //     );
        //   }
        //
        //   // BlocProvider.of<AartiPlayerBloc>(
        //   //   context,
        //   // ).add(ResetNotificationClick());
        // }
      },
      builder: (context, state) {
        isClickFronNotificaiton = false;
        final track = state.track;

        if (track == null) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator(color: Colors.red)),
          );
        }

        final idx = _currentIndex(track.lyrics, state.position);

        /// 🔒 SAFE INDEX (MOST IMPORTANT FIX)
        final int safeIdx = idx < 0
            ? 0
            : idx >= track.lyrics.length
            ? track.lyrics.length - 1
            : idx;

        return Scaffold(
          backgroundColor: AppColor.newbackgroundColorHome,
          appBar: MandirAppBar(
            title: track.title,
            onBackTap: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
              }
            },
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: context.screenHeight * 0.2,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 12, 12, 4),
                        child: NetworkImageWidget(
                          imageUrl: track.bannerImage,
                          imageHeight: context.screenHeight * 0.2,
                          imageWidth: double.infinity,
                          radiusAll: 8,
                          fullimage: false,
                        ),
                      ),


                      Positioned(
                        top: 20,
                        right: 20,
                        child: GestureDetector(
                          onTap: () {
                            if (context.requireLogin()) return;
                            final newStatus = !track.isAddedInWishlist;
                            context.read<AartiPlayerBloc>().add(
                              UpdateWishlistStatus(newStatus),
                            );

                            context.read<MobileHomeBloc>().add(
                              MobileHomeEvent.bhajanToggleWishlist(
                                itemId: track.aartiChaliaid,
                                itemModel: track.type,
                              ),
                            );
                          },

                          child: FavouriteIconDetail(
                            isFavorite: state.track!.isAddedInWishlist ?? false,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child:  GestureDetector(
                            onTap: () {
                              ShareHelper.shareAarti(
                                title: state?.track?.title ?? "Mobile Mandir",
                                slugUrl: state?.track?.slugUrl,
                              );
                            },

                            child: Padding(padding: EdgeInsets.only(bottom: 15,right: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: Padding(padding: EdgeInsets.all(4.0),child: Icon(Icons.share,color: AppColor.goldDark,),),)
                            )
                        ),
                      )

                    ],
                  ),
                ),

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[


                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsGeometry.only(left: 6, right: 6),
                        child: Text(
                          track.title,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.gilroyBold(
                            context.screenWidth * 0.048,
                            color: AppColor.fullBlack,
                          ),
                        ),
                      ),
                    ),


                  ],
                ),

                Text(
                  "",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.036,
                    color: AppColor.newGreyy,
                  ),
                ),

                //  const SizedBox(height: 12),
                if (state.track!.isMpfileAvilable!)
                  const Center(child: AartiMusicCard()),

                if (state.track!.isMpfileAvilable!) ?const SizedBox(height: 16),

                track.htmlText!.isNotEmpty
                    ? Padding(
                        padding: EdgeInsets.only(
                          right: 0,
                          bottom: 8,
                          top: state.track!.isMpfileAvilable ? 8 : 0,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            if (track.htmlText.toString().trim().isNotEmpty) {
                              Navigator.pushNamed(
                                context,
                                AppRoutes.AARTI_HTML_LYRICS_PAGE,
                                arguments: {
                                  "title": title,
                                  "ismpavilable":
                                      state.track!.audioAsset.isNotEmpty,
                                  "html_text": track.htmlText ?? "",
                                  "testLyrics_hi": track.hiHtmLText ?? "",
                                  "testLyrics_en": track.enHtmlText ?? "",
                                  "youtubeVideoLink": youtubeVideoLink ?? "",
                                  "banner_image": banner_image,
                                  "lyricsImage": lyricsImage,
                                },
                              );
                            } else {
                              context.showCustomSnackbar(
                                "No Lyrics Available For This",
                              );
                            }
                          },
                          child: Container(
                            width: 94,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // fill color transparent
                              border: Border.all(
                                color: AppColor.newsecondaruy,
                                // yahan apna border color do
                                width: 1.5, // border thickness
                              ),
                              borderRadius: BorderRadius.circular(
                                6,
                              ), // optional
                            ),
                            child: Center(
                              child: Text(
                                context.l10n.showLyrics,
                                style: AppTextStyle.gilroyBold(
                                  context.screenWidth * 0.034,
                                  color: AppColor.newsecondaruy,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),

                SizedBox(height: 14),

                Container(
                  color: AppColor.appSantbackground,
                  //height: 235,
                  //height: getContainerHeight(BlocProvider.of<MobileHomeBloc>(context).state.mantraHomePageResponsegodwise.data.length) +2,
                  child: BlocBuilder<MobileHomeBloc, MobileHomeState>(
                    buildWhen: (prev, curr) =>
                        prev.mantraHomePageResponsegodwise !=
                            curr.mantraHomePageResponsegodwise ||
                        prev.isLoading != curr.isLoading,
                    builder: (context, statee) {
                      final list = statee.mantraHomePageResponsegodwise.data;
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 12,
                          bottom: 18,
                          top: 18,
                        ),
                        child: Column(
                          children: <Widget>[
                            TitleWithSeeAllButton(
                              title: "${state.track!.god!.godName}",
                              showActionButton: false,
                              actionText: "See All",
                              onActionTap: () {
                              },
                            ),
                            SizedBox(height: 6),
                            Container(
                              height: 235,
                              //   height: getDynamicHeight(list.length),
                              //  color: Colors.red,
                              child: RepaintBoundary(
                                child: statee.isLoading && list.isEmpty
                                    ? const SkeletonHorizontalGrid()
                                    : GridView.builder(
                                        scrollDirection: Axis.horizontal,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 1,
                                        ),

                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              mainAxisSpacing: 6,
                                              crossAxisSpacing: 6,
                                              childAspectRatio:
                                                  0.22, // 🔥 IMPORTANT
                                            ),
                                        itemCount: list.length,
                                        itemBuilder: (context, index) {
                                          final data = list[index];

                                          return GestureDetector(
                                            onTap: () {
                                              //  if (data.audioAsset.isNotEmpty) {
                                              BlocProvider.of<AartiPlayerBloc>(
                                                context,
                                              ).add(OnlyShowLyrics(false));

                                              BlocProvider.of<AartiPlayerBloc>(
                                                context,
                                              ).add(
                                                LoadTrack(
                                                  Track(
                                                    aartiChaliaid: data.id,
                                                    isMpfileAvilable: data.audioAsset.isNotEmpty
                                                        ? true
                                                        : false,
                                                    bannerImage: data.mainBanner,
                                                    lyircsImage: data.lyric_banner_image,
                                                    youtubeVideoLink: data.youtubeLink,
                                                    htmlText: data.testLyrics,
                                                    hiHtmLText: data.testLyrics_hi,
                                                    enHtmlText: data.testLyrics_en,

                                                    godName: data.god.godName,
                                                    type: data.type,
                                                    thumbnail: data.mainBanner,
                                                    title: data.title,
                                                    audioAsset:
                                                        "${AppConstant.fileBaseUrl}${data.audioAsset}",
                                                    lyrics: data.lyrics,
                                                    god: data.god,
                                                  ),
                                                ),
                                              );
                                              // } else {
                                              //   context.showCustomSnackbar(
                                              //     "No Audio Available For This",
                                              //   );
                                              // }

                                              // BlocProvider.of<MobileHomeBloc>(
                                              //   context,
                                              // ).add(
                                              //   HomeGetGetAartiChalisaGodWise(
                                              //     "${state.track!.god.id}",
                                              //     "all",
                                              //   ),
                                              // );
                                            },
                                            child: AartiTileRelatedGodData(
                                              isAddedInWishlist:
                                                  data.isAddedInWishlist,
                                              showArrow: false,
                                              audioAsset: data.audioAsset,
                                              isAddedInWishList:
                                                  data.isAddedInWishlist,
                                              isCurrentPlaying:
                                                  data.god.id == track.godId,
                                              itemid: data.id,
                                              image: data.thumbnail,
                                              title: data.title,
                                              deity: data.god.godName,
                                              time: "",
                                              verses: "",
                                              subtitle: "MMA Team",
                                              tag: data.type,

                                              onPlay: () {},

                                              onMediaPlay: () {
                                                // if (data.audioAsset.isNotEmpty) {
                                                BlocProvider.of<
                                                      AartiPlayerBloc
                                                    >(context)
                                                    .add(OnlyShowLyrics(false));

                                                BlocProvider.of<AartiPlayerBloc>(
                                                  context,
                                                ).add(
                                                  LoadTrack(
                                                    Track(
                                                      aartiChaliaid: data.id,
                                                      isMpfileAvilable:
                                                          data
                                                              .audioAsset
                                                              .isNotEmpty
                                                          ? true
                                                          : false,
                                                      bannerImage:
                                                          data.mainBanner,
                                                      lyircsImage: data
                                                          .lyric_banner_image,
                                                      youtubeVideoLink:
                                                          data.youtubeLink,
                                                      htmlText: data.testLyrics,
                                                      godName: data.god.godName,
                                                      type: data.type,
                                                      thumbnail:
                                                          data.mainBanner,
                                                      title: data.title,
                                                      audioAsset:
                                                          "${AppConstant.fileBaseUrl}${data.audioAsset}",
                                                      lyrics: data.lyrics,
                                                      god: data.god,
                                                    ),
                                                  ),
                                                );
                                                // } else {
                                                //   context.showCustomSnackbar(
                                                //     "No Audio Available For This",
                                                //   );
                                                // }
                                              },

                                              onFav: () {
                                                BlocProvider.of<
                                                      AartiChalisaLsitBloc
                                                    >(context)
                                                    .add(
                                                      ToggleWishlistAartiChalisaList(
                                                        itemModel:
                                                            "aartichalisadata",
                                                        itemId: data.id,
                                                      ),
                                                    );
                                              },

                                              onBookmarkTap: () {
                                                //  if (data.audioAsset.isNotEmpty) {
                                                BlocProvider.of<
                                                      AartiPlayerBloc
                                                    >(context)
                                                    .add(OnlyShowLyrics(false));

                                                BlocProvider.of<AartiPlayerBloc>(
                                                  context,
                                                ).add(
                                                  LoadTrack(
                                                    Track(
                                                      aartiChaliaid: data.id,
                                                      isMpfileAvilable:
                                                          data
                                                              .audioAsset
                                                              .isNotEmpty
                                                          ? true
                                                          : false,
                                                      bannerImage:
                                                          data.mainBanner,
                                                      lyircsImage: data
                                                          .lyric_banner_image,
                                                      youtubeVideoLink:
                                                          data.youtubeLink,
                                                      htmlText: data.testLyrics,
                                                      godName: data.god.godName,
                                                      type: data.type,
                                                      thumbnail:
                                                          data.mainBanner,
                                                      title: data.title,
                                                      audioAsset:
                                                          "${AppConstant.fileBaseUrl}${data.audioAsset}",
                                                      lyrics: data.lyrics,
                                                      god: data.god,
                                                    ),
                                                  ),
                                                );
                                                //    }
                                                if (data.testLyrics
                                                    .toString()
                                                    .trim()
                                                    .isNotEmpty) {
                                                  Navigator.pushNamed(
                                                    context,
                                                    AppRoutes
                                                        .AARTI_HTML_LYRICS_PAGE,
                                                    arguments: {
                                                      "title": data.title,

                                                      "ismpavilable": data
                                                          .audioAsset
                                                          .isNotEmpty,
                                                      "html_text":
                                                          data.testLyrics ?? "",
                                                      "testLyrics_hi":
                                                          data.testLyrics_hi ?? "",
                                                      "testLyrics_en":
                                                          data.testLyrics_en ?? "",
                                                      "youtubeVideoLink":
                                                          data.youtubeLink ??
                                                          "",
                                                      "banner_image":
                                                          data.mainBanner,
                                                      "lyricsImage": data
                                                          .lyric_banner_image,
                                                    },
                                                  );
                                                } else {
                                                  context.showCustomSnackbar(
                                                    "No Lyrics Available For This",
                                                  );
                                                }
                                              },

                                              onArrow: () {},
                                              onList: () {},
                                            ),
                                          );
                                        },
                                      ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // Container(
                //   color: AppColor.appSantbackground,
                //   //height: 235,
                //   //height: getContainerHeight(BlocProvider.of<MobileHomeBloc>(context).state.mantraHomePageResponsegodwise.data.length) +2,
                //   child: BlocBuilder<MobileHomeBloc, MobileHomeState>(
                //     // buildWhen: (prev, curr) =>
                //     // prev.mantraHomePageResponsegodwise !=
                //     //     curr.mantraHomePageResponsegodwise,
                //     builder: (context, statee) {
                //       final list =
                //           statee.nextThreeDaymantraHomePageResponse.data;
                //       return Padding(
                //         padding: EdgeInsets.only(
                //           left: 16,
                //           right: 12,
                //           bottom: 18,
                //           top: 18,
                //         ),
                //         child: Column(
                //           children: <Widget>[
                //             TitleWithSeeAllButton(
                //               title: "Next Three Day",
                //               showActionButton: false,
                //               actionText: "See All",
                //               onActionTap: () {
                //                 print("See All clicked");
                //               },
                //             ),
                //             Container(
                //               height: 235,
                //               //   height: getDynamicHeight(list.length),
                //               //  color: Colors.red,
                //               child: GridView.builder(
                //                 scrollDirection: Axis.horizontal,
                //                 padding: const EdgeInsets.symmetric(
                //                   horizontal: 1,
                //                 ),
                //
                //                 gridDelegate:
                //                     const SliverGridDelegateWithFixedCrossAxisCount(
                //                       crossAxisCount: 3,
                //                       mainAxisSpacing: 6,
                //                       crossAxisSpacing: 6,
                //                       childAspectRatio: 0.22, // 🔥 IMPORTANT
                //                     ),
                //                 itemCount: list.length,
                //                 itemBuilder: (context, index) {
                //                   final data = list[index];
                //                  // print(data.title);
                //                   return GestureDetector(
                //                     onTap: () {
                //                       print("CLICK ITEM TITLE IS ${state.track!.god.godName}");
                //                       BlocProvider.of<MobileHomeBloc>(
                //                         context,
                //                       ).add(
                //                         HomeGetGetAartiChalisaGodWise(
                //                           "${state.track!.god.id}",
                //                           "all",
                //                         ),
                //                       );
                //                       if (data.audioAsset.isNotEmpty) {
                //                         BlocProvider.of<AartiPlayerBloc>(
                //                           context,
                //                         ).add(OnlyShowLyrics(false));
                //
                //                         BlocProvider.of<AartiPlayerBloc>(
                //                           context,
                //                         ).add(
                //                           LoadTrack(
                //                             Track(
                //                               godName: data.god.godName,
                //                               type: data.type,
                //                               thumbnail: data.mainBanner,
                //                               title: data.title,
                //                               audioAsset:
                //                                   "${AppConstant.fileBaseUrl}${data.audioAsset}",
                //                               lyrics: data.lyrics,
                //                               god: data.god,
                //                             ),
                //                           ),
                //                         );
                //                       } else {
                //                         context.showCustomSnackbar(
                //                           "No Audio Available For This",
                //                         );
                //                       }
                //
                //
                //                     },
                //                     child: AartiTileRelatedGodData(
                //                       isAddedInWishlist: data.isAddedInWishlist,
                //                       showArrow: false,
                //                       audioAsset: data.audioAsset,
                //                       isAddedInWishList: data.isAddedInWishlist,
                //                       isCurrentPlaying:
                //                           data.god.id == track.godId,
                //                       itemid: data.id,
                //                       image: data.thumbnail,
                //                       title: data.title,
                //                       deity: data.god.godName,
                //                       time: "",
                //                       verses: "",
                //                       subtitle: "${data.date}",
                //                       tag: data.type,
                //
                //                       onPlay: () {},
                //
                //                       onMediaPlay: () {
                //                         if (data.audioAsset.isNotEmpty) {
                //                           BlocProvider.of<AartiPlayerBloc>(
                //                             context,
                //                           ).add(OnlyShowLyrics(false));
                //
                //                           BlocProvider.of<AartiPlayerBloc>(
                //                             context,
                //                           ).add(
                //                             LoadTrack(
                //                               Track(
                //                                 godName: data.god.godName,
                //                                 type: data.type,
                //                                 thumbnail: data.mainBanner,
                //                                 title: data.title,
                //                                 audioAsset:
                //                                     "${AppConstant.fileBaseUrl}${data.audioAsset}",
                //                                 lyrics: data.lyrics,
                //                                 god: data.god,
                //                               ),
                //                             ),
                //                           );
                //                         } else {
                //                           context.showCustomSnackbar(
                //                             "No Audio Available For This",
                //                           );
                //                         }
                //
                //                         BlocProvider.of<MobileHomeBloc>(
                //                           context,
                //                         ).add(
                //                           HomeGetGetAartiChalisaGodWise(
                //                             "${state.track!.god.id}",
                //                             "all",
                //                           ),
                //                         );
                //                       },
                //
                //                       onFav: () {
                //                         BlocProvider.of<AartiChalisaLsitBloc>(
                //                           context,
                //                         ).add(
                //                           ToggleWishlistAartiChalisaList(
                //                             itemModel: "aartichalisadata",
                //                             itemId: data.id,
                //                           ),
                //                         );
                //                       },
                //
                //                       onBookmarkTap: () {
                //                         if (data.audioAsset.isNotEmpty) {
                //                           BlocProvider.of<AartiPlayerBloc>(
                //                             context,
                //                           ).add(OnlyShowLyrics(false));
                //
                //                           BlocProvider.of<AartiPlayerBloc>(
                //                             context,
                //                           ).add(
                //                             LoadTrack(
                //                               Track(
                //                                 godName: data.god.godName,
                //                                 type: data.type,
                //                                 thumbnail: data.mainBanner,
                //                                 title: data.title,
                //                                 audioAsset:
                //                                     "${AppConstant.fileBaseUrl}${data.audioAsset}",
                //                                 lyrics: data.lyrics,
                //                                 god: data.god,
                //                               ),
                //                             ),
                //                           );
                //                         }
                //                         if (data.testLyrics
                //                             .toString()
                //                             .trim()
                //                             .isNotEmpty) {
                //                           Navigator.pushNamed(
                //                             context,
                //                             AppRoutes.AARTI_HTML_LYRICS_PAGE,
                //                             arguments: {
                //                               "title": data.title,
                //
                //                               "ismpavilable":
                //                                   data.audioAsset.isNotEmpty,
                //                               "html_text":
                //                                   data.testLyrics ?? "",
                //                               "youtubeVideoLink":
                //                                   data.youtubeLink ?? "",
                //                               "banner_image": data.mainBanner,
                //                               "lyricsImage":
                //                                   data.lyric_banner_image,
                //                             },
                //                           );
                //                         } else {
                //                           context.showCustomSnackbar(
                //                             "No Lyrics Available For This",
                //                           );
                //                         }
                //
                //                         BlocProvider.of<MobileHomeBloc>(
                //                           context,
                //                         ).add(
                //                           HomeGetGetAartiChalisaGodWise(
                //                             "${state.track!.god.id}",
                //                             "all",
                //                           ),
                //                         );
                //                       },
                //
                //                       onArrow: () {},
                //                       onList: () {},
                //                     ),
                //                   );
                //
                //
                //                 },
                //               ),
                //             ),
                //           ],
                //         ),
                //       );
                //     },
                //   ),
                // ),
                SizedBox(height: 14),
                NextThreeDayAartiWidget("${state.track?.aartiChaliaid}"),

                aboutGaneshaView(context, track.god),
                SizedBox(height: 8),
                track.god.temples.isNotEmpty
                    ? templesView(context, track.god)
                    : SizedBox(),
                track.god.temples.isNotEmpty
                    ? SizedBox(height: 12)
                    : SizedBox(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "${context.l10n.related} ${Utils.getLocalizedTrackType(track.type, context)}",
                        style: AppTextStyle.gilroySemiBold(
                          context.screenWidth * 0.042,
                          color: AppColor.fullBlack,
                        ),
                      ),
                    ),
                  ],
                ),

                BlocBuilder<AartiChalisaLsitBloc, AartiChalisaListState>(
                  buildWhen: (prev, curr) =>
                      prev.aartiResponse != curr.aartiResponse,
                  builder: (context, state) {
                    final list = state.aartiResponse.data;

                    return ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: list.length,
                      itemBuilder: (context, position) {
                        final data = list[position];

                        return GestureDetector(
                          onTap: () {
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
                                  aartiChaliaid: data.id,
                                  isMpfileAvilable: data.audioAsset.isNotEmpty
                                      ? true
                                      : false,
                                  bannerImage: data.mainBanner,
                                  lyircsImage: data.lyric_banner_image,
                                  youtubeVideoLink: data.youtubeLink,
                                  htmlText: data.testLyrics,
                                  hiHtmLText: data.testLyrics_hi,
                                  enHtmlText: data.testLyrics_en,

                                  godName: data.god.godName,
                                  type: data.type,
                                  thumbnail: data.mainBanner,
                                  title: data.title,
                                  audioAsset:
                                      "${AppConstant.fileBaseUrl}${data.audioAsset}",
                                  lyrics: data.lyrics,
                                  god: data.god,
                                ),
                              ),
                            );

                            // Navigator.pushNamed(
                            //   context,
                            //   AppRoutes.AARTI_PLAYER_PAGE,
                            //   arguments: {
                            //     "title": data.title,
                            //     "html_text": data.testLyrics ?? "",
                            //
                            //     "youtubeVideoLink": data.youtubeLink ?? "",
                            //     "banner_image": data.mainBanner,
                            //     "lyricsImage": data.lyric_banner_image,
                            //   },
                            // );
                            // } else {
                            //   context.showCustomSnackbar(
                            //     "No Audio Available For This",
                            //   );
                            // }
                          },

                          child: AartiTile(
                            isAddedInWishlist: data.isAddedInWishlist,
                            showArrow: false,
                            audioAsset: data.audioAsset,
                            isAddedInWishList: data.isAddedInWishlist,
                            isCurrentPlaying: data.god.id == track.godId,
                            itemid: data.id,
                            image: data.thumbnail,
                            title: data.title,
                            deity: data.god.godName,
                            time: "",
                            verses: "",
                            subtitle: "",
                            tag: data.type,

                            onPlay: () {},

                            onMediaPlay: () {
                              BlocProvider.of<MobileHomeBloc>(context).add(
                                HomeGetGetAartiChalisaGodWise(
                                  data.god.id,
                                  "all",
                                ),
                              );
                              //if (data.audioAsset.isNotEmpty) {

                              BlocProvider.of<AartiPlayerBloc>(
                                context,
                              ).add(OnlyShowLyrics(false));

                              BlocProvider.of<AartiPlayerBloc>(context).add(
                                LoadTrack(
                                  Track(
                                    aartiChaliaid: data.id,
                                    isMpfileAvilable: data.audioAsset.isNotEmpty
                                        ? true
                                        : false,
                                    bannerImage: data.mainBanner,
                                    lyircsImage: data.lyric_banner_image,
                                    youtubeVideoLink: data.youtubeLink,
                                    htmlText: data.testLyrics,

                                    godName: data.god.godName,
                                    type: data.type,
                                    thumbnail: data.mainBanner,
                                    title: data.title,
                                    audioAsset:
                                        "${AppConstant.fileBaseUrl}${data.audioAsset}",
                                    lyrics: data.lyrics,
                                    god: data.god,
                                  ),
                                ),
                              );

                              // Navigator.pushNamed(
                              //   context,
                              //   AppRoutes.AARTI_PLAYER_PAGE,
                              //   arguments: {
                              //     "title": data.title,
                              //     "html_text": data.testLyrics ?? "",
                              //
                              //     "youtubeVideoLink": data.youtubeLink ?? "",
                              //     "banner_image": data.mainBanner,
                              //     "lyricsImage": data.lyric_banner_image,
                              //   },
                              // );
                              // } else {
                              //   context.showCustomSnackbar(
                              //     "No Audio Available For This",
                              //   );
                              // }
                            },

                            onFav: () {
                              BlocProvider.of<AartiChalisaLsitBloc>(
                                context,
                              ).add(
                                ToggleWishlistAartiChalisaList(
                                  itemModel: data.type,
                                  itemId: data.id,
                                ),
                              );
                            },

                            onBookmarkTap: () {
                              BlocProvider.of<MobileHomeBloc>(context).add(
                                HomeGetGetAartiChalisaGodWise(
                                  data.god.id,
                                  "all",
                                ),
                              );
                              //if (data.audioAsset.isNotEmpty) {

                              BlocProvider.of<AartiPlayerBloc>(
                                context,
                              ).add(OnlyShowLyrics(false));

                              BlocProvider.of<AartiPlayerBloc>(context).add(
                                LoadTrack(
                                  Track(
                                    aartiChaliaid: data.id,
                                    isMpfileAvilable: data.audioAsset.isNotEmpty
                                        ? true
                                        : false,
                                    bannerImage: data.mainBanner,
                                    lyircsImage: data.lyric_banner_image,
                                    youtubeVideoLink: data.youtubeLink,
                                    htmlText: data.testLyrics,

                                    godName: data.god.godName,
                                    type: data.type,
                                    thumbnail: data.mainBanner,
                                    title: data.title,
                                    audioAsset:
                                        "${AppConstant.fileBaseUrl}${data.audioAsset}",
                                    lyrics: data.lyrics,
                                    god: data.god,
                                  ),
                                ),
                              );
                              if (data.testLyrics
                                  .toString()
                                  .trim()
                                  .isNotEmpty) {
                                // print("Thumbnail: ${data.thumbnail}");
                                // print(
                                //   "Title: ${data.god.godName} ki ${data.type}",
                                // );
                                // print(
                                //   "Audio Asset length: ${data.lyrics.length}",
                                // );
                                // print(
                                //   "LyricsKey: ${data.audioAsset}",
                                // );
                                //
                                // BlocProvider.of<AartiPlayerBloc>(
                                //   context,
                                // ).add(OnlyShowLyrics(false));
                                //
                                // BlocProvider.of<AartiPlayerBloc>(
                                //   context,
                                // ).add(
                                //   LoadTrack(
                                //     Track(
                                //       isMpfileAvilable:
                                //           data.audioAsset.isNotEmpty
                                //           ? true
                                //           : false,
                                //       bannerImage: data.mainBanner,
                                //       lyircsImage:
                                //           data.lyric_banner_image,
                                //       youtubeVideoLink:
                                //           data.youtubeLink,
                                //       htmlText: data.testLyrics,
                                //       godName: data.god.godName,
                                //       type: data.type,
                                //       thumbnail: data.mainBanner,
                                //       title: data.title,
                                //       audioAsset:
                                //           "${AppConstant.fileBaseUrl}${data.audioAsset}",
                                //       lyrics: data.lyrics,
                                //       god: data.god,
                                //     ),
                                //   ),
                                // );

                                Navigator.pushNamed(
                                   context,
                                   AppRoutes.AARTI_HTML_LYRICS_PAGE,
                                   arguments: {
                                     "title": data.title,
                                     "html_text": data.testLyrics ?? "",
                                     "testLyrics_hi": data.testLyrics_hi ?? "",
                                     "testLyrics_en": data.testLyrics_en ?? "",
                                     "youtubeVideoLink": data.youtubeLink ?? "",
                                     "ismpavilable": data.audioAsset.isNotEmpty,
                                     "banner_image": data.mainBanner,
                                     "lyricsImage": data.lyric_banner_image,
                                   },
                                 );
                              } else {
                                context.showCustomSnackbar(
                                  "No Lyrics Available For This",
                                );
                              }
                              // existing code 그대로
                            },

                            onArrow: () {},
                            onList: () {},
                          ),
                        );
                      },
                    );
                  },
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  double getContainerHeight(int itemCount) {
    const double itemHeight = 70;
    const double spacing = 6;

    int rowCount = itemCount >= 3 ? 3 : itemCount;

    return (rowCount * itemHeight) + ((rowCount - 1) * spacing);
  }

  double getDynamicHeight(int itemCount) {
    if (itemCount == 1) return 200;
    if (itemCount == 2) return 150;
    return 235; // 3 or more
  }

  Widget aboutGaneshaView(BuildContext context, GodModel goddata) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent, // removes internal divider
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Material(
          color: Colors.white, // removes material stroke
          child: ExpansionTile(
            tilePadding: const EdgeInsets.symmetric(horizontal: 12),
            childrenPadding: const EdgeInsets.all(12),

            // 🔒 remove default border completely
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            collapsedShape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),

            title: Text(
              "${context.l10n.aboutGod} ${goddata.godName}",
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.042,
                color: AppColor.fullBlack,
              ),
            ),
            children: [
              infoRow(context.l10n.name, "${goddata.godName}", context),
              infoRow(context.l10n.father, "${goddata.fatherName}", context),
              infoRow(context.l10n.mother, "${goddata.motherName}", context),
              infoRow(
                context.l10n.spouse,
                "${commaSeparated(goddata.wife)}",
                context,
              ),
              //infoRow("Vehicle", "${goddata.f![0]}",context),
              infoRow(context.l10n.day, "${commaSeparated(goddata.relatedDays)}", context),
              infoRow(
                context.l10n.tithi,
                "${commaSeparated(goddata.relatedTithi)}",
                context,
              ),
              // infoRow(
              //   "Festivals",
              //   "${commaSeparated(goddata.relatedFestival)}",
              //   context,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  String commaSeparated(List<String>? items) {
    if (items == null || items.isEmpty) return "";
    return items.join(", ");
  }

  Widget infoRow(String title, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90,
            child: Text(
              "$title",
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.036,
                color: AppColor.fullBlack,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTextStyle.gilroyRegular(
                context.screenWidth * 0.036,
                color: AppColor.fullBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget templesView(BuildContext context, GodModel goddata) {

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColor.appWhiteColor, width: 2),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent, // 🔥 removes divider
        ),
        child: Material(
          color: Colors.transparent, // 🔥 removes material stroke
          child: ExpansionTile(
            tilePadding: const EdgeInsets.symmetric(horizontal: 12),
            childrenPadding: const EdgeInsets.all(12),

            // 🔒 remove default border completely
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            collapsedShape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),

            title: Text(context.l10n.temples,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.042,
                color: AppColor.fullBlack,
              ),
            ),

            children: [
              GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: goddata.temples.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.67,
                ),
                itemBuilder: (context, index) {
                  void openTempleDetail() {
                    BlocProvider.of<TempleDetailNewBloc>(context).add(
                      GetTempleDetailById(
                        id: goddata.temples[index].id,
                      ),
                    );
                    Navigator.pushNamed(
                      context,
                      AppRoutes.TEMPLE_DETAIL_PAGE,
                    );
                  }

                  return GestureDetector(
                    onTap: openTempleDetail,
                    child: Card(
                      margin: EdgeInsets.zero,
                      elevation: 2,
                      shadowColor: Colors.white,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: TempleGirdItem(
                          showLocationIcon: true,
                          image:
                              AppConstant.fileBaseUrl +
                              goddata.temples[index].image,
                          title: goddata.temples[index].templeName,
                          location: goddata.temples[index].location,
                          onTap: openTempleDetail,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String formatTempleName(String name) {
    List<String> words = name.split(' ');
    if (words.length <= 2) return name;

    return words.take(2).join(' ') + '\n' + words.skip(2).join(' ');
  }
}
