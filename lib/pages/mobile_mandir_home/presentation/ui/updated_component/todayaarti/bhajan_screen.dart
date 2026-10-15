import 'package:mandirapp/common/network/network_eport.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/wishlist_toggle_helper.dart';
import '../../../../../../common/routes/routes.dart';
import '../../../../../../common/values/snack_bar.dart';
import '../../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../../lyrics/track_model.dart';
import '../../../bloc/mobile_home_bloc.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import 'aarti_tile.dart';
import 'bhajan_screen_large.dart';
import 'bhajan_screen_large_landscape.dart';
import 'bhajan_screen_medium.dart';
import 'bhajan_screen_medium_landscape.dart';
import 'bhajan_screen_small.dart';
import 'bhajan_screen_small_landscape.dart';

class BhajanScreen extends StatelessWidget {
  const BhajanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// SMALL SCREEN
    if (context.isSmallScreen) {
      return context.isPortrait
          ? BhajanScreenSmall()
          : BhajanScreenSmallLandscape(); // optional
    }
    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? BhajanScreenMedium()
          : BhajanScreenMediumLandscape();
    }
    /// LARGE SCREEN
    else {
      return context.isPortrait
          ? BhajanScreenLarge()
          : BhajanScreenLargeLandscape();
    }
  }
}

class SeachSuggestion extends StatelessWidget {
  const SeachSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        final list = state.searchAartiChalisaResponse.data;

