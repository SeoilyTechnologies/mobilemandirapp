import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/common_title.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:mandirapp/pages/auth/otp/presentation/bloc/otp_bloc.dart';
import 'package:mandirapp/pages/auth/otp/presentation/bloc/otp_event.dart';
import 'package:mandirapp/pages/auth/otp/presentation/bloc/otp_state.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/language/language_toggle_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../../common/local/SharedPrefs.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/service_locator/setivelocator.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/fonts.dart';
import '../../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';

import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../../../sant/presentation/bloc/sant_bloc.dart';
import '../../../../../splash/presentation/ui/app_initializer.dart';
import '../../../../../wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../../../wishlist/presentation/bloc/wishlist_event.dart';
import '../../../../component/primary_button.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';
import '../../../../profile/presentation/bloc/profile_event.dart';
import '../../../../signin/data/entity/login_response.dart';
import '../../../../signin/presentation/bloc/login_bloc.dart';
import '../../../../signin/presentation/bloc/login_event.dart';

class OtpPageMedium extends StatefulWidget {
  const OtpPageMedium({super.key});

  @override
  State<OtpPageMedium> createState() => _OptPageMediumState();
}


class _OptPageMediumState extends State<OtpPageMedium>  {

  TextEditingController otpController = TextEditingController();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    bool? isFromCreateAccount = arguments?['isFromCreateAccount'];
    return BlocConsumer<OtpBloc, OtpState>(
      listenWhen: (previous, current) {
        return previous.apiSuccessMessage != current.apiSuccessMessage ||
            previous.apiErrorMessage != current.apiErrorMessage ||
            previous.validationErrorMessage != current.validationErrorMessage ||
            previous.loginResponse != current.loginResponse;
      },
      listener: (context, state) async {
        if (state.validationErrorMessage.isNotEmpty) {
          String msg = state.validationErrorMessage;
          if (msg == "Please enter 6 digit OTP.") {
            msg = context.l10n.pleaseEnter6DigitOtp;
          } else if (msg == "Please enter OTP.") {
            msg = context.l10n.pleaseEnterOtp;
          }
          context.showCustomSnackbar(
            msg,
            backgroundColor: AppColor.appcolor,
          );
        }

        if (state.apiErrorMessage.isNotEmpty) {
          String msg = state.apiErrorMessage;
          if (msg.trim().toLowerCase() == "invalid or expired otp" ||
              msg.trim().toLowerCase() == "invalid or expired otp.") {
            msg = context.l10n.invalidOrExpiredOtp;
          }
          context.showCustomSnackbar(
            msg,
            backgroundColor: AppColor.appcolor,
          );
        }

        if (isFromCreateAccount == true) {
          if (!state.isServerError) {
            if (state.loginResponse.success == true) {
              await getIt<SharedPrefs>().setModel(
                AppConstant.userModel,
                state.loginResponse,
              );
              await getIt<SharedPrefs>().setString(
                AppConstant.token,
                state.loginResponse.token,
              );
              if (state.loginResponse.isProfileComplete) {
                await getIt<SharedPrefs>().setModel(
                  AppConstant.userModel,
                  state.loginResponse,
                );
                await getIt<SharedPrefs>().setString(
                  AppConstant.token,
                  state.loginResponse.token,
                );

                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.APPLICATION,
                  (Route<dynamic> route) => false,
                );
                await AppInitializer.loadInitialData(context);
                context.read<OtpBloc>().add(OtpMakeInitial());
              } else {
                await getIt<SharedPrefs>().setModel(
                  AppConstant.userModel,
                  state.loginResponse,
                );
                await getIt<SharedPrefs>().setString(
                  AppConstant.token,
                  state.loginResponse.token,
                );

                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.COMPLETEPROFILE,
                  (Route<dynamic> route) => false,
                );
                await AppInitializer.loadInitialData(context);

                context.read<OtpBloc>().add(OtpMakeInitial());
              }
            }
          }
        } else {
          // 🔹 RESET PASSWORD FLOW
          if (state.isSuccess) {
            final email = arguments?['email'];

            Navigator.pushNamed(
              context,
              AppRoutes.RESETPASSWORD,
              arguments: {
                "email": email,
                "otp": state.otp,
                "isFromCreateAccount": isFromCreateAccount,
              },
            );
          }
        }

