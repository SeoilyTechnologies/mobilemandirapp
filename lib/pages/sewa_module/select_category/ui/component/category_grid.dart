import 'dart:io';
import '../../../../../common/component/skeleton_loader.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';
import '../../data/entity/categories_list_response.dart';
import '../../domain/save_category_entity.dart';
import '../bloc/select_category_bloc.dart';
import '../bloc/select_category_state.dart';
import 'category_card.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    super.key,
    required this.selectedId,
    required this.onCategoryTap,
  });

  final String? selectedId;
  final ValueChanged<CategoryItem> onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        final categories = state.categoriesListApiResponse.data;

        /// 🔥 RESPONSIVE LOGIC
        int crossAxisCount;
        double childAspectRatio;
        double spacing;

        if (context.isSmallScreen) {
          crossAxisCount = context.isPortrait ? 2 : 3;
          childAspectRatio = context.isPortrait ? Platform.isIOS?0.92:0.92 : 1.2;
          spacing = 12;
        } else if (context.isMediumScreen) {
          crossAxisCount = context.isPortrait ? 3 : 4;
          childAspectRatio = 1.1;
          spacing = 18;
        } else {
          crossAxisCount = context.isPortrait ? 4 : 5;
          childAspectRatio = 1.2;
          spacing = 16;
        }

        if (state.isLoading || categories.isEmpty) {
          return const SkeletonGridView();
        }

        return GridView.builder(
          padding: EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 12),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),

          itemCount: categories.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: spacing,
            mainAxisSpacing: spacing,
            childAspectRatio: childAspectRatio,
          ),

          itemBuilder: (context, index) {
            final category = categories[index];
            final isSelected = category.id == selectedId;

            return CategoryCard(
              category: category,
              isSelected: isSelected,
              onTap: () => onCategoryTap(category),
            );
          },
        );
      },
    );
  }
}

// class CategoryGrid extends StatelessWidget {
//   const CategoryGrid({required this.selectedId, required this.onCategoryTap});
//
//   final String? selectedId;
//   final ValueChanged<CategoryModel> onCategoryTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<SelectCategoryBloc, SelectCategoryState>(
//       listener: (context, state) {
//         // TODO: implement listener
//       },
//       builder: (context, state) {
//         return GridView.builder(
//           padding: EdgeInsets.zero,
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 15,
//             mainAxisSpacing: 15,
//             childAspectRatio: 1,
//           ),
//           itemCount: state.categoriesListApiResponse.data.length,
//           itemBuilder: (context, index) {
//             final category = state.categoriesListApiResponse.data[index];
//             final isSelected = category.id == selectedId;
//             return CategoryCard(
//               category: category,
//               isSelected: isSelected,
//               onTap: () => onCategoryTap(category),
//             );
//           },
//         );
//       },
//     );
//   }
// }
