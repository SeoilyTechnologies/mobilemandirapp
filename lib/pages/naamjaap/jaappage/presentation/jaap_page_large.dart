import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import '../../../../common/routes/exports.dart';
import '../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import 'bloc/jaap_page_bloc.dart';
import 'bloc/jaap_page_event.dart';
import 'bloc/jaap_page_state.dart';
import 'jaap_body.dart';
import 'jaap_completion_view.dart';

class JaapPageLarge extends StatefulWidget {
  const JaapPageLarge({super.key});

  @override
  State<JaapPageLarge> createState() => _JaapPageStateLarge();
}

class _JaapPageStateLarge extends State<JaapPageLarge> {
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_initialized) return;
    _initialized = true;

    final args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final int totalCount = args["totalCount"];
    final String mantraName = args["mantraName"];
    final String sessionId = args["sessionId"];
    final String mantraTitle = args["mantraNameeetitle"];

    /// 🔥 INIT ONLY ONCE (SAFE)
    context.read<JaapPageBloc>().add(
      JaapPageEvent.init(
        totalCount: totalCount,
        mantraName: mantraName,
        sessionId: sessionId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        /// 🔥 FINAL SYNC ON BACK
        context.read<JaapPageBloc>().add(
          const JaapPageEvent.syncProgress(isFinal: true),
        );
        return true;
      },
      child: Scaffold(
        appBar: MandirAppBar(
          title: context.l10n.jaapMala,
          onBackTap: () => Navigator.pop(context),
        ),
        body: BlocBuilder<JaapPageBloc, JaapPageState>(
          builder: (context, state) {
            /// ✅ SAME PAGE UI SWITCH
            if (state.isCompleted) {
              return const JaapCompletionView();
            }

            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context
                    .read<JaapPageBloc>()
                    .add(const JaapPageEvent.increment());
              },
              child: const JaapBody(),
            );
          },
        ),
      ),
    );
  }
}

