import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandirapp/common/component/app_loader.dart';
import 'package:mandirapp/common/utils/share_helper.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/background_audiopalyer_card.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/panchang_card.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/quick_action_item.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/search_bar_widget.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/reel_player_screen.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/aarti_card.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/aarti_slider_carousel_slider.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/category_tabs.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/home_header.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/madir_reel.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/mandri_banner_card.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/product.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/sant_gridlist.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/search_bar_widget.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/startwhereleft/resume_item.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/startwhereleft/start_where_you_left_section.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/title_with_see_allbutton.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/todayaarti/bhajan_screen.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/updated_categories/aarti_bhajan_chalisa_tab.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/updated_categories/categories_grid.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/updated_categories/naam_jap_banner.dart';
import 'package:mandirapp/pages/sant/presentation/bloc/sant_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/component/loading_indicator.dart';
import '../../../../../common/component/search_bar.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../../common/utils/common_view.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../../application/presentatioin/ui/voice_listening_dialog.dart';
import '../../../../auth/signin/data/entity/login_response.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_event.dart';
import '../../bloc/mobile_home_state.dart';
import '../../../../dynamic_tab/home_tab_registry.dart';
import '../../../../dynamic_tab/presentation/ui/home_tab_helpers.dart';
import 'TithiListView.dart';
import 'for_you/mobile_home_small_for_you.dart';
import 'mobile_home_god/mobile_home_god_page.dart';
import 'mobile_home_reward/mobile_home_reward_page.dart';
import 'mobile_home_sant/mobile_home_sant_page.dart';
import 'mobile_home_sewa/mobile_home_sewa_page.dart';
import 'mobile_home_small_below_view/mobile_home_medium_view_page.dart';
import 'mobile_home_temple/mobile_home_temple_page.dart';



