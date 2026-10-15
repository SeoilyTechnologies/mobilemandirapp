// import 'package:flutter/material.dart';
// import 'package:mandirapp/common/component/app_text_style.dart';
// import 'package:mandirapp/common/values/app_color.dart';
// import 'package:mandirapp/common/values/screenUtils.dart';
//
// class DailyHoroscopeCard extends StatelessWidget {
//   final String date;
//   final List<Color> luckyColors;
//   final String luckyNumber;
//   final String luckyTime;
//   final String moodOfDay;
//   final String moodEmoji;
//
//   const DailyHoroscopeCard({
//     super.key,
//     required this.date,
//     required this.luckyColors,
//     required this.luckyNumber,
//     required this.luckyTime,
//     required this.moodOfDay,
//     required this.moodEmoji,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 230,
//       decoration: BoxDecoration(
//         //color: const Color(0xFF2B0A14).withOpacity(0.4),
//         // deep maroon background
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: const Color(0xFFFFC107), width: 2),
//         // golden border
//        image: const DecorationImage(
//          //image: AssetImage('assets/new_godimages/horoscope_background.png'), // optional celestial bg
//          image: AssetImage(''), // optional celestial bg
//           fit: BoxFit.cover,
//          //opacity: 0.15,
//         ),
//       ),
//       padding: const EdgeInsets.all(12),
//       child: Container(
//         //padding: const EdgeInsets.all(4),
//
//         decoration: BoxDecoration(
//           color: Colors.black.withOpacity(0.8),
//           image: const DecorationImage(
//             image: AssetImage('assets/new_godimages/horoscope_background.png'), // optional celestial bg
//           //  image: AssetImage('assets/background_image/horscope_background.jpg'), // optional celestial bg
//             fit: BoxFit.contain,
//
//             //opacity: 0.15,
//           ),
//            // color: const Color(0xFF2B0A14),
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(
//             color: Colors.grey, // 🔸 your desired border color
//             width: 2,             // border thickness
//           ),
//         ),
//         child: Padding(padding: EdgeInsets.all(8.0),
//         child: Stack(
//           clipBehavior: Clip.none,
//           children: [
//             // Right side big circle placeholder (for zodiac icon or moon)
//             Align(
//               alignment: Alignment.topRight,
//               child: Column(
//                 spacing: 0,
//                 children: <Widget>[
//                   Container(
//                     padding: EdgeInsets.zero,
//                     width: 110,
//                     height: 140,
//                     decoration: BoxDecoration(
//                       //  color: Colors.white,
//                       shape: BoxShape.rectangle,
//                       image: const DecorationImage(
//                         image: AssetImage(''), // optional celestial bg
//                         fit: BoxFit.contain,
//                         //opacity: 0.15,
//                       ),
//                     ),
//                   ),
//                   Text("Gemini",style: AppTextStyle.bold(context.screenWidth*0.05,color: Colors.amber.shade600),)
//                 ],
//               )
//             ),
//
//             // Main content (left side)
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Date
//                 Text(
//                   date,
//                   style: AppTextStyle.bold(context.screenWidth*0.04,color: Colors.white),
//                 ),
//                 const SizedBox(height: 8),
//
//                 // Header text
//                  Text(
//                   "Your Daily horoscope is ready !",
//                   style:AppTextStyle.semiBold(context.screenWidth*0.035,color: Colors.white),
//                 ),
//                 const SizedBox(height: 4),
//
//                 SizedBox(width: 180,
//                 child:   Text(
//                   "Newspapers may bring knowledge of strange events that capture your imagination. You might want to learn more about the stories and similar events. Your mind is sharp enough to grasp it all, yet there will still be hidden elements that render it that much more fascinating. The human mind and its dark side might be especially interesting to you today.",
//                   maxLines:2,style: AppTextStyle.medium(context.screenWidth*0.033,color: Colors.white),
//                 ),),
//                TextButton(
//                   style: TextButton.styleFrom(
//                     backgroundColor: AppColor.primary1,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(14),
//                     ),
//                     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0), // THIN
//                     minimumSize: const Size(0, 26), // reduces height
//                   ),
//                   onPressed: () {},
//                   child:  Text(
//                     "Read More",
//                     style: AppTextStyle.medium(12,color: Colors.white),
//                   ),
//                 ),
//                 // Lucky color + Mood
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     // Lucky Color Section
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       spacing: 10,
//                       children: [
//                          Text(
//                           "Lucky Numbers",
//                           style: AppTextStyle.medium(context.screenWidth*0.035,color: Colors.white),
//                         ),
//                         Text(
//                           "10",
//                           style: AppTextStyle.medium(context.screenWidth*0.039,color: Colors.white),
//                         ),
//                       ],
//                     ),
//
//                   ],
//                 ),
//
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//
//
//                     const SizedBox(height: 6),
//
//                     // Lucky number and time
//                     // Row(
//                     //   mainAxisAlignment: MainAxisAlignment.start,
//                     //   children: [
//                     //     // Lucky Number
//                     //     Column(
//                     //       crossAxisAlignment: CrossAxisAlignment.center,
//                     //       children: [
//                     //         Text(
//                     //           "Lucky Number",
//                     //           style: TextStyle(
//                     //             color: Colors.white70,
//                     //             fontSize: 13,
//                     //           ),
//                     //         ),
//                     //         const SizedBox(height: 6),
//                     //         Text(
//                     //           luckyNumber,
//                     //           style: const TextStyle(
//                     //             color: Colors.white,
//                     //             fontSize: 15,
//                     //             fontWeight: FontWeight.bold,
//                     //           ),
//                     //         ),
//                     //       ],
//                     //     ),
//                     //     SizedBox(width: 54),
//                     //     // Lucky Time
//                     //     Column(
//                     //       crossAxisAlignment: CrossAxisAlignment.center,
//                     //       children: [
//                     //         Text(
//                     //           "Lucky Time",
//                     //           style: TextStyle(
//                     //             color: Colors.white70,
//                     //             fontSize: 13,
//                     //           ),
//                     //         ),
//                     //         const SizedBox(height: 6),
//                     //         Text(
//                     //           luckyTime,
//                     //           style: const TextStyle(
//                     //             color: Colors.white,
//                     //             fontSize: 15,
//                     //             fontWeight: FontWeight.bold,
//                     //           ),
//                     //         ),
//                     //       ],
//                     //     ),
//                     //   ],
//                     // ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),)
//       ),
//     );
//   }
// }
