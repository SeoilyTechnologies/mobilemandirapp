import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/values_exports.dart';
import 'package:mandirapp/pages/mobile_mandir_home/data/entity/bannerEntity/banner_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../common/network/app_constant.dart';
import '../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../lyrics/track_model.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_event.dart';
import 'aarti_card.dart';

class AartiCarouselSlider extends StatelessWidget {
  final List<BannerItem> items;
  final double height;
  final bool autoPlay;
  final ValueChanged<int> onPageChanged;

  const AartiCarouselSlider({
    super.key,
    required this.items,
    required this.onPageChanged,
    this.height = 160,
    this.autoPlay = true,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return AartiCarouselSliderSmall(
        items: items,
        height: height,
        autoPlay: autoPlay,
        onPageChanged: onPageChanged,
      );
    }  else if (context.isSmallScreen) {
      return AartiCarouselSliderSmall(
        items: items,
        height: height,
        autoPlay: autoPlay,
        onPageChanged: onPageChanged,
      );
    } else {
      return AartiCarouselSliderLarge(
        items: items,
        height: height,
        autoPlay: autoPlay,
        onPageChanged: onPageChanged,
      );
    }
  }
}


class AartiCarouselSliderSmall extends StatelessWidget {
  final List<BannerItem> items;
  final double height;
  final bool autoPlay;
  final ValueChanged<int> onPageChanged;

  const AartiCarouselSliderSmall({
    super.key,
    required this.items,
    required this.onPageChanged,
    this.height = 160,
    this.autoPlay = true,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        final item = items[index];
        //print("CHECKING IMAGE URL IN TOP BANNER----${item.bannerImage}");
        return GestureDetector(
          onTap: () {
            if (item.actionType == "panchang") {
             // context.showCustomSnackbar("Coming Soon");
              Navigator.pushNamed(context, AppRoutes.PENCHANG);
            }else
            {
              var data=item.aarti;
              if (data == null) return;
              //if (data.audioAsset.isNotEmpty) {

                BlocProvider.of<AartiPlayerBloc>(
                  context,
                ).add(OnlyShowLyrics(false));

                BlocProvider.of<AartiPlayerBloc>(
                  context,
                ).add(
                  LoadTrack(
                    Track(
                      hiHtmLText: data.testLyrics_hi,
                      enHtmlText: data.testLyrics_en,
                      slugUrl: data.slug ?? "",
                      aartiChaliaid: data.id,
                      isMpfileAvilable: data.audioAsset.isNotEmpty?true:false,
                      bannerImage: data.mainBanner,
                      lyircsImage: data.lyric_banner_image,
                      youtubeVideoLink: data.youtubeLink,
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
              BlocProvider.of<MobileHomeBloc>(
                context,
              ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "All"));
                Navigator.pushNamed(
                  context,
                  AppRoutes.AARTI_PLAYER_PAGE,
                  arguments: {
                    "title": data.title,
                    "html_text": data.testLyrics ?? "",
                    "youtubeVideoLink":
                    data.youtubeLink ?? "",
                    "banner_image": data.mainBanner,
                    "lyricsImage": data.lyric_banner_image,
                  },
                );
              // } else {
              //   context.showCustomSnackbar(
              //     "No Audio Available For This",
              //   );
              // }
            }
          },
          child: AartiCard(
            title: item.title,
            subtitle: "",
            image: item.bannerImage,
          ),
        );
      },
      options: CarouselOptions(
        height: height,
        autoPlay: autoPlay,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        padEnds: false,
        pageSnapping: true,
        enableInfiniteScroll: true,

        // 👇 IMPORTANT
        onPageChanged: (index, reason) {
          onPageChanged(index);
        },
      ),
    );
  }
}



class AartiCarouselSliderMedium extends StatelessWidget {
  final List<BannerItem> items;
  final double height;
  final bool autoPlay;
  final ValueChanged<int> onPageChanged;

