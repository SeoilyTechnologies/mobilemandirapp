import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/pages/auth/signin/presentation/bloc/login_bloc.dart';

import '../../../../../../common/local/SharedPrefs.dart';
import '../../../../../../common/service_locator/setivelocator.dart';
import '../../bloc/login_event.dart';


class LoginRequiredDialog extends StatelessWidget {
  final String? title;
  final String? description;

  const LoginRequiredDialog({
    super.key,
    this.title,
    this.description,
  });

  /// 🔹 STATIC SHOW METHOD
  static void show(
      BuildContext context, {
        String? title,
        String? description,
      }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) => LoginRequiredDialog(
        title: title,
        description: description,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final effectiveTitle = (title == null || title == "Login Required")
        ? context.l10n.loginRequired
        : title!;
    final effectiveDescription = (description == null ||
            description ==
                "Please login to access this feature. Create an account to continue.")
        ? context.l10n.pleaseLoginToAccessFeature
        : description!;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              effectiveTitle,
              style: TextStyle(
                fontSize: 18,
                fontFamily: AppFont.gilroyBold,
                color: AppColor.appBlack,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              effectiveDescription,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: AppFont.gilroyRegular,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child:  Text(context.l10n.cancel,style: AppTextStyle.gilroyRegular(16,color: AppColor.fullBlack),),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      final savedLang = await getIt<SharedPrefs>().getString('selected_locale');
                      await getIt<SharedPrefs>().clear();
                      if (savedLang.isNotEmpty) {
                        await getIt<SharedPrefs>().setString('selected_locale', savedLang);
                      }
                      BlocProvider.of<LoginBloc>(context).add(MakeInitial());
                      Navigator.pop(context);
                      Navigator.pushNamed(context, AppRoutes.SIGNIN);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primary,
                    ),
                    child:  Text(context.l10n.login,style: AppTextStyle.gilroyRegular(16,color: AppColor.appWhiteColor),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}