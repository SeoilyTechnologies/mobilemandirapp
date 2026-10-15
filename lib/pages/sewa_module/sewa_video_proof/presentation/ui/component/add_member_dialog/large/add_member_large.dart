import '../../../../../../../../common/routes/exports.dart';
import '../add_member_ui.dart';

class AddMemberLarge extends StatelessWidget {
  const AddMemberLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return  AddMemberUI(
      fontFactor: 0.020,
      padding: 24,
      buttonHeight: 55,
    );
  }
}