        // 🔄 Loading
        if (state.isLoadingSearch) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: CircularProgressIndicator(),
            ),
          );
        }

        // ❌ Empty
        if (list == null || list.isEmpty) {
          return const SizedBox();
        }

        // ✅ Suggestion UI (NO Positioned here)
        return Material(
          elevation: 12,
          borderRadius: BorderRadius.circular(14),
          color: AppColor.appWhiteColor,
          child: Container(
            padding: const EdgeInsets.only(top: 14, bottom: 15),
            constraints: const BoxConstraints(maxHeight: 400),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemCount: list.length,
              itemBuilder: (context, index) {
                final data = list[index];

                return GestureDetector(

                  onTap: () {
                    BlocProvider.of<MobileHomeBloc>(
                      context,
                    ).add(
                      HomeGetGetAartiChalisaGodWise(
                        data.god.id,
                        "all",
                      ),
                    );
                    //if (data.audioAsset.isNotEmpty) {

                    BlocProvider.of<AartiPlayerBloc>(
                      context,
                    ).add(OnlyShowLyrics(false));

                    BlocProvider.of<AartiPlayerBloc>(
                      context,
                    ).add(
                      LoadTrack(
                        Track(
                          aartiChaliaid: data.id,
                          isMpfileAvilable:
                          data.audioAsset.isNotEmpty
                              ? true
                              : false,
                          bannerImage: data.mainBanner,
                          lyircsImage:
                          data.lyric_banner_image,
                          youtubeVideoLink:
                          data.youtubeLink,
                          htmlText: data.testLyrics,

                          godName: data.god.godName,
                          type: data.type,
                          thumbnail: (data.thumbnail != null && data.thumbnail.toString().isNotEmpty) ? data.thumbnail : data.mainBanner,
                          title: data.title,
                          audioAsset:
                          "${AppConstant.fileBaseUrl}${data.audioAsset}",
                          lyrics: data.lyrics,
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

                        "youtubeVideoLink":
                        data.youtubeLink ?? "",
                        "banner_image": data.mainBanner,
                        "lyricsImage":
                        data.lyric_banner_image,
                      },
                    );
                    // } else {
                    //   context.showCustomSnackbar(
                    //     "No Audio Available For This",
                    //   );
                    // }
                  },

                  child: SuggestionAartiTile(
                    itemid: data.id,
                    deity: data.god?.godName ?? "",
                    time: data.audioDuration ?? "",
                    verses: "",
                    image: data.thumbnail ?? "",
                    title: data.title ?? "",
                    subtitle: data.god?.godName ?? "",
                    tag: data.type ?? "",
                    isAddedInWishlist: data.isAddedInWishlist,
                    audioAsset: "${AppConstant.fileBaseUrl}${data.audioAsset}",

                    onPlay: () {},
                    onArrow: () {},
                    onFav: () {
                      toggleAartiBhajanWishlist(
                        context,
                        itemId: data.id,
                        itemModel: data.type ?? 'aarti',
                      );
                    },
                    onList: () {},

                    // ▶ PLAY
                    onMediaPlay: () {
                      BlocProvider.of<MobileHomeBloc>(
                        context,
                      ).add(
                        HomeGetGetAartiChalisaGodWise(
                          data.god.id,
                          "all",
                        ),
                      );
                      //if (data.audioAsset.isNotEmpty) {

                      BlocProvider.of<AartiPlayerBloc>(
                        context,
                      ).add(OnlyShowLyrics(false));

                      BlocProvider.of<AartiPlayerBloc>(
                        context,
                      ).add(
                        LoadTrack(
                          Track(
                            aartiChaliaid: data.id,
                            isMpfileAvilable:
                            data.audioAsset.isNotEmpty
                                ? true
                                : false,
                            bannerImage: data.mainBanner,
                            lyircsImage:
                            data.lyric_banner_image,
                            youtubeVideoLink:
                            data.youtubeLink,
                            htmlText: data.testLyrics,

                            godName: data.god.godName,
                            type: data.type,
                            thumbnail: (data.thumbnail != null && data.thumbnail.toString().isNotEmpty) ? data.thumbnail : data.mainBanner,
                            title: data.title,
                            audioAsset:
                            "${AppConstant.fileBaseUrl}${data.audioAsset}",
                            lyrics: data.lyrics,
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

                          "youtubeVideoLink":
                          data.youtubeLink ?? "",
                          "banner_image": data.mainBanner,
                          "lyricsImage":
                          data.lyric_banner_image,
                        },
                      );
                      // } else {
                      //   context.showCustomSnackbar(
                      //     "No Audio Available For This",
                      //   );
                      // }
                    },


                    // 🔖 BOOKMARK
                    onBookmarkTap: () {
                      BlocProvider.of<AartiPlayerBloc>(
                        context,
                      ).add(OnlyShowLyrics(true));

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
                            godName: data.god?.godName ?? "",
                            type: data.type ?? "",
                            thumbnail: data.thumbnail ?? "",
                            title: data.title ?? "",
                            audioAsset:
                                "${AppConstant.fileBaseUrl}${data.audioAsset}",
                            lyrics: data.lyrics,
                            god: data.god,
                          ),
                        ),
                      );

                      Navigator.pushNamed(context, AppRoutes.AARTI_PLAYER_PAGE);
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}



class SeachSuggestionLargeLandScape extends StatelessWidget {
  const SeachSuggestionLargeLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        final list = state.searchAartiChalisaResponse.data;

        // 🔄 Loading
        if (state.isLoadingSearch) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: CircularProgressIndicator(),
            ),
          );
        }

        // ❌ Empty
        if (list == null || list.isEmpty) {
          return const SizedBox();
        }

        // ✅ Suggestion UI (NO Positioned here)
        return SizedBox(height: 280,
          child: Container(
            color: Colors.white,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 3),

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  childAspectRatio: 0.2, // 🔥 IMPORTANT
                ),
                itemCount: list.length,
                itemBuilder: (context,index){
                  final data = list[index];
                  return GestureDetector(
                    onTap: () {
                      context.read<MobileHomeBloc>().add(
                        const MobileHomeEvent.clearSearch(),
                      );
                      BlocProvider.of<AartiPlayerBloc>(
                        context,
                      ).add(OnlyShowLyrics(true));

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
                            godName: data.god?.godName ?? "",
                            type: data.type ?? "",
                            thumbnail: data.thumbnail ?? "",
                            title: data.title ?? "",
                            audioAsset:
                            "${AppConstant.fileBaseUrl}${data.audioAsset}",
                            lyrics: data.lyrics,
                            god: data.god,
                          ),
                        ),
                      );

                      BlocProvider.of<MobileHomeBloc>(
                        context,
                      ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "All"));

                      Navigator.pushNamed(
                        context,
                        AppRoutes.AARTI_PLAYER_PAGE,
                        arguments: {
                          "title": data.title,
                          "html_text": data.testLyrics ?? "",
                          "youtubeVideoLink": data.youtubeLink ?? "",
                          "banner_image": data.mainBanner,
                          "lyricsImage": data.lyric_banner_image,
                        },
                      );
                    },
                    child: SuggestionAartiTileLargeLandScapeSearch(
                      itemid: data.id,
                      deity: data.god?.godName ?? "",
                      time: data.audioDuration ?? "",
                      verses: "",
                      image: data.thumbnail ?? "",
                      title: data.title ?? "",
                      subtitle: data.god?.godName ?? "",
                      tag: data.type ?? "",
                      isAddedInWishlist: data.isAddedInWishlist,
                      audioAsset: "${AppConstant.fileBaseUrl}${data.audioAsset}",


                      onPlay: () {},
                      onArrow: () {},
                      onFav: () {
                        toggleAartiBhajanWishlist(
                          context,
                          itemId: data.id,
                          itemModel: data.type ?? 'aarti',
                        );
                      },
                      onList: () {},

                      // ▶ PLAY
                      onMediaPlay: () {
                        context.read<MobileHomeBloc>().add(
                          const MobileHomeEvent.clearSearch(),
                        );
                        BlocProvider.of<AartiPlayerBloc>(
                          context,
                        ).add(OnlyShowLyrics(true));

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
                              godName: data.god?.godName ?? "",
                              type: data.type ?? "",
                              thumbnail: data.thumbnail ?? "",
                              title: data.title ?? "",
                              audioAsset:
                              "${AppConstant.fileBaseUrl}${data.audioAsset}",
                              lyrics: data.lyrics,
                              god: data.god,
                            ),
                          ),
                        );

                        BlocProvider.of<MobileHomeBloc>(
                          context,
                        ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "All"));
                        Navigator.pushNamed(
                          context,
                          AppRoutes.AARTI_PLAYER_PAGE,
                          arguments: {
                            "title": data.title,
                            "html_text": data.testLyrics ?? "",
                            "youtubeVideoLink": data.youtubeLink ?? "",
                            "banner_image": data.mainBanner,
                            "lyricsImage": data.lyric_banner_image,
                          },
                        );
                      },

                      // 🔖 BOOKMARK
                      onBookmarkTap: () {
                        BlocProvider.of<AartiPlayerBloc>(
                          context,
                        ).add(OnlyShowLyrics(true));

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
                              godName: data.god?.godName ?? "",
                              type: data.type ?? "",
                              thumbnail: data.thumbnail ?? "",
                              title: data.title ?? "",
                              audioAsset:
                              "${AppConstant.fileBaseUrl}${data.audioAsset}",
                              lyrics: data.lyrics,
                              god: data.god,
                            ),
                          ),
                        );

                        Navigator.pushNamed(context, AppRoutes.AARTI_PLAYER_PAGE);
                      },
                    ),
                  );
                }),
          ),
        );
      },
    );
  }
}

