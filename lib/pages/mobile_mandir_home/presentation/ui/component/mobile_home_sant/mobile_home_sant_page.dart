import 'package:mandirapp/l10n/l10n_extension.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../../../sant/presentation/santlist/alphabet_picker.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import '../../updated_component/sant_gridlist.dart';
import 'alphabet_picker_home_sant.dart';
import 'mobile_home_sant_gridlist.dart';

class MobileHomeSantPage extends StatelessWidget {
  MobileHomeSantPage({super.key});

  final ValueNotifier<bool> _showDialogNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return MobileHomeSantPageSmall();
    } else if (context.isMediumScreen) {
      return MobileHomeSantPageMedium();
    } else {
      return MobileHomeSantPageMedium();
    }
  }
}


class MobileHomeSantPageSmall extends StatelessWidget {
  const MobileHomeSantPageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: <Widget>[
            SizedBox(height: 24),

            AlphabetPickerHomeSant(
              title: context.l10n.nameDirectory,

              selectedValue: state.selectedLetter,
              onSelected: (value) {
                context.read<MobileHomeBloc>().add(
                  MobileHomeEvent.filterByAlphabet(value),
                );
              },
              onClear: () {
                context.read<MobileHomeBloc>().add(
                  const MobileHomeEvent.getSantList(),
                );
              },
            ),
            SizedBox(height: 24),
            MobileHomeSantGridlist(),
            SizedBox(height: 84,),
          ],
        );
      },
    );
  }
}

class MobileHomeSantPageMedium extends StatelessWidget {
  const MobileHomeSantPageMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: <Widget>[
            SizedBox(height: 24),

            AlphabetPickerHomeSant(
              title: context.l10n.nameDirectory,

              selectedValue: state.selectedLetter,
              onSelected: (value) {
                context.read<MobileHomeBloc>().add(
                  MobileHomeEvent.filterByAlphabet(value),
                );
              },
              onClear: () {
                context.read<MobileHomeBloc>().add(
                  const MobileHomeEvent.getSantList(),
                );
              },
            ),
            SizedBox(height: 24),
            MobileHomeSantGridlist(),
            SizedBox(height: 84,),
          ],
        );
      },
    );
  }
}
