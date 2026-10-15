import 'package:mandirapp/pages/aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import 'package:mandirapp/pages/sant/presentation/bloc/sant_bloc.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_detail_new_ui.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_list_ui_large.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_list_ui_large_landscape.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_list_ui_medium.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_list_ui_medium_landscape.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_list_ui_small.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_list_ui_small_landscape.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../../../common/component/app_text_style.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../application/presentatioin/bloc/app_state.dart';
import '../../../application/presentatioin/ui/application/mini_music_player.dart';
import '../../../mobile_mandir_home/data/entity/sant/sant_detail/sant_detail_response.dart';
import 'guru_card.dart';

class SantDetailUi extends StatelessWidget {
  const SantDetailUi({super.key});

  @override
  Widget build(BuildContext context) {

    /// SMALL SCREEN
    if (context.isSmallScreen) {
      return context.isPortrait
          ? SantDetailNewUi()
          : SantDetailUiSmallLandscape(); // optional
    }

    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? SantDetailUiMedium()
          : SantDetailUiMediumLandscape();
    }

    /// LARGE SCREEN  ✅ FIXED
    else {
      return context.isPortrait
          ? SantDetailUiLarge()
          : SantDetailUiLargeLandscape();
    }
  }
}







class InAppWebViewScreen extends StatefulWidget {
  final String url;
  final String title;

  const InAppWebViewScreen({
    super.key,
    required this.url,
    required this.title,
  });

  @override
  State<InAppWebViewScreen> createState() => _InAppWebViewScreenState();
}

class _InAppWebViewScreenState extends State<InAppWebViewScreen> {

  late InAppWebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MandirAppBar(
        title: widget.title,
        onBackTap: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          } else {
            BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
          }
        },
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri(widget.url),
        ),
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
      ),
    );
  }
}