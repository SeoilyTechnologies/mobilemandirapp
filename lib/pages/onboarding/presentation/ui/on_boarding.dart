import '../../../../common/routes/exports.dart';
import '../../../../common/values/screenUtils.dart';
import 'component/on_boarding_large.dart';
import 'component/on_boarding_large_landscape.dart';
import 'component/on_boarding_medium.dart';
import 'component/on_boarding_medium_landscape.dart';
import 'component/on_boarding_small_landscape.dart';
import 'component/on_boaridng_small.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {

    /// SMALL SCREEN
    if (context.isSmallScreen) {
      if (context.isPortrait) {
        return OnBoaridngSmall(); // portrait layout
      } else {
        return OnBoardingSmallLandscape(); // landscape layout
      }
    }

    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? OnBoardingMedium()
          : OnBoardingMediumLandscape();
    }

    /// LARGE SCREEN
    else {
      return context.isPortrait
          ? OnBoardingLarge()
          : OnBoardingLargeLandscape();
    }
  }
}