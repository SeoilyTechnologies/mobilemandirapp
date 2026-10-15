import 'package:mandirapp/pages/naamjaap/jaappage/presentation/jaa_page_small.dart';

import '../../../../common/routes/exports.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import 'bloc/jaap_page_bloc.dart';
import 'bloc/jaap_page_event.dart';
import 'bloc/jaap_page_state.dart';
import 'jaap_body.dart';
import 'jaap_completion_view.dart';
import 'jaap_page_large.dart';
import 'jaap_page_medium.dart';

class JaapPage extends StatelessWidget {
  const JaapPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return JaapPageSmall();
    } else if (context.isMediumScreen) {

      return JaapPageMedium();
    } else {
      return JaapPageLarge();
    }
  }
}



