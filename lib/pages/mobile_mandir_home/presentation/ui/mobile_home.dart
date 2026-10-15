import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_large.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_medium.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_small.dart';
import '../../../../common/routes/exports.dart';

import 'component/mobile_home_large_landscape.dart';
import 'component/mobile_home_medium_landscape.dart';
import 'component/mobile_home_small_landscape.dart';


class MobileHome extends StatelessWidget {
  MobileHome({super.key});

  @override
  Widget build(BuildContext context) {

    /// SMALL (Mobile)
    if (context.isSmallScreen) {
      return context.isPortrait
          ? MobileHomeSmall()
          : MobileHomeSmallLandscape(); // optional
    }

    /// MEDIUM (Tablet)
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? MobileHomeMedium()
          : MobileHomeMediumLandscape();
    }

    /// LARGE (Web / Desktop)
    else {
      return context.isPortrait
          ? MobileHomeLarge()
          : MobileHomeLargeLandscape();
    }
  }
}