  const AartiCarouselSliderMedium({
    super.key,
    required this.items,
    required this.onPageChanged,
    this.height = 180,
    this.autoPlay = true,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        final item = items[index];
        //print("CHECKING IMAGE URL IN TOP BANNER----${item.bannerImage}");
        return GestureDetector(
          onTap: () {
            if (item.actionType == "panchang") {
              // context.showCustomSnackbar("Coming Soon");
              Navigator.pushNamed(context, AppRoutes.PENCHANG);
            }else
            {
              var data=item.aarti;
              if (data == null) return;
              //if (data.audioAsset.isNotEmpty) {

              BlocProvider.of<AartiPlayerBloc>(
                context,
              ).add(OnlyShowLyrics(false));

              BlocProvider.of<AartiPlayerBloc>(
                context,
              ).add(
                LoadTrack(
                  Track(
                    hiHtmLText: data.testLyrics_hi,
                    enHtmlText: data.testLyrics_en,
                    slugUrl: data.slug ?? "",
                    aartiChaliaid: data.id,
                    isMpfileAvilable: data.audioAsset.isNotEmpty?true:false,
                    bannerImage: data.mainBanner,
                    lyircsImage: data.lyric_banner_image,
                    youtubeVideoLink: data.youtubeLink,
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
              BlocProvider.of<MobileHomeBloc>(
                context,
              ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "All"));
              Navigator.pushNamed(
                context,
                AppRoutes.AARTI_PLAYER_PAGE,
                arguments: {
                  "title": data.title,
                  "html_text": data.testLyrics ?? "",
                  "youtubeVideoLink":
                  data.youtubeLink ?? "",
                  "banner_image": data.mainBanner,
                  "lyricsImage": data.lyric_banner_image,
                },
              );
              // } else {
              //   context.showCustomSnackbar(
              //     "No Audio Available For This",
              //   );
              // }
            }
          },
          child: AartiCard(
            title: item.title,
            subtitle: "",
            image: item.bannerImage,
          ),
        );
      },
      options: CarouselOptions(
        height: 220,
        autoPlay: autoPlay,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        padEnds: false,
        pageSnapping: true,
        enableInfiniteScroll: true,

        // 👇 IMPORTANT
        onPageChanged: (index, reason) {
          onPageChanged(index);
        },
      ),
    );
  }
}


class AartiCarouselSliderLarge extends StatelessWidget {
  final List<BannerItem> items;
  final double height;
  final bool autoPlay;
  final ValueChanged<int> onPageChanged;

  const AartiCarouselSliderLarge({
    super.key,
    required this.items,
    required this.onPageChanged,
    this.height = 180,
    this.autoPlay = true,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        final item = items[index];
        //print("CHECKING IMAGE URL IN TOP BANNER----${item.bannerImage}");
        return GestureDetector(
          onTap: () {
            if (item.actionType == "panchang") {
              // context.showCustomSnackbar("Coming Soon");
              Navigator.pushNamed(context, AppRoutes.PENCHANG);
            }else
            {
              var data=item.aarti;
              if (data == null) return;
              //if (data.audioAsset.isNotEmpty) {

              BlocProvider.of<AartiPlayerBloc>(
                context,
              ).add(OnlyShowLyrics(false));

              BlocProvider.of<AartiPlayerBloc>(
                context,
              ).add(
                LoadTrack(
                  Track(
                    hiHtmLText: data.testLyrics_hi,
                    enHtmlText: data.testLyrics_en,
                    slugUrl: data.slug ?? "",
                    aartiChaliaid: data.id,
                    isMpfileAvilable: data.audioAsset.isNotEmpty?true:false,
                    bannerImage: data.mainBanner,
                    lyircsImage: data.lyric_banner_image,
                    youtubeVideoLink: data.youtubeLink,
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
              BlocProvider.of<MobileHomeBloc>(
                context,
              ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "All"));
              Navigator.pushNamed(
                context,
                AppRoutes.AARTI_PLAYER_PAGE,
                arguments: {
                  "title": data.title,
                  "html_text": data.testLyrics ?? "",
                  "youtubeVideoLink":
                  data.youtubeLink ?? "",
                  "banner_image": data.mainBanner,
                  "lyricsImage": data.lyric_banner_image,
                },
              );
              // } else {
              //   context.showCustomSnackbar(
              //     "No Audio Available For This",
              //   );
              // }
            }
          },
          child: AartiCard(
            title: item.title,
            subtitle: "",
            image: item.bannerImage,
          ),
        );
      },
      options: CarouselOptions(
        height: context.screenHeight*0.3,
        autoPlay: autoPlay,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        padEnds: false,
        pageSnapping: true,
        enableInfiniteScroll: true,

        // 👇 IMPORTANT
        onPageChanged: (index, reason) {
          onPageChanged(index);
        },
      ),
    );
  }
}


//////------landscape large

class AartiCarouselSliderLargeLandScape extends StatelessWidget {
  final List<BannerItem> items;
  final double height;
  final bool autoPlay;
  final ValueChanged<int> onPageChanged;

  const AartiCarouselSliderLargeLandScape({
    super.key,
    required this.items,
    required this.onPageChanged,
    this.height = 160,
    this.autoPlay = true,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        final item = items[index];
        //print("CHECKING IMAGE URL IN TOP BANNER----${item.bannerImage}");
        return GestureDetector(
          onTap: () {
            if (item.actionType == "panchang") {
              // context.showCustomSnackbar("Coming Soon");
              Navigator.pushNamed(context, AppRoutes.PENCHANG);
            }else
            {
              var data=item.aarti;
              if (data!.audioAsset.isNotEmpty) {

                BlocProvider.of<AartiPlayerBloc>(
                  context,
                ).add(OnlyShowLyrics(false));

                BlocProvider.of<AartiPlayerBloc>(
                  context,
                ).add(
                  LoadTrack(
                    Track(
                      aartiChaliaid: data.id,
                      isMpfileAvilable: data.audioAsset.isNotEmpty?true:false,
                      bannerImage: data.mainBanner,
                      lyircsImage: data.lyric_banner_image,
                      youtubeVideoLink: data.youtubeLink,
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
                    "lyricsImage": data.lyric_banner_image,
                  },
                );
              } else {
                context.showCustomSnackbar(
                  "No Audio Available For This",
                );
              }
            }
          },
          child: AartiCard(
            title: item.title,
            subtitle: "",
            image: item.bannerImage,
          ),
        );
      },
      options: CarouselOptions(
        height: height,
        autoPlay: autoPlay,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        padEnds: false,
        pageSnapping: true,
        enableInfiniteScroll: true,

        // 👇 IMPORTANT
        onPageChanged: (index, reason) {
          onPageChanged(index);
        },
      ),
    );
  }
}

class AartiBottomCarouselSlider extends StatelessWidget {
  final List<BannerItem> items;
  final double height;
  final bool autoPlay;
  final ValueChanged<int> onPageChanged;

  const AartiBottomCarouselSlider({
    super.key,
    required this.items,
    this.height = 160,
    this.autoPlay = true,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const SizedBox.shrink();
    }

    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        final item = items[index];

        return GestureDetector(
          onTap: ()        {
            var data=item.aarti;
            if (data == null) return;
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
                  isMpfileAvilable: data.audioAsset.isNotEmpty?true:false,
                  bannerImage: data.mainBanner,
                  lyircsImage: data.lyric_banner_image,
                  youtubeVideoLink: data.youtubeLink,
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
            BlocProvider.of<MobileHomeBloc>(
              context,
            ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "All"));
            Navigator.pushNamed(
              context,
              AppRoutes.AARTI_PLAYER_PAGE,
              arguments: {
                "title": data.title,
                "html_text": data.testLyrics ?? "",
                "youtubeVideoLink":
                data.youtubeLink ?? "",
                "banner_image": data.mainBanner,
                "lyricsImage": data.lyric_banner_image,
              },
            );
            // } else {
            //   context.showCustomSnackbar(
            //     "No Audio Available For This",
            //   );
            // }
          },
          child: BottomSliderAartiCard(
            title: item.title,
            subtitle: "",
            image: item.bannerImage.trim(),
          ),
        );
      },
      options: CarouselOptions(
        height: height,
        viewportFraction: 1,
        padEnds: false,
        enlargeCenterPage: false,
        pageSnapping: true,
        enableInfiniteScroll: true,
        onPageChanged: (index, reason) {
          onPageChanged(index);
        },
      ),
    );
  }
}
class NaamJaapCarouselSlider extends StatelessWidget {
  final List<BannerItem> items;
  final double height;
  final bool autoPlay;

  const NaamJaapCarouselSlider({
    super.key,
    required this.items,
    this.height = 160,
    this.autoPlay = true,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        final item = items[index];
        return NaamJappCard(
          title: item!.title,
          subtitle: "${item!.buttonText}",
          image: item.bannerImage,
        );
      },
      options: CarouselOptions(
        height: height,
        autoPlay: false,
        viewportFraction: 1.0,
        // 🔥 no side preview
        enlargeCenterPage: false,
        // 🔥 disable zoom
        padEnds: false,
        // 🔥 remove extra padding
        pageSnapping: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(seconds: 2),
        autoPlayCurve: Curves.easeInOut,
        enableInfiniteScroll: true,
      ),
    );
  }
}
class NaamJaapCarouselSliderMedium extends StatelessWidget {
  final List<BannerItem> items;
  final double height;
  final bool autoPlay;

  const NaamJaapCarouselSliderMedium({
    super.key,
    required this.items,
    this.height = 200,
    this.autoPlay = true,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        final item = items[index];
        return NaamJappCardMedium(
          title: item!.title,
          subtitle: "${item!.buttonText}",
          image: item.bannerImage,
        );
      },
      options: CarouselOptions(
        height: height,
        autoPlay: false,
        viewportFraction: 1.0,
        // 🔥 no side preview
        enlargeCenterPage: false,
        // 🔥 disable zoom
        padEnds: false,
        // 🔥 remove extra padding
        pageSnapping: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(seconds: 2),
        autoPlayCurve: Curves.easeInOut,
        enableInfiniteScroll: true,
      ),
    );
  }
}


class EventCarouselSlider extends StatelessWidget {
  final List<BannerItem> items;
  final double height;
  final bool autoPlay;

  const EventCarouselSlider({
    super.key,
    required this.items,
    this.height = 120,
    this.autoPlay = true,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        final item = items[index];
        return GestureDetector(
          onTap: () {
            _launchUrl(Uri.parse("https://www.youtube.com/@MobileMandirApp"));
           // Navigator.pushNamed(context, AppRoutes.EVENT_DETAIL);
          },
          child: EventSliderCard(
            title: item!.title,
            subtitle: "${item!.buttonText}",
            image: item.bannerImage,
          ),
        );
      },
      options: CarouselOptions(
        height: height,
        autoPlay: false,
        viewportFraction: 1.0,
        // 🔥 no side preview
        enlargeCenterPage: false,
        // 🔥 disable zoom
        padEnds: false,
        // 🔥 remove extra padding
        pageSnapping: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(seconds: 2),
        autoPlayCurve: Curves.easeInOut,
        enableInfiniteScroll: true,
      ),
    );
  }

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
