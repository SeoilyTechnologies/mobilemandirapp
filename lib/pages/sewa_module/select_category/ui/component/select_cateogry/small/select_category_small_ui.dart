import '../../../../../../../common/routes/exports.dart';
import '../select_category_core.dart';

class SelectCategorySmallUI extends StatelessWidget {
  const SelectCategorySmallUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectCategoryCore(
      padding: EdgeInsets.all(16),
      topSpacing: 0.166,
    );
  }
}