import '../../../../../../../common/routes/exports.dart';
import '../select_category_core.dart';

class SelectCategoryLargeLandscape extends StatelessWidget {
  const SelectCategoryLargeLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 900),
        child: const SelectCategoryCore(
          padding: EdgeInsets.all(28),
          topSpacing: 0.10,
        ),
      ),
    );
  }
}