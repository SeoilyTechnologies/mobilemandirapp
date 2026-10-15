import 'package:mandirapp/pages/auth/signin/presentation/ui/component/socil_login_section/social_login_section_medium.dart';
import 'package:mandirapp/pages/auth/signin/presentation/ui/component/socil_login_section/social_login_section_small.dart';

import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';

class SocialLoginSection extends StatelessWidget {
  final VoidCallback onGoogleTap;
  final VoidCallback onAppleTap;

  const SocialLoginSection({
    super.key,
    required this.onGoogleTap,
    required this.onAppleTap,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return SocialLoginSectionSmall(
        onGoogleTap: onGoogleTap,
        onAppleTap: onAppleTap,
      );
    } else if (context.isMediumScreen) {
      return SocialLoginSectionMedium(
        onGoogleTap: onGoogleTap,
        onAppleTap: onAppleTap,
      );
    } else {
      return SocialLoginSectionMedium(
        onGoogleTap: onGoogleTap,
        onAppleTap: onAppleTap,
      );
    }
  }
}