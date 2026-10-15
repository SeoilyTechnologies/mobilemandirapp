import '../../../../../../../common/routes/exports.dart';
import '../select_category_core.dart';

class SelectCategoryMedium extends StatelessWidget {
  const SelectCategoryMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectCategoryCore(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      topSpacing: 0.14,
    );
  }
}