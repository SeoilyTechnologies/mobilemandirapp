import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/routes/routes.dart';
import '../../../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../lyrics/lyricrepositery/lyrics_repositery.dart';
import '../../../lyrics/track_model.dart';
import '../../../mobile_mandir_home/data/entity/bannerEntity/banner_model.dart';
import '../../../mobile_mandir_home/data/entity/bannerEntity/vivekanad/vivekanand_quote_model.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';

class PromoBanner extends StatelessWidget {
  final String title;
  final String tagline;
  final String subtitle;
  final String buttonText;
  final Color bgColor;
  final String imagePath;
  final VoidCallback onPressed;

  const PromoBanner({
    super.key,
    required this.title,
    required this.tagline,
    required this.subtitle,
    required this.buttonText,
    required this.bgColor,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: context.screenHeight * 0.2,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
        padding: const EdgeInsets.all(0),

        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: NetworkImage(imagePath),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Optional Top Tag (use only if you want)
                    const SizedBox(height: 8),
                    Text(
                      title,
                      style: AppTextStyle.semiBold(context.screenWidth * 0.05),
                    ),
                    const SizedBox(height: 6),
                    Flexible(
                      child: Text(
                        subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.medium(
                          context.screenWidth * 0.034,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PromoBannerCarousel extends StatelessWidget {
  const PromoBannerCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      buildWhen: (p, c) =>
          p.bannerResponse != c.bannerResponse ||
          p.BannerIndex != c.BannerIndex,
      builder: (context, state) {
        final banners = state.bannerResponse.data;

        if (banners.isEmpty) {
          return const SizedBox.shrink();
        }

        return CarouselSlider.builder(
          itemCount: banners.length,
          itemBuilder: (context, index, realIndex) {
            final banner = banners[index];

            return PromoBanner(
              title: banner.title,
              subtitle: _getSubtitle(banner),
              tagline: '',
              buttonText: '',
              bgColor: Colors.transparent,
              imagePath: banner.bannerImage,
              onPressed: () => _handleBannerTap(context, banner),
            );
          },
          options: CarouselOptions(
            height: context.screenHeight * 0.22,
            viewportFraction: 1.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 7),
            autoPlayAnimationDuration: const Duration(milliseconds: 2),
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
              // context
              //     .read<MobileHomeBloc>()
              //     .add(MobileHomeEvent.updateBannerIndex(index));
            },
          ),
        );
      },
    );
  }

  String _getSubtitle(BannerItem banner) {
    final item = banner.parsedData;

    if (item is VivekanandQuoteModel) {
      return item.quotesEnglish;
    }

    if (item is AartiModel) {
      return item.title;
    }

    return '';
  }


  void _handleBannerTap(BuildContext context, BannerItem banner) {
    final item = banner.parsedData;

    /// 🔹 Aarti / Chalisa / Mantra banner
    if (item is AartiModel) {
      // BlocProvider.of<AartiPlayerBloc>(context)
      //     .add(OnlyShowLyrics(banner.customPayload['showLyrics'] ?? false));

      BlocProvider.of<AartiPlayerBloc>(context).add(
        LoadTrack(
          Track(
              aartiChaliaid: item.id,
              isMpfileAvilable: item.audioAsset.isNotEmpty?true:false,
              bannerImage: item.mainBanner,
              lyircsImage: item.lyric_banner_image,
              youtubeVideoLink: item.youtubeLink,
              htmlText: item.testLyrics,
            godName: item.god.godName,
            type: item.type,
            thumbnail: item.thumbnail,
            title: item.title,
            audioAsset: "${AppConstant.fileBaseUrl1}${item.audioAsset}",
            lyrics: item.lyrics, // 🔥 direct lyrics array
            god: item.god
          ),
        ),
      );

      Navigator.pushNamed(context, AppRoutes.AARTI_PLAYER_PAGE,
        arguments: {
          "title": item.title,
          "html_text": item.testLyrics ?? "",
          "youtubeVideoLink":
          item.youtubeLink ?? "",
          "banner_image": item.mainBanner,
          "lyricsImage": item.lyric_banner_image,
        },);
      return;
    }

    /// 🔹 Vivekanand quote banner
    // if (item is VivekanandQuoteModel) {
    //   Navigator.pushNamed(
    //     context,
    //     AppRoutes.VIVEKANAND_QUOTE_DETAIL,
    //     arguments: item,
    //   );
    //   return;
    // }

    /// 🔹 Custom / redirect banner
    // if (banner.redirectUrl.isNotEmpty) {
    //   Navigator.pushNamed(context, banner.redirectUrl);
    // }
  }

}
