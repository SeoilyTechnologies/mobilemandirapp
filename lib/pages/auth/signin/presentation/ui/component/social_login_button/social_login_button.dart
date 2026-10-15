import 'package:mandirapp/pages/auth/signin/presentation/ui/component/social_login_button/social_login_button_medium.dart';
import 'package:mandirapp/pages/auth/signin/presentation/ui/component/social_login_button/social_login_button_small.dart';

import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';

class SocialLoginButton extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback onTap;

  const SocialLoginButton({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return SocialLoginButtonSmall(
        title: title,
        iconPath: iconPath,
        onTap: onTap,
      );
    } else if (context.isMediumScreen) {
      return SocialLoginButtonMedium(
        title: title,
        iconPath: iconPath,
        onTap: onTap,
      );
    } else {
      return SocialLoginButtonMedium(
        title: title,
        iconPath: iconPath,
        onTap: onTap,
      );
    }
  }
}