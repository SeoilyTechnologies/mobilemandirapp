import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/utils/share_helper.dart';
import 'package:mandirapp/common/utils/utils.dart';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../sewa_module/sewa_page/presentation/bloc/seva_page_bloc.dart';
import '../../../../../sewa_module/sewa_page/presentation/bloc/seva_page_event.dart';
import '../mobile_home_small.dart';
import '../penchang_banner/penchang_banner.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/sewa_card/sewa_card_ui.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/reel_player_screen.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/aarti_slider_carousel_slider.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/madir_reel.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/mandri_banner_card.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/sant_gridlist.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/title_with_see_allbutton.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/todayaarti/bhajan_screen.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/updated_categories/aarti_bhajan_chalisa_tab.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/updated_categories/categories_grid.dart';
import 'package:mandirapp/pages/sant/presentation/bloc/sant_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/routes.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../bloc/mobile_home_bloc.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import '../naam_jaap/naam_jaap_digital_cunter.dart';
import '../seva_list/seva_lsit/seva_horizontal_list.dart';

class MobileHomeSmallViewPage extends StatelessWidget {
  const MobileHomeSmallViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: <Widget>[
            PenchangBanner(),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, top: 24, bottom: 8),
              child: TitleWithSeeAllButton(
                title: context.l10n.quickSevas,
                showActionButton: false,
                actionText: context.l10n.seeAll,
                onActionTap: () {
                  // BlocProvider.of<SelectCategoryBloc>(
                  //   context,
                  // ).add(SelectCategoryEvent.getCateroiesList());
                  Navigator.pushNamed(context, AppRoutes.SELECT_CATEGORY);
                },
              ),
            ),
            SizedBox(
              height: context.screenHeight * 0.19,
              child: SevaHorizontalList(
                onTap: (cat) {
                  if (context.requireLogin()) return;
                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.categorySelected(cat),
                  );
                  context.read<SevaPageBloc>().add(
                    SevaPageEvent.getSewaPriceList(
                      categoryId: cat.id,
                      categoryName: cat.name,
                      categoryDescription: cat.description ?? "",
                    ),
                  );

                  Navigator.pushNamed(context, AppRoutes.SEVA_PAGE);
                },
              ),
            ),

            //--done
            const SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 0),
              child: TitleWithSeeAllButton(
                title: context.l10n.categories,
                showActionButton: false,
                actionText: context.l10n.seeAll,
                onActionTap: () {
                  // BlocProvider.of<SelectCategoryBloc>(
                  //   context,
                  // ).add(SelectCategoryEvent.getCateroiesList());
                  Navigator.pushNamed(context, AppRoutes.SELECT_CATEGORY);
                },
              ),
            ),

            const SizedBox(height: 6),
            SizedBox(
              width: context.screenWidth,
              //  height: context.screenHeight,
              child: Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 0,
                  right: 0,
                  top: 2,
                  bottom: 12,
                ),
                child: Center(child: CategoriesGridSmall()),
              ),
            ),
            const SizedBox(height: 6),
            // state.jaapBanners.isEmpty == true
            //     ? SizedBox()
            //     : NaamJaapCarouselSlider(
            //         items: state.jaapBanners,
            //       ),
            NaamJaapDigitalCunter(),
            //  const SizedBox(height: 6),
            // NaamJapBanner(
            //   title: "Digital Counter for naam jap",
            //   subtitle: "Count, Listen, Stop Watch, Enroll 6am",
            //   imagePath:
            //       "assets/new_design/icon/puja_thali_banner_image.png",
            //
            //   onTap: () {
            //     print("Banner tapped");
            //   },
            // ),
            const SizedBox(height: 1),
            Padding(
              padding: EdgeInsets.only(
                left: 14,
                right: 12,
                top: 16,
                bottom: 16,
              ),
              child: TitleWithSeeAllButton(
                title: context.l10n.todayAartiBhajan,
                actionText: context.l10n.seeAll,
                onActionTap: () {
                  // BlocProvider.of<MobileHomeBloc>(context).add(
                  // GetDayAccordingAartiChalisa(
                  //     type: "all",
                  //   ),
                  // );
                  Navigator.pushNamed(context, AppRoutes.TODAYS_AARTI_CHALISHA);
                },
              ),
            ),
            HomeHorizontalTabs(),


            BhajanScreen(),
            SizedBox(height: 12),


            if (state.aartiChalisaBanners.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SizedBox(
                  height: 160,
                  child: AartiBottomCarouselSlider(
                    onPageChanged: (int index) {
                      context.read<MobileHomeBloc>().add(
                        MobileHomeEvent.updateBannerIndexThird(index),
                      );
                    },

                    items: state.aartiChalisaBanners,
                  ),
                ),
              ),
            state.aartiChalisaBanners.isEmpty
                ? const SizedBox()
                : Column(
                    children: [
                      // AartiCarouselSlider(
                      //   onPageChanged: (index) {
                      //     context
                      //         .read<MobileHomeBloc>()
                      //         .add(
                      //       MobileHomeEvent.updateBannerIndex(index),
                      //     );
                      //   },
                      //   items: state.filterBasedBanners,
                      // ),
                      //
                      // const SizedBox(height: 8),
                      SizedBox(height: 8),
                      buildBannerDots(
                        currentIndex: state.BannerIndexthirdbanner,
                        total: state.aartiChalisaBanners.length,
                      ),
                    ],
                  ),

            //  SizedBox(height: context.screenHeight * 0.014),
            const SizedBox(height: 0),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 12, top: 8, bottom: 12),
              child: TitleWithSeeAllButton(
                title: context.l10n.youtubeShortsTitle,
                actionText: context.l10n.seeAll,
                showActionButton: false,
                onActionTap: () {
                  // BlocProvider.of<MobileHomeBloc>(
                  //   context,
                  // ).add(
                  //   MobileHomeEvent.getYoutubePlaylistVideos(),
                  // );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ReelPlayerScreen(initialIndex: 2),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 12),
              child: SizedBox(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.youtubeVideos.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 6),
                  itemBuilder: (context, index) {
                    final video = state.youtubeVideos[index];

                    return SizedBox(
                      width: 120,
                      child: MadirReel(
                        imagePath: video.thumbnailUrl,
                        isNetwork: true,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  ReelPlayerScreen(initialIndex: index),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                //https://www.youtube.com/@MobileMandirApp?sub_confirmation=1

                Utils.openUrl(
                  url:
                      "https://www.youtube.com/@MobileMandirApp?sub_confirmation=1",
                );
              },
              child: Image.asset(
                "assets/new_design/icon/youtub_subscribe.png",
                width: 164,
                height: 64,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 24),
            state.santListResponse.data.isEmpty
                ? SizedBox()
                : Container(
                    color: AppColor.appSantbackground,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 12,
                        bottom: 18,
                        top: 18,
                      ),
                      child: Column(
                        children: <Widget>[
                          TitleWithSeeAllButton(
                            title: context.l10n.santMahapurushProfiles,
                            showActionButton: false,
                            actionText: context.l10n.seeAll,
                            onActionTap: () {
                            },
                          ),
                          SizedBox(height: 6),
                          state.santListResponse.data.isEmpty
                              ? SizedBox()
                              : SaintHorizontalGrid(),

                          SizedBox(height: 14),
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<SantBloc>(
                                context,
                              ).add(SantEvent.started());
                              scrollController.animateTo(
                                0,
                                duration: const Duration(milliseconds: 350),
                                curve: Curves.easeInOut,
                              );
                              BlocProvider.of<MobileHomeBloc>(
                                context,
                              ).add(MobileHomeEvent.changeTopTab(5));
                              // Navigator.pushNamed(
                              //   context,
                              //   AppRoutes.SANTLISTPAGE,
                              // );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 16, right: 16),
                              width: double.infinity,
                              height: 42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColor.newsecondaruy,
                                // image: DecorationImage(
                                //   image: AssetImage(
                                //     "assets/new_design/background/see_all_button.png",
                                //   ),
                                // ),
                              ),
                              child: Center(
                                child: Text(
                                  context.l10n.seeAll,
                                  style: AppTextStyle.gilroyBold(
                                    context.screenWidth * 0.038,
                                    color: AppColor.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
            SizedBox(height: 18),


            SizedBox(height: context.screenWidth * 0.025),
            // PanchangMonthCalendar(panchangMap: state.panchangMap,),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 18, top: 10),
              child: MandirBannerCard(
                videoPath: "assets/new_design/background/mandir_app_video.mp4",
                title: context.l10n.helpUsGrow,
                subtitle: context.l10n.inviteYourFriends,
                onButtonTap: () {
                  shareApp();
                },
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 20,
                top: 20,
                right: 20,
                bottom: 14,
              ),
              child: Image.asset("assets/new_design/background/all_in_one.png"),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 20,
                top: 10,
                right: 20,
                bottom: 14,
              ),
              child: Divider(thickness: 1.0, color: AppColor.newGreyy),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 20,
                    top: 0,
                    // right: 0,
                    bottom: 0,
                  ),
                  child: Text(
                    context.l10n.mobileMandir,
                    textAlign: TextAlign.start,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.0633,
                      color: AppColor.newGreyy,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: context.screenHeight * 0.12),
          ],
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

  void shareApp() {
    ShareHelper.shareApp();
  }
}
