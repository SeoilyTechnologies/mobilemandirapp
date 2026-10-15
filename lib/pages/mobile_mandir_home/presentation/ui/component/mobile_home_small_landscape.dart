import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandirapp/common/component/app_loader.dart';
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
import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/values/app_color.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_event.dart';
import '../../bloc/mobile_home_state.dart';
import 'TithiListView.dart';



class MobileHomeSmallLandscape extends StatelessWidget {
  MobileHomeSmallLandscape({super.key});

  final tabs = [
    CategoryTabItem(title: "All", asset: "assets/new_design/icon/all.png"),
    CategoryTabItem(
      title: "For You",
      asset: "assets/new_design/icon/foryou.png",
    ),
    CategoryTabItem(
      title: "Temples",
      asset: "assets/new_design/icon/temples.png",
    ),
    CategoryTabItem(
      title: "Darshan",
      asset: "assets/new_design/icon/darshan.png",
    ),
    CategoryTabItem(title: "Live", asset: "assets/new_design/icon/live.png"),
  ];
  final topTabs = [
    TopTabItem(title: "All", asset: "assets/new_design/icon/all.png"),
    TopTabItem(title: "For You", asset: "assets/new_design/icon/foryou.png"),
    TopTabItem(title: "Temples", asset: "assets/new_design/icon/temples.png"),
    TopTabItem(title: "Darshan", asset: "assets/new_design/icon/darshan.png"),
    TopTabItem(title: "Live", asset: "assets/new_design/icon/live.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.newbackgroundColorHome,
          body: Stack(
            children: <Widget>[
              SingleChildScrollView(
                // padding: const EdgeInsets.all(16),
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //const HeaderBar(),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(  mainAxisSize: MainAxisSize.max,


                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [AppColor.gold, AppColor.goldDark],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: context.screenHeight * 0.04,
                                    ),

                                    const HomeHeader(name: "Shubham Kumar"),
                                    const SizedBox(height: 20),
                                  //  SearchBarWidgett(),
                                    SizedBox(height: 4),
                                    const SeachSuggestion(),

                                    // const SearchBarWidget(hint: 'Search for "Ganesha Aarti"'),
                                    // const SizedBox(height: 24),

                                    //  TopTabBar(tabs: topTabs),
                                    const SizedBox(height: 20),
                                    state.filterBasedBanners.isEmpty == true
                                        ? SizedBox()
                                        : AartiCarouselSlider(
                                      onPageChanged: (index) {
                                        context
                                            .read<MobileHomeBloc>()
                                            .add(MobileHomeEvent.updateBannerIndex(index));
                                      },
                                      items: state.filterBasedBanners,
                                    ),
                                    state.filterBasedBanners.isEmpty
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
                                          currentIndex: state.BannerIndex,
                                          total: state.filterBasedBanners.length,
                                        ),
                                      ],
                                    ),

                                    // const AartiCard(
                                    //   title: "Begin Your Day",
                                    //   subtitle:
                                    //       "Listen to aartis, chants & spiritual path anywhere, anytime.",
                                    // ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12,
                                  right: 12,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: TitleWithSeeAllButton(
                                  title: context.l10n.categories,
                                  showActionButton: false,
                                  actionText: context.l10n.seeAll,
                                  onActionTap: () {
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
                                  child:Center(child:  CategoriesGridSmall(),),
                                ),
                              ),
                              const SizedBox(height: 6),
                              state.jaapBanners.isEmpty == true
                                  ? SizedBox()
                                  : NaamJaapCarouselSlider(
                                items: state.jaapBanners,
                              ),
                              const SizedBox(height: 6),
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
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 14,
                                  right: 12,
                                  top: 16,
                                  bottom: 8,
                                ),
                                child: TitleWithSeeAllButton(
                                  title: context.l10n.todayAartiBhajanMore,
                                  actionText: context.l10n.seeAll,
                                  onActionTap: () {
                                    // BlocProvider.of<MobileHomeBloc>(context).add(
                                    // GetDayAccordingAartiChalisa(
                                    //     type: "all",
                                    //   ),
                                    // );
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.TODAYS_AARTI_CHALISHA,
                                    );
                                  },
                                ),
                              ),
                              HomeHorizontalTabs(),
                              // SizedBox(height: context.screenHeight * 0.02),

                              // const PanchangCard(),

                              // PanchangMonthCalendar(
                              //   panchangMap: state.panchangMap,
                              // ),
                              //SizedBox(height: context.screenHeight * 0.02),
                              // PromoBannerCarousel(),
                              // PromoBanner(
                              //   subtitle: "Laxmi aarti",
                              //   title: "Laxmi Puja",
                              //   tagline: "Laxmi aarti",
                              //   imagePath: "",
                              //   onPressed: () {},
                              //   buttonText: "plY",
                              //   bgColor: Colors.orange,
                              // ),
                              //SizedBox(height: context.screenHeight * 0.02),
                              // AudioPlayerCard(
                              //   title: "Maha Mirtunjay",
                              //   subtitle: "Shiv",
                              //   onPlay: () {},
                              //   onPrev: () {},
                              //   onNext: () {},
                              // ),
                              //  BackGroundMantraCard(),
                              BhajanScreen(),
                              SizedBox(height: 12),
                              // StartWhereYouLeftSection(
                              //   title: "Start where you left",
                              //   subtitle: "Start where you left",
                              //   actionText: "Continue",
                              //   onActionTap: () {
                              //     // handle continue
                              //   },
                              //   items: [
                              //     ResumeItem(
                              //       title: "Product 1",
                              //       iconAsset:
                              //           "assets/new_design/icon/aarti_ritulas_one.png",
                              //     ),
                              //     ResumeItem(
                              //       title: "Product 1",
                              //       iconAsset:
                              //           "assets/new_design/icon/aarti_ritulas_one.png",
                              //     ),
                              //     ResumeItem(
                              //       title: "Product 1",
                              //       iconAsset:
                              //           "assets/new_design/icon/aarti_ritulas_one.png",
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(height: 18),
                              SizedBox(height: 8),
                              if (state.aartiChalisaBanners.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: SizedBox(
                                    height: 116,
                                    child: AartiBottomCarouselSlider(
                                      onPageChanged: (int index){
                                        context
                                            .read<MobileHomeBloc>()
                                            .add(MobileHomeEvent.updateBannerIndexThird(index));

                                      },
                                      items: state.aartiChalisaBanners,
                                    ),
                                  ),
                                ),

                              //  SizedBox(height: context.screenHeight * 0.014),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 12,
                                  top: 8,
                                  bottom: 12,
                                ),
                                child: TitleWithSeeAllButton(
                                  title: "Instagram Reels",
                                  actionText: context.l10n.seeAll,
                                  showActionButton: true,
                                  onActionTap: () {
                                    // BlocProvider.of<MobileHomeBloc>(
                                    //   context,
                                    // ).add(
                                    //   MobileHomeEvent.getYoutubePlaylistVideos(),
                                    // );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            ReelPlayerScreen(
                                              initialIndex: 2,
                                            ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  right: 12,
                                ),
                                child: SizedBox(
                                  height: 200,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: state.youtubeVideos.length,
                                    separatorBuilder: (_, __) =>
                                    const SizedBox(width: 6),
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
                                                    ReelPlayerScreen(
                                                      initialIndex: index,
                                                    ),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),

                              SizedBox(height: 14),
                              state.santListResponse.data.isEmpty
                                  ? SizedBox()
                                  : Container(
                                color: AppColor.appSantbackground,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 16,
                                    right: 12,
                                    bottom: 14,
                                    top: 14,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      TitleWithSeeAllButton(
                                        title: context.l10n.sant,
                                        showActionButton: false,
                                        actionText: context.l10n.seeAll,
                                        onActionTap: () {
                                        },
                                      ),
                                      SizedBox(height: 6),
                                      state.santListResponse.data.isEmpty
                                          ? SizedBox()
                                          : SaintHorizontalGrid(),

                                      SizedBox(height: 8),
                                      GestureDetector(
                                        onTap: () {
                                          BlocProvider.of<SantBloc>(
                                            context,
                                          ).add(SantEvent.started());
                                          Navigator.pushNamed(
                                            context,
                                            AppRoutes.SANTLISTPAGE,
                                          );
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(left: 16,right: 16),
                                          width: double.infinity,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "assets/new_design/background/see_all_button.png",
                                              ),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "See All",
                                              style:
                                              AppTextStyle.gilroyBold(
                                                context.screenWidth *
                                                    0.038,
                                                color: AppColor
                                                    .newsecondaruy,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 14),
                              // NaamJapBanner(
                              //   title: "Satsang Community-Kitty",
                              //   subtitle:
                              //       "Ladies group, Bhajan Mandli, Jagran Booking, Pandit Ji Booking ",
                              //   imagePath:
                              //       "assets/new_design/icon/puja_thali_banner_image.png",
                              //
                              //   onTap: () {
                              //     print("Banner tapped");
                              //   },
                              // ),
                              state.eventBanners.isEmpty == true
                                  ? SizedBox()
                                  : EventCarouselSlider(
                                items: state.eventBanners,
                              ),

                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12,
                                  right: 12,
                                  top: 12,
                                  bottom: 4,
                                ),
                                child: PanchangCard(),
                              ),
                              SizedBox(height: 12,),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 14,
                                  right: 12,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: TitleWithSeeAllButton(
                                  title: "Related Festivals",
                                  actionText: context.l10n.seeAll,
                                  showActionButton: false,
                                  onActionTap: () {

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            ReelPlayerScreen(
                                              initialIndex: 2,
                                            ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              PanchangMonthCalendar(
                                calendarResponse: state.calendarResponse,
                              ),

                              SizedBox(height: context.screenWidth*0.035,),
                              // PanchangMonthCalendar(panchangMap: state.panchangMap,),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 18,
                                  right: 18,
                                  top: 10,
                                ),
                                child: MandirBannerCard(
                                  videoPath:
                                  "assets/new_design/background/mandir_app_video.mp4",
                                  title: "Mobile Mandir App",
                                  subtitle: "Help us grow",
                                  onButtonTap: () {
                                    shareApp();
                                  },
                                ),
                              ),
                              // Container(
                              //   color: AppColor.appPink,
                              //   child: Padding(
                              //     padding: EdgeInsets.only(
                              //       left: 12,
                              //       right: 12,
                              //       bottom: 14,
                              //       top: 14,
                              //     ),
                              //     child: Column(
                              //       crossAxisAlignment: CrossAxisAlignment.start,
                              //       children: <Widget>[
                              //         TitleWithSeeAllButton(
                              //           title: "Products",
                              //           showActionButton: false,
                              //           actionText: "See All",
                              //           onActionTap: () {
                              //             print("See All clicked");
                              //           },
                              //         ),
                              //         ProductCard(
                              //           image: 'assets/new_design/icon/product.png',
                              //           title:
                              //               'Digital Finger Counter- Tally Counter -jaap',
                              //           rating: 4.8,
                              //           price: 400,
                              //           oldPrice: 500,
                              //           discountText: 'Save 20%',
                              //           onFavorite: () {
                              //             print('Favorite clicked');
                              //           },
                              //           onAddToCart: () {
                              //             print('Add to Cart clicked');
                              //           },
                              //         ),
                              //         Container(
                              //           width: double.infinity,
                              //           height: 45,
                              //           decoration: BoxDecoration(
                              //             image: DecorationImage(
                              //               image: AssetImage(
                              //                 "assets/new_design/background/see_all_button.png",
                              //               ),
                              //             ),
                              //           ),
                              //           child: Center(
                              //             child: Text(
                              //               "See All Products",
                              //               style: AppTextStyle.gilroyBold(
                              //                 context.screenWidth * 0.038,
                              //                 color: AppColor.newsecondaruy,
                              //               ),
                              //             ),
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // Container(
                              //   color: AppColor.appLigthYellow,
                              //   child: Padding(
                              //     padding: EdgeInsets.only(
                              //       left: 12,
                              //       right: 12,
                              //       bottom: 14,
                              //       top: 14,
                              //     ),
                              //     child: Column(
                              //       crossAxisAlignment: CrossAxisAlignment.start,
                              //       children: <Widget>[
                              //         TitleWithSeeAllButton(
                              //           title: "Daan & Seva",
                              //           showActionButton: true,
                              //           actionText: "See All",
                              //           onActionTap: () {
                              //             print("See All clicked");
                              //           },
                              //         ),
                              //         ProductCard(
                              //           image: 'assets/new_design/icon/product.png',
                              //           title:
                              //               'Digital Finger Counter- Tally Counter -jaap',
                              //           rating: 4.8,
                              //           price: 400,
                              //           oldPrice: 500,
                              //           discountText: 'Save 20%',
                              //           onFavorite: () {
                              //             print('Favorite clicked');
                              //           },
                              //           onAddToCart: () {
                              //             print('Add to Cart clicked');
                              //           },
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              Padding(
                                padding: EdgeInsetsGeometry.only(
                                  left: 20,
                                  top: 20,
                                  right: 20,
                                  bottom: 14,
                                ),
                                child: Image.asset(
                                  "assets/new_design/background/all_in_one.png",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsGeometry.only(
                                  left: 20,
                                  top: 10,
                                  right: 20,
                                  bottom: 14,
                                ),
                                child: Divider(
                                  thickness: 2.0,
                                  color: AppColor.newGreyy,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsGeometry.only(
                                  left: 20,
                                  top: 0,
                                  right: 20,
                                  bottom: 0,
                                ),
                                child: Text(
                                  context.l10n.mobileMandir,
                                  style: AppTextStyle.gilroyMedium(
                                    context.screenWidth * 0.0633,
                                    color: AppColor.newGreyy,
                                  ),
                                ),
                              ),

                              SizedBox(height: context.screenHeight * 0.16),
                              // Row(
                              //   spacing: 28,
                              //   children: <Widget>[
                              //     QuickActionItem(
                              //       icon: "assets/new_figma_icons/aarti_now.png",
                              //       label: "Aarti Now",
                              //     ),
                              //
                              //     QuickActionItem(
                              //       onTap: () {
                              //         Navigator.pushNamed(
                              //           context,
                              //           AppRoutes.PUJAPAGE,
                              //         );
                              //       },
                              //       icon: "assets/new_figma_icons/darshan.png",
                              //       label: "Darshan",
                              //     ),
                              //     // QuickActionItem(
                              //     //   icon: "assets/new_figma_icons/kundli.png",
                              //     //   label: "Kundli",
                              //     //   onTap: () {
                              //     //     Navigator.pushNamed(
                              //     //       context,
                              //     //       AppRoutes.KUNDLI_MATCHING_PAGE,
                              //     //     );
                              //     //   },
                              //     // ),
                              //     QuickActionItem(
                              //       icon: "assets/new_figma_icons/rashiphal.png",
                              //       label: "Rashifal",
                              //       onTap: () {
                              //         Navigator.pushNamed(
                              //           context,
                              //           AppRoutes.RASHIPHAL_PAGE,
                              //         );
                              //       },
                              //     ),
                              //     QuickActionItem(
                              //       onTap: () {
                              //         // Navigator.pushNamed(
                              //         //   context,
                              //         //   AppRoutes.EXPLORE_GOD_PAGE,
                              //         // );
                              //       },
                              //       icon: "assets/new_figma_icons/donate.png",
                              //       label: "Donate",
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(height: context.screenHeight * 0.025),
                              // Text(
                              //   "Shubh Karya",
                              //   style: AppTextStyle.semiBold(
                              //     context.screenWidth * 0.051,
                              //     color: AppColor.appBlack,
                              //   ),
                              // ),
                              // SizedBox(height: 4),
                              // Row(
                              //   spacing: 12,
                              //   children: <Widget>[
                              //     QuickActionItem(
                              //       onTap: () {
                              //         Navigator.pushNamed(
                              //           context,
                              //           AppRoutes.VIVHAPAGE,
                              //         );
                              //       },
                              //       icon: "assets/new_figma_icons/vivah.png",
                              //       label: "Vivah\nMuhurat",
                              //     ),
                              //     SizedBox(width: 1),
                              //     QuickActionItem(
                              //       onTap: () {
                              //         Navigator.pushNamed(
                              //           context,
                              //           AppRoutes.UPNAYANPAGE,
                              //         );
                              //       },
                              //       icon: "assets/new_figma_icons/upnayan_new.png",
                              //       label: "Upnayan\nSanskar",
                              //     ),
                              //     SizedBox(width: 1),
                              //     QuickActionItem(
                              //       onTap: () {
                              //         Navigator.pushNamed(
                              //           context,
                              //           AppRoutes.UPNAYANPAGE,
                              //         );
                              //       },
                              //       icon: "assets/new_figma_icons/mundan_new.png",
                              //       label: "Mundan\nMuhurat",
                              //     ),
                              //
                              //     QuickActionItem(
                              //       onTap: () {
                              //         Navigator.pushNamed(
                              //           context,
                              //           AppRoutes.ANPRASHANPAGE,
                              //         );
                              //       },
                              //       icon:
                              //           "assets/new_figma_icons/anprashan_new.png",
                              //       label: "Annaprashan\nMuhurat",
                              //     ),
                              //     QuickActionItem(
                              //       onTap: () {
                              //         Navigator.pushNamed(
                              //           context,
                              //           AppRoutes.GRIHPRAVESHPAGE,
                              //         );
                              //       },
                              //       icon: "assets/new_figma_icons/grihapravesh.png",
                              //       label: "Griha\nPravesh",
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(height: context.screenHeight * 0.02),
                              // const CategoryGrid(),
                              // SizedBox(height: context.screenHeight * 0.02),
                              // state.isLoading == false
                              //     ? AartiListSection()
                              //     : SizedBox(),
                              // // Example usage:
                              // SizedBox(height: context.screenHeight * 0.02),
                              // ThingsNotToDoCard(
                              //   title: "Things NOT to do today",
                              //   points: [
                              //     "Avoid starting new ventures",
                              //     "Refrain from financial investments",
                              //   ],
                              //   remedyText:
                              //       "🙏 Remedy: Chant Om Namah Shivaya 21 times",
                              // ),
                              // SizedBox(height: context.screenHeight * 0.02),
                              // TempleListSection(),
                              // SizedBox(height: context.screenHeight * 0.02),
                              // // RashiCard(
                              // //   title: "Your Rashi: '${BlocProvider.of<PenchangBloc>(context).state.singleeRashiResponse.data.rashiNameEn} - ${BlocProvider.of<PenchangBloc>(context).state.singleeRashiResponse.data.rashiNameHi}',",
                              // //   subtitle: context.l10n.todays Prediction",
                              // //   description:
                              // //   "Today brings positive energy for new beginnings. Focus on health and relationships.",
                              // //   emoji: "😊",
                              // //   onTap: () {
                              // //     Navigator.pushNamed(
                              // //       context,
                              // //       AppRoutes.RASHIPHAL_PAGE,
                              // //     );
                              // //   },
                              // // ),
                              // SizedBox(height: context.screenHeight * 0.02),
                              // // Text(
                              // //   "Events Near You",
                              // //   style: AppTextStyle.semiBold(
                              // //     context.screenWidth * 0.051,
                              // //     color: AppColor.appBlack,
                              // //   ),
                              // // ),
                              // // SizedBox(height: 6),
                              // // EventCard(
                              // //   image:
                              // //       "https://seoily.in/mandir-image/god-images/laxmiji.png",
                              // //   time: "7:00 PM",
                              // //   title: "Katha",
                              // //   location: "Ram Katha Mandal, Saket",
                              // //   onTap: () {
                              // //     print("Reminder added");
                              // //   },
                              // // ),
                              // SizedBox(height: 140),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (state.isLoading) AppLoader.show(state.isLoading),
                  ],
                ),
              ),

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


  void shareApp() {
    final String androidPackageName = "com.seoily.mobilemandir";
    final String iosAppId = "1234567890"; // App Store ID

    final String androidUrl =
        "https://play.google.com/store/apps/details?id=$androidPackageName";

    final String iosUrl = "https://apps.apple.com/app/id$iosAppId";

    final String shareMessage = Platform.isAndroid
        ? "🙏 Install Mobile Mandir App:\n$androidUrl"
        : "🙏 Install Mobile Mandir App:\n$iosUrl";

    Share.share(shareMessage);
  }
}
