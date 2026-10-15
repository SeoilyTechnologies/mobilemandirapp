import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../data/entity/categories_list_response.dart';
import '../../domain/save_category_entity.dart';
import 'category_card/large/category_card_large.dart';
import 'category_card/large/category_card_large_medium.dart';
import 'category_card/medium/category_card_medium.dart';
import 'category_card/medium/category_card_medium_landscape.dart';
import 'category_card/small/category_card_small.dart';
import 'category_card/small/category_card_small_landscape.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  final CategoryItem category;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    /// SMALL
    if (context.isSmallScreen) {
      return context.isPortrait
          ? CategoryCardSmall(
              category: category,
              isSelected: isSelected,
              onTap: onTap,
            )
          : CategoryCardSmallLandscape(
              category: category,
              isSelected: isSelected,
              onTap: onTap,
            );
    }
    /// MEDIUM
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? CategoryCardMedium(
              category: category,
              isSelected: isSelected,
              onTap: onTap,
            )
          : CategoryCardMediumLandscape(
              category: category,
              isSelected: isSelected,
              onTap: onTap,
            );
    }
    /// LARGE
    else {
      return context.isPortrait
          ? CategoryCardLarge(
              category: category,
              isSelected: isSelected,
              onTap: onTap,
            )
          : CategoryCardLargeLandscape(
              category: category,
              isSelected: isSelected,
              onTap: onTap,
            );
    }
  }
}

// class CategoryCard extends StatelessWidget {
//   const CategoryCard({
//     super.key,
//     required this.category,
//     required this.isSelected,
//     required this.onTap,
//   });
//
//   final CategoryModel category;
//   final bool isSelected;
//   final VoidCallback onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     final isActive = category.isActive;
//
//     return GestureDetector(
//       onTap: isActive ? onTap : null,
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 200),
//         child: Stack(
//           children: [
//
//             /// 🔶 MAIN CARD
//             _buildCard(context, isActive),
//
//             /// 🔒 COMING SOON OVERLAY
//             if (!isActive)
//               Positioned.fill(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: AppColor.fullBlack.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Center(
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: context.screenWidth * 0.025,
//                         vertical: context.screenWidth * 0.012,
//                       ),
//                       decoration: BoxDecoration(
//                         color: AppColor.white,
//                         borderRadius: BorderRadius.circular(6),
//                       ),
//                       child: Text(
//                         "Coming Soon",
//                         style: AppTextStyle.gilroyBold(
//                           context.screenWidth * 0.026,
//                           color: AppColor.newsecondaruy,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//
//             /// ✅ SELECTED CHECK
//             if (isSelected)
//               Positioned(
//                 top: context.screenWidth * 0.02,
//                 right: context.screenWidth * 0.02,
//                 child: Container(
//                   width: context.screenWidth * 0.055,
//                   height: context.screenWidth * 0.055,
//                   decoration: const BoxDecoration(
//                     color: AppColor.newsecondaruy,
//                     shape: BoxShape.circle,
//                   ),
//                   child: Icon(
//                     Icons.check_rounded,
//                     size: context.screenWidth * 0.035,
//                     color: AppColor.appWhiteColor,
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildCard(BuildContext context, bool isActive) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.symmetric(
//         horizontal: context.screenWidth * 0.03,
//         vertical: context.screenWidth * 0.04,
//       ),
//       decoration: BoxDecoration(
//         color: AppColor.piggyPink,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         children: [
//
//           /// TITLE
//           Text(
//             category.name,
//             textAlign: TextAlign.center,
//             style: AppTextStyle.semiBold(
//               context.screenWidth * 0.037,
//               color: AppColor.appBlack,
//             ),
//           ),
//
//           const SizedBox(height: 4),
//
//           /// SUBTITLE
//           Text(
//             category.subtitle,
//             textAlign: TextAlign.center,
//             style: AppTextStyle.gilroyMedium(
//               context.screenWidth * 0.032,
//               color: AppColor.appBlack,
//             ),
//           ),
//
//           const Spacer(),
//
//           /// IMAGE (RESPONSIVE)
//           Image.asset(
//             "assets/new_design/vendor/total_users.png",
//             width: context.screenWidth * 0.22,
//             height: context.screenWidth * 0.16,
//             fit: BoxFit.contain,
//           ),
//         ],
//       ),
//     );
//   }
// }
