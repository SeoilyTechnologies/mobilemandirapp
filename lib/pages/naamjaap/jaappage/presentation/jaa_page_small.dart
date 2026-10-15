import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:intl/intl.dart';

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

class JaapPageSmall extends StatefulWidget {
  const JaapPageSmall({super.key});

  @override
  State<JaapPageSmall> createState() => _JaapPageStateSmall();
}

class _JaapPageStateSmall extends State<JaapPageSmall> {
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_initialized) return;
    _initialized = true;

    final args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

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

    // ✅ NEW
    final String createdAt =
        args["createdAt"] ?? "";

    final String activeSessionId =
        args["activeSessionId"] ?? sessionId;

    // ✅ NEW
    final String mantraId =
        args["mantraId"] ?? "";

    final String mantraTitle =
        args["mantraTitle"] ?? args["mantraNameeetitle"] ?? "";

    final String mantraLyrics =
        args["mantraLyrics"] ?? "";

    // ✅ History se JaapBloc update karo
    context.read<JaapBloc>().add(
      JaapEvent.selectMantra(
        mantraId,
        mantraTitle,
        mantraLyrics,
      ),
    );

    /// 🔥 INIT ONLY ONCE (SAFE)
    context.read<JaapPageBloc>().add(
      JaapPageEvent.init(
        totalCount: totalCount,
        mantraName: mantraName,
        sessionId: activeSessionId,
        currentCount: currentCount,
        duration: duration,

        // ✅ NEW
        createdAt: createdAt,
      ),
    );
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //
  //   if (_initialized) return;
  //   _initialized = true;
  //
  //   final args =
  //       ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
  //
  //   final int totalCount = args["totalCount"];
  //   final String mantraName = args["mantraName"];
  //   final String sessionId = args["sessionId"];
  //   final String mantraTitle = args["mantraNameeetitle"];
  //   final int currentCount =
  //       args["currentCount"] ?? 0;
  //
  //   final int duration =
  //       args["duration"] ?? 0;
  //
  //   final String activeSessionId =
  //       args["activeSessionId"] ?? sessionId;
  //   /// 🔥 INIT ONLY ONCE (SAFE)
  //   context.read<JaapPageBloc>().add(
  //     JaapPageEvent.init(
  //       totalCount: totalCount,
  //       mantraName: mantraName,
  //       sessionId: activeSessionId,
  //       currentCount: currentCount,
  //       duration: duration,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        /// 🔥 FINAL SYNC ON BACK
        context.read<JaapPageBloc>().add(
          const JaapPageEvent.syncProgress(isFinal: true),
        );
        context.read<JaapPageBloc>().add(ResetJaap());
        context.read<JaapPageBloc>().add(CompleteResetJaap());
        return true;
      },
      child: Scaffold(

        appBar: MandirAppBar(
          title: context.l10n.jaapMala,
          onBackTap: (){
            context.read<JaapPageBloc>().add(ResetJaap());
            context.read<JaapPageBloc>().add(CompleteResetJaap());
            Navigator.pop(context);
          },
        ),
        body: BlocBuilder<JaapPageBloc, JaapPageState>(
          builder: (context, state) {
            /// ✅ SAME PAGE UI SWITCH

            if (state.isCompleted) {

              final durationSeconds = state.duration;

              var data = {
                "sessionId": state.sessionId,
                "currentCount": state.currentCount,
                "durationSeconds": durationSeconds,
              };


              BlocProvider.of<JaapPageBloc>(context).add(
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
              return const JaapCompletionView();
            }

            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context.read<JaapPageBloc>().add(
                  const JaapPageEvent.increment(),
                );
              },
              child: const JaapBody(),
            );
          },
        ),
      ),
    );
  }

  int convertDurationToSeconds(String duration) {
    final parts = duration.split(' ');

    int minutes = 0;
    int seconds = 0;

    if (parts.length >= 2) {
      minutes = int.tryParse(parts[0]) ?? 0;
    }

    if (parts.length >= 4) {
      seconds = int.tryParse(parts[2]) ?? 0;
    }

    return (minutes * 60) + seconds;
  }

  String formatTime(DateTime time) {
    return DateFormat('h:mm:ss a').format(time);
  }

  String formatDate(DateTime time) {
    return DateFormat('MMM d, yyyy').format(time);
  }

  String formatDuration(int seconds) {
    final min = seconds ~/ 60;
    final sec = seconds % 60;
    return "$min mins $sec sec";
  }


}

