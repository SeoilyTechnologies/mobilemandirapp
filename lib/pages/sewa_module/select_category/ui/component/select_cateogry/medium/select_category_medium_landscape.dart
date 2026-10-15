import '../../../../../../../common/routes/exports.dart';
import '../select_category_core.dart';

class SelectCategoryMediumLandscape extends StatelessWidget {
  const SelectCategoryMediumLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectCategoryCore(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      topSpacing: 0.12,
    );
  }
}