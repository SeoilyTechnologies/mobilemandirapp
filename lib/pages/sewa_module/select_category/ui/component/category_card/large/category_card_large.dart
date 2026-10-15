import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';
import '../../../../data/entity/categories_list_response.dart';
import '../category_card_base.dart';

class CategoryCardLarge extends StatelessWidget {
  final CategoryItem category;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryCardLarge({
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
      titleSize: context.screenWidth * 0.018,
      subTitleSize: context.screenWidth * 0.016,
      imageWidth: context.screenWidth * 0.10,
      imageHeight: context.screenWidth * 0.08,
      padding:  EdgeInsets.only(top: 12,bottom: 0),
    );
  }
}