import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import '../../../common/routes/exports.dart';
import '../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_state.dart';
import '../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../mobile_mandir_home/presentation/ui/updated_component/todayaarti/bhajan_screen.dart';
import '../../mobile_mandir_home/presentation/ui/updated_component/updated_categories/aarti_bhajan_chalisa_tab.dart';

class TodayAartiChalisaSeeall extends StatelessWidget {
  const TodayAartiChalisaSeeall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AartiChalisaLsitBloc, AartiChalisaListState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF6F7FB),
          appBar: MandirAppBar(
            title: context.l10n.todayAartiBhajan,
            onBackTap: () => Navigator.pop(context),
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 8),
                  HomeHorizontalTabs(),
                  BhajanScreen(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
