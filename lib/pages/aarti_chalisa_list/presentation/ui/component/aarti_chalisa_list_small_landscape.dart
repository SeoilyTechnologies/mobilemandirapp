import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/updated_categories/aarti_bhajan_tab.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/presentation/ui/component/common_dropdown.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../auth/signin/data/entity/login_response.dart';
import '../../../../auth/signin/presentation/ui/component/login_require_dialog.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
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
import '../../bloc/aarti_chalisa_lsit_bloc.dart';
import '../../bloc/aarti_chalisa_lsit_event.dart';
import '../../bloc/aarti_chalisa_lsit_state.dart';
import 'category_rail.dart';
import 'mobile_mandir_appbar.dart';


class AartiChalisaListSmallLandscape extends StatelessWidget {
  AartiChalisaListSmallLandscape({super.key});

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
            /// 🛕 GOD
            SizedBox(
              width: 150, // ✅ fixed width
              child: CommonFilterDropdown<GodData>(
                hint: context.l10n.godName,
                items: state.godList,
                selectedItem: state.selectedGod,
                itemLabel: (g) => g.god_name,
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

            /// 📅 DAY
            SizedBox(
              width: 100,
              child: CommonFilterDropdown<Map<String, String>>(
                hint: 'Day',
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
      listener: (context, state) {
        if (state.apiSuccessMessage.trim().isNotEmpty) {
          context.showCustomSnackbar("${state.apiSuccessMessage}");
        }
      },
      builder: (context, state) {
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),

                    Padding(
                      padding: EdgeInsets.only(bottom: 100),
                      child: CategoryRail(
                        selectedIndex: state.selectedCategoryIndex,
                        items: AartiCategoryItem.items,
                        onSelect: (index) {
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
                        },
                      ),
                    ),
                    SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        children: [
                          /// 🔥 DROPDOWNS (Grid ke upar)
                          _buildFilterDropdowns(context, state),

                          /// 🔥 GRID
                          Expanded(
                            child: GridView.builder(
                              padding: const EdgeInsets.only(bottom: 130),
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                                childAspectRatio: 0.75,
                              ),
                              itemCount: state.aartiResponse.data.length,
                              itemBuilder: (context, position) {
                                final data = state.aartiResponse.data[position];

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


                                  child: AartiGridItem(
                                    imagePath: data.thumbnail,
                                    title: data.title,
                                    subtitle: 'Singer: MMA Team',
                                    isAddedInWishList: data.isAddedInWishlist,
                                    isCurrentPlaying: false,
                                    onFavTap: () {
                                      final prefs = getIt<SharedPrefs>();
                                      final LoginResponse? userData = prefs
                                          .getModel<LoginResponse>(
                                        AppConstant.userModel,
                                            (json) => LoginResponse.fromJson(json),
                                      );

                                      if (userData!.user.isGuest) {
                                        LoginRequiredDialog.show(context);
                                        return;
                                      } else {
                                        BlocProvider.of<AartiChalisaLsitBloc>(
                                          context,
                                        ).add(
                                          ToggleWishlistAartiChalisaList(
                                            itemModel: "aartichalisadata",
                                            itemId: data.id,
                                          ),
                                        );
                                      }
                                    },
                                    onMediaPlay: () {
                                      if (data.audioAsset.isNotEmpty) {

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
                                            "lyricsImage":
                                            data.lyric_banner_image,
                                          },
                                        );
                                      } else {
                                        context.showCustomSnackbar(
                                          "No Audio Available For This",
                                        );
                                      }
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

                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (state.isLoading) AppLoader.show(state.isLoading),
              ],
            ),
          ),
        );
      },
    );
  }
}
