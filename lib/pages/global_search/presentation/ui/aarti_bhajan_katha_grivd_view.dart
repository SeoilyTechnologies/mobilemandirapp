import 'package:flutter/material.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import '../../../../common/component/app_text_style.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../god_detail/presentation/bloc/god_details_bloc.dart';
import '../../../god_detail/presentation/bloc/god_details_event.dart';
import '../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../lyrics/track_model.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../bloc/global_search_bloc.dart';
import '../bloc/global_search_state.dart';
import 'god_card.dart';

class AartiBhajanKathaGrivdView extends StatelessWidget {
  AartiBhajanKathaGrivdView({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return const AartiBhajanKathaGrivdViewSmall();
    } else if (context.isMediumScreen) {
      return const AartiBhajanKathaGrivdViewMedium();
    } else {
      return const AartiBhajanKathaGrivdViewMedium();
    }
  }
}

class AartiBhajanKathaGrivdViewSmall extends StatelessWidget {
  const AartiBhajanKathaGrivdViewSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalSearchBloc, GlobalSearchState>(
      listener: (context, state) {},
      builder: (context, state) {
        final items = state.globalSearchResponse.data.aartichalisa;
        if (items.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                context.l10n.aartiBhajanKatha,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.048,
                  color: AppColor.newsecondaruy,
                ),
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 3, bottom: 12),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                final data = items[index].aartiData;
                return AartiCard(
                  image: data!.thumbnail!,
                  title: data.title!,
                  onTap: () {
                    BlocProvider.of<MobileHomeBloc>(
                      context,
                    ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "all"));

                    BlocProvider.of<AartiPlayerBloc>(
                      context,
                    ).add(OnlyShowLyrics(false));

                    BlocProvider.of<AartiPlayerBloc>(context).add(
                      LoadTrack(
                        Track(
                          isAddedInWishlist: data.isAddedInWishlist,
                          hiHtmLText: data.testLyrics_hi,
                          enHtmlText: data.testLyrics_en,
                          slugUrl: data.slug ?? "",
                          aartiChaliaid: data.id,
                          isMpfileAvilable: data.audioAsset.isNotEmpty,
                          bannerImage: data.mainBanner,
                          lyircsImage: data.lyric_banner_image,
                          youtubeVideoLink: data.youtubeLink,
                          htmlText: data.testLyrics,
                          godName: data.god.godName,
                          type: data.type,
                          thumbnail: (data.thumbnail != null && data.thumbnail.toString().isNotEmpty) ? data.thumbnail : data.mainBanner,
                          title: data.title,
                          audioAsset: "${AppConstant.fileBaseUrl}${data.audioAsset}",
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
                        "youtubeVideoLink": data.youtubeLink ?? "",
                        "banner_image": data.mainBanner,
                        "lyricsImage": data.lyric_banner_image,
                      },
                    );
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class AartiBhajanKathaGrivdViewMedium extends StatelessWidget {
  const AartiBhajanKathaGrivdViewMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalSearchBloc, GlobalSearchState>(
      listener: (context, state) {},
      builder: (context, state) {
        final items = state.globalSearchResponse.data.aartichalisa;
        if (items.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                context.l10n.aartiBhajanKatha,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.048,
                  color: AppColor.newsecondaruy,
                ),
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.only(left: 16,right: 16,top: 3,bottom: 12),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.globalSearchResponse.data.aartichalisa.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final data=state.globalSearchResponse.data.aartichalisa[index].aartiData;
                return AartiCard(

                  image: data!.thumbnail!,
                  title: data!.title!,

                  onTap: () {
                    BlocProvider.of<MobileHomeBloc>(
                      context,
                    ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "all"));

                    BlocProvider.of<AartiPlayerBloc>(
                      context,
                    ).add(OnlyShowLyrics(false));

                    BlocProvider.of<AartiPlayerBloc>(context).add(
                      LoadTrack(
                        Track(
                          isAddedInWishlist: data.isAddedInWishlist,
                          hiHtmLText: data.testLyrics_hi,
                          enHtmlText: data.testLyrics_en,
                          slugUrl: data.slug ?? "",
                          aartiChaliaid: data.id,
                          isMpfileAvilable: data.audioAsset.isNotEmpty,
                          bannerImage: data.mainBanner,
                          lyircsImage: data.lyric_banner_image,
                          youtubeVideoLink: data.youtubeLink,
                          htmlText: data.testLyrics,
                          godName: data.god.godName,
                          type: data.type,
                          thumbnail: (data.thumbnail != null && data.thumbnail.toString().isNotEmpty) ? data.thumbnail : data.mainBanner,
                          title: data.title,
                          audioAsset: "${AppConstant.fileBaseUrl}${data.audioAsset}",
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
                        "youtubeVideoLink": data.youtubeLink ?? "",
                        "banner_image": data.mainBanner,
                        "lyricsImage": data.lyric_banner_image,
                      },
                    );
                  },


                );
              },
            )
          ],
        );
      },
    );
  }
}
