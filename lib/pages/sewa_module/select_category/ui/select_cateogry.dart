import 'package:flutter/material.dart';

import '../../../../../common/routes/exports.dart';

import '../../../../common/values/screenUtils.dart';
import 'component/select_cateogry/large/select_category_large.dart';
import 'component/select_cateogry/large/select_category_large_landscape.dart';
import 'component/select_cateogry/medium/select_category_medium_landscape.dart';
import 'component/select_cateogry/medium/select_cateogry_medium.dart';
import 'component/select_cateogry/small/select_category_small_landscape.dart';
import 'component/select_cateogry/small/select_category_small_ui.dart';

class SelectCateogry extends StatelessWidget {
  const SelectCateogry({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return context.isPortrait
          ? const SelectCategorySmallUI()
          : const SelectCategorySmallLandscape();
    } else if (context.isMediumScreen) {
      return context.isPortrait
          ? const SelectCategoryMedium()
          : const SelectCategoryMediumLandscape();
    } else {
      return context.isPortrait
          ? const SelectCategoryLarge()
          : const SelectCategoryLargeLandscape();
    }
  }
}
