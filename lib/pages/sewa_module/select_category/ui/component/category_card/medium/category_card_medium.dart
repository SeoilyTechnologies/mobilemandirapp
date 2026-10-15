import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';
import '../../../../data/entity/categories_list_response.dart';
import '../category_card_base.dart';

class CategoryCardMedium extends StatelessWidget {
  final CategoryItem category;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryCardMedium({
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
      titleSize: context.screenWidth * 0.024,
      subTitleSize: context.screenWidth * 0.020,
      imageWidth: context.screenWidth,
      imageHeight: context.screenWidth * 0.10,
      padding:  EdgeInsets.only(top: 12,bottom: 0),
    );
  }
}