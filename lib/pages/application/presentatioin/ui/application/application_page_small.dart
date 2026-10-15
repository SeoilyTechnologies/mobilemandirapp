import 'package:mandirapp/l10n/l10n_extension.dart';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/pages/application/presentatioin/nothbottombar_component/notch_bottombar.dart'
    hide buildPage;
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/internet_service.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../../common/utils/auth_helper.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../../auth/signin/data/entity/forceupdate_response/force_update_response.dart';
import '../../../../auth/signin/data/entity/login_response.dart';
import '../../../../auth/signin/presentation/ui/component/login_require_dialog.dart';
import '../../../../home/presentation/bloc/home_bloc.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../home/presentation/ui/component/custom_appbar.dart';
import '../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../splash/presentation/ui/app_initializer.dart';
import '../../../../splash/presentation/ui/no_internet_dialog.dart';
import '../../bloc/app_bloc.dart';
import '../../bloc/app_state.dart';
import '../application_widget.dart';
import '../bottom_navigation_config.dart';
import '../custom_appbar.dart';
import '../drawer_menu.dart';
import 'package:http/http.dart' as http;

import 'mini_music_player.dart';
import 'no_internet_dialog.dart';
import '../voice_listening_dialog.dart';


import 'package:mandirapp/pages/wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../../common/utils/date_time_helper.dart';
import '../../../../../common/utils/permission_helper.dart';
import '../../../../../webb/UploadForm.dart';
import '../../../../../webb/god_admin_dashboard.dart';
import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../../auth/profile/presentation/bloc/profile_event.dart';

import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../../naamjaap/jaap_history/presentation/bloc/jaap_history_bloc.dart';
import '../../../../naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../../../naamjaap/jaappage_one/presentation/bloc/jaap_event.dart';
import '../../../../sant/presentation/bloc/sant_bloc.dart';

import '../../../../wishlist/presentation/bloc/wishlist_event.dart';

class ApplicationPageSmall extends StatefulWidget {
  final ValueNotifier<bool> showDialogNotifier;

  const ApplicationPageSmall({
    super.key,
    required this.showDialogNotifier,
  });

  @override
  State<ApplicationPageSmall> createState() => _ApplicationPageSmallState();
}

class _ApplicationPageSmallState extends State<ApplicationPageSmall> {
  bool _isForceUpdateDialogShowing = false;
  //final ValueNotifier<bool> showDialogNotifier;

 // ApplicationPageSmall({super.key, required this.showDialogNotifier});

  bool hasInternet = true;

