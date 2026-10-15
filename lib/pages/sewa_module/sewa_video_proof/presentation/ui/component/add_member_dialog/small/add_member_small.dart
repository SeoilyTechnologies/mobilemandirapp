import '../../../../../../../../common/routes/exports.dart';
import '../add_member_ui.dart';

class AddMemberSmall extends StatelessWidget {
  const AddMemberSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddMemberUI(
      fontFactor: 0.040,
      padding: 16,
      buttonHeight: 45,
    );
  }
}