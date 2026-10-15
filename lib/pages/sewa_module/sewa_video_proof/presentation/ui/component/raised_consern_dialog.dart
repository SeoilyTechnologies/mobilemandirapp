import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/screenUtils.dart';
import 'add_member_dialog/large/add_member_large.dart';
import 'add_member_dialog/large/add_member_large_landscape.dart';
import 'add_member_dialog/medium/add_member_medium.dart';
import 'add_member_dialog/medium/add_member_medium_landscape.dart';
import 'add_member_dialog/small/add_member_small.dart';
import 'add_member_dialog/small/add_member_small_landscape.dart';

class AddMemberDialog extends StatelessWidget {
  const AddMemberDialog({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return context.isPortrait
          ? const AddMemberSmall()
          : const AddMemberSmallLandscape();
    } else if (context.isMediumScreen) {
      return context.isPortrait
          ? const AddMemberMedium()
          : const AddMemberMediumLandscape();
    } else {
      return context.isPortrait
          ? const AddMemberLarge()
          : const AddMemberLargeLandscape();
    }
  }
}
