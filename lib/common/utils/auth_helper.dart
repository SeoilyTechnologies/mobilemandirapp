import '../../pages/auth/signin/data/entity/login_response.dart';
import '../../pages/auth/signin/presentation/ui/component/login_require_dialog.dart';
import '../local/SharedPrefs.dart';
import '../network/app_constant.dart';
import '../routes/exports.dart';
import '../service_locator/setivelocator.dart';

extension AuthExtension on BuildContext {
  static bool isDialogOpen = false;

  bool isLoggedIn() {
    final prefs = getIt<SharedPrefs>();
    final String token = prefs.getString(AppConstant.token);

    final LoginResponse? userData = prefs.getModel<LoginResponse>(
      AppConstant.userModel,
      (json) => LoginResponse.fromJson(json),
    );

    if (token.trim().isEmpty || userData == null || userData.user.isGuest == true) {
      return false;
    }

    return true;
  }

  bool requireLogin() {
    if (!isLoggedIn()) {
      if (!isDialogOpen) {
        showLoginRequiredDialog();
      }
      return true;
    }

    return false;
  }

  void showLoginRequiredDialog() {
    if (AuthExtension.isDialogOpen) return;

    AuthExtension.isDialogOpen = true;

    showDialog(
      context: this,
      barrierDismissible: true,
      builder: (_) => const LoginRequiredDialog(),
    ).then((_) {
      AuthExtension.isDialogOpen = false;
    });
  }
}