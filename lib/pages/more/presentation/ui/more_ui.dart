import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:mandirapp/pages/auth/profile/presentation/bloc/profile_bloc.dart';
import 'package:mandirapp/pages/more/presentation/bloc/webivew_bloc.dart';
import '../../../../common/component/app_text_style.dart';
import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../../../common/utils/share_helper.dart';
import '../../../../common/values/app_color.dart';
import '../../../../main.dart';
import '../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../auth/profile/presentation/bloc/profile_event.dart';
import '../bloc/webivew_event.dart';
import '../bloc/webivew_state.dart';
import 'more_ui_large.dart';
import 'more_ui_large_landscape.dart';
import 'more_ui_medium.dart';
import 'more_ui_medium_landscape.dart';
import 'more_ui_small.dart';
import 'more_ui_small_landscape.dart';

class MoreUi extends StatelessWidget {
  const MoreUi({super.key});

  @override
  Widget build(BuildContext context) {

    /// SMALL SCREEN
    if (context.isSmallScreen) {
      return context.isPortrait
          ? MoreUiSmall()
          : MoreUiSmallLandscape(); // optional
    }

    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {

      return context.isPortrait
          ? MoreUiMedium()
          : MoreUiMediumLandscape();
    }

    /// LARGE SCREEN  ✅ FIXED
    else {
      return context.isPortrait
          ? MoreUiLarge()
          : MoreUiLargeLandscape();
    }
  }
}
