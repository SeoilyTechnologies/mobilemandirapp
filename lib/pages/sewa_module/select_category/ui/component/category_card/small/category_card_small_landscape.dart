import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';
import '../../../../data/entity/categories_list_response.dart';
import '../category_card_base.dart';

class CategoryCardSmallLandscape extends StatelessWidget {
  final CategoryItem category;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryCardSmallLandscape({
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

      /// 🔥 Landscape = width ज्यादा → text छोटा
      titleSize: context.screenWidth * 0.028,
      subTitleSize: context.screenWidth * 0.024,

      /// 🔥 image भी थोड़ा compact
      imageWidth: context.screenWidth * 0.16,
      imageHeight: context.screenWidth * 0.12,

      /// 🔥 padding कम
      padding: EdgeInsets.only(top: 12,bottom: 0),
    );
  }
}