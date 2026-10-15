// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mandirapp/pages/application/presentatioin/bloc/app_bloc.dart';
// import 'package:mandirapp/pages/home_main/updated_design/component/promo_banner.dart';
// import 'package:mandirapp/pages/panchang/presentation/bloc/penchang_bloc.dart';
// import '../../../../common/routes/routes.dart';
// import '../../../panchang/presentation/bloc/penchang_event.dart';
//
// class BannerCarousel extends StatefulWidget {
//   const BannerCarousel({super.key});
//
//   @override
//   State<BannerCarousel> createState() => _BannerCarouselState();
// }
//
// class _BannerCarouselState extends State<BannerCarousel> {
//   int _currentIndex = 0;
//
//   // 🪔 List of Mandir App Banners
//   final List<Map<String, dynamic>> banners = [
//     {
//       "title": "🔯 Today’s Rashi",
//       "tagline":"Cosmic Daily Guidance",
//       "buttonText": "View Rashi",
//       "subtitle": "Get your zodiac prediction and analyse your day.",
//       "bgColor": const Color(0xFF5B135C), // deep purple
//       "imagePath": "assets/new_godimages/Hanuman ji.png",
//     },
//     {
//       "title": "🕉 Shubh Muhurat",
//       "subtitle": "Find the best time to begin important tasks with precision.",
//       "buttonText": "Check Muhurat",
//       "tagline":"Auspicious Timings Only",
//       "bgColor": const Color(0xFF8A001F), // deep maroon-red
//       "imagePath": "assets/new_godimages/GANESHA.png",
//     },
//     {
//       "title": "🎉 Today’s Festival",
//       "tagline":"Celebrate Today’s Spirit",
//       "subtitle":
//           "Discover today’s festival and its spiritual meaning.",
//       "buttonText": "View Festival",
//       "bgColor": const Color(0xFF7A3E00), // warm orange-brown
//       "imagePath": "assets/updated/LAXIMI.png",
//     },
//     {
//       "title": "🙏 Special Pooja",
//       "tagline":"Divine Ritual Guide",
//       "subtitle": "Explore powerful poojas, their benefits, and the spiritual path.",
//       "buttonText": "Explore Pooja",
//       "bgColor": const Color(0xFF3B0A45), // dark plum
//       "imagePath": "assets/new_godimages/Krishna ji.png",
//     },
//     {
//       "title": "📿 Aaj Ka Panchang",
//       "tagline":"Daily Hindu Calendar",
//       "subtitle": "Check tithi, nakshatra, yoga, and auspicious timings for the day.",
//       "buttonText": "View Panchang",
//       "bgColor": const Color(0xFF224C68), // deep blue
//       "imagePath": "assets/new_godimages/Shiv ji.png",
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CarouselSlider.builder(
//           itemCount: banners.length,
//           itemBuilder: (context, index, realIdx) {
//             final item = banners[index];
//             return PromoBanner(
//               tagline: item["tagline"],
//               title: item["title"],
//               subtitle: item["subtitle"],
//               buttonText: item["buttonText"],
//               bgColor: item["bgColor"],
//               imagePath: item["imagePath"],
//               onPressed: () {
//                 if (index == 0) {
//                 } else if (index == 1) {
//                 } else if (index == 3) {
//                   Navigator.pushNamed(context, AppRoutes.PUJAPAGE);
//                 } else if (index == 4) {
//                   // BlocProvider.of<PenchangBloc>(
//                   //   context,
//                   // ).add(PenchangEvent.getPenchang());
//                   BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(1));
//                 }
//               },
//             );
//           },
//           options: CarouselOptions(
//             height: 225,
//             enlargeCenterPage: true,
//             autoPlay: true,
//             autoPlayInterval: const Duration(seconds: 5),
//             autoPlayAnimationDuration: const Duration(milliseconds: 800),
//             viewportFraction: 1.0,
//             onPageChanged: (index, reason) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//           ),
//         ),
//
//         const SizedBox(height: 8),
//
//         // 🔘 Dots indicator
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: banners.asMap().entries.map((entry) {
//             return AnimatedContainer(
//               duration: const Duration(milliseconds: 300),
//               width: _currentIndex == entry.key ? 16 : 8,
//               height: 9,
//               margin: const EdgeInsets.symmetric(horizontal: 4),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: _currentIndex == entry.key
//                     ? Color(0xFF8A001F).withOpacity(0.7)
//                     : Color(0xFF8A001F),
//               ),
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }
// }
