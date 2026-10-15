import 'package:flutter/material.dart';

import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/routes/exports.dart';

import 'component/opt_page_small.dart';
import 'component/opt_page_small_landscape.dart';
import 'component/otp_page_large.dart';
import 'component/otp_page_large_landscape.dart';
import 'component/otp_page_medium.dart';
import 'component/otp_page_medium_landscape.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    /// SMALL SCREEN
    if (context.isSmallScreen) {
      return context.isPortrait
          ? OptPageSmall()
          : OptPageSmallLandscape(); // optional
    }

    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? OtpPageMedium()
          : OtpPageMediumLandscape();
    }

    /// LARGE SCREEN
    else {
      return context.isPortrait
          ? OtpPageLarge()
          : OtpPageLargeLandscape();
    }
  }
}