  final InternetService _internetService = InternetService();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      try {
        final homeBloc = context.read<MobileHomeBloc>();
        context.read<AartiPlayerBloc>().setMobileHomeBloc(homeBloc);
      } catch (_) {}
    });
  }

  bool isUpdateRequired(String current, String minimum) {
    List<int> c = current.split('.').map(int.parse).toList();
    List<int> m = minimum.split('.').map(int.parse).toList();

    for (int i = 0; i < m.length; i++) {
      if (c[i] < m[i]) return true;
      if (c[i] > m[i]) return false;
    }
    return false;
  }

  void _showForceUpdateDialog(BuildContext context, ForceUpdateData data) async {
    String url = Platform.isAndroid ? data.updateUrlAndroid : data.updateUrlIos;

    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          title: Text(
            context.l10n.updateRequired,
            style: AppTextStyle.gilroyBold(16, color: AppColor.appBlack),
          ),
          content: Text(
            context.l10n.updateRequiredDesc,
            style: AppTextStyle.gilroyRegular(14, color: AppColor.appBlack),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.newsecondaruy,
                // 🔥 primary color (orange vibe)
                foregroundColor: Colors.white,
                // text color
                elevation: 6,
                shadowColor: Colors.black.withOpacity(0.3),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () async {
                final uri = Uri.parse(url);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri,mode: LaunchMode.externalApplication,);
                }
              },
              child: Text(
                context.l10n.updateNow,
                style: AppTextStyle.gilroyMedium(
                  16,
                  color: AppColor.appWhiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

  Future<void> checkInternet(BuildContext context) async {
    bool result = await _internetService.hasInternetConnection();

    if (!result) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => NoInternetDialog(
          onRetry: () async {
            Navigator.pop(context);

            await AppInitializer.loadInitialData(context);
            await checkInternet(context);
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) async {
        final data = state.data;

        // agar API hit ho chuki hai
        final minRequiredVersion = Platform.isAndroid
            ? data.minRequiredVersionAndroid
            : data.minRequiredVersionIos;
        if (minRequiredVersion.isNotEmpty) {

          final packageInfo = await PackageInfo.fromPlatform();
          String currentVersion = packageInfo.version;
          bool required = isUpdateRequired(
            currentVersion,
            minRequiredVersion,
          );

          if (data.forceUpdate || required){
            if (_isForceUpdateDialogShowing) return;

            _isForceUpdateDialogShowing = true;
             _showForceUpdateDialog(context, data);
          }
        }

      },
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return Container(
            width: context.screenWidth,
            height: context.screenHeight,
            padding: EdgeInsets.zero,

            child: Scaffold(
              backgroundColor: Colors.white,
              extendBody: true,

              body: Container(
                width: context.screenWidth,
                height: context.screenHeight,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.transparent),
                child: WillPopScope(
                  onWillPop: () async {
                    if (state.index != 0) {
                      context.read<AppBloc>().add(TriggerAppEvent(0));
                      return false;
                    } else {
                      final now = DateTime.now();
                      if (state.lastBackPressTime == null ||
                          now.difference(state.lastBackPressTime!) >
                              const Duration(seconds: 2)) {
                        context.read<AppBloc>().add(HandleBackPressEvent(now));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(context.l10n.pressBackAgainToExit),
                          ),
                        );
                        return false;
                      }
                      return true;
                    }
                  },
                  child: Stack(
                    children: [
                      buildPage(state.index),

                      if (state.isShowMusicAction)
                        Positioned(
                          left: 12,
                          right: 12,
                          bottom: 120, // bottom bar ke upar
                          child: MiniMusicPlayer(),
                        ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 0,
                            bottom: Platform.isIOS
                                ? 0.0
                                : context.screenHeight * 0.03,
                          ),
                          child: bottomBarItems.buildCustomBottomBar(
                            context: context,
                            currentIndex: state.index > 3 ? 0 : state.index,

                            onTap: (index) {
                              if (index == 0) {
                                context.read<MobileHomeBloc>().add(
                                  MobileHomeEvent.changeTopTab(0),
                                );
                                BlocProvider.of<MobileHomeBloc>(
                                  context,
                                ).add(ResetTempleSearchForYou());

                                BlocProvider.of<MobileHomeBloc>(
                                  context,
                                ).add(ResetGodSearchHome());

                                BlocProvider.of<MobileHomeBloc>(
                                  context,
                                ).add(const GetHomeTempleDataList(false));

                                context.read<MobileHomeBloc>().add(
                                  MobileHomeEvent.selectHomeForYouTab(index: 0),
                                );

                                BlocProvider.of<MobileHomeBloc>(
                                  context,
                                ).add(ResetSearchForYou());
                                BlocProvider.of<MobileHomeBloc>(context).add(
                                  const MobileHomeEvent.getHomeForYouData(
                                    type: "aartibhajan",
                                  ),
                                );
                                BlocProvider.of<MobileHomeBloc>(context).add(
                                  const MobileHomeEvent.getRewardOverView(),
                                );
                              }

                              if (index == 1) {
                                final aartiBloc = context.read<AartiChalisaLsitBloc>();
                                final currentType = aartiBloc.state.type.isNotEmpty
                                    ? aartiBloc.state.type
                                    : "aarti";

                                // Sirf Aarti list fetch karo taaki latest data aur favourite/wishlist status mil jaye
                                aartiBloc.add(GetAartiChalisaByType(currentType));
                                aartiBloc.add(RelatedGetAartiChalisaByType(currentType));
                              }

                              if (index == 3) {
                                if (context.requireLogin()) return;

                                BlocProvider.of<JaapBloc>(
                                  context,
                                ).add(GetWishlistMantra(userId: ""));

                                BlocProvider.of<JaapBloc>(
                                  context,
                                ).add(JaapEvent.selectMantra("", "", ""));

                                BlocProvider.of<JaapBloc>(
                                  context,
                                ).add(const GetGodData());
                              }

                              context.read<AppBloc>().add(
                                TriggerAppEvent(index),
                              );
                            },
                            onVoiceTap: () {
                              showVoiceListeningDialog(context).then((
                                spokenText,
                              ) {
                                if (!context.mounted) return;
                                if (spokenText != null &&
                                    spokenText.trim().isNotEmpty) {
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.GLOBAL_SEARCH_PAGE,
                                    arguments: {
                                      'searchQuery': spokenText.trim(),
                                    },
                                  );
                                }
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void showLoginRequiredDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) => const LoginRequiredDialog(),
    );
  }
}
