import 'package:mandirapp/l10n/l10n_extension.dart';
import 'dart:math' as math;

import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/component/loading_indicator.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/values/app_color.dart';
import '../../../component/primary_button.dart';
import '../../../component/text_field.dart';
import '../bloc/resetpassword_bloc.dart';
import '../bloc/resetpassword_state.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();
  final passwordCtrl = TextEditingController();
  final confirmPasswordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = context.screenWidth;
    var height = context.screenHeight;
    final Map<String, dynamic>? arguments =
    ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    bool? isFromCreateAccount = arguments?['isFromCreateAccount'];


    return Scaffold(
      backgroundColor: AppColor.appWhiteColor,
      body: BlocListener<ResetpasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          if (state.isSuccess && state.resetPasswordModel.message != '') {
            context.showCustomSnackbar(
              state.resetPasswordModel.message,
              backgroundColor: AppColor.appcolor,
            );

            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.SIGNIN,
              (Route<dynamic> route) => false,
            );
            context.read<ResetpasswordBloc>().add(ResetPasswordResetState());
          } else {
            if (state.isServerError && state.errorMessage != '') {
              context.showCustomSnackbar(
                state.errorMessage,
                backgroundColor: AppColor.appcolor,
              );
            }
          }
        },
        child: BlocBuilder<ResetpasswordBloc, ResetPasswordState>(
          builder: (context, state) {
            return Container(
              width: width,
              height: height,
              padding: EdgeInsets.zero,
              // decoration: CommonBackground.decoration,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Checkbox.width,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height * 0.038),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child:  Icon(
                                  Icons.chevron_left,
                                  color: Colors.black,
                                  size: 32,
                                ),
                              ),
                              SizedBox(height: height * 0.038),

                              Text(
                                "New Password",
                                style: AppTextStyle.bold(
                                  context.screenWidth * 0.043,
                                  color: AppColor.appBlack,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 0,
                                  right: context.screenWidth * 0.1,
                                  top: 4,
                                ),
                                child: Text(
                                  "Your new password must be different from previously used password.",
                                  style: AppTextStyle.bold(
                                    context.screenWidth * 0.043,
                                    color: AppColor.appBlack,
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.04),

                              /// Password
                              CustomTextField(
                                controller: passwordCtrl,
                                hint: "••••••",
                                icon: Icons.lock_outline,
                                obscure: true,
                                onChanged: (value) {
                                  context.read<ResetpasswordBloc>().add(
                                    ResetNewpasswordChanged(value),
                                  );
                                },
                              ),
                              SizedBox(height: 15),

                              /// Confirm Password
                              CustomTextField(
                                controller: confirmPasswordCtrl,
                                hint: "Confirm Password",
                                icon: Icons.lock_outline,
                                obscure: true,
                                onChanged: (value) {
                                  context.read<ResetpasswordBloc>().add(
                                    ResetConfirmPasswordChanged(value),
                                  );
                                },
                              ),

                              SizedBox(height: 24),
                              PrimaryButton(
                                title: context.l10n.confirmNewPassword,
                                onTap: () {
                                  context.read<ResetpasswordBloc>().add(
                                    ResetPasswordSubmitted(
                                      "${arguments?['email']}",
                                        "${arguments?['otp']}"
                                    ),
                                  );
                                },
                              ),

                              SizedBox(height: context.screenHeight * 0.02),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (state.isLoading) const LoadingIndicator(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
