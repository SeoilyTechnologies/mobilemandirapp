import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/category_tabs.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/home_header.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/todayaarti/bhajan_screen.dart';
import 'package:mandirapp/common/utils/share_helper.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../../common/component/search_bar.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../../common/utils/common_view.dart';
import '../../../../../common/utils/utils.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../../application/presentatioin/ui/voice_listening_dialog.dart';
import '../../../../auth/signin/data/entity/login_response.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_event.dart';
import '../../bloc/mobile_home_state.dart';
import 'for_you/mobile_home_small_for_you.dart';
import 'mobile_home_god/mobile_home_god_page.dart';
import 'mobile_home_reward/mobile_home_reward_page.dart';
import 'mobile_home_sant/mobile_home_sant_page.dart';
import 'mobile_home_sewa/mobile_home_sewa_page.dart';
import 'mobile_home_small_below_view/mobile_home_small_view_page.dart';
import 'mobile_home_temple/mobile_home_temple_page.dart';

final ScrollController scrollController = ScrollController();

class MobileHomeSmall extends StatelessWidget {
  MobileHomeSmall({super.key});

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return PrimaryScrollController(
          controller: controller,
          child: Scaffold(
            backgroundColor: AppColor.newbackgroundColorHome,
            body: Stack(
              children: <Widget>[
                RefreshIndicator(
                  child: SizedBox(
                    width: context.screenWidth,
                    //height: context.screenHeight,
                    child: SingleChildScrollView(
                      // padding: const EdgeInsets.all(16),
                      controller: scrollController,
                      child: Container(
                        width: context.screenWidth,
                        //   height: context.screenHeight,
                        child: Stack(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Stack(
                                        children: [
                                          Positioned.fill(
                                            child: AnimatedSwitcher(
                                              duration: const Duration(milliseconds: 300),
                                              switchInCurve: Curves.easeInOut,
                                              switchOutCurve: Curves.easeInOut,
                                              layoutBuilder: (Widget? currentChild, List<Widget> previousChildren) {
                                                return Stack(
                                                  fit: StackFit.expand,
                                                  children: <Widget>[
                                                    ...previousChildren,
                                                    if (currentChild != null) currentChild,
                                                  ],
                                                );
                                              },
                                              child: Image.asset(
                                                Utils.getHeaderBackground(
                                                  state.topTabIndex,
                                                ),
                                                key: ValueKey<int>(state.topTabIndex),
                                                fit: BoxFit.fill,
                                                width: double.infinity,
                                                height: double.infinity,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 14,
                                              vertical: 12,
                                            ),
                                            width: context.screenWidth,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height:
                                                  context.screenHeight * 0.06,
                                            ),

                                            const HomeHeader(
                                              name: "Shubham Kumar",
                                            ),

                                            const SizedBox(height: 20),
                                            // SearchBarWidgett(
                                            //
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
                                            SizedBox(height: 14),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 0,
                                                vertical: 0,
                                              ),
                                              child: TopTabBar(
                                                tabs: CommonView.topTabs,
                                              ),
                                            ),

                                            state.isSearchFieldClear
                                                ? SizedBox()
                                                : const SeachSuggestion(),

                                            const SizedBox(height: 10),
                                            Utils.getTopBanner(context, state),

                                            state.topTabIndex == 0
                                                ? state
                                                          .filterBasedBanners
                                                          .isEmpty
                                                      ? const SizedBox()
                                                      : Column(
                                                          children: [
                                                            SizedBox(height: 8),
                                                            buildBannerDots(
                                                              currentIndex: state
                                                                  .BannerIndex,
                                                              total: state
                                                                  .filterBasedBanners
                                                                  .length,
                                                            ),
                                                          ],
                                                        )
                                                : SizedBox(height: 6),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  getTabChildView(state.topTabIndex),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onRefresh: () async {
                    final prefs = getIt<SharedPrefs>();

                    final token = await prefs.getString(AppConstant.token);
                    final LoginResponse? userData = prefs
                        .getModel<LoginResponse>(
                          AppConstant.userModel,
                          (json) => LoginResponse.fromJson(json),
                        );

                    final now = DateTime.now();

                    BlocProvider.of<AartiChalisaLsitBloc>(
                      context,
                    ).add(GetTithiList());
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

                    BlocProvider.of<MobileHomeBloc>(
                      context,
                    ).add(HomeGetBanner());

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
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildBannerDots({required int currentIndex, required int total}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(total, (index) {
        final isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 10 : 6,
          height: 6,
          decoration: BoxDecoration(
            color: isActive ? AppColor.appYellow : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(10),
          ),
        );
      }),
    );
  }

  static Widget getTabChildView(int index) {
    switch (index) {
      case 0:
        return MobileHomeSmallViewPage();
      case 1:
        return MobileHomeSmallForYou();
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
