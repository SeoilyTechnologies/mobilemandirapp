import '../../../../../../../common/routes/exports.dart';
import '../select_category_core.dart';

class SelectCategoryLarge extends StatelessWidget {
  const SelectCategoryLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 700),
        child: const SelectCategoryCore(
          padding: EdgeInsets.all(24),
          topSpacing: 0.12,
        ),
      ),
    );
  }
}