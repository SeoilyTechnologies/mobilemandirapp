import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/values_exports.dart';
import '../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/webivew_bloc.dart';
import '../bloc/webivew_state.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mandirapp/common/values/app_color.dart';


class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  bool showLoading = true;
  bool _loaderHidden = false;

  void _hideLoader() {
    if (!mounted || _loaderHidden) return;
    _loaderHidden = true;
    setState(() {
      showLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();

    /// ⏱ iOS SAFETY TIMEOUT
    Future.delayed(const Duration(seconds: 8), () {
      _hideLoader();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WebViewBloc, WebViewState>(
      builder: (context, state) {

        return Scaffold(
          appBar: MandirAppBar(
            title: state.title,
            onBackTap: () => Navigator.pop(context),
          ),
          body: Stack(
            children: [
              InAppWebView(
                initialUrlRequest: URLRequest(
                  url: WebUri(state.url),
                ),
                initialSettings: InAppWebViewSettings(
                  javaScriptEnabled: true,
                  mediaPlaybackRequiresUserGesture: false,
                  allowsInlineMediaPlayback: true,
                  disableContextMenu: true,
                ),

                /// 🔄 Page started
                onLoadStart: (controller, url) {
                  if (!mounted) return;
                  setState(() {
                    showLoading = true;
                    _loaderHidden = false;
                  });
                },

                /// 📊 iOS-STABLE progress listener
                onProgressChanged: (controller, progress) {
                  if (progress > 70) {
                    _hideLoader();
                  }
                },

                /// ✅ Normal finish
                onLoadStop: (controller, url) async {
                  await Future.delayed(const Duration(milliseconds: 300));
                  _hideLoader();
                },

                /// ❌ REMOVE SSL OVERRIDE (important)
                /// ❌ REMOVE onContentSizeChanged
              ),

              /// ⏳ Loader
              if (showLoading)
                Container(
                  color: AppColor.white,
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: AppColor.newsecondaruy,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