        if (state.apiSuccessMessage.isNotEmpty) {
          String msg = state.apiSuccessMessage;
          if (msg == "OTP resent successfully") {
            msg = context.l10n.otpResentSuccessfully;
          }
          context.showCustomSnackbar(msg);
        }
      },

      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SizedBox(
            width: context.screenWidth,
            height: context.screenHeight,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/new_design/background/ipad_login_background.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Positioned(
                    top: 40,
                    right: 16,
                    child: SafeArea(
                      child: LanguageToggleButton(),
                    ),
                  ),
                  Positioned(
                    top: context.screenHeight * 0.07,
                    left: context.screenWidth * 0.025,
                    child: GestureDetector(
                      onTap: () {
                        BlocProvider.of<LoginBloc>(context).add(MakeIsSuccessInitial(false));
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: AppColor.white,
                      ),
                    ),
                  ),

                  Positioned(
                    top: context.screenHeight * 0.33,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.only(top: context.screenWidth * 0.03),
                      child: Container(
                        width: context.screenWidth,
                        height: context.screenHeight,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/new_design/background/background_login_shiv.jpg",
                            ),
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 40),

                            CommonTitle(title: context.l10n.verification),
                            const SizedBox(height: 12),

                            Padding(
                              padding: EdgeInsets.only(left: 44, right: 44),
                              child: CommonSubTitle(
                                title:
                                    context.l10n.otpSubtitle,
                              ),
                            ),

                            const SizedBox(height: 10),
                            CommonTitle(title: "+91 ${state.phone}"),

                            const SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.screenWidth * 0.09,
                              ),
                              child: PinCodeTextField(
                                controller: otpController,
                                keyboardType: TextInputType.number,
                                appContext: context,

                                length: 6,
                                obscureText: false,
                                animationType: AnimationType.fade,

                                enabled: true,
                                autoFocus: true,
                                autoDisposeControllers: false,
                                obscuringCharacter: "*",
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(8),
                                  borderWidth: 1.5,
                                  fieldHeight: context.screenHeight * 0.062223,
                                  fieldWidth: context.screenWidth * 0.12,
                                  inactiveFillColor: AppColor.newGreyy
                                      .withOpacity(0.1),
                                  // Empty field
                                  activeFillColor: AppColor.newGreyy
                                      .withOpacity(0.1),
                                  // Filled field
                                  selectedFillColor: AppColor.newGreyy
                                      .withOpacity(0.1),
                                  // Currently selected field
                                  activeColor: AppColor.newGreyy.withOpacity(
                                    0.1,
                                  ),
                                  inactiveColor: AppColor.newGreyy.withOpacity(
                                    0.1,
                                  ),
                                  selectedColor: AppColor.newGreyy.withOpacity(
                                    0.1,
                                  ),
                                ),

                                hintCharacter: '',
                                // Set the hint character as *
                                hintStyle: TextStyle(
                                  fontFamily: AppFont.interBold,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.appWhiteColor,
                                  fontSize: context.screenWidth * 0.06,
                                ),

                                animationDuration: Duration(milliseconds: 300),
                                backgroundColor: Colors.transparent,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                cursorColor: AppColor.primary,
                                enableActiveFill: true,

                                // Enable active fill to set the background color based on the field's state
                                textStyle: TextStyle(
                                  fontFamily: AppFont.urbanistSemiBold,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.appBlack,
                                  fontSize: context.screenWidth * 0.049,
                                ),
                                onChanged: (value) {
                                  // auto submit when length = 4
                                  if (value.length == 6) {
                                    context.read<OtpBloc>().add(
                                      OtpEvent.otpChanged(value),
                                    );
                                  }
                                },
                              ),
                            ),

                        const SizedBox(height: 25),
                                                   Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  context.l10n.didntReceiveCode + " ",
                                  style: TextStyle(
                                    fontSize: context.screenWidth * 0.03,
                                    fontFamily: AppFont.gilroyRegular,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: state.canResend ? () {
                                    otpController.clear();
                                    context.read<OtpBloc>().add(
                                      OtpEvent.otpChanged(""),
                                    );
                                    setState(() {});
                                    context.read<OtpBloc>().add(ResendPhoneOtp());
                                  } : null,

                                  child: state.canResend
                                      ? CommonTitleMedium(title: context.l10n.resendOtp)
                                      : Text(
                                          context.l10n.resendOtpIn + " 00:${state.resendTimerSeconds.toString().padLeft(2, '0')}",
                                          style: TextStyle(
                                            fontSize: context.screenWidth * 0.03,
                                            fontFamily: AppFont.gilroyMedium,
                                            color: Colors.grey,
                                          ),
                                        ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.only(left: 64, right: 64),
                              child: PrimaryButtonMedium(
                                title: context.l10n.verify,
                                onTap: () {
                                  if (otpController.text.trim().length != 6) {
                                    context.showCustomSnackbar(
                                      context.l10n.pleaseEnter6DigitOtp,
                                      backgroundColor: AppColor.appcolor,
                                    );
                                    return;
                                  }
                                  if (isFromCreateAccount == true) {
                                    context.read<OtpBloc>().add(
                                      OtpEvent.otpSubmitted(),
                                    );
                                  } else {
                                    context.read<OtpBloc>().add(
                                      OtpEvent.otpSubmittedForForgetPassword(),
                                    );
                                  }
                                  // Navigator.pushNamedAndRemoveUntil(
                                  //   context,
                                  //   AppRoutes.APPLICATION,
                                  //       (route) => false, // pura stack clear
                                  // );
                                },
                              ),
                            ),

                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
