import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/utils/share_helper.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../../common/local/SharedPrefs.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/service_locator/setivelocator.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../../common/values/snack_bar.dart';
import '../../../../../auth/signin/data/entity/login_response.dart';
import '../../../../../auth/signin/presentation/ui/component/login_require_dialog.dart';
import '../../../../../god_detail/presentation/bloc/god_details_bloc.dart';
import '../../../../../god_detail/presentation/bloc/god_details_event.dart';
import '../../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../../lyrics/track_model.dart';
import '../../../../../sewa_module/seva_status/bloc/seva_status_bloc.dart';
import '../../../../../sewa_module/seva_status/bloc/seva_status_event.dart';
import '../../../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_event.dart';
import '../../../../data/entity/home_foryou/home_for_your_api_response.dart';
import '../../../../data/global_search/gloable_search_api_response.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../updated_component/sant_card.dart';
import '../../updated_component/todayaarti/aarti_tile.dart';
import '../../updated_component/updated_categories/aarti_bhajan_tab.dart';
import '../mobile_home_god/home_god_item.dart';
import '../mobile_home_sant/mobile_home_sant_card.dart' hide SaintCardMedium;
import '../mobile_home_temple/home_temple_item.dart';
import 'mobile_home_seva_card.dart';

extension GlobalSearchItemMapper on GlobalSearchItem {
  HomeForYouItem toHomeForYouItem() {
    return HomeForYouItem(
      contentType: contentType,
      contentId: contentId,
      santData: santData,
      godData: godData,
      templeData: templeData,
      mantraData: aartiData,
    );
  }
}

typedef HomeForYouWishlistToggle =
    void Function({required String itemId, required String itemModel});

