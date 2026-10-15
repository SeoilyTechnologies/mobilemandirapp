import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/routes/exports.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../../../common/analytics/analytics_services.dart';
import '../../../../../../common/analytics/facebook_analytics.dart';
import '../../../../../../common/analytics/facebook_events.dart';
import '../../../../../../common/routes/routes.dart';
import '../../../../data/entity/category_item.dart';
import '../../../bloc/mobile_home_bloc.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../component/mobile_home_small.dart';
import 'category_card.dart';
import 'category_card_medium.dart';

class CategoriesGridSmall extends StatelessWidget {
  CategoriesGridSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 1, right: 1),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CategoryCard(
                width: context.screenWidth * 0.29,

                isCoomingSoon: false,
                title: context.l10n.aartiBhajanMantra,
                assets: [
                  "assets/categories_images/cat_1_aa_1.png",
                  "assets/categories_images/cat_1_aa_2.png",
                  "assets/categories_images/cat_1_aa_3.png",
                  "assets/categories_images/cat_1_aa_4.png",
                  // "assets/categories_images/aa_1.png",
                  // "assets/categories_images/a_2.png",
                  // "assets/categories_images/aa_3.png",
                  // "assets/categories_images/aa_4.png",
                ],
                onTap: () {
                  BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(1));
                  // context.read<AppBloc>().add(TriggerAppEvent(index));
                  // Navigator.pushNamed(
                  //   context,
                  //   AppRoutes.AARTI_CHALIS_LIST_PAGE,
                  // );
                },
              ),


              CategoryCard(
                isCoomingSoon: false,
                width: context.screenWidth * 0.29,
                title: context.l10n.godDevta,
                assets: [
                  "assets/categories_images/cat_2_aa_1.png",
                  "assets/categories_images/cat_2_aa_2.png",
                  "assets/categories_images/cat_2_aa_3.png",
                  "assets/categories_images/cat_2_aa_4.png",
                ],
                onTap: () {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOut,
                  );
                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(MobileHomeEvent.changeTopTab(3));
                },
              ),
              CategoryCard(
                isCoomingSoon: false,
                width: context.screenWidth * 0.29,
                title: context.l10n.mandirDarshan,
                assets: [
                  "assets/categories_images/cat_3_aa_1.png",
                  "assets/categories_images/cat_3_aa_2.png",
                  "assets/categories_images/cat_3_aa_3.png",
                  "assets/categories_images/cat_3_aa_4.png",
                ],
                onTap: () {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOut,
                  );
                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(MobileHomeEvent.changeTopTab(2));
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CategoryCard(
                isCoomingSoon: false,
                width: context.screenWidth * 0.29,
                title: context.l10n.pujariSantGuru,
                assets: [
                  "assets/categories_images/cat_4_aa_1.png",
                  "assets/categories_images/cat_4_aa_2.png",
                  "assets/categories_images/cat_4_aa_3.png",
                  "assets/categories_images/cat_8_aa_3.png",
                ],
                onTap: () {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOut,
                  );
                  //   BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(2));
                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(MobileHomeEvent.changeTopTab(5));
                },
              ),
              CategoryCard(
                isCoomingSoon: false,
                width: context.screenWidth * 0.29,
                title: context.l10n.animalFoodSeva,
                assets: [
                  "assets/categories_images/cat_5_aa_1.png",
                  "assets/categories_images/cat_5_aa_2.png",
                  "assets/categories_images/cat_5_aa_3.png",
                  "assets/categories_images/cat_5_aa_4.png",
                ],
                onTap: () {
                  BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(2));

                },
              ),
              CategoryCard(
                width: context.screenWidth * 0.29,
                title: context.l10n.sharadPitarpaksh,
                isCoomingSoon: false,
                assets: [
                  "assets/categories_images/cat_8_aa_1.png",
                  "assets/categories_images/cat_8_aa_2.png",
                  "assets/categories_images/cat_8_aa_3.png",
                  "assets/categories_images/cat_8_aa_4.png",
                ],
                onTap: () {
                  AnalyticsService.pitruPaksha(action: 'category_click');
                  FacebookAnalytics.logEvent(
                    FacebookEvents.pitruPaksha,
                    parameters: {'action': 'category_click'},
                  );
                  Navigator.of(context).pushNamed(AppRoutes.SHARAD_PITARPAKSH_PAGE);
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CategoryCard(
                width: context.screenWidth * 0.29,
                title: context.l10n.muhuratLagan,
                isCoomingSoon: true,
                assets: [
                  "assets/categories_images/cat_6_aa_1.png",
                  "assets/categories_images/cat_6_aa_2.png",
                  "assets/categories_images/cat_6_aa_3.png",
                  "assets/categories_images/cat_6_aa_4.png",
                ],
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.SHUBH_MUHURATE_PAGE);
                },
              ),
              CategoryCard(
                width: context.screenWidth * 0.29,
                title: context.l10n.festivalEvents,
                isCoomingSoon: true,
                assets: [
                  "assets/categories_images/cat_7_aa_1.png",
                  "assets/categories_images/cat_7_aa_2.png",
                  "assets/categories_images/cat_7_aa_3.png",
                  "assets/categories_images/cat_7_aa_4.png",
                ],
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.FESTIVAL_EVENT_PAGE);
                },
              ),
              CategoryCard(
                width: context.screenWidth * 0.29,
                title: context.l10n.communitiesGroups,
                isCoomingSoon: true,
                assets: [
                  "assets/new_design/icon/communities_one.png",
                  "assets/new_design/icon/communities_two.png",
                  "assets/new_design/icon/communities_two.png",
                  "assets/new_design/icon/live.png",
                ],
                onTap: () {
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoriesGridMedium extends StatelessWidget {
  CategoriesGridMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 0, right: 0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CategoryCardMedium(
                width: context.screenWidth * 0.29,
                isCoomingSoon: false,
                title: context.l10n.aartiBhajanMantra,
                assets: [
                  "assets/new_design/icon/aarti_ritulas_one.png",
                  "assets/new_design/icon/aarti_ritulas_two.png",
                  "assets/new_design/icon/aarti_ritulas_three.png",
                  "assets/new_design/icon/aarti_ritulas_four.png",
                ],
                onTap: () {
                  BlocProvider.of<AppBloc>(context).add(
                    TriggerAppEvent(1),
                  );
                },
              ),
              CategoryCardMedium(
                isCoomingSoon: false,
                width: context.screenWidth * 0.29,
                title: context.l10n.godDevta,
                assets: [
                  "assets/new_design/icon/god_one.png",
                  "assets/new_design/icon/god_two.png",
                  "assets/new_design/icon/god_three.png",
                  "assets/new_design/icon/god_four.png",
                ],
                onTap: () {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOut,
                  );

                  BlocProvider.of<MobileHomeBloc>(context).add(
                    MobileHomeEvent.changeTopTab(3),
                  );
                },
              ),
              CategoryCardMedium(
                isCoomingSoon: false,
                width: context.screenWidth * 0.29,
                title: context.l10n.mandirDarshan,
                assets: [
                  "assets/new_design/icon/darshan_one.png",
                  "assets/new_design/icon/darshan_two.png",
                  "assets/new_design/icon/darshan_three.png",
                  "assets/new_design/icon/darshan_four.png",
                ],
                onTap: () {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOut,
                  );

                  BlocProvider.of<MobileHomeBloc>(context).add(
                    MobileHomeEvent.changeTopTab(2),
                  );
                },
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CategoryCardMedium(
                isCoomingSoon: false,
                width: context.screenWidth * 0.29,
                title: context.l10n.pujariSantGuru,
                assets: [
                  "assets/new_design/icon/pujari_sane_one.png",
                  "assets/new_design/icon/pujari_sane_two.png",
                  "assets/new_design/icon/pujari_sane_three.png",
                  "assets/new_design/icon/darshan_one.png",
                ],
                onTap: () {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOut,
                  );

                  BlocProvider.of<MobileHomeBloc>(context).add(
                    MobileHomeEvent.changeTopTab(5),
                  );
                },
              ),
              CategoryCardMedium(
                isCoomingSoon: false,
                width: context.screenWidth * 0.29,
                title: context.l10n.animalFoodSeva,
                assets: [
                  "assets/new_design/icon/sewa_one.png",
                  "assets/new_design/icon/sewa_two.png",
                  "assets/new_design/icon/sewa_three.png",
                  "assets/new_design/icon/sewa_four.png",
                ],
                onTap: () {
                  BlocProvider.of<AppBloc>(context).add(
                    TriggerAppEvent(2),
                  );
                },
              ),
              CategoryCardMedium(
                width: context.screenWidth * 0.29,
                title: context.l10n.sharadPitarpaksh,
                isCoomingSoon: false,
                assets: [
                  "assets/new_design/icon/sharad_one.png",
                  "assets/new_design/icon/sharad_two.png",
                  "assets/new_design/icon/sharad_three.png",
                  "assets/new_design/icon/sharad_four.png",
                ],
                onTap: () {
                  AnalyticsService.pitruPaksha(action: 'category_click');
                  FacebookAnalytics.logEvent(
                    FacebookEvents.pitruPaksha,
                    parameters: {'action': 'category_click'},
                  );
                  Navigator.of(context).pushNamed(AppRoutes.SHARAD_PITARPAKSH_PAGE);
                },
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CategoryCardMedium(
                width: context.screenWidth * 0.29,
                title: context.l10n.muhuratLagan,
                isCoomingSoon: true,
                assets: [
                  "assets/new_design/icon/muhurat_one.png",
                  "assets/new_design/icon/muhurat_two.png",
                  "assets/new_design/icon/muhurat_three.png",
                  "assets/new_design/icon/muhurat_four.png",
                ],
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.SHUBH_MUHURATE_PAGE);
                },
              ),
              CategoryCardMedium(
                width: context.screenWidth * 0.29,
                title: context.l10n.festivalEvents,
                isCoomingSoon: true,
                assets: [
                  "assets/new_design/icon/festival_one.png",
                  "assets/new_design/icon/festival_two.png",
                  "assets/new_design/icon/festival_three.png",
                  "assets/new_design/icon/festival_four.png",
                ],
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.FESTIVAL_EVENT_PAGE);
                },
              ),
              CategoryCardMedium(
                width: context.screenWidth * 0.29,
                title: context.l10n.communitiesGroups,
                isCoomingSoon: true,
                assets: [
                  "assets/new_design/icon/communities_one.png",
                  "assets/new_design/icon/communities_two.png",
                  "assets/new_design/icon/communities_two.png",
                  "assets/new_design/icon/live.png",
                ],
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class CategoriesGridMedium extends StatelessWidget {
//   CategoriesGridMedium({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 0, right: 0),
//       alignment: Alignment.center,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               CategoryCardMedium(
//                 width: context.screenWidth * 0.29,
//                 isCoomingSoon: false,
//                 title: 'Aarti, Bhajan &\nRituals',
//                 assets: [
//                   "assets/new_design/icon/aarti_ritulas_one.png",
//                   "assets/new_design/icon/aarti_ritulas_two.png",
//                   "assets/new_design/icon/aarti_ritulas_three.png",
//                   "assets/new_design/icon/aarti_ritulas_four.png",
//                 ],
//                 onTap: () {
//                   Navigator.pushNamed(
//                     context,
//                     AppRoutes.AARTI_CHALIS_LIST_PAGE,
//                   );
//                   print('Card tapped');
//                 },
//               ),
//               CategoryCardMedium(
//                 width: context.screenWidth * 0.29,
//                 title: 'Spiritual\nData',
//                 assets: [
//                   "assets/new_design/icon/astro_one.png",
//                   "assets/new_design/icon/astro_two.png",
//                   "assets/new_design/icon/astro_three.png",
//                   "assets/new_design/icon/astro_four.png",
//                 ],
//                 onTap: () {
//                   print('Card tapped');
//                 },
//               ),
//               CategoryCardMedium(
//                 width: context.screenWidth * 0.29,
//                 title: 'Muhurat & \nLagan',
//                 assets: [
//                   "assets/new_design/icon/muhurat_one.png",
//                   "assets/new_design/icon/muhurat_two.png",
//                   "assets/new_design/icon/muhurat_three.png",
//                   "assets/new_design/icon/muhurat_four.png",
//                 ],
//                 onTap: () {
//                   print('Card tapped');
//                 },
//               ),
//             ],
//           ),
//           SizedBox(height: 12),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               CategoryCardMedium(
//                 width: context.screenWidth * 0.29,
//                 title: context.l10n.mandirDarshan,
//                 assets: [
//                   "assets/new_design/icon/darshan_one.png",
//                   "assets/new_design/icon/darshan_two.png",
//                   "assets/new_design/icon/darshan_three.png",
//                   "assets/new_design/icon/darshan_four.png",
//                 ],
//                 onTap: () {
//                   print('Card tapped');
//                 },
//               ),
//               CategoryCardMedium(
//                 width: context.screenWidth * 0.29,
//                 title: 'Pujari, Sant & \nGuru',
//                 assets: [
//                   "assets/new_design/icon/pujari_sane_one.png",
//                   "assets/new_design/icon/pujari_sane_two.png",
//                   "assets/new_design/icon/pujari_sane_three.png",
//                   "assets/new_design/icon/darshan_one.png",
//                 ],
//                 onTap: () {
//                   print('Card tapped');
//                 },
//               ),
//               CategoryCardMedium(
//                 width: context.screenWidth * 0.29,
//                 title: 'Products & \nSeva',
//                 assets: [
//                   "assets/new_design/icon/product_one.png",
//                   "assets/new_design/icon/product_two.png",
//                   "assets/new_design/icon/product_three.png",
//                   "assets/new_design/icon/product_four.png",
//                 ],
//                 onTap: () {
//                   print('Card tapped');
//                 },
//               ),
//             ],
//           ),
//           SizedBox(height: 12),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               CategoryCardMedium(
//                 width: context.screenWidth * 0.29,
//                 title: 'Festival & \nEvents',
//                 assets: [
//                   "assets/new_design/icon/festival_one.png",
//                   "assets/new_design/icon/festival_two.png",
//                   "assets/new_design/icon/festival_three.png",
//                   "assets/new_design/icon/festival_four.png",
//                 ],
//                 onTap: () {
//                   print('Card tapped');
//                 },
//               ),
//               CategoryCardMedium(
//                 width: context.screenWidth * 0.29,
//                 title: context.l10n.sharadPitarpaksh,
//                 assets: [
//                   "assets/new_design/icon/sharad_one.png",
//                   "assets/new_design/icon/sharad_two.png",
//                   "assets/new_design/icon/sharad_three.png",
//                   "assets/new_design/icon/sharad_four.png",
//                 ],
//                 onTap: () {
//                   print('Card tapped');
//                 },
//               ),
//               CategoryCardMedium(
//                 width: context.screenWidth * 0.29,
//                 title: context.l10n.communitiesGroups,
//                 assets: [
//                   "assets/new_design/icon/communities_one.png",
//                   "assets/new_design/icon/communities_two.png",
//                   "assets/new_design/icon/communities_two.png",
//                   "assets/new_design/icon/live.png",
//                 ],
//                 onTap: () {
//                   print('Card tapped');
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class CategoriesGridLarge extends StatelessWidget {
  CategoriesGridLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 8),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CategoryCardLarg(
                width: context.screenWidth * 0.3,
                isCoomingSoon: false,
                title: 'Aarti, Bhajan &\nRituals',
                assets: [
                  "assets/new_design/icon/aarti_ritulas_one.png",
                  "assets/new_design/icon/aarti_ritulas_two.png",
                  "assets/new_design/icon/aarti_ritulas_three.png",
                  "assets/new_design/icon/aarti_ritulas_four.png",
                ],
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.AARTI_CHALIS_LIST_PAGE,
                  );
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.3,
                title: 'Spiritual Data',
                assets: [
                  "assets/new_design/icon/astro_one.png",
                  "assets/new_design/icon/astro_two.png",
                  "assets/new_design/icon/astro_three.png",
                  "assets/new_design/icon/astro_four.png",
                ],
                onTap: () {
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.3,
                title: context.l10n.sharadPitarpaksh,
                isCoomingSoon: false,
                assets: [
                  "assets/new_design/icon/sharad_one.png",
                  "assets/new_design/icon/sharad_two.png",
                  "assets/new_design/icon/sharad_three.png",
                  "assets/new_design/icon/sharad_four.png",
                ],
                onTap: () {
                  AnalyticsService.pitruPaksha(action: 'category_click');
                  FacebookAnalytics.logEvent(
                    FacebookEvents.pitruPaksha,
                    parameters: {'action': 'category_click'},
                  );
                  Navigator.of(context).pushNamed(AppRoutes.SHARAD_PITARPAKSH_PAGE);
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CategoryCardLarg(
                width: context.screenWidth * 0.3,
                title: context.l10n.mandirDarshan,
                assets: [
                  "assets/new_design/icon/darshan_one.png",
                  "assets/new_design/icon/darshan_two.png",
                  "assets/new_design/icon/darshan_three.png",
                  "assets/new_design/icon/darshan_four.png",
                ],
                onTap: () {
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.3,
                title: context.l10n.pujariSantGuru,
                assets: [
                  "assets/new_design/icon/pujari_sane_one.png",
                  "assets/new_design/icon/pujari_sane_two.png",
                  "assets/new_design/icon/pujari_sane_three.png",
                  "assets/new_design/icon/darshan_one.png",
                ],
                onTap: () {
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.3,
                title: context.l10n.productsSeva,
                assets: [
                  "assets/new_design/icon/product_one.png",
                  "assets/new_design/icon/product_two.png",
                  "assets/new_design/icon/product_three.png",
                  "assets/new_design/icon/product_four.png",
                ],
                onTap: () {
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CategoryCardLarg(
                width: context.screenWidth * 0.3,
                title: context.l10n.muhuratLagan,
                isCoomingSoon: true,
                assets: [
                  "assets/new_design/icon/muhurat_one.png",
                  "assets/new_design/icon/muhurat_two.png",
                  "assets/new_design/icon/muhurat_three.png",
                  "assets/new_design/icon/muhurat_four.png",
                ],
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.SHUBH_MUHURATE_PAGE);
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.3,
                title: context.l10n.festivalEvents,
                isCoomingSoon: true,
                assets: [
                  "assets/new_design/icon/festival_one.png",
                  "assets/new_design/icon/festival_two.png",
                  "assets/new_design/icon/festival_three.png",
                  "assets/new_design/icon/festival_four.png",
                ],
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.FESTIVAL_EVENT_PAGE);
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.3,
                title: context.l10n.communitiesGroups,
                isCoomingSoon: true,
                assets: [
                  "assets/new_design/icon/communities_one.png",
                  "assets/new_design/icon/communities_two.png",
                  "assets/new_design/icon/communities_two.png",
                  "assets/new_design/icon/live.png",
                ],
                onTap: () {
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

///landscape large

class CategoriesGridLargeLandScape extends StatelessWidget {
  CategoriesGridLargeLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 8),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CategoryCardLarg(
                width: context.screenWidth * 0.17,
                isCoomingSoon: false,
                title: 'Aarti, Bhajan &\nRituals',
                assets: [
                  "assets/new_design/icon/aarti_ritulas_one.png",
                  "assets/new_design/icon/aarti_ritulas_two.png",
                  "assets/new_design/icon/aarti_ritulas_three.png",
                  "assets/new_design/icon/aarti_ritulas_four.png",
                ],
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.AARTI_CHALIS_LIST_PAGE,
                  );
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.17,
                title: 'Spiritual\nData',
                assets: [
                  "assets/new_design/icon/astro_one.png",
                  "assets/new_design/icon/astro_two.png",
                  "assets/new_design/icon/astro_three.png",
                  "assets/new_design/icon/astro_four.png",
                ],
                onTap: () {
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.17,
                title: context.l10n.sharadPitarpaksh,
                isCoomingSoon: false,
                assets: [
                  "assets/new_design/icon/sharad_one.png",
                  "assets/new_design/icon/sharad_two.png",
                  "assets/new_design/icon/sharad_three.png",
                  "assets/new_design/icon/sharad_four.png",
                ],
                onTap: () {
                  AnalyticsService.pitruPaksha(action: 'category_click');
                  FacebookAnalytics.logEvent(
                    FacebookEvents.pitruPaksha,
                    parameters: {'action': 'category_click'},
                  );
                  Navigator.of(context).pushNamed(AppRoutes.SHARAD_PITARPAKSH_PAGE);
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.17,
                title: context.l10n.mandirDarshan,
                assets: [
                  "assets/new_design/icon/darshan_one.png",
                  "assets/new_design/icon/darshan_two.png",
                  "assets/new_design/icon/darshan_three.png",
                  "assets/new_design/icon/darshan_four.png",
                ],
                onTap: () {
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.17,
                title: context.l10n.pujariSantGuru,
                assets: [
                  "assets/new_design/icon/pujari_sane_one.png",
                  "assets/new_design/icon/pujari_sane_two.png",
                  "assets/new_design/icon/pujari_sane_three.png",
                  "assets/new_design/icon/darshan_one.png",
                ],
                onTap: () {
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CategoryCardLarg(
                width: context.screenWidth * 0.17,
                title: context.l10n.productsSeva,
                assets: [
                  "assets/new_design/icon/product_one.png",
                  "assets/new_design/icon/product_two.png",
                  "assets/new_design/icon/product_three.png",
                  "assets/new_design/icon/product_four.png",
                ],
                onTap: () {
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.17,
                title: context.l10n.muhuratLagan,
                isCoomingSoon: true,
                assets: [
                  "assets/new_design/icon/muhurat_one.png",
                  "assets/new_design/icon/muhurat_two.png",
                  "assets/new_design/icon/muhurat_three.png",
                  "assets/new_design/icon/muhurat_four.png",
                ],
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.SHUBH_MUHURATE_PAGE);
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.17,
                title: context.l10n.festivalEvents,
                isCoomingSoon: true,
                assets: [
                  "assets/new_design/icon/festival_one.png",
                  "assets/new_design/icon/festival_two.png",
                  "assets/new_design/icon/festival_three.png",
                  "assets/new_design/icon/festival_four.png",
                ],
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.FESTIVAL_EVENT_PAGE);
                },
              ),
              CategoryCardLarg(
                width: context.screenWidth * 0.17,
                title: context.l10n.communitiesGroups,
                isCoomingSoon: true,
                assets: [
                  "assets/new_design/icon/communities_one.png",
                  "assets/new_design/icon/communities_two.png",
                  "assets/new_design/icon/communities_two.png",
                  "assets/new_design/icon/live.png",
                ],
                onTap: () {
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: context.screenWidth * 0.017),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[],
            ),
          ),
        ],
      ),
    );
  }
}
