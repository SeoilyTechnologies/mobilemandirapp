import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/updated_categories/aarti_bhajan_tab.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/presentation/ui/component/common_dropdown.dart';
import '../../../../../common/component/skeleton_loader.dart';
import '../../../../../common/component/loading_indicator.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../application/presentatioin/bloc/app_state.dart';
import '../../../../application/presentatioin/ui/application/mini_music_player.dart';
import '../../../../auth/signin/data/entity/login_response.dart';
import '../../../../auth/signin/presentation/ui/component/login_require_dialog.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../../wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../../wishlist/presentation/bloc/wishlist_event.dart';
import '../../../data/entity/aarti_category_item.dart';
import '../../../data/entity/god/god_data_list.dart';
import '../../../../../common/component/app_loader.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/values/snack_bar.dart';
import '../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../lyrics/track_model.dart';
import '../../../../mobile_mandir_home/presentation/ui/updated_component/aarti_grid_item.dart';
import '../../../data/entity/festival_list/festival_list.dart';
import '../../../data/entity/tithi_response/tithi_api_response.dart';
import '../../bloc/aarti_chalisa_lsit_bloc.dart';
import '../../bloc/aarti_chalisa_lsit_event.dart';
import '../../bloc/aarti_chalisa_lsit_state.dart';
import 'category_rail.dart';
import 'mobile_mandir_appbar.dart';

class AartiChalisaListSmall extends StatelessWidget {
  AartiChalisaListSmall({super.key});

  final categories = [
    {"title": "Aarti", "type": "aarti"},
    {"title": "Bhajan", "type": "bhajan"},
    {"title": "Chalisa", "type": "chalisa"},

    {"title": "Katha", "type": "katha"},
    {"title": "Mantra", "type": "mantra"},
    {"title": "Stuti", "type": "stuti"},
  ];

  /// 🌞 DAY FILTER DATA (STATIC)
  List<Map<String, String>> weekDays = [
    {"en": "Monday", "hi": "सोमवार"},
    {"en": "Tuesday", "hi": "मंगलवार"},
    {"en": "Wednesday", "hi": "बुधवार"},
    {"en": "Thursday", "hi": "गुरुवार"},
    {"en": "Friday", "hi": "शुक्रवार"},
    {"en": "Saturday", "hi": "शनिवार"},
    {"en": "Sunday", "hi": "रविवार"},
  ];

