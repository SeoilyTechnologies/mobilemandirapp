import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/values_exports.dart';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../jaap_history/presentation/bloc/jaap_history_bloc.dart';
import '../../../../jaappage/presentation/bloc/jaap_page_bloc.dart';
import '../../../../jaappage/presentation/bloc/jaap_page_event.dart';
import '../../bloc/jaap_bloc.dart';
import '../../bloc/jaap_event.dart';
import '../../bloc/jaap_state.dart';

class JapBottomButtons extends StatelessWidget {
  const JapBottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapBloc, JaapState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: AppColor.newsecondaruy, // 👈 border color
                      width: 1.5, // optional
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), // 👈 radius
                    ),
                  ),
                  onPressed: () {
                    BlocProvider.of<JaapHistoryBloc>(
                      context,
                    ).add(const LoadHistory());
                    Navigator.pushNamed(context, AppRoutes.JAAP_PAGE_HISTORY);
                  },
                  child: Text(
                    context.l10n.showHistory,
                    style: TextStyle(
                      color: AppColor.newsecondaruy,
                      fontFamily: AppFont.gilroySemiBold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    /// ✅ Mantra not selected
                    if (state.selectedMantraId.isEmpty) {
                      context.showCustomSnackbar(
                        context.l10n.pleaseSelectMantraFirst,
                      );
                      return;
                    }

                    BlocProvider.of<JaapPageBloc>(
                      context,
                    ).add(const JaapPageEvent.completeReset());

                    context.read<JaapBloc>().add(
                      const JaapEvent.createJaapSession(),
                    );

                    final jaapState = context.read<JaapBloc>().state;
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.newsecondaruy,
                    // 👈 button color
                    foregroundColor: Colors.white,
                    // 👈 text color
                    elevation: 2,
                    // optional shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), // 👈 radius
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ), // optional
                  ),

                  child: Text(context.l10n.startJaap,
                    style: TextStyle(fontFamily: AppFont.gilroySemiBold),
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

class JapBottomButtonsAartiPage extends StatelessWidget {
  const JapBottomButtonsAartiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapBloc, JaapState>(
      listenWhen: (previous, current) {
        /// 🔥 ONLY WHEN CREATE SESSION SUCCESS
        return previous.jaapSessionId != current.jaapSessionId &&
            current.jaapSessionId != null &&
            current.apiErrorMessage.isEmpty;
      },
      listener: (context, state) {
        // Navigator.pushNamed(
        //   context,
        //   AppRoutes.JAAP_PAGE,
        //   arguments: {
        //     "sessionId": state.jaapSessionId!,
        //     "totalCount": int.parse(state.selectedJapCount),
        //     "mantraName": state.selectedMantraId,
        //     "mantraNameeetitle": state.selectedMantraTitle,
        //   },
        // );
        Navigator.pushNamed(
          context,
          AppRoutes.JAAP_PAGE,
          arguments: {
            "sessionId": state.jaapSessionId!,
            "totalCount": int.parse(state.selectedJapCount),

            "mantraId": state.selectedMantraId,
            "mantraTitle": state.selectedMantraTitle,
            "mantraLyrics": state.mantraLyrics,
          },
        );
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: AppColor.newsecondaruy,
                      width: 1.5, // optional
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    if (context.requireLogin()) return;
                    BlocProvider.of<JaapHistoryBloc>(
                      context,
                    ).add(const LoadHistory());
                    Navigator.pushNamed(context, AppRoutes.JAAP_PAGE_HISTORY);
                  },
                  child: Text(
                    context.l10n.showHistory,
                    style: TextStyle(
                      color: AppColor.newsecondaruy,
                      fontFamily: AppFont.gilroySemiBold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: state.isLoading
                      ? null
                      : () {
                          if (context.requireLogin()) return;
                          context.read<JaapBloc>().add(
                            JaapEvent.selectMantra(
                              BlocProvider.of<AartiPlayerBloc>(
                                context,
                              ).state.track!.aartiChaliaid,

                              BlocProvider.of<AartiPlayerBloc>(
                                context,
                              ).state.track!.title,

                              BlocProvider.of<AartiPlayerBloc>(
                                context,
                              ).state.track!.htmlText,
                            ),
                          );

                          BlocProvider.of<JaapPageBloc>(
                            context,
                          ).add(const JaapPageEvent.completeReset());

                          context.read<JaapBloc>().add(
                            const JaapEvent.createJaapSession(),
                          );
                        },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.newsecondaruy,
                    // 👈 button color
                    foregroundColor: Colors.white,
                    // 👈 text color
                    elevation: 2,
                    // optional shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), // 👈 radius
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ), // optional
                  ),

                  child: Text(context.l10n.startJaap,
                    style: TextStyle(fontFamily: AppFont.gilroySemiBold),
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

class JapBottomButtonsMedium extends StatelessWidget {
  const JapBottomButtonsMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapBloc, JaapState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 58),
                    side: const BorderSide(
                      color: AppColor.newsecondaruy,
                      width: 1.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    BlocProvider.of<JaapHistoryBloc>(
                      context,
                    ).add(const LoadHistory());

                    Navigator.pushNamed(context, AppRoutes.JAAP_PAGE_HISTORY);
                  },
                  child: Text(
                    context.l10n.showHistory,
                    style: TextStyle(
                      color: AppColor.newsecondaruy,
                      fontSize: context.screenWidth * 0.022,
                      fontFamily: AppFont.gilroySemiBold,
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    /// ✅ Latest validation from small
                    if (state.selectedMantraId.isEmpty) {
                      context.showCustomSnackbar(
                        context.l10n.pleaseSelectMantraFirst,
                      );
                      return;
                    }

                    BlocProvider.of<JaapPageBloc>(
                      context,
                    ).add(const JaapPageEvent.completeReset());

                    context.read<JaapBloc>().add(
                      const JaapEvent.createJaapSession(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 58),
                    backgroundColor: AppColor.newsecondaruy,
                    foregroundColor: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text(context.l10n.startJaap,
                    style: TextStyle(
                      fontSize: context.screenWidth * 0.022,
                      fontFamily: AppFont.gilroySemiBold,
                    ),
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

// class JapBottomButtonsMedium extends StatelessWidget {
//   const JapBottomButtonsMedium({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<JaapBloc, JaapState>(
//       listener: (context, state) {
//         // TODO: implement listener
//       },
//       builder: (context, state) {
//         return Padding(
//           padding: EdgeInsets.all(16),
//           child: Row(
//             children: [
//               Expanded(
//                 child: OutlinedButton(
//                   style: OutlinedButton.styleFrom(
//                     minimumSize: const Size(double.infinity, 55),
//                     // 👈 Height increase
//                     side: const BorderSide(
//                       color: AppColor.newsecondaruy,
//                       width: 1.5,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8), // thoda smooth
//                     ),
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 22, // 👈 extra height feel
//                     ),
//                   ),
//                   onPressed: () {
//                     BlocProvider.of<JaapHistoryBloc>(
//                       context,
//                     ).add(const LoadHistory());
//                     Navigator.pushNamed(context, AppRoutes.JAAP_PAGE_HISTORY);
//                   },
//                   child: Text(
//                     context.l10n.showHistory,
//                     style: TextStyle(
//                       fontSize: 22, // 👈 Text size bada
//                       color: AppColor.newsecondaruy,
//                       fontFamily: AppFont.gilroySemiBold,
//                     ),
//                   ),
//                 ),
//               ),
//
//               SizedBox(width: 12),
//
//               Expanded(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     BlocProvider.of<JaapPageBloc>(
//                       context,
//                     ).add(const JaapPageEvent.completeReset());
//
//                     context.read<JaapBloc>().add(
//                       const JaapEvent.createJaapSession(),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: const Size(double.infinity, 55),
//                     // 👈 Height increase
//                     backgroundColor: AppColor.newsecondaruy,
//                     foregroundColor: Colors.white,
//                     elevation: 2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     padding: const EdgeInsets.symmetric(vertical: 22),
//                   ),
//                   child: Text(
//                     "Start Jaap",
//                     style: TextStyle(
//                       fontSize: 22, // 👈 Text size bada
//                       fontFamily: AppFont.gilroySemiBold,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
