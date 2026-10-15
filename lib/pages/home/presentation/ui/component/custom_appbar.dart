// import 'package:flutter/material.dart';
// import 'package:mandirapp/common/component/app_text_style.dart';
// import 'package:mandirapp/common/values/app_color.dart';
// import 'package:mandirapp/common/values/screenUtils.dart';
// import 'package:mandirapp/pages/pujalist/puja_list.dart';
//
// import '../../../../../common/routes/routes.dart';
// import 'horizontal_bhagwanji_list.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final List<Map<String, String>> bhagwanList;
//
//   const CustomAppBar({Key? key, required this.bhagwanList}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       backgroundColor: const Color(0xFFD88705),
//       leading: GestureDetector(
//         onTap: (){
//           Scaffold.of(context).openDrawer();
//         },
//         child: Container(
//           width: kToolbarHeight,
//           height: kToolbarHeight,
//           decoration: const BoxDecoration(
//             image: DecorationImage(image: AssetImage('assets/images/avatar.png')),
//           ),
//         ),
//       ),
//       // title: VerticalCircleImageList(
//       //   bhagwanList: bhagwanList,
//       //   imageSize: 45,
//       //   spacing: 2,
//       // ),
//       centerTitle: true,
//       automaticallyImplyLeading: false,
//       actions: [
//         PopupMenuButton<String>(
//           padding: EdgeInsets.zero,
//           menuPadding: EdgeInsets.zero,
//           icon: FaIcon(FontAwesomeIcons.ellipsisVertical),
//           offset: Offset(0, kToolbarHeight),
//           // shift down by AppBar height
//           onSelected: (value) {
//             print("Selected: $value");
//             if (value == "mandir") {
//               Navigator.pushReplacementNamed(context, AppRoutes.PUJAPAGE);
//             } else if (value == "pujavidhi") {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => PujaList()),
//               );
//             }
//           },
//           itemBuilder: (context) => [
//
//             PopupMenuItem(
//               padding: EdgeInsets.zero,
//               value: 'pujavidhi',
//               child: Container(
//                 padding: EdgeInsets.zero,
//                 // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//                 decoration: BoxDecoration(
//                   color: Colors.white, // background color
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Row(
//                   children: [
//                     Image.asset("assets/images/new_home.png"), // custom icon
//                     SizedBox(width: 10),
//                     Text(
//                       'Puja Vidhi',
//                       style: TextStyle(
//                         color: Colors.blue.shade800,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
//
// class NormalAppBar extends StatelessWidget implements PreferredSizeWidget {
//
//   const NormalAppBar({Key? key, }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       backgroundColor: const Color(0xFFD88705),
//       leading: GestureDetector(
//         onTap: (){
//           Scaffold.of(context).openDrawer();
//         },
//         child: Container(
//           width: kToolbarHeight,
//           height: kToolbarHeight,
//           decoration: const BoxDecoration(
//             image: DecorationImage(image: AssetImage('assets/images/avatar.png')),
//           ),
//         ),
//       ),
//       title: Text("Mandir App",style: AppTextStyle.semiBold(context.screenWidth*0.044,color: AppColor.appWhiteColor),),
//       centerTitle: true,
//       automaticallyImplyLeading: false,
//
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
//
//
// // class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
// //   final List<String> bhagwanImages;
// //
// //   const CustomAppBar({Key? key, required this.bhagwanImages}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return AppBar(
// //       elevation: 0,
// //       backgroundColor: Color(0xFFD88705),
// //       leading: Container(
// //         width: kToolbarHeight,
// //         height: kToolbarHeight,
// //         decoration: const BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage('assets/images/avatar.png'),
// //           ),
// //         ),
// //       ),
// //       title: VerticalCircleImageList(
// //         imageAssets: bhagwanImages,
// //         imageSize: 35,
// //         spacing: 4,
// //       ),
// //       centerTitle: true,
// //       automaticallyImplyLeading: false,
// //     );
// //   }
// //
// //   @override
// //   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// // }
//
// // class CustomAppBar extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return AppBar(
// //       elevation: 0.0,
// //       backgroundColor:   Color(0xFFD88705),
// //       leading: Container(
// //         width: context.screenWidth * 0.2,
// //         height: context.screenHeight * 0.1 - context.screenHeight * 0.04,
// //         decoration: const BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage('assets/images/avatar.png'),
// //           ),
// //         ),
// //       ),
// //       title: Text(
// //         "Mandir App",
// //         style: TextStyle(
// //           color: Colors.white,
// //           fontSize:  context.screenWidth * 0.05,
// //           fontFamily: 'Poppins Bold',
// //           fontWeight: FontWeight.w100,
// //         ),
// //       ),
// //       centerTitle: true,
// //       actions: [
// //         SizedBox(
// //           width:  context.screenWidth * 0.3,
// //           child: Stack(
// //             children: <Widget>[
// //               Positioned(
// //                 top: 5.0,
// //                 child: Container(
// //                   width:  context.screenWidth * 0.2,
// //                   height:  context.screenHeight * 0.1 -  context.screenHeight * 0.04,
// //                   decoration: const BoxDecoration(
// //                     image: DecorationImage(
// //                       image: AssetImage('assets/images/ecilipse.png'),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 top: 5.0,
// //                 right: context.screenWidth* 0.06,
// //                 child: Container(
// //                   width:  context.screenWidth * 0.2,
// //                   height:  context.screenHeight * 0.1 - context.screenHeight * 0.04,
// //                   decoration: const BoxDecoration(
// //                     image: DecorationImage(
// //                       image: AssetImage('assets/images/ecilipse.png'),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 top: 5.0,
// //                 right:context.screenWidth * 0.01,
// //                 child: Container(
// //                   width:context.screenWidth * 0.2,
// //                   height: context.screenHeight * 0.1 -context.screenHeight * 0.04,
// //                   decoration: const BoxDecoration(
// //                     image: DecorationImage(
// //                       image: AssetImage('assets/images/ecilipse.png'),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         )
// //       ],
// //     );
// //   }
// // }