  String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  Widget _buildFilterDropdowns(
    BuildContext context,
    AartiChalisaListState state,
    bool isFilterApplied,
  )
  {
    final bloc = context.read<AartiChalisaLsitBloc>();

    final code = bloc.sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? bloc.sharedPrefs.getString(AppConstant.localeKey)
        : 'en';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // ✅ horizontal scroll
        child: Row(
          children: [
            if (isFilterApplied) ...[
              const SizedBox(width: 10),

              GestureDetector(
                onTap: () {
                  context.read<AartiChalisaLsitBloc>().add(
                    const AartiChalisaListEvent.clearFilters(),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.close, size: 16, color: Colors.black),
                    SizedBox(width: 4),
                    Text(
                      "Clear Filter",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
              ),
            ],

            /// 🛕 GOD
            SizedBox(
              width: 150, // ✅ fixed width
              child: CommonFilterDropdown<GodData>(
                hint: context.l10n.godName,
                items: state.godList,
                selectedItem: state.selectedGod,
                itemLabel: (g) => g.god_name,
                imageLabel: (g) => g.thumbnail,
                // leadingIcon: Icons.temple_hindu, // ✅ icon
                onSelected: (god) {
                  bloc.add(AartiChalisaListEvent.godSelected(god));
                },
              ),
            ),

            const SizedBox(width: 10),

            /// 🎉 FESTIVAL
            SizedBox(
              width: 150,
              child: CommonFilterDropdown<FestivalItem>(
                hint: context.l10n.festival,
                items: state.festivalList,
                selectedItem: state.selectedFestival,
                itemLabel: (f) => f.title,
                // leadingIcon: Icons.celebration,
                onSelected: (festival) {
                  bloc.add(AartiChalisaListEvent.festivalSelected(festival));
                },
              ),
            ),

            const SizedBox(width: 10),

            SizedBox(
              width: 120,
              child: CommonFilterDropdown<TithiData>(
                hint: context.l10n.tithi.replaceAll(':', ''),
                items: state.tithiList,
                selectedItem: state.selectedTithi,
                itemLabel: (t) => code == "hi" ? t.hi : t.en,
                onSelected: (tithi) {
                  bloc.add(AartiChalisaListEvent.tithiSelected(tithi));
                },
              ),
            ),
            const SizedBox(width: 10),

            /// 📅 DAY
            SizedBox(
              width: 100,
              child: CommonFilterDropdown<Map<String, String>>(
                hint: context.l10n.day.replaceAll(':', ''),
                items: weekDays,
                selectedItem: state.selectedDay == null
                    ? null
                    : weekDays.firstWhere((d) => d[code] == state.selectedDay),
                itemLabel: (d) => d[code] ?? '',
                //  leadingIcon: Icons.calendar_today,
                onSelected: (dayMap) {
                  bloc.add(AartiChalisaListEvent.daySelected(dayMap[code]!));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AartiChalisaLsitBloc, AartiChalisaListState>(
      listener: (context, state) async {
        if (state.apiSuccessMessage.trim().isNotEmpty) {
          context.showCustomSnackbar("${state.apiSuccessMessage}");
        }
      },
      builder: (context, state) {
        final bool isFilterApplied =
            state.selectedGod != null ||
            state.selectedFestival != null ||
            state.selectedTithi != null ||
            state.selectedDay != null;
        return Scaffold(
          backgroundColor: const Color(0xFFF6F7FB),
          appBar: MandirAppBar(
            title: getLocalizedCategoryName(context, state.type.isEmpty ? "Aarti" : state.type),
            onBackTap: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
              }
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(0),
            child: Stack(
              children: [
                RefreshIndicator(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),

                      Padding(
                        padding: EdgeInsets.only(bottom: 70),
                        child: CategoryRail(
                          selectedIndex: state.selectedCategoryIndex,
                          items: AartiCategoryItem.items,
                          onSelect: (index) async {

                            context.read<AartiChalisaLsitBloc>().add(
                              AartiChalisaListEvent.categorySelected(
                                index: index,
                                type: categories[index]["type"]!,
                              ),
                            );

                            BlocProvider.of<AartiChalisaLsitBloc>(
                              context,
                            ).add(ResetFilters());

                            BlocProvider.of<AartiChalisaLsitBloc>(context).add(
                              GetAartiChalisaByType(categories[index]["type"]!),
                            );

                            BlocProvider.of<AartiChalisaLsitBloc>(context).add(
                              RelatedGetAartiChalisaByType(
                                categories[index]["type"]!,
                              ),
                            );
                          },
                        ),
                      ),

                      SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          children: [
                            /// 🔥 DROPDOWNS (Grid ke upar)
                            _buildFilterDropdowns(
                              context,
                              state,
                              isFilterApplied,
                            ),

                            /// 🔥 GRID
                            Expanded(
                              child: state.isLoading 
                                  ? const SkeletonGridView()
                                  : NotificationListener<ScrollNotification>(
                                      onNotification: (ScrollNotification scrollInfo) {
                                        if (scrollInfo.metrics.pixels >=
                                            scrollInfo.metrics.maxScrollExtent - 200) {
                                          if (!state.isLoadingMore &&
                                              state.hasMoreData &&
                                              !state.isLoading) {
                                            context.read<AartiChalisaLsitBloc>().add(
                                                  const AartiChalisaListEvent.loadMoreAartiChalisa(),
                                                );
                                          }
                                        }
                                        return false;
                                      },
                                      child: CustomScrollView(
                                        physics: const AlwaysScrollableScrollPhysics(),
                                        slivers: [
                                          SliverGrid(
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing: 8,
                                                  crossAxisSpacing: 8,
                                                  childAspectRatio: 0.63,
                                                ),
                                            delegate: SliverChildBuilderDelegate(
                                              (context, position) {
                                                final data =
                                                    state.aartiResponse.data[position];

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
                                            isAddedInWishlist:
                                                data.isAddedInWishlist,
                                            hiHtmLText: data.testLyrics_hi,
                                            enHtmlText: data.testLyrics_en,
                                            slugUrl: data.slug ?? "",
                                            aartiChaliaid: data.id,
                                            isMpfileAvilable:
                                                data.audioAsset.isNotEmpty
                                                ? true
                                                : false,
                                            bannerImage: data.mainBanner,
                                            lyircsImage:
                                                data.lyric_banner_image,
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

                                    child: AartiGridItem(
                                      imagePath: data.thumbnail,
                                      title: data.title,
                                      subtitle: '',
                                      isAddedInWishList: data.isAddedInWishlist,
                                      isCurrentPlaying: false,

                                      onFavTap: () {
                                        final prefs = getIt<SharedPrefs>();
                                        final LoginResponse? userData = prefs
                                            .getModel<LoginResponse>(
                                              AppConstant.userModel,
                                              (json) =>
                                                  LoginResponse.fromJson(json),
                                            );

                                        if (userData!.user.isGuest) {
                                          LoginRequiredDialog.show(context);
                                          return;
                                        } else {
                                          BlocProvider.of<AartiChalisaLsitBloc>(
                                            context,
                                          ).add(
                                            ToggleWishlistAartiChalisaList(
                                              itemModel: data.type,
                                              itemId: data.id,
                                            ),
                                          );
                                        }
                                      },

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
                                              isAddedInWishlist:
                                                  data.isAddedInWishlist,
                                              hiHtmLText: data.testLyrics_hi,
                                              enHtmlText: data.testLyrics_en,
                                              slugUrl: data.slug ?? "",
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

                                      onBookmarkTap: () {
                                        BlocProvider.of<MobileHomeBloc>(
                                          context,
                                        ).add(
                                          HomeGetGetAartiChalisaGodWise(
                                            data.god.id,
                                            "all",
                                          ),
                                        );
                                      },

                                      onSocialTap: () {
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
                                              isAddedInWishlist:
                                                  data.isAddedInWishlist,
                                              hiHtmLText: data.testLyrics_hi,
                                              enHtmlText: data.testLyrics_en,
                                              slugUrl: data.slug ?? "",
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
                                    ),
                                  );
                                },
                                childCount: state.aartiResponse.data.length,
                              ),
                            ),
                            if (state.isLoadingMore)
                              const SliverToBoxAdapter(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Center(
                                    child: SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(strokeWidth: 2),
                                    ),
                                  ),
                                ),
                              ),
                            const SliverToBoxAdapter(
                              child: SizedBox(height: 130),
                            ),
                          ],
                        ),
                      ),
                    ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  onRefresh: () async {
                    final prefs = getIt<SharedPrefs>();

                    final token = await prefs.getString(AppConstant.token);
                    final LoginResponse? userData = prefs
                        .getModel<LoginResponse>(
                          AppConstant.userModel,
                          (json) => LoginResponse.fromJson(json),
                        );
                    context.read<AartiChalisaLsitBloc>().add(
                      AartiChalisaListEvent.categorySelected(
                        index: state.selectedCategoryIndex,
                        type: state.type,
                      ),
                    );

                    final now = DateTime.now();

                    BlocProvider.of<AartiChalisaLsitBloc>(
                      context,
                    ).add(GetFestivalList());
                    BlocProvider.of<AartiChalisaLsitBloc>(
                      context,
                    ).add(GetGodList());

                    BlocProvider.of<AartiChalisaLsitBloc>(
                      context,
                    ).add(GetAartiChalisaByType(state.type));

                    BlocProvider.of<WishlistBloc>(
                      context,
                    ).add(GetWishlist(userId: "${userData!.user.id}"));

                    BlocProvider.of<AartiChalisaLsitBloc>(
                      context,
                    ).add(StoreType("aarti"));
                  },
                ),

                // if (state.isLoading) AppLoader.show(state.isLoading),
                // if (Navigator.canPop(context))
                //   BlocBuilder<AppBloc, AppState>(
                //     builder: (context, state) {
                //       return state.isShowMusicAction
                //           ? Positioned(
                //               left: 12,
                //               right: 12,
                //               bottom: 40, // bottom bar ke upar
                //               child: MiniMusicPlayer(),
                //             )
                //           : SizedBox();
                //     },
                //   ),
              ],
            ),
          ),
        );
      },
    );
  }
}
