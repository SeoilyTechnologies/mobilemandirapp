import 'package:flutter/material.dart';
import '../../../../common/component/app_loader.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/routes/routes.dart';
import '../../../../common/values/screenUtils.dart';

import '../../../splash/presentation/ui/app_initializer.dart';
import 'component/aarti_chalisa_list_large.dart';
import 'component/aarti_chalisa_list_large_landscape.dart';
import 'component/aarti_chalisa_list_medium.dart';
import 'component/aarti_chalisa_list_medium_landscape.dart';
import 'component/aarti_chalisa_list_small.dart';
import 'component/aarti_chalisa_list_small_landscape.dart';

import 'package:flutter/foundation.dart';

class AartiChalisaListPage extends StatefulWidget {
  const AartiChalisaListPage({super.key});

  @override
  State<AartiChalisaListPage> createState() =>
      _AartiChalisaListPageState();
}

class _AartiChalisaListPageState
    extends State<AartiChalisaListPage> {

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    /// 🔥 Only for Web


    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    /// 🔄 Loader until APIs hit
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    /// SMALL SCREEN
    if (context.isSmallScreen) {
      return context.isPortrait
          ? AartiChalisaListSmall()
          : AartiChalisaListSmallLandscape();
    }

    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? AartiChalisaListMedium()
          : AartiChalisaListMediumLandscape();
    }

    /// LARGE SCREEN
    else {
      return context.isPortrait
          ? AartiChalisaListLarge()
          : AartiChalisaListLargeLandscape();
    }
  }
}
// class AartiChalisaListPage extends StatelessWidget {
//   AartiChalisaListPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     /// SMALL SCREEN
//     if (context.isSmallScreen) {
//       return context.isPortrait
//           ? AartiChalisaListSmall()
//
//           : AartiChalisaListSmallLandscape(); // optional
//     }
//
//     /// MEDIUM SCREEN
//     else if (context.isMediumScreen) {
//       return context.isPortrait
//           ? AartiChalisaListMedium()
//           : AartiChalisaListMediumLandscape();
//     }
//
//     /// LARGE SCREEN
//     else {
//       return context.isPortrait
//           ? AartiChalisaListLarge()
//           : AartiChalisaListLargeLandscape();
//     }
//   }
// }
