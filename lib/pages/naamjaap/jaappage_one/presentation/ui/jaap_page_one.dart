import 'package:flutter/material.dart';
import 'package:mandirapp/pages/naamjaap/jaappage_one/presentation/ui/component/jaap_page_large.dart';
import 'package:mandirapp/pages/naamjaap/jaappage_one/presentation/ui/component/jaap_page_medium.dart';
import '../../../../../common/values/screenUtils.dart';
import 'component/jaap_page_small.dart';



class JaapPageOne extends StatelessWidget {
  const JaapPageOne({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return JaapPageOneSmall();
    } else if (context.isMediumScreen) {

      return JaapPageOneMedium();
    } else {
      return JaapPageOneLarge();
    }
  }
}
