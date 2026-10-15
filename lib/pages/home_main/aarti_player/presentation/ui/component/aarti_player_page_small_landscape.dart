import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/routes/routes.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../../common/utils/utils.dart';
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
import '../../../../../mobile_mandir_home/presentation/ui/updated_component/todayaarti/aarti_tile.dart';
import '../../../../lyrics_timex.dart';
import '../component/aarti_music_card.dart';

class AartiPlayerPageSmallLandscape extends StatelessWidget {
  AartiPlayerPageSmallLandscape({super.key});

  int _currentIndex(List<LyricsModel> lyrics, Duration position) {
    for (int i = 0; i < lyrics.length; i++) {
      if (position >= lyrics[i].startDuration &&
          position < lyrics[i].endDuration) {
        return i;
      }
    }
    return -1; // start / seek case
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
    ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    String? title = arguments?['title'];
    String? htmltext = arguments?['html_text'];
    String? youtubeVideoLink = arguments?['youtubeVideoLink'];
    String? banner_image = arguments?['banner_image'];
    String? lyricsImage = arguments?['lyricsImage'];
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
      },
      builder: (context, state) {
        final track = state.track;

        if (track == null) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
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

                      state.track!.lyrics.isNotEmpty
                          ? Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 25, bottom: 18),
                          child: GestureDetector(
                            onTap: () {
                              if(track.htmlText.toString().trim().isNotEmpty){
                                Navigator.pushNamed(
                                  context,
                                  AppRoutes.AARTI_HTML_LYRICS_PAGE,
                                  arguments: {
                                    "title": title,
                                    "html_text": track.htmlText ?? "",
                                    "youtubeVideoLink":
                                    youtubeVideoLink ?? "",
                                    "banner_image": banner_image,
                                    "lyricsImage": lyricsImage,
                                  },
                                );
                              }else{
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
                                  style: AppTextStyle.gilroyBlack(
                                    context.screenWidth * 0.023,
                                    color: AppColor.newsecondaruy,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                          : SizedBox(),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  track.title,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.048,
                    color: AppColor.fullBlack,
                  ),
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
                if (!state.isOnlyLyrics) const Center(child: AartiMusicCard()),

                const SizedBox(height: 16),


                SizedBox(height: 14),
                aboutGaneshaView(context, track.god),
                SizedBox(height: 8),
                templesView(context, track.god),
                SizedBox(height: 12),
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
                                  slugUrl: data.slug,
                                  hiHtmLText: data.testLyrics_hi,
                                  enHtmlText: data.testLyrics_en,
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
                            //     "youtubeVideoLink":
                            //     data.youtubeLink ?? "",
                            //     "banner_image": data.mainBanner,
                            //     "lyricsImage":
                            //     data.lyric_banner_image,
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
                            subtitle: "MMA Team",
                            tag: data.type,
                            onPlay: () {},

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
                                    slugUrl: data.slug,
                                    hiHtmLText: data.testLyrics_hi,
                                    enHtmlText: data.testLyrics_en,
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

                              // Navigator.pushNamed(
                              //   context,
                              //   AppRoutes.AARTI_PLAYER_PAGE,
                              //   arguments: {
                              //     "title": data.title,
                              //     "html_text": data.testLyrics ?? "",
                              //
                              //     "youtubeVideoLink":
                              //     data.youtubeLink ?? "",
                              //     "banner_image": data.mainBanner,
                              //     "lyricsImage":
                              //     data.lyric_banner_image,
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
                                  itemModel: "aartichalisadata",
                                  itemId: data.id,
                                ),
                              );
                            },

                            onBookmarkTap:
                                () {

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
                                    slugUrl: data.slug,
                                    hiHtmLText: data.testLyrics_hi,
                                    enHtmlText: data.testLyrics_en,
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
                              if (data.testLyrics
                                  .toString()
                                  .trim()
                                  .isNotEmpty) {


                                Navigator.pushNamed(
                                  context,
                                  AppRoutes.AARTI_HTML_LYRICS_PAGE,
                                  arguments: {
                                    "title": data.title,
                                    "html_text":
                                    data.testLyrics ?? "",
                                    "youtubeVideoLink":
                                    data.youtubeLink ?? "",
                                    "ismpavilable":
                                    data.audioAsset.isNotEmpty,
                                    "banner_image": data.mainBanner,
                                    "lyricsImage":
                                    data.lyric_banner_image,
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
              "$title:",
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
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: goddata.mainTemples.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 0.75,
                ),
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          "${goddata.mainTemples[index].image.isNotEmpty ? AppConstant.fileBaseUrl1 + goddata.mainTemples[index].image : AppConstant.fileBaseUrl + "uploads/No_Image_Available.jpg"}",
                          height: context.screenHeight * 0.13,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "${goddata.mainTemples[index].templeName}",
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.03,
                          color: AppColor.fullBlack,
                        ),
                      ),
                      Text(
                        "${goddata.mainTemples[index].location}",
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.023,
                          color: AppColor.newGreyy,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
