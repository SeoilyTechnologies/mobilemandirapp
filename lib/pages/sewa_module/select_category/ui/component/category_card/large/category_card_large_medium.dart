import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';
import '../../../../data/entity/categories_list_response.dart';
import '../category_card_base.dart';

class CategoryCardLargeLandscape extends StatelessWidget {
  final CategoryItem category;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryCardLargeLandscape({
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

      /// 🔥 large screen → font aur compact
      titleSize: context.screenWidth * 0.016,
      subTitleSize: context.screenWidth * 0.014,

      /// 🔥 image scaling for grid fit
      imageWidth: context.screenWidth * 0.09,
      imageHeight: context.screenWidth * 0.07,

      padding:  EdgeInsets.only(top: 12,bottom: 0),
    );
  }
}