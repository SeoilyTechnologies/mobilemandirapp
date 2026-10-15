// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mandirapp/common/component/app_text_style.dart';
// import 'package:mandirapp/common/values/fonts.dart';
// import 'package:mandirapp/common/values/screenUtils.dart';
//
// import '../../../../../common/values/app_color.dart';
// import '../../../../common/routes/routes.dart';
// import '../bloc/app_bloc.dart';
// import '../bloc/app_state.dart';
//
// class SideDrawerMenu extends StatelessWidget {
//   const SideDrawerMenu({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//
//     return Drawer(
//       backgroundColor: AppColor.otpBorderFocus,
//       elevation: 0,
//       child: BlocBuilder<AppBloc, AppState>(
//         builder: (context, state) {
//           return ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               _buildHeader(context),
//               const SizedBox(height: 10),
//
//               _sectionTitle("ACCOUNT"),
//               _drawerTile(
//                 index: 0,
//                 icon: Icons.home,
//                 label: "Home",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 0),
//               ),
//               _drawerTile(
//                 index: 1,
//                 icon: Icons.book,
//                 label: "Aarti Sangrah",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 1),
//               ),
//               _drawerTile(
//                 index: 2,
//                 icon: Icons.book,
//                 label: "Chalisa Sangrah",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 2),
//               ),
//               _drawerTile(
//                 index: 3,
//                 icon: Icons.book,
//                 label: "Mantra Sangrah",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 3),
//               ),
//
//               _drawerTile(
//                 index: 5,
//                 icon: Icons.person,
//                 label: "My Profile",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 5),
//               ),
//
//               _drawerTile(
//                 index: 6,
//                 icon: Icons.favorite_border,
//                 label: "Favorites",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 6),
//               ),
//
//               _drawerTile(
//                 index: 7,
//                 icon: Icons.notifications_none,
//                 label: "Notifications",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 7),
//               ),
//
//               const SizedBox(height: 20),
//
//               _sectionTitle("OTHERS"),
//
//               _drawerTile(
//                 index: 8,
//                 icon: Icons.info_outline,
//                 label: "About Us",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 8),
//               ),
//
//               _drawerTile(
//                 index: 9,
//                 icon: Icons.question_mark,
//                 label: "Help & FAQ",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 9),
//               ),
//
//               _drawerTile(
//                 index: 10,
//                 icon: Icons.logout,
//                 label: "Logout",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 10),
//               ),
//               _drawerTile(
//                 index: 11,
//                 icon: Icons.logout,
//                 label: "LRC Generate",
//                 selectedIndex: state.drawerIndex,
//                 onTap: () => _handleTap(context, 11),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildHeader(BuildContext context) {
//     return UserAccountsDrawerHeader(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             AppColor.otpBorderFocus.withOpacity(0.9),
//             AppColor.otpBorderFocus.withOpacity(0.42),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       currentAccountPicture: const CircleAvatar(
//         backgroundImage: AssetImage("assets/images/avatar.png"),
//       ),
//       accountName: Text(
//         "John Doe",
//         style: AppTextStyle.medium(context.screenWidth * 0.04),
//       ),
//       accountEmail: Text(
//         "john@email.com",
//         style: AppTextStyle.medium(context.screenWidth * 0.04),
//       ),
//     );
//   }
//
//   Widget _sectionTitle(String title) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 18, top: 12, bottom: 6),
//       child: Text(
//         title,
//         style: TextStyle(
//           color: AppColor.appBlack,
//           fontWeight: FontWeight.bold,
//           fontFamily: AppFont.urbanistSemiBold,
//           fontSize: 16,
//           letterSpacing: 1,
//         ),
//       ),
//     );
//   }
//
//   Widget _drawerTile({
//     required int index,
//     required IconData icon,
//     required String label,
//     required int selectedIndex,
//     required VoidCallback onTap,
//   }) {
//     final bool isSelected = selectedIndex == index;
//
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//       decoration: BoxDecoration(
//         color: isSelected
//             ? AppColor.appBlack.withOpacity(0.6)
//             : Colors.transparent,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: ListTile(
//         leading: Icon(
//           icon,
//           color: isSelected ? AppColor.activeTabColor : Colors.white,
//         ),
//         title: Text(
//           label,
//           style: TextStyle(
//             color: isSelected ? AppColor.activeTabColor : Colors.white,
//             fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
//             fontFamily: isSelected ?AppFont.urbanistMedium:AppFont.urbanistRegular,
//           ),
//         ),
//         onTap: onTap,
//       ),
//     );
//   }
//
//   void _handleTap(BuildContext context, int index) {
//     context.read<AppBloc>().add(TriggerDrawerEvent(index));
//     Navigator.of(context).pop();
//     switch (index) {
//       case 0:
//         Navigator.pushReplacementNamed(context, AppRoutes.APPLICATION);
//
//         break;
//       case 1:
//         Navigator.pushReplacementNamed(context, AppRoutes.AARTITRACKLIST);
//         break;
//       case 2:
//         Navigator.pushReplacementNamed(context, AppRoutes.AARTITRACKLIST);
//         break;
//       case 3:
//         Navigator.pushReplacementNamed(context, AppRoutes.AARTITRACKLIST);
//         break;
//       case 11:
//         Navigator.pushNamed(context, AppRoutes.LRC_GENERATE);
//         break;
//       case 4:
//         Navigator.pushNamed(context, '/about');
//         break;
//       case 5:
//         Navigator.pushNamed(context, '/help');
//         break;
//       case 6:
//       // Logout logic
//         //_logout(context);
//         break;
//       case 7: // 👈 new tile action
//         Navigator.pushNamed(context, '/bhajanSangrah');
//         break;
//       default:
//         break;
//     }
//   }
// }
