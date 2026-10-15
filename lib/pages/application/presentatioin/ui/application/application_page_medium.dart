import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'dart:io';

import '../../../../../common/routes/routes.dart';
import '../../../../../common/utils/auth_helper.dart';
import '../../../../../common/values/values_exports.dart';
import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../../auth/signin/presentation/ui/component/login_require_dialog.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../../naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../../../naamjaap/jaappage_one/presentation/bloc/jaap_event.dart';
import '../../bloc/app_bloc.dart';
import '../../bloc/app_state.dart';
import '../application_widget.dart';
import '../bottom_navigation_config.dart';
import '../voice_listening_dialog.dart';
import 'mini_music_player.dart';

class ApplicationPageMedium extends StatelessWidget {
  final ValueNotifier<bool> showDialogNotifier;

  ApplicationPageMedium({super.key, required this.showDialogNotifier});

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    return BlocBuilder<AppBloc, AppState>(
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
                        bottom: 190, // bottom bar ke upar
                        child: MiniMusicPlayer(),
                      ),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0,bottom: Platform.isIOS?0.0:context.screenHeight*0.03),
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
