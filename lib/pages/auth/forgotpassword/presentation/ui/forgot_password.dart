import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/network/connectivity_extension.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';

import 'dart:math' as math;

import '../../../../../common/component/app_loader.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/values/app_color.dart';
import '../../../component/primary_button.dart';
import '../../../component/text_field.dart';
import '../bloc/forget_password_bloc.dart';
import '../bloc/forget_password_state.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final TextEditingController emailController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var width = context.screenWidth;
    var height = context.screenHeight;

    return Scaffold(
      body: BlocListener<ForgetPasswordBloc, ForgetPasswordState>(
        listener: (context, state) {
          if (state.isSuccess && state.forgotpasswordresponse.message != '') {
            context.showCustomSnackbar(
              state.forgotpasswordresponse.message,
              backgroundColor: AppColor.appcolor,
            );
            Map<String, dynamic> statusMap = {
              "isFromCreateAccount": false,
              "email": state.email,
            };
            Navigator.pushNamed(
              context,
              AppRoutes.CONFIRMOTP,
              arguments: statusMap,
            );
          } else {
            if (state.errorMessage.trim() != '') {
              context.showCustomSnackbar(
                state.errorMessage,
                backgroundColor: AppColor.appcolor,
              );
            }
          }
        },
        child: BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
          builder: (context, state) {
            return Container(
              width: width,
              height: height,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height * 0.08),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: height * 0.04),
                              Text(
                                context.l10n.sendOtp,
                                style: AppTextStyle.regular(
                                  context.screenWidth * 0.043,
                                ),
                              ),

                              SizedBox(height: 6.0),
                              Text(
                                context.l10n.forgotPasswordDesc,
                                style: AppTextStyle.regular(
                                  context.screenWidth * 0.043,
                                ),
                              ),

                              SizedBox(height: height * 0.05),
                              SizedBox(height: height * 0.018),
                              CustomTextField(
                                hint: context.l10n.enterYourEmail,
                                icon: Icons.email,
                                obscure: false,
                                onChanged: (value) {
                                  context.read<ForgetPasswordBloc>().add(
                                    ForgetPasswordEmailChanged(value),
                                  );
                                },
                              ),

                              SizedBox(height: height * 0.05),
                              PrimaryButton(
                                title: context.l10n.resetPassword,
                                onTap: () async {
                                  if ((await Connectivity().isConnected)) {
                                    context.read<ForgetPasswordBloc>().add(
                                      ForgetPasswordSubmittedEvent(),
                                    );
                                  } else {
                                    context.showCustomSnackbar(
                                      'No internet connection. Please check your connection \nand try again.',
                                      backgroundColor: AppColor.appcolor,
                                    );
                                  }
                                },
                              ),

                              SizedBox(height: context.screenHeight * 0.02),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (state.isLoading) AppLoader.show(state.isLoading),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
