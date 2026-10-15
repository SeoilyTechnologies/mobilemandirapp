import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/pages/wishlist/data/entity/wishlist/wishlist_response.dart';
import 'package:mandirapp/pages/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:mandirapp/pages/wishlist/presentation/bloc/wishlist_state.dart';
import '../../../../common/component/app_text_style.dart';
import '../../../../common/component/top_bar_component.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/routes/routes.dart';
import '../../../../common/values/snack_bar.dart';
import '../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../favorites/presentation/component/favorite_item_card.dart';
import '../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../lyrics/track_model.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../mobile_mandir_home/presentation/ui/updated_component/aarti_grid_item.dart';
import '../bloc/wishlist_event.dart';

class WishlistPageLarge extends StatelessWidget {
  const WishlistPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: MandirAppBar(
        title: context.l10n.myFavourites,
        onBackTap: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          } else {
            BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
          }
        },
      ),
      body: BlocConsumer<WishlistBloc, WishlistState>(
        listener: (context, state) {
          // yahan snackbar / toast / dialog wagarah dikhana ho to kar sakte ho
        },
        builder: (context, state) {
          return Column(
            children: <Widget>[
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    left: 14,
                    right: 14,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: state.items.data.length,
                  itemBuilder: (context, position) {
                    final data = state.items.data[position];

                    return GestureDetector(
                      onTap: () {
                        BlocProvider.of<MobileHomeBloc>(
                          context,
                        ).add(
                          HomeGetGetAartiChalisaGodWise(
                            data.god!.id,
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
                              data.lyricBannerImage,
                              youtubeVideoLink:
                              data.youtubeLink,
                              htmlText: data.testLyrics,

                              godName: data.god!.godName,
                              type: data.type,
                              thumbnail: data.thumbnail.isNotEmpty ? data.thumbnail : data.mainBanner,
                              title: data.title,
                              audioAsset:
                              "${AppConstant.fileBaseUrl}${data.audioAsset}",
                              lyrics: data.lyrics,
                              god: data.god!,
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
                            data.lyricBannerImage,
                          },
                        );
                        // } else {
                        //   context.showCustomSnackbar(
                        //     "No Audio Available For This",
                        //   );
                        // }
                      },

                      child: AartiGridItemWishList(
                        imagePath: data.thumbnail,
                        title: data.title,
                        subtitle: context.l10n.singerMmaTeam,
                        isAddedInWishList: data.isAddedInWishlist,
                        isCurrentPlaying: false,
                        onFavTap: () {
                          BlocProvider.of<WishlistBloc>(context).add(
                            ToggleWishlistAartiChalisaListNew(
                              itemModel: "aartichalisadata",
                              itemId: data.id,
                            ),
                          );
                        },
                        onMediaPlay: () {
                          BlocProvider.of<MobileHomeBloc>(
                            context,
                          ).add(
                            HomeGetGetAartiChalisaGodWise(
                              data.god!.id,
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
                                data.lyricBannerImage,
                                youtubeVideoLink:
                                data.youtubeLink,
                                htmlText: data.testLyrics,

                                godName: data.god!.godName,
                                type: data.type,
                                thumbnail: data.thumbnail.isNotEmpty ? data.thumbnail : data.mainBanner,
                                title: data.title,
                                audioAsset:
                                "${AppConstant.fileBaseUrl}${data.audioAsset}",
                                lyrics: data.lyrics,
                                god: data.god!,
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
                              data.lyricBannerImage,
                            },
                          );
                          // } else {
                          //   context.showCustomSnackbar(
                          //     "No Audio Available For This",
                          //   );
                          // }
                        },


                        onBookmarkTap: () {
                          // print("Thumbnail: ${data.thumbnail}");
                          // print("Title: ${data.god.godName} ki ${data.type}");
                          // print("Audio Asset: ${data.lyrics.length}");
                          // print("LyricsKey: ${data.audioAsset}");
                          //
                          // BlocProvider.of<AartiPlayerBloc>(
                          //   context,
                          // ).add(OnlyShowLyrics(false));
                          //
                          // BlocProvider.of<AartiPlayerBloc>(context).add(
                          //   LoadTrack(
                          //     Track(
                          //       godName: data.god.godName,
                          //       type: data.type,
                          //       thumbnail: (data.thumbnail != null && data.thumbnail.toString().isNotEmpty) ? data.thumbnail : data.mainBanner,
                          //       title: data.title,
                          //       audioAsset:
                          //       AppConstant.fileBaseUrl + data.audioAsset,
                          //       lyrics: data.lyrics,
                          //       god: data.god,
                          //     ),
                          //   ),
                          // );
                          //
                          // Navigator.pushNamed(
                          //   context,
                          //   AppRoutes.AARTI_CHALISA_MANTRA_LYRICS_PAGE,
                          // );
                        },

                        onSocialTap:  () {

                          BlocProvider.of<MobileHomeBloc>(
                            context,
                          ).add(
                            HomeGetGetAartiChalisaGodWise(
                              data.god!.id,
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
                                data.lyricBannerImage,
                                youtubeVideoLink:
                                data.youtubeLink,
                                htmlText: data.testLyrics,

                                godName: data.god!.godName,
                                type: data.type,
                                thumbnail: data.thumbnail.isNotEmpty ? data.thumbnail : data.mainBanner,
                                title: data.title,
                                audioAsset:
                                "${AppConstant.fileBaseUrl}${data.audioAsset}",
                                lyrics: data.lyrics,
                                god: data.god!,
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
                            //       thumbnail: (data.thumbnail != null && data.thumbnail.toString().isNotEmpty) ? data.thumbnail : data.mainBanner,
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
                                 "html_text":
                                 data.testLyrics ?? "",
                                 "testLyrics_hi":
                                 data.testLyrics ?? "",
                                 "testLyrics_en":
                                 data.testLyrics ?? "",
                                 "youtubeVideoLink":
                                 data.youtubeLink ?? "",
                                 "ismpavilable":
                                 data.audioAsset.isNotEmpty,
                                 "banner_image": data.mainBanner,
                                 "lyricsImage":
                                 data.lyricBannerImage,
                               },
                             );
                          } else
                          {
                            context.showCustomSnackbar(
                              "No Lyrics Available For This",
                            );
                          }
                          // existing code 그대로
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildWishlistItem(WishlistItem entry, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print("Thumbnail: ${data.god.thumbnail}");
        // print("Title: ${data.god.godName} ki ${data.type}");
        // print("Audio Asset: ${data.lyricsKey}");
        // print("LyricsKey: ${data.audioAsset}");
        //
        // BlocProvider.of<AartiPlayerBloc>(
        //   context,
        // ).add(OnlyShowLyrics(false));
        //
        // BlocProvider.of<AartiPlayerBloc>(context).add(
        //   LoadTrack(
        //     Track(
        //       godName: data.god.godName,
        //       type: data.type,
        //       thumbnail: data.god.thumbnail,
        //       title: "${data.god.godName} ki ${data.type}",
        //       audioAsset: "${data.audioAsset}",
        //       lyrics: LyricsRepository.getLyrics(
        //         data.lyricsKey,
        //       ),
        //     ),
        //   ),
        // );
        //
        // BlocProvider.of<AartiPlayerBloc>(context).add(
        //   LoadTrack(
        //     Track(
        //       godName: data.god.godName,
        //       thumbnail: data.god.thumbnail,
        //       title: "${data.god.godName} ki ${data.type}",
        //       audioAsset: "${data.audioAsset}",
        //       type: data.type,
        //       lyrics: LyricsRepository.getLyrics(
        //         data.lyricsKey,
        //       ),
        //     ),
        //   ),
        // );
        // BlocProvider.of<AartiPlayerBloc>(context).add(
        //   LoadTrack(
        //     Track(
        //       godName: data.god.godName,
        //       type: data.type,
        //       thumbnail: data.god.thumbnail,
        //       title: "${data.god.godName} ki ${data.type}",
        //       audioAsset: "${data.audioAsset}",
        //       lyrics: LyricsRepository.getLyrics(
        //         data.lyricsKey,
        //       ),
        //     ),
        //   ),
        // );
        //
        // BlocProvider.of<AartiPlayerBloc>(context).add(
        //   LoadTrack(
        //     Track(
        //       godName: data.god.godName,
        //       thumbnail: data.god.thumbnail,
        //       title: "${data.god.godName} ki ${data.type}",
        //       audioAsset: "${data.audioAsset}",
        //       type: data.type,
        //       lyrics: LyricsRepository.getLyrics(
        //         data.lyricsKey,
        //       ),
        //     ),
        //   ),
        // );

        Navigator.pushNamed(
          context,
          AppRoutes.AARTI_PLAYER_PAGE,
          // arguments: {
          //   "title": data.title,
          //   "html_text": data.testLyrics ?? "",
          //   "youtubeVideoLink":
          //   data.youtubeLink ?? "",
          //   "banner_image": data.mainBanner,
          //   "lyricsImage": data.lyric_banner_image,
          // },
        );
      },

      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: FavoriteItemCard(
          imagePath: entry.god!.thumbnail,
          title: entry.god!.godName,
          subtitle: "${entry.god!.godName} ${entry.type}",
          plays: "1.2M",
          duration: "3:45",
        ),
      ),
    );
  }

  Widget _headerCard(BuildContext context, int count) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffdd3434), Color(0xffD6388F)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$count",
                style: AppTextStyle.bold(width * 0.054, color: Colors.white),
              ),
              const SizedBox(height: 4),
              Text(
                context.l10n.favoriteItems,
                style: AppTextStyle.bold(width * 0.038, color: Colors.white54),
              ),
              const SizedBox(height: 6),
              Text(
                context.l10n.favoriteItemsDesc,
                style: AppTextStyle.bold(width * 0.038, color: Colors.white54),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(18),
            decoration: const BoxDecoration(
              color: Colors.white24,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.favorite, color: Colors.white, size: 34),
          ),
        ],
      ),
    );
  }
}
