import 'package:flutter/material.dart';
import '../../../../../../../common/values/screenUtils.dart';
import 'seva_horizontal_list_small.dart';
import 'seva_horizontal_list_medium.dart';

class SevaHorizontalList extends StatelessWidget {
  final Function(dynamic category)? onTap;

  const SevaHorizontalList({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return SevaHorizontalListSmall(
        onTap: onTap,
      );
    } else if (context.isMediumScreen) {
      return SevaHorizontalListMedium(
        onTap: onTap,
      );
    } else {
      return SevaHorizontalListMedium(
        onTap: onTap,
      );
    }
  }
}
