import '../../../../../../../../common/routes/exports.dart';
import '../add_member_ui.dart';

class AddMemberSmallLandscape extends StatelessWidget {
  const AddMemberSmallLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddMemberUI(
      fontFactor: 0.030,
      padding: 12,
      buttonHeight: 40,
    );
  }
}