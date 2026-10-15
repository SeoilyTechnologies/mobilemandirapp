import 'package:flutter/material.dart';
import '../../../../common/values/screenUtils.dart';
import 'component/chadava_large.dart';
import 'component/chadava_large_landscape.dart';
import 'component/chadava_medium.dart';
import 'component/chadava_medium_landscape.dart';
import 'component/chadava_small.dart';
import 'component/chadava_small_landscape.dart';

class ChadavaPage extends StatelessWidget {
  const ChadavaPage({super.key});

  @override
  Widget build(BuildContext context) {
    /// SMALL (Mobile)
    if (context.isSmallScreen) {
      return context.isPortrait
          ? const ChadavaSmall()
          : const ChadavaSmallLandscape();
    }

    /// MEDIUM (Tablet)
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? const ChadavaMedium()
          : const ChadavaMediumLandscape();
    }

    /// LARGE (Web / Desktop)
    else {
      return context.isPortrait
          ? const ChadavaLarge()
          : const ChadavaLargeLandscape();
    }
  }
}
