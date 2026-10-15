import '../../../../../../../common/routes/exports.dart';
import '../select_category_core.dart';

class SelectCategorySmallLandscape extends StatelessWidget {
  const SelectCategorySmallLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectCategoryCore(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      topSpacing: 0.12,
    );
  }
}