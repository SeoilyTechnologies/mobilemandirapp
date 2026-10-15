import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/pages/auth/profile/presentation/ui/profile_ui_large.dart';
import 'package:mandirapp/pages/auth/profile/presentation/ui/profile_ui_medium.dart';
import 'package:mandirapp/pages/auth/profile/presentation/ui/profile_ui_small.dart';

import '../../../../../common/component/app_common_filed.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../component/primary_button.dart';
import '../bloc/profile_bloc.dart';
import '../bloc/profile_event.dart';
import '../bloc/profile_state.dart';

import 'component/profile_header_card.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return ProfileUiSmall();
    } else if (context.isMediumScreen) {

      return ProfileUiMedium();
    } else {
      return ProfileUiMedium();
    }
  }
}