class HomeForYouItemBuilder {
  static Widget build(
    BuildContext context,
    HomeForYouItem item, {
    HomeForYouWishlistToggle? onToggleWishlist,
  }) {
    void toggleWishlist({required String itemId, required String itemModel}) {
      if (onToggleWishlist != null) {
        onToggleWishlist(itemId: itemId, itemModel: itemModel);
        return;
      }

      final model = itemModel.toLowerCase();
      final bloc = context.read<MobileHomeBloc>();

      switch (model) {
        case 'sant':
          bloc.add(
            MobileHomeEvent.santToggleWishlist(
              itemId: itemId,
              itemModel: itemModel,
            ),
          );
        case 'god':
          bloc.add(
            MobileHomeEvent.godtoggleWishlist(
              itemId: itemId,
              itemModel: itemModel,
            ),
          );
        case 'temple':
          bloc.add(
            MobileHomeEvent.templeToggleWishlist(
              itemId: itemId,
              itemModel: itemModel,
            ),
          );
        default:
          bloc.add(
            MobileHomeEvent.toggleWishlist(
              itemId: itemId,
              itemModel: itemModel,
            ),
          );
      }
    }

    switch (item.contentType.toLowerCase()) {
      case 'sant':
        final data = item.santData;
        if (data == null) return const SizedBox.shrink();
        final santId = data.id.isNotEmpty ? data.id : item.contentId;

        return
          GestureDetector(
              onTap: () {
                context.read<SantBloc>().add(
                  SantEvent.getSantDetailById(
                   data.id,
                  ),
                );
                Navigator.pushNamed(context, AppRoutes.SANTDETAIL);
              },
              child:
          Padding(padding: EdgeInsets.only(
          left: 16,right: 16,
            bottom: 3,top: 3

        ),
        child: SaintCard(
          onFavoriteTap: () {
            if (context.requireLogin()) return;

            BlocProvider.of<MobileHomeBloc>(
              context,
            ).add(SantWishlistHomeEvent(itemModel: "sant", itemId: data.id));
          },
          isFavorite: data.isAddedInWishlist,
          imagePath: data.image,
          name: data.name,
          subtitle: "",
        ),
        ));

      case 'god':
        final god = item.godData;
        if (god == null) return const SizedBox.shrink();

        return GestureDetector(
          onTap: () {
            BlocProvider.of<GodDetailsBloc>(
              context,
            ).add(GodDetailsEvent.getGodDetailById(id: god.id));
            Navigator.pushNamed(context, AppRoutes.GOD_DETAIL_PAGE);
          },
          child:Padding(padding: EdgeInsets.only(
    left: 0,right: 0,
    bottom: 4,top: 4

    ),
          child:  HomeGodItem(
            category: god.category,
            imagePath: god.thumbnail,
            templeName: god.godName,
            location: god.location,
            tags: const [],
            onCallTap: () {
              BlocProvider.of<GodDetailsBloc>(
                context,
              ).add(GodDetailsEvent.getGodDetailById(id: god.id));
              Navigator.pushNamed(
                context,
                AppRoutes.GOD_DETAIL_PAGE,
                arguments: {'scrollToNaamJaap': true},
              );
            },
            onDirectionTap: () {
              BlocProvider.of<GodDetailsBloc>(
                context,
              ).add(GodDetailsEvent.getGodDetailById(id: god.id));
              Navigator.pushNamed(
                context,
                AppRoutes.GOD_DETAIL_PAGE,
                arguments: {'scrollToAarti': true},
              );
            },
            onwishlistaddTap: () {
              toggleWishlist(itemId: god.id, itemModel: 'god');
            },
            isFavorite: god.isWishlist,
          ),)
        );

      case 'temple':
        final temple = item.templeData;
        if (temple == null) return const SizedBox.shrink();

        return GestureDetector(
          onTap: () {
            BlocProvider.of<TempleDetailNewBloc>(
              context,
            ).add(GetTempleDetailById(id: temple.id));
            Navigator.pushNamed(context, AppRoutes.TEMPLE_DETAIL_PAGE);
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: HomeTempleItem(
              onDirectionTap: () {
                Utils.openMapLocation(
                  latitude: temple.lat ?? 0.0,
                  longitude: temple.lng ?? 0.0,
                  placeName: temple.location!,
                );
              },
              onShareTap: () {
                ShareHelper.shareTemple(slug: temple.slug, name: temple.name);
              },
              onWishListAddTap: () {
                toggleWishlist(itemId: temple.id, itemModel: 'temple');
              },
              id: temple.id,
              latitude: temple.lat ?? 0.0,
              longitude: temple.lng ?? 0.0,
              imagePath: temple.thumbnailUrl,
              templeName: temple.name,
              location: temple.location,
              tags: getLocalizedTags(context, const ["Bhakti", "Naam Jaap", "Prem"]),
              isFavorite: temple.isWishlist,
            ),
          ),
        );

      case 'seva':
        final seva = item.sevaData;
        if (seva == null) return const SizedBox.shrink();
        return GestureDetector(
          onTap: () {
            BlocProvider.of<SevaStatusBloc>(
              context,
            ).add(GetStatus(id: seva.id));
            Navigator.pushNamed(context, AppRoutes.SEWA_STATUS_PAGE);
          },
          child: MobileHomeSevaCard(
            imagePath: seva.thumbnailUrl,
            sevaName: seva.sevaName,
            amount: MobileHomeSevaCard.formatSevaAmount(
              formattedFinalPayment: seva.formattedFinalPayment,
              formattedAmount: seva.formattedAmount,
              amount: seva.amount,
            ),
            date: MobileHomeSevaCard.formatSevaDate(item.addedAt),
            paymentStatus: seva.paymentStatus,
            status: seva.status,
            statusLable: seva.statusLabel,
          ),
        );

      default:
        final data = item.mantraData;
        if (data == null) {
          return const SizedBox.shrink();
        }

        return GestureDetector(
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
          child: AartiTile(
            itemid: data.id,
            showArrow: true,
            deity: data.god.godName,
            time: "",
            verses: "",
            image: "${data.thumbnail}",
            title: data.title,
            subtitle: "",
            tag: data.type,
            onPlay: () {},
            isAddedInWishlist: data.isAddedInWishlist,
            audioAsset: data.audioAsset,
            onArrow: () {},
            onFav: () {
              final prefs = getIt<SharedPrefs>();
              final LoginResponse? userData = prefs.getModel<LoginResponse>(
                AppConstant.userModel,
                (json) => LoginResponse.fromJson(json),
              );

              if (userData?.user.isGuest ?? true) {
                LoginRequiredDialog.show(context);
                return;
              }

              toggleWishlist(itemId: data.id, itemModel: data.type);
            },
            onList: () {},
            onMediaPlay: () {
              BlocProvider.of<MobileHomeBloc>(
                context,
              ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "all"));
              //if (data.audioAsset.isNotEmpty) {

              BlocProvider.of<AartiPlayerBloc>(
                context,
              ).add(OnlyShowLyrics(false));

              BlocProvider.of<AartiPlayerBloc>(context).add(
                LoadTrack(
                  Track(
                    hiHtmLText: data.testLyrics_hi,
                    enHtmlText: data.testLyrics_en,
                    slugUrl: data.slug,

                    aartiChaliaid: data.id,
                    isMpfileAvilable: data.audioAsset.isNotEmpty ? true : false,
                    bannerImage: data.mainBanner,
                    lyircsImage: data.lyric_banner_image,
                    youtubeVideoLink: data.youtubeLink,
                    htmlText: data.testLyrics,
                    isAddedInWishlist: data.isAddedInWishlist,
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
              // } else {
              //   context.showCustomSnackbar(
              //     "No Audio Available For This",
              //   );
              // }
            },

            onBookmarkTap: () {
              BlocProvider.of<MobileHomeBloc>(
                context,
              ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "all"));
              //if (data.audioAsset.isNotEmpty) {

              BlocProvider.of<AartiPlayerBloc>(
                context,
              ).add(OnlyShowLyrics(false));

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
                    htmlText: data.testLyrics,
                    isAddedInWishlist: data.isAddedInWishlist,
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
              if (data.testLyrics.toString().trim().isNotEmpty) {
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
                context.showCustomSnackbar("No Lyrics Available For This");
              }
              // existing code 그대로
            },
          ),
        );
    }
  }
}

class HomeForYouItemBuilderTab {
  static Widget build(
    BuildContext context,
    HomeForYouItem item, {
    HomeForYouWishlistToggle? onToggleWishlist,
  }) {
    void toggleWishlist({required String itemId, required String itemModel}) {
      if (onToggleWishlist != null) {
        onToggleWishlist(itemId: itemId, itemModel: itemModel);
        return;
      }

      final model = itemModel.toLowerCase();
      final bloc = context.read<MobileHomeBloc>();

      switch (model) {
        case 'sant':
          bloc.add(
            MobileHomeEvent.santToggleWishlist(
              itemId: itemId,
              itemModel: itemModel,
            ),
          );
        case 'god':
          bloc.add(
            MobileHomeEvent.godtoggleWishlist(
              itemId: itemId,
              itemModel: itemModel,
            ),
          );
        case 'temple':
          bloc.add(
            MobileHomeEvent.templeToggleWishlist(
              itemId: itemId,
              itemModel: itemModel,
            ),
          );
        default:
          bloc.add(
            MobileHomeEvent.toggleWishlist(
              itemId: itemId,
              itemModel: itemModel,
            ),
          );
      }
    }

    switch (item.contentType.toLowerCase()) {
      case 'sant':
        final data = item.santData;
        if (data == null) return const SizedBox.shrink();
        final santId = data.id.isNotEmpty ? data.id : item.contentId;

        return
          GestureDetector(
              onTap: () {
                context.read<SantBloc>().add(
                  SantEvent.getSantDetailById(
                    data.id,
                  ),
                );
                Navigator.pushNamed(context, AppRoutes.SANTDETAIL);
              },
              child:
              Padding(padding: EdgeInsets.only(
                  left: 16,right: 16,
                  bottom: 3,top: 3

              ),
                child: SaintCardMedium(
                  onFavoriteTap: () {
                    if (context.requireLogin()) return;

                    BlocProvider.of<MobileHomeBloc>(
                      context,
                    ).add(SantWishlistHomeEvent(itemModel: "sant", itemId: data.id));
                  },
                  isFavorite: data.isAddedInWishlist,
                  imagePath: data.image,
                  name: data.name,
                  subtitle: "",
                ),
              ));


      case 'god':
        final god = item.godData;
        if (god == null) return const SizedBox.shrink();

        return GestureDetector(
          onTap: () {
            BlocProvider.of<GodDetailsBloc>(
              context,
            ).add(GodDetailsEvent.getGodDetailById(id: god.id));
            Navigator.pushNamed(context, AppRoutes.GOD_DETAIL_PAGE);
          },
          child: Padding(padding: EdgeInsets.only(bottom: 4),child: HomeGodItemMedium(
            category: god.category,
            imagePath: god.thumbnail,
            templeName: god.godName,
            location: god.location,
            tags: const [],
            onCallTap: () {
              BlocProvider.of<GodDetailsBloc>(
                context,
              ).add(GodDetailsEvent.getGodDetailById(id: god.id));
              Navigator.pushNamed(
                context,
                AppRoutes.GOD_DETAIL_PAGE,
                arguments: {'scrollToNaamJaap': true},
              );
            },
            onDirectionTap: () {
              BlocProvider.of<GodDetailsBloc>(
                context,
              ).add(GodDetailsEvent.getGodDetailById(id: god.id));
              Navigator.pushNamed(
                context,
                AppRoutes.GOD_DETAIL_PAGE,
                arguments: {'scrollToAarti': true},
              );
            },
            onwishlistaddTap: () {
              toggleWishlist(itemId: god.id, itemModel: 'god');
            },
            isFavorite: god.isWishlist,
          ),),
        );

      case 'temple':
        final temple = item.templeData;
        if (temple == null) return const SizedBox.shrink();

        return GestureDetector(
          onTap: () {
            BlocProvider.of<TempleDetailNewBloc>(
              context,
            ).add(GetTempleDetailById(id: temple.id));
            Navigator.pushNamed(context, AppRoutes.TEMPLE_DETAIL_PAGE);
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: HomeTempleItemMedium(
              onDirectionTap: () {
                Utils.openMapLocation(
                  latitude: temple.lat ?? 0.0,
                  longitude: temple.lng ?? 0.0,
                  placeName: temple.location!,
                );
              },
              onShareTap: () {
                ShareHelper.shareTemple(slug: temple.slug, name: temple.name);
              },
              onWishListAddTap: () {
                toggleWishlist(itemId: temple.id, itemModel: 'temple');
              },
              id: temple.id,
              latitude: temple.lat ?? 0.0,
              longitude: temple.lng ?? 0.0,
              imagePath: temple.thumbnailUrl,
              templeName: temple.name,
              location: temple.location,
              tags: getLocalizedTags(context, const ["Bhakti", "Naam Jaap", "Prem"]),
              isFavorite: temple.isWishlist,
            ),
          ),
        );

      case 'seva':
        final seva = item.sevaData;
        if (seva == null) return const SizedBox.shrink();

        return GestureDetector(
          onTap: () {
            BlocProvider.of<SevaStatusBloc>(
              context,
            ).add(GetStatus(id: seva.id));
            Navigator.pushNamed(context, AppRoutes.SEWA_STATUS_PAGE);
          },
          child: MobileHomeSevaCard(
            imagePath: seva.thumbnailUrl,
            sevaName: seva.sevaName,
            amount: MobileHomeSevaCard.formatSevaAmount(
              formattedFinalPayment: seva.formattedFinalPayment,
              formattedAmount: seva.formattedAmount,
              amount: seva.amount,
            ),
            date: MobileHomeSevaCard.formatSevaDate(item.addedAt),
            paymentStatus: seva.paymentStatus,
            status: seva.status,
            statusLable: seva.statusLabel,
          ),
        );

      default:
        final data = item.mantraData;
        if (data == null) {
          return const SizedBox.shrink();
        }

        return GestureDetector(
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
          child: AartiTileMediumPage(
            itemid: data.id,
            showArrow: false,
            deity: data.god.godName,
            time: "",
            verses: "",
            image: "${data.thumbnail}",
            title: data.title,
            subtitle: "",
            tag: data.type,
            onPlay: () {},
            isAddedInWishlist: data.isAddedInWishlist,
            audioAsset: data.audioAsset,
            onArrow: () {},
            onFav: () {
              final prefs = getIt<SharedPrefs>();
              final LoginResponse? userData = prefs.getModel<LoginResponse>(
                AppConstant.userModel,
                (json) => LoginResponse.fromJson(json),
              );

              if (userData?.user.isGuest ?? true) {
                LoginRequiredDialog.show(context);
                return;
              }

              toggleWishlist(itemId: data.id, itemModel: data.type);
            },
            onList: () {},
            onMediaPlay: () {
              BlocProvider.of<MobileHomeBloc>(
                context,
              ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "all"));
              //if (data.audioAsset.isNotEmpty) {

              BlocProvider.of<AartiPlayerBloc>(
                context,
              ).add(OnlyShowLyrics(false));

              BlocProvider.of<AartiPlayerBloc>(context).add(
                LoadTrack(
                  Track(
                    hiHtmLText: data.testLyrics_hi,
                    enHtmlText: data.testLyrics_en,
                    slugUrl: data.slug,

                    aartiChaliaid: data.id,
                    isMpfileAvilable: data.audioAsset.isNotEmpty ? true : false,
                    bannerImage: data.mainBanner,
                    lyircsImage: data.lyric_banner_image,
                    youtubeVideoLink: data.youtubeLink,
                    htmlText: data.testLyrics,
                    isAddedInWishlist: data.isAddedInWishlist,
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
              // } else {
              //   context.showCustomSnackbar(
              //     "No Audio Available For This",
              //   );
              // }
            },

            onBookmarkTap: () {
              BlocProvider.of<MobileHomeBloc>(
                context,
              ).add(HomeGetGetAartiChalisaGodWise(data.god.id, "all"));
              //if (data.audioAsset.isNotEmpty) {

              BlocProvider.of<AartiPlayerBloc>(
                context,
              ).add(OnlyShowLyrics(false));

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
                    htmlText: data.testLyrics,
                    isAddedInWishlist: data.isAddedInWishlist,
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
              if (data.testLyrics.toString().trim().isNotEmpty) {
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
                context.showCustomSnackbar("No Lyrics Available For This");
              }
              // existing code 그대로
            },
          ),
        );
    }
  }
}