// class SeachSuggestion extends StatelessWidget {
//   const SeachSuggestion({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<MobileHomeBloc, MobileHomeState>(
//       builder: (context, state) {
//         final list = state.searchAartiChalisaResponse.data;
//
//         if (state.isLoadingSearch) {
//           return const Positioned(
//             top: 120,
//             left: 16,
//             right: 16,
//             child: Center(child: CircularProgressIndicator()),
//           );
//         }
//
//         if (list == null || list.isEmpty) {
//           return const SizedBox();
//         }
//
//         return Positioned(
//           top: context.screenWidth * 0.45,
//           // 👈 adjust based on your SearchBar position
//           left: 12,
//           right: 12,
//           child: Material(
//             elevation: 12,
//             borderRadius: BorderRadius.circular(14),
//             color: AppColor.appWhiteColor,
//             child: Container(
//               padding: EdgeInsets.only(top: 14, bottom: 15),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   bottomRight: Radius.circular(8),
//                   bottomLeft: Radius.circular(8),
//                 ),
//                 // image: const DecorationImage(
//                 //   image: AssetImage(
//                 //     "assets/new_design/background/aaj_ki_aarti_background.png",
//                 //   ),
//                 //   fit: BoxFit.cover,
//                 // ),
//               ),
//               constraints: const BoxConstraints(maxHeight: 400),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   // 🔹 Top Banner
//                   // Container(
//                   //   margin: const EdgeInsets.only(
//                   //       left: 12, right: 12, top: 8, bottom: 6),
//                   //   width: double.infinity,
//                   //   height: 80,
//                   //   decoration: const BoxDecoration(
//                   //     image: DecorationImage(
//                   //       image: AssetImage(
//                   //         "assets/new_design/background/aaj_ki_aarti.png",
//                   //       ),
//                   //       fit: BoxFit.fill,
//                   //     ),
//                   //   ),
//                   // ),
//
//                   // 🔹 Suggestion List
//                   ListView.builder(
//                     shrinkWrap: true,
//                     padding: EdgeInsets.zero,
//                     physics: const BouncingScrollPhysics(),
//                     itemCount: list.length,
//                     itemBuilder: (context, index) {
//                       final data = list[index];
//
//                       return SuggestionAartiTile(
//                         itemid: data.id,
//                         deity: data.god?.godName ?? "",
//                         time: data.audioDuration ?? "",
//                         verses: "",
//                         image: data.thumbnail ?? "",
//                         title: data.title ?? "",
//                         subtitle: data.god?.godName ?? "",
//                         tag: data.type ?? "",
//                         isAddedInWishlist: data.isAddedInWishlist,
//                         audioAsset:
//                             "${AppConstant.fileBaseUrl}${data.audioAsset}",
//
//                         onPlay: () {},
//                         onArrow: () {},
//                         onFav: () {},
//                         onList: () {},
//
//                         // ▶ PLAY
//                         onMediaPlay: () {
//                           BlocProvider.of<AartiPlayerBloc>(
//                             context,
//                           ).add(OnlyShowLyrics(false));
//
//                           BlocProvider.of<AartiPlayerBloc>(context).add(
//                             LoadTrack(
//                               Track(
//                                 godName: data.god?.godName ?? "",
//                                 type: data.type ?? "",
//                                 thumbnail: data.thumbnail ?? "",
//                                 title: data.title ?? "",
//                                 audioAsset:
//                                     "${AppConstant.fileBaseUrl}${data.audioAsset}",
//                                 lyrics: data.lyrics,
//                                 god: data.god,
//                               ),
//                             ),
//                           );
//                           // BlocProvider.of<MobileHomeBloc>(
//                           //   context,
//                           // ).add(const MobileHomeEvent.clearSearch());
//                           Navigator.pushNamed(
//                             context,
//                             AppRoutes.AARTI_PLAYER_PAGE,
//                           );
//                         },
//
//                         // 🔖 BOOKMARK
//                         onBookmarkTap: () {
//                           BlocProvider.of<AartiPlayerBloc>(
//                             context,
//                           ).add(OnlyShowLyrics(true));
//
//                           BlocProvider.of<AartiPlayerBloc>(context).add(
//                             LoadTrack(
//                               Track(
//                                 godName: data.god?.godName ?? "",
//                                 type: data.type ?? "",
//                                 thumbnail: data.thumbnail ?? "",
//                                 title: data.title ?? "",
//                                 audioAsset:
//                                     "${AppConstant.fileBaseUrl}${data.audioAsset}",
//                                 lyrics: data.lyrics,
//                                 god: data.god,
//                               ),
//                             ),
//                           );
//
//                           Navigator.pushNamed(
//                             context,
//                             AppRoutes.AARTI_PLAYER_PAGE,
//                           );
//                         },
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
