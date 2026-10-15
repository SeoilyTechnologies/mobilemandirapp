import 'package:flutter/material.dart';

import 'package:mandirapp/common/values/screenUtils.dart';

import 'component/complete_profile_large.dart';
import 'component/complete_profile_large_landscape.dart';
import 'component/complete_profile_medium.dart';
import 'component/complete_profile_medium_landscape.dart';
import 'component/complete_profile_small.dart';
import 'component/complete_profile_small_landscape.dart';

class CompleteProfile extends StatelessWidget {
  CompleteProfile({super.key});



  @override
  Widget build(BuildContext context) {

    /// SMALL SCREEN
    if (context.isSmallScreen) {
      return context.isPortrait
          ? CompleteProfileSmall()
          : CompleteProfileSmallLandscape();
    }

    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? CompleteProfileMedium()
          : CompleteProfileMediumLandscape();
    }

    /// LARGE SCREEN
    else {
      return context.isPortrait
          ? CompleteProfileLarge()
          : CompleteProfileLargeLandscape();
    }
  }


}
