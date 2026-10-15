// import 'package:flutter/material.dart';
// import 'package:mandirapp/common/component/app_text_style.dart';
// import 'package:mandirapp/common/values/app_color.dart';
// import 'package:mandirapp/common/values/fonts.dart';
// import 'package:mandirapp/common/values/screenUtils.dart';
// import '../../../common/component/common_toggle_tab.dart';
// import '../../../common/routes/routes.dart';
// import '../../application/presentatioin/ui/custom_sliver_appbar.dart';
// import 'component/banner_carousel.dart';
// import 'component/daily_horoscope_card.dart';
// import 'component/daily_luck_card.dart';
// import 'component/deity_card.dart';
// import 'component/icon_text_item.dart';
// import 'component/prayer_time_card.dart';
// import 'component/search_bar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: CustomScrollView(
//         slivers: [
//
//           /// ---- Sliver AppBar Here ---- ///
//           const CustomSliverAppbar(),
//
//           /// ---- MAIN CONTENT BELOW ---- ///
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(12),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//
//                   const SizedBox(height: 20),
//
//                   // DAILY HOROSCOPE
//                   // const DailyHoroscopeCard(
//                   //   date: "14-11-2025",
//                   //   luckyColors: [Colors.brown, Colors.red],
//                   //   luckyNumber: "7",
//                   //   luckyTime: "05:47",
//                   //   moodOfDay: "Happy",
//                   //   moodEmoji: "😍",
//                   // ),
//
//                   const SizedBox(height: 20),
//
//                   Padding(
//                     padding: const EdgeInsets.only(left: 12),
//                     child: Text(
//                       "Quick Links",
//                       style: AppTextStyle.bold(
//                         context.screenWidth * 0.05,
//                         color: Color(0xFF8A001F),
//                       ),
//                     ),
//                   ),
//
//                  /// BannerCarousel(),
//
//                   const SizedBox(height: 25),
//
//                   Padding(
//                     padding: const EdgeInsets.only(left: 12),
//                     child: Text(
//                       "Features",
//                       style: AppTextStyle.bold(
//                         context.screenWidth * 0.05,
//                         color: Color(0xFF8A001F),
//                       ),
//                     ),
//                   ),
//
//                   const SizedBox(height: 6),
//
//                   // HORIZONTAL ICON LIST
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 6),
//                     child: SizedBox(
//                       height: 100,
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: 5,
//                         itemBuilder: (context, index) {
//                           final items = [
//                             {'icon': Icons.temple_buddhist, 'text': 'Text 1'},
//                             {'icon': Icons.favorite, 'text': 'Text 2'},
//                             {'icon': Icons.star, 'text': 'Text 3'},
//                             {'icon': Icons.spa, 'text': 'Text 4'},
//                             {'icon': Icons.wb_sunny, 'text': 'Text 5'},
//                           ];
//
//                           final item = items[index];
//
//                           return Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 6),
//                             child: IconTextItem(
//                               icon: item['icon'] as IconData,
//                               text: item['text'] as String,
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//
//                   const SizedBox(height: 16),
//
//                   // TAB TOGGLE
//                   CustomToggleSwitch(
//                     selectedTabIndex: 1,
//                     tabNames: ['Aarti', 'Chalisa', 'Katha', 'Mantra'],
//                     onTabChanged: (index) {},
//                   ),
//
//                   const SizedBox(height: 16),
//
//                   /// DEITY CARDS ROW 1
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pushNamed(context, AppRoutes.AARTI_PLAYER_PAGE,
//
//                       );
//                     },
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: DeityCard(
//                             image: "assets/new_godimages/SARSWATI MATA.png",
//                           ),
//                         ),
//                         SizedBox(width: 8),
//                         Expanded(
//                           child: DeityCard(
//                             image: "assets/new_godimages/SARSWATI MATA.png",
//                           ),
//                         ),
//                         SizedBox(width: 8),
//                         Expanded(
//                           child: DeityCard(
//                             image: "assets/new_godimages/SARSWATI MATA.png",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   const SizedBox(height: 8),
//
//                   /// DEITY ROW 2
//                   Row(
//                     children: [
//                       Expanded(
//                         child: DeityCard(
//                           image: "assets/new_godimages/SARSWATI MATA.png",
//                         ),
//                       ),
//                       SizedBox(width: 8),
//                       Expanded(
//                         child: DeityCard(
//                           image: "assets/new_godimages/SARSWATI MATA.png",
//                         ),
//                       ),
//                       SizedBox(width: 8),
//                       Expanded(
//                         child: DeityCard(
//                           image: "assets/new_godimages/SARSWATI MATA.png",
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   const SizedBox(height: 8),
//
//                   Center(
//                     child: TextButton(
//                       style: TextButton.styleFrom(
//                         backgroundColor: Colors.grey.shade200,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
//                       ),
//                       onPressed: () {},
//                       child: Text(
//                         "View All",
//                         style: TextStyle(fontSize: 13, color: Colors.black87),
//                       ),
//                     ),
//                   ),
//
//                   const SizedBox(height: 120),
//
//                 ],
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
//
// // class HomeScreen extends StatelessWidget {
// //   const HomeScreen({super.key});
// //
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SizedBox(
// //
// //       child:  Scaffold(
// //       backgroundColor: Colors.transparent,
// //
// //
// //       body: Container(
// //         color: Colors.transparent,
// //
// //         child: SingleChildScrollView(
// //           // padding: const EdgeInsets.all(12),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //                //SizedBox(height: context.screenHeight*0.115,),
// //
// //               // Header
// //               Padding(
// //                 padding: const EdgeInsets.all(12),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //
// //                   children: [
// //
// //                     const SizedBox(height: 20),
// //                     // const PrayerTimeCard(
// //                     //   prayerName: "Dhuhr Prayer Time",
// //                     //   currentTime: "1:00 PM",
// //                     //   nextPrayerInfo: "Asr in less than 50 minutes",
// //                     //   nextPrayerTime: "3:45 PM",
// //                     // ),
// //                     // const DailyLuckCard(
// //                     //   todayDate: "31 Oct 2025",
// //                     //   tithi: "Dwitiya, Shukla Paksha",
// //                     //   luckyColors: [Colors.orange, Colors.green],
// //                     //   luckyNumber: "7",
// //                     //   luckyTime: "1:30 PM - 3:00 PM",
// //                     //   moodOfDay: "Energetic and focused. Great day for new beginnings!",
// //                     // ),
// //                     const DailyHoroscopeCard(
// //                       date: "14-11-2025",
// //                       luckyColors: [Colors.brown, Colors.red],
// //                       luckyNumber: "7",
// //                       luckyTime: "05:47",
// //                       moodOfDay: "Happy",
// //                       moodEmoji: "😍",
// //                     ),
// //
// //                     const SizedBox(height: 20),
// //                     Padding(padding: EdgeInsets.only(left: 12),
// //                       child:  Text(
// //                         "Quick Links",
// //                         style: AppTextStyle.bold(
// //                           context.screenWidth * 0.05,
// //                           color:  Color(0xFF8A001F),
// //                         ),
// //                       ),),
// //                     BannerCarousel(),
// //
// //                     // const TempleCard(image: "assets/images/bajrangbali_2.png"),
// //
// //                     const SizedBox(height: 25),
// //                     Padding(padding: EdgeInsets.only(left: 12),
// //                       child:  Text(
// //                         "Features",
// //                         style: AppTextStyle.bold(
// //                           context.screenWidth * 0.05,
// //                           color:  Color(0xFF8A001F),
// //                         ),
// //                       ),),
// //                     const SizedBox(height: 6),
// //                     // Icons Row
// //                     Padding(
// //                       padding: const EdgeInsets.only(left: 6, right: 6),
// //                       child: SizedBox(
// //                         height: 100,
// //                         // set a fixed height to avoid unbounded height errors
// //                         child: ListView.builder(
// //                           padding: EdgeInsets.zero,
// //                           scrollDirection: Axis.horizontal,
// //                           itemCount: 5, // number of items
// //                           itemBuilder: (context, index) {
// //                             // list of icons and texts
// //                             final items = [
// //                               {
// //                                 'icon': Icons.temple_buddhist,
// //                                 'text': 'Text 1',
// //                               },
// //                               {'icon': Icons.favorite, 'text': 'Text 2'},
// //                               {'icon': Icons.star, 'text': 'Text 3'},
// //                               {'icon': Icons.spa, 'text': 'Text 4'},
// //                               {'icon': Icons.wb_sunny, 'text': 'Text 5'},
// //                             ];
// //
// //                             final item = items[index];
// //
// //                             return Padding(
// //                               padding: const EdgeInsets.symmetric(
// //                                 horizontal: 6,
// //                               ),
// //                               child: IconTextItem(
// //                                 icon: item['icon'] as IconData,
// //                                 text: item['text'] as String,
// //                               ),
// //                             );
// //                           },
// //                         ),
// //                       ),
// //                     ),
// //
// //                     //const SizedBox(height: 18),
// //                     // BannerGallery(
// //                     //   images: [
// //                     //     "assets/images/bajrangbali_2.png",
// //                     //     "assets/images/bajrangbali_2.png",
// //                     //     "assets/images/bajrangbali_2.png",
// //                     //     "assets/images/bajrangbali_2.png",
// //                     //   ],
// //                     // ),
// //                     const SizedBox(height: 16),
// //
// //                     const SizedBox(height: 16),
// //
// //                     // Category Buttons
// //                     // Row(
// //                     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     //   children: [
// //                     //     CategoryButton(text: "Aarti", selected: true),
// //                     //     CategoryButton(text: "Chalisa"),
// //                     //     CategoryButton(text: "Katha"),
// //                     //     CategoryButton(text: "Mantra"),
// //                     //   ],
// //                     // ),
// //                     Padding(
// //                       padding: EdgeInsets.symmetric(
// //                         horizontal: context.screenWidth * 0.00,
// //                         vertical: 0,
// //                       ),
// //                       child: Container(
// //                         child: CustomToggleSwitch(
// //                           selectedTabIndex: 1,
// //                           tabNames: ['Aarti', 'Chalisa', 'Katha', 'Mantra'],
// //                           onTabChanged: (index) {
// //                             print(index);
// //                           },
// //                         ),
// //                       ),
// //                     ),
// //
// //                     const SizedBox(height: 16),
// //                     // Bottom Cards
// //                     GestureDetector(
// //                       onTap: () {
// //                         Navigator.pushNamed(
// //                           context,
// //                           AppRoutes.AARTI_PLAYER_PAGE,
// //                         );
// //                       },
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                         children: [
// //                           Expanded(
// //                             child: DeityCard(
// //                               image:
// //                               "assets/new_godimages/SARSWATI MATA.png",
// //                             ),
// //                           ),
// //                           SizedBox(width: 8),
// //                           Expanded(
// //                             child: DeityCard(
// //                               image:
// //                               "assets/new_godimages/SARSWATI MATA.png",
// //                             ),
// //                           ),
// //                           SizedBox(width: 8),
// //                           Expanded(
// //                             child: DeityCard(
// //                               image:
// //                               "assets/new_godimages/SARSWATI MATA.png",
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //
// //                     SizedBox(height: 8),
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Expanded(
// //                           child: DeityCard(
// //                             image: "assets/new_godimages/SARSWATI MATA.png",
// //                           ),
// //                         ),
// //                         SizedBox(width: 8),
// //                         Expanded(
// //                           child: DeityCard(
// //                             image: "assets/new_godimages/SARSWATI MATA.png",
// //                           ),
// //                         ),
// //                         SizedBox(width: 8),
// //                         Expanded(
// //                           child: DeityCard(
// //                             image: "assets/new_godimages/SARSWATI MATA.png",
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     SizedBox(height: 8),
// //                     Center(
// //                       child: TextButton(
// //                         style: TextButton.styleFrom(
// //                           backgroundColor: Colors.grey.shade200,
// //                           shape: RoundedRectangleBorder(
// //                             borderRadius: BorderRadius.circular(20),
// //                           ),
// //                           padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
// //                           minimumSize: const Size(0, 28), // thin height
// //                         ),
// //                         onPressed: () {},
// //                         child: Text(
// //                           "View All",
// //                           style: TextStyle(
// //                             fontSize: 13,
// //                             color: Colors.black87,
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //
// //
// //                     SizedBox(height: 120),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     ),
// //     );
// //   }
// // }
