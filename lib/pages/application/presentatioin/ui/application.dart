import 'application/application_page_medium.dart';
import 'application/application_page_small.dart';

import 'package:flutter/material.dart';
import '../../../../../common/values/screenUtils.dart';

class ApplicationPage extends StatelessWidget {
  ApplicationPage({super.key});

  final ValueNotifier<bool> _showDialogNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
    //  print("CODE IS RUNNING HERE HERE ======");
      return ApplicationPageSmall(showDialogNotifier: _showDialogNotifier);
    } else if (context.isMediumScreen) {
      return ApplicationPageMedium(showDialogNotifier: _showDialogNotifier);
    } else {
      return ApplicationPageMedium(showDialogNotifier: _showDialogNotifier);
    }
  }
}
