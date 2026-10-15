import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:mandirapp/pages/sant/presentation/santlist/sant_list_card.dart';
import 'package:mandirapp/pages/sant/presentation/santlist/sant_list_ui_large.dart';
import 'package:mandirapp/pages/sant/presentation/santlist/sant_list_ui_large_landscape.dart';
import 'package:mandirapp/pages/sant/presentation/santlist/sant_list_ui_medium.dart';
import 'package:mandirapp/pages/sant/presentation/santlist/sant_list_ui_medium_landscape.dart';
import 'package:mandirapp/pages/sant/presentation/santlist/sant_list_ui_small.dart';
import 'package:mandirapp/pages/sant/presentation/santlist/sant_list_ui_small_landscape.dart';

import '../../../../common/component/app_text_style.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../mobile_mandir_home/presentation/ui/component/search_bar_widget.dart';
import '../../../mobile_mandir_home/presentation/ui/updated_component/home_header.dart';
import '../../../mobile_mandir_home/presentation/ui/updated_component/sant_card.dart';
import '../bloc/sant_bloc.dart';
import 'alphabet_picker.dart';

class SantListUi extends StatelessWidget {
  const SantListUi({super.key});

  @override
  Widget build(BuildContext context) {

    /// SMALL SCREEN
    if (context.isSmallScreen) {
      return context.isPortrait
          ? SantListUiSmall()
          : SantListUiSmallLandscape(); // optional
    }

    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? SantListUiMedium()
          : SantListUiMediumLandscape();
    }

    /// LARGE SCREEN  ✅ FIXED
    else {
      return context.isPortrait
          ? SantListUiLarge()
          : SantListUiLargeLandscape();
    }
  }
}
