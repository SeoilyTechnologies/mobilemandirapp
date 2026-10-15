import 'package:mandirapp/pages/sewa_module/sewa_video_proof/presentation/ui/component/add_member_dialog/small/add_member_small.dart';
import 'package:mandirapp/pages/sewa_module/sewa_video_proof/presentation/ui/component/add_member_dialog/small/add_member_small_landscape.dart';


import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';

import 'large/add_member_large.dart';
import 'large/add_member_large_landscape.dart';
import 'medium/add_member_medium.dart';
import 'medium/add_member_medium_landscape.dart';

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
