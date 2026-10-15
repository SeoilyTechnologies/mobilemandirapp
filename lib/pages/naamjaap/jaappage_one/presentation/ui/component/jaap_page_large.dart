import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../common/routes/routes.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../bloc/jaap_bloc.dart';
import '../../bloc/jaap_state.dart';
import '../component/choose_mantra_section.dart';
import '../component/favourite_mantra_section.dart';
import '../component/god_horizontal_list.dart';
import '../component/jap_banner.dart';
import '../component/jap_bottom_buttons.dart';
import '../component/jap_count_section.dart';
import '../component/search_god_field.dart';


class JaapPageOneLarge extends StatelessWidget {
  const JaapPageOneLarge({super.key});


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
        /// ✅ SAFE NAVIGATION
        Navigator.pushNamed(
          context,
          AppRoutes.JAAP_PAGE,
          arguments: {
            "sessionId": state.jaapSessionId!,
            "totalCount": int.parse(state.selectedJapCount),
            "mantraName": state.selectedMantraId,
            "mantraNameeetitle": state.selectedMantraTitle,
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: MandirAppBar(
            title: context.l10n.jaapMala,
            onBackTap: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
              }
            },
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JapBanner(),
                FavouriteMantraSection(),
                SearchGodField(),
                GodHorizontalList(),
                ChooseMantraSection(),
                JapCountSection(),
                JapBottomButtons(),
              ],
            ),
          ),
        );
      },
    );
  }
}
