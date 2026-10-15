import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/routes/routes.dart';
import '../../../../../../common/component/skeleton_loader.dart';
import '../../../../../../common/values/snack_bar.dart';
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
import '../../../../lyrics_timex.dart';
import '../component/aarti_music_card.dart';

class NextThreeDayAartiWidget extends StatelessWidget {
  final String aartiChaliaid;

  const NextThreeDayAartiWidget(this.aartiChaliaid, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.appSantbackground,

      child: BlocConsumer<MobileHomeBloc, MobileHomeState>(
        listener: (context, state) {},
        buildWhen: (prev, current) =>
            prev.nextThreeDaymantraHomePageResponse !=
                current.nextThreeDaymantraHomePageResponse ||
            prev.isLoading != current.isLoading,
        builder: (context, state) {
          final list = state.nextThreeDaymantraHomePageResponse.data;
          final track = BlocProvider.of<AartiPlayerBloc>(context).state.track;

          final currentId = track!.aartiChaliaid.trim();

          final filteredList = currentId.isEmpty
              ? list
              : list.where((e) => e.id != currentId).toList();

          if (filteredList.isEmpty) {
            return const SizedBox();
          }

          return Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 12,
              bottom: 18,
              top: 18,
            ),
            child: Column(
              children: <Widget>[
                TitleWithSeeAllButton(
                  title: context.l10n.nextDays,
                  showActionButton: false,
                  actionText: "See All",
                  onActionTap: () {},
                ),
                SizedBox(height: 6),

                /// 🔥 GRID
                SizedBox(
                  height: 235,
                  child: RepaintBoundary(
                    child: state.isLoading && filteredList.isEmpty 
                        ? const SkeletonHorizontalGrid()
                        : GridView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 6,
                            crossAxisSpacing: 6,
                            childAspectRatio: 0.22,
                          ),
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        final data = filteredList[index];
  
                        return GestureDetector(
                          onTap: () => _handlePlay(context, data),
  
                          child: AartiTileRelatedGodData(
                            isAddedInWishlist: data.isAddedInWishlist,
                            showArrow: false,
                            audioAsset: data.audioAsset,
                            isAddedInWishList: data.isAddedInWishlist,
                            isCurrentPlaying: data.god.id == track?.godId,
                            itemid: data.id,
                            image: data.thumbnail,
                            title: data.title,
                            deity: data.god.godName,
                            time: "",
                            verses: "",
                            subtitle: "${data.date}",
                            tag: data.type,
  
                            onPlay: () {},
  
                            onMediaPlay: () => _handlePlay(context, data),
  
                            onFav: () {
                              BlocProvider.of<AartiChalisaLsitBloc>(context).add(
                                ToggleWishlistAartiChalisaList(
                                  itemModel: "aartichalisadata",
                                  itemId: data.id,
                                ),
                              );
                            },
  
                            onBookmarkTap: () =>
                                _handleLyricsNavigation(context, data),
  
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
    );
  }

  /// 🔥 Play Handler
  void _handlePlay(BuildContext context, dynamic data) {
    //if (data.audioAsset.isNotEmpty) {
    BlocProvider.of<AartiPlayerBloc>(context).add(OnlyShowLyrics(false));

    BlocProvider.of<AartiPlayerBloc>(context).add(
      LoadTrack(
        Track(
          slugUrl: data.slug,
          hiHtmLText: data.testLyrics_hi,
          enHtmlText: data.testLyrics_en,
          aartiChaliaid: data.id,
          isMpfileAvilable: data.audioAsset.isNotEmpty ? true : false,
          bannerImage: data.mainBanner,
          lyircsImage: data.lyric_banner_image,
          youtubeVideoLink: data.youtubeLink,
          godName: data.god.godName,
          htmlText: data.testLyrics,
          type: data.type,
          thumbnail: (data.thumbnail != null && data.thumbnail.toString().isNotEmpty) ? data.thumbnail : data.mainBanner,
          title: data.title,
          audioAsset: data.audioAsset.isNotEmpty
              ? "${AppConstant.fileBaseUrl}${data.audioAsset}"
              : "",
          lyrics: data.lyrics,
          god: data.god,
        ),
      ),
    );
    // } else {
    //   context.showCustomSnackbar("No Audio Available For This");
    // }

    BlocProvider.of<MobileHomeBloc>(
      context,
    ).add(HomeGetGetAartiChalisaGodWise("${data.god.id}", "all"));
  }

  /// 🔥 Lyrics Navigation
  void _handleLyricsNavigation(BuildContext context, dynamic data) {
    _handlePlay(context, data);

    // if (data.testLyrics.toString().trim().isNotEmpty) {
    Navigator.pushNamed(
      context,
      AppRoutes.AARTI_HTML_LYRICS_PAGE,
      arguments: {
        "title": data.title,
        "ismpavilable": data.audioAsset.isNotEmpty,
        "html_text": data.testLyrics ?? "",
        "testLyrics_hi": data.testLyrics_hi ?? "",
        "testLyrics_en": data.testLyrics_en ?? "",
        "youtubeVideoLink": data.youtubeLink ?? "",
        "banner_image": data.mainBanner,
        "lyricsImage": data.lyric_banner_image,
      },
    );
    // } else {
    //   context.showCustomSnackbar("No Lyrics Available For This");
    // }
  }


}

class NextThreeDayAartiWidgetMedium extends StatelessWidget {
  String aartiChaliaid;

  NextThreeDayAartiWidgetMedium(this.aartiChaliaid, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.appSantbackground,

      child: BlocConsumer<MobileHomeBloc, MobileHomeState>(
        listener: (context, state) {},

        builder: (context, state) {
          final list = state.nextThreeDaymantraHomePageResponse.data;
          final track = BlocProvider.of<AartiPlayerBloc>(context).state.track;

          final currentId = track!.aartiChaliaid.trim();

          final filteredList = currentId.isEmpty
              ? list
              : list.where((e) => e.id != currentId).toList();

          if (filteredList.isEmpty) {
            return const SizedBox();
          }


          return Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 12,
              bottom: 18,
              top: 18,
            ),
            child: Column(
              children: <Widget>[
                TitleWithSeeAllButton(
                  title: context.l10n.nextDays,
                  showActionButton: false,
                  actionText: "See All",
                  onActionTap: () {},
                ),
                SizedBox(height: 6),

                /// 🔥 GRID
                SizedBox(
                  height: 255,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 6,
                          childAspectRatio: 0.196,
                        ),
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final data = filteredList[index];

                      return GestureDetector(
                        onTap: () => _handlePlay(context, data),

                        child: AartiTileRelatedGodDataMedium(
                          isAddedInWishlist: data.isAddedInWishlist,
                          showArrow: false,
                          audioAsset: data.audioAsset,
                          isAddedInWishList: data.isAddedInWishlist,
                          isCurrentPlaying: data.god.id == track?.godId,
                          itemid: data.id,
                          image: data.thumbnail,
                          title: data.title,
                          deity: data.god.godName,
                          time: "",
                          verses: "",
                          subtitle: "${data.date}",
                          tag: data.type,


                          onPlay: () {},

                          onMediaPlay: () => _handlePlay(context, data),

                          onFav: () {
                            BlocProvider.of<AartiChalisaLsitBloc>(context).add(
                              ToggleWishlistAartiChalisaList(
                                itemModel: "aartichalisadata",
                                itemId: data.id,
                              ),
                            );
                          },

                          onBookmarkTap: () =>
                              _handleLyricsNavigation(context, data),

                          onArrow: () {},
                          onList: () {},
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  /// 🔥 Play Handler
  void _handlePlay(BuildContext context, dynamic data) {
    //if (data.audioAsset.isNotEmpty) {
    BlocProvider.of<AartiPlayerBloc>(context).add(OnlyShowLyrics(false));

    BlocProvider.of<AartiPlayerBloc>(context).add(
      LoadTrack(
        Track(
          slugUrl: data.slug,
          hiHtmLText: data.testLyrics_hi,
          enHtmlText: data.testLyrics_en,
          aartiChaliaid: data.id,
          isMpfileAvilable: data.audioAsset.isNotEmpty ? true : false,
          bannerImage: data.mainBanner,
          lyircsImage: data.lyric_banner_image,
          youtubeVideoLink: data.youtubeLink,
          godName: data.god.godName,
          htmlText: data.testLyrics,
          type: data.type,
          thumbnail: (data.thumbnail != null && data.thumbnail.toString().isNotEmpty) ? data.thumbnail : data.mainBanner,
          title: data.title,
          audioAsset: data.audioAsset.isNotEmpty
              ? "${AppConstant.fileBaseUrl}${data.audioAsset}"
              : "",
          lyrics: data.lyrics,
          god: data.god,
        ),
      ),
    );
    // } else {
    //   context.showCustomSnackbar("No Audio Available For This");
    // }

    BlocProvider.of<MobileHomeBloc>(
      context,
    ).add(HomeGetGetAartiChalisaGodWise("${data.god.id}", "all"));
  }

  /// 🔥 Lyrics Navigation
  void _handleLyricsNavigation(BuildContext context, dynamic data) {
    _handlePlay(context, data);

    // if (data.testLyrics.toString().trim().isNotEmpty) {
    Navigator.pushNamed(
      context,
      AppRoutes.AARTI_HTML_LYRICS_PAGE,
      arguments: {
        "title": data.title,
        "ismpavilable": data.audioAsset.isNotEmpty,
        "html_text": data.testLyrics ?? "",
        "testLyrics_hi": data.testLyrics_hi ?? "",
        "testLyrics_en": data.testLyrics_en ?? "",
        "youtubeVideoLink": data.youtubeLink ?? "",
        "banner_image": data.mainBanner,
        "lyricsImage": data.lyric_banner_image,
      },
    );
    // } else {
    //   context.showCustomSnackbar("No Lyrics Available For This");
    // }
  }
}