class MobileHomeLarge extends StatelessWidget {
  MobileHomeLarge({super.key});


  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.newbackgroundColorHome,
          body: Stack(
            children: <Widget>[
              RefreshIndicator(child: SizedBox(
                width: context.screenWidth,
                child:  SingleChildScrollView(
                  // padding: const EdgeInsets.all(16),
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //const HeaderBar(),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                20,
                                20,
                                20,
                                state.currentTab.banner != null ? 0 : 20,
                              ),
                                    decoration: HomeTabUi.headerDecoration(state),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: context.screenHeight * 0.04,
                                        ),

                                        const HomeHeaderMedium(name: "Shubham Kumar"),
                                        const SizedBox(height: 24),
                                        // Padding(
                                        //   padding: EdgeInsets.only(
                                        //     left: 4,
                                        //     right: 4,
                                        //     top: 0,
                                        //     bottom: 0,
                                        //   ),
                                        //   child: SearchBarWidgett(
                                        //     hintText: 'Search here',
                                        //     onBarTap: () {
                                        //       Navigator.pushNamed(
                                        //         context,
                                        //         AppRoutes.GLOBAL_SEARCH_PAGE,
                                        //         arguments: {
                                        //           'prefetchQuery':
                                        //           'god temple',
                                        //         },
                                        //       );
                                        //     },
                                        //     onMicTap: () {
                                        //       showVoiceListeningDialog(
                                        //         context,
                                        //       ).then((spokenText) {
                                        //         if (!context.mounted) return;
                                        //         if (spokenText != null &&
                                        //             spokenText
                                        //                 .trim()
                                        //                 .isNotEmpty) {
                                        //           Navigator.pushNamed(
                                        //             context,
                                        //             AppRoutes
                                        //                 .GLOBAL_SEARCH_PAGE,
                                        //             arguments: {
                                        //               'searchQuery':
                                        //               spokenText.trim(),
                                        //             },
                                        //           );
                                        //         }
                                        //       });
                                        //     },
                                        //   ),
                                        // ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 4,
                                            right: 4,
                                            top: 0,
                                            bottom: 0,
                                          ),
                                          child: SearchBarWidgett(
                                            hintText: context.l10n.searchHere,
                                            animatedHints: Utils.getAnimatedSearchHints(context),
                                            onBarTap: () {
                                              Navigator.pushNamed(
                                                context,
                                                AppRoutes
                                                    .GLOBAL_SEARCH_PAGE,
                                                arguments: {
                                                  'prefetchQuery':
                                                  'god temple',
                                                },
                                              );
                                            },
                                            onMicTap: () {
                                              showVoiceListeningDialog(
                                                context,
                                              ).then((spokenText) {
                                                if (!context.mounted)
                                                  return;
                                                if (spokenText != null &&
                                                    spokenText
                                                        .trim()
                                                        .isNotEmpty) {
                                                  Navigator.pushNamed(
                                                    context,
                                                    AppRoutes
                                                        .GLOBAL_SEARCH_PAGE,
                                                    arguments: {
                                                      'searchQuery':
                                                      spokenText.trim(),
                                                    },
                                                  );
                                                }
                                              });
                                            },
                                          ),
                                        ),

                                        SizedBox(height: 24),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 0,
                                            vertical: 0,
                                          ),
                                          child: TopTabBar(
                                            tabs: CommonView.topTabs,
                                          ),
                                        ),
                                        //const SeachSuggestion(),
                                        SizedBox(height: 16,),
                                        Utils.getTopBanner(context, state),



                                        const SizedBox(height: 20),

                                        // state.filterBasedBanners.isEmpty == true
                                        //     ? SizedBox()
                                        //     : AartiCarouselSlider(
                                        //   height: 300,
                                        //   onPageChanged: (index) {
                                        //     context
                                        //         .read<MobileHomeBloc>()
                                        //         .add(MobileHomeEvent.updateBannerIndex(index));
                                        //   },
                                        //   items: state.filterBasedBanners,
                                        // ),

                                        state.filterBasedBanners.isEmpty
                                            ? const SizedBox()
                                            : Column(
                                          children: [

                                            SizedBox(height: 8),
                                            buildBannerDots(
                                              currentIndex: state.BannerIndex,
                                              total: state.filterBasedBanners.length,
                                            ),
                                          ],
                                        ),


                                      ],
                                    ),
                                  ),

                                  HomeTabUi.body(state, getTabChildView),

                                  // SizedBox(height: 140),
                                ],
                              ),
                            ),
                          ],
                        ),
                        if (state.isLoading) AppLoader.show(state.isLoading),
                      ],
                    ),),

                ),
              ),

                onRefresh: () async {
                  final prefs = getIt<SharedPrefs>();

                  final token = await prefs.getString(AppConstant.token);
                  final LoginResponse? userData = prefs.getModel<LoginResponse>(
                    AppConstant.userModel,
                        (json) => LoginResponse.fromJson(json),
                  );

                  final now = DateTime.now();

                  BlocProvider.of<AartiChalisaLsitBloc>(context).add(GetTithiList());
                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(const MobileHomeEvent.getRewardOverView());

                  BlocProvider.of<MobileHomeBloc>(context).add(
                    MobileHomeEvent.getCalendarEvent(
                      month: now.month,
                      year: now.year,
                    ),
                  );

                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(MobileHomeEvent.getSantList());

                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(const MobileHomeEvent.loadPanchang());

                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(MobileHomeEvent.getYoutubePlaylistVideos());

                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(MobileHomeEvent.getYoutubePlaylistVideos());

                  BlocProvider.of<MobileHomeBloc>(context).add(HomeGetBanner());

                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(GetPanchangByDate(day: 0, month: 0, year: 0));

                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(GetDayAccordingAartiChalisa(type: "all"));

                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(HomeMantra("mantra"));
                },
              )
              ,
              if (state.isLoading) const LoadingIndicator(),

              /////////////////
            ],
          ),
        );
      },
    );
  }

  Widget buildBannerDots({
    required int currentIndex,
    required int total,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        total,
            (index) {
          final isActive = index == currentIndex;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: isActive ? 10 : 6,
            height: 6,
            decoration: BoxDecoration(
              color: isActive
                  ? AppColor.appYellow
                  : Colors.grey.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      ),
    );
  }



  static Widget getTabChildView(int index) {

    switch (index) {
      case 0:
        return MobileHomeMediumViewPage();
      case 1:
        return MobileHomeMediumForYou();
      case 2:
        return MobileHomeTemplePage();
      case 3:
        return MobileHomeGodPage();
      case 4:
        return MobileHomeSewaPage();
      case 5:
        return MobileHomeSantPage();
      case 6:
        return MobileHomeRewardPage();
      default:
        return SizedBox();
    }
  }

  void shareApp() {
    ShareHelper.shareApp();
  }
}
