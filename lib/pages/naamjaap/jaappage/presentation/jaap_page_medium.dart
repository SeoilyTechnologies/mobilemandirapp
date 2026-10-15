import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import '../../../../common/analytics/facebook_analytics.dart';
import '../../../../common/analytics/facebook_events.dart';
import '../../../../common/routes/exports.dart';
import '../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../jaappage_one/presentation/bloc/jaap_event.dart';
import 'bloc/jaap_page_bloc.dart';
import 'bloc/jaap_page_event.dart';
import 'bloc/jaap_page_state.dart';
import 'jaap_body.dart';
import 'jaap_completion_view.dart';

class JaapPageMedium extends StatefulWidget {
  const JaapPageMedium({super.key});

  @override
  State<JaapPageMedium> createState() => _JaapPageStateMedium();
}

class _JaapPageStateMedium extends State<JaapPageMedium> {
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_initialized) return;
    _initialized = true;

    final args =
    ModalRoute.of(context)!.settings.arguments
    as Map<String, dynamic>;

    final int totalCount = args["totalCount"];

    final String mantraName =
        args["mantraName"] ??
            args["mantraId"] ??
            "";

    final String sessionId = args["sessionId"];

    final int currentCount =
        args["currentCount"] ?? 0;

    final int duration =
        args["duration"] ?? 0;

    final String createdAt =
        args["createdAt"] ?? "";

    final String activeSessionId =
        args["activeSessionId"] ?? sessionId;

    final String mantraId =
        args["mantraId"] ?? "";

    final String mantraTitle =
        args["mantraTitle"] ??
            args["mantraNameeetitle"] ??
            "";

    final String mantraLyrics =
        args["mantraLyrics"] ?? "";

    context.read<JaapBloc>().add(
      JaapEvent.selectMantra(
        mantraId,
        mantraTitle,
        mantraLyrics,
      ),
    );

    context.read<JaapPageBloc>().add(
      JaapPageEvent.init(
        totalCount: totalCount,
        mantraName: mantraName,
        sessionId: activeSessionId,
        currentCount: currentCount,
        duration: duration,
        createdAt: createdAt,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<JaapPageBloc>().add(
          const JaapPageEvent.syncProgress(
            isFinal: true,
          ),
        );

        context.read<JaapPageBloc>().add(
          ResetJaap(),
        );

        context.read<JaapPageBloc>().add(
          CompleteResetJaap(),
        );

        return true;
      },
      child: Scaffold(
        appBar: MandirAppBar(
          title: context.l10n.jaapMala,
          onBackTap: () {
            context.read<JaapPageBloc>().add(
              ResetJaap(),
            );

            context.read<JaapPageBloc>().add(
              CompleteResetJaap(),
            );

            Navigator.pop(context);
          },
        ),
        body: BlocBuilder<
            JaapPageBloc,
            JaapPageState>(
          builder: (context, state) {
            if (state.isCompleted) {
              final durationSeconds =
                  state.duration;

              var data = {
                "sessionId": state.sessionId,
                "currentCount":
                state.currentCount,
                "durationSeconds":
                durationSeconds,
              };

              BlocProvider.of<
                  JaapPageBloc>(
                context,
              ).add(
                CompleteJaap(data),
              );
              FacebookAnalytics.logEvent(
                FacebookEvents.jaapCompleted,
                parameters: {
                  "sessionId": "${state.sessionId}",
                  "mantra_name": "${state.mantraName}",
                  "durationSeconds": durationSeconds,
                  "target_count": "${state.totalCount}",
                },
              );
              return const JaapCompletionViewMedium();
            }

            return GestureDetector(
              behavior:
              HitTestBehavior.opaque,
              onTap: () {
                context
                    .read<JaapPageBloc>()
                    .add(
                  const JaapPageEvent
                      .increment(),
                );
              },
              child:
              const JaapBodyMedium(),
            );
          },
        ),
      ),
    );
  }
}

// class JaapPageMedium extends StatefulWidget {
//   const JaapPageMedium({super.key});
//
//   @override
//   State<JaapPageMedium> createState() => _JaapPageStateMedium();
// }
//
// class _JaapPageStateMedium extends State<JaapPageMedium> {
//   bool _initialized = false;
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//
//     if (_initialized) return;
//     _initialized = true;
//
//     final args =
//     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
//
//     final int totalCount = args["totalCount"];
//     final String mantraName = args["mantraName"];
//     final String sessionId = args["sessionId"];
//     final String mantraTitle = args["mantraNameeetitle"];
//
//     /// 🔥 INIT ONLY ONCE (SAFE)
//     context.read<JaapPageBloc>().add(
//       JaapPageEvent.init(
//         totalCount: totalCount,
//         mantraName: mantraName,
//         sessionId: sessionId,
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         /// 🔥 FINAL SYNC ON BACK
//         context.read<JaapPageBloc>().add(
//           const JaapPageEvent.syncProgress(isFinal: true),
//         );
//         return true;
//       },
//       child: Scaffold(
//         appBar: MandirAppBar(
//           title: context.l10n.jaapMala,
//           onBackTap: () => Navigator.pop(context),
//         ),
//         body: BlocBuilder<JaapPageBloc, JaapPageState>(
//           builder: (context, state) {
//             /// ✅ SAME PAGE UI SWITCH
//             if (state.isCompleted) {
//               final durationSeconds = state.endTime!
//                   .difference(state.startTime!)
//                   .inSeconds;
//
//               var data = {
//                 "sessionId": "${state.sessionId}",
//                 "currentCount": "${state.currentCount}",
//                 "durationSeconds": durationSeconds,
//               };
//
//               print("CHECK HERE DATA======DATA=====${data}");
//               BlocProvider.of<JaapPageBloc>(context).add(CompleteJaap(data));
//               return const JaapCompletionViewMedium();
//             }
//
//
//             return GestureDetector(
//               behavior: HitTestBehavior.opaque,
//               onTap: () {
//                 context
//                     .read<JaapPageBloc>()
//                     .add(const JaapPageEvent.increment());
//               },
//               child: const JaapBodyMedium(),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
