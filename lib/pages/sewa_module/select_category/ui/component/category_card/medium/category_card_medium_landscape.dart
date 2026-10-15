import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';
import '../../../../data/entity/categories_list_response.dart';
import '../category_card_base.dart';

class CategoryCardMediumLandscape extends StatelessWidget {
  final CategoryItem category;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryCardMediumLandscape({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CategoryCardBase(
      category: category,
      isSelected: isSelected,
      onTap: onTap,

      /// 🔥 Landscape Tablet → width ज्यादा → text compact
      titleSize: context.screenWidth * 0.020,
      subTitleSize: context.screenWidth * 0.018,

      /// 🔥 image resize (grid balance)
      imageWidth: context.screenWidth * 0.12,
      imageHeight: context.screenWidth * 0.09,

      /// 🔥 padding reduce
      padding:  EdgeInsets.only(top: 12,bottom: 0),
    );
  }
}