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
import '../../../../../naamjaap/jaappage_one/presentation/bloc/jaap_event.dart';
import '../../../../../sant/presentation/bloc/sant_bloc.dart';
import '../../../../../wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../../../wishlist/presentation/bloc/wishlist_event.dart';
import '../../../../component/primary_button.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';
import '../../../../profile/presentation/bloc/profile_event.dart';

class OtpPageLarge extends StatelessWidget {
  OtpPageLarge({super.key});

  TextEditingController otpController = TextEditingController();

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

                final now = DateTime.now();

                BlocProvider.of<MobileHomeBloc>(context).add(
                  MobileHomeEvent.getCalendarEvent(
                    month: now.month,
                    year: now.year,
                  ),
                );

                BlocProvider.of<MobileHomeBloc>(
                  context,
                ).add(MobileHomeEvent.getSantList());

                BlocProvider.of<JaapHistoryBloc>(context).add(const LoadHistory());

                BlocProvider.of<SantBloc>(context).add(SantEvent.started());

                BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
                BlocProvider.of<MobileHomeBloc>(
                  context,
                ).add(MobileHomeEvent.getYoutubePlaylistVideos());

                BlocProvider.of<JaapBloc>(context).add(JaapEvent.getGodData());

                BlocProvider.of<MobileHomeBloc>(
                  context,
                ).add(MobileHomeEvent.getYoutubePlaylistVideos());

                BlocProvider.of<MobileHomeBloc>(context).add(HomeGetBanner());

                BlocProvider.of<MobileHomeBloc>(
                  context,
                ).add(const MobileHomeEvent.loadPanchang());

                BlocProvider.of<AppBloc>(context).add(UserDataUpdate());

                BlocProvider.of<WishlistBloc>(context).add(GetWishlist(userId: ""));
                BlocProvider.of<JaapBloc>(context).add(GetWishlistMantra(userId: ""));

                BlocProvider.of<MobileHomeBloc>(
                  context,
                ).add(GetDayAccordingAartiChalisa(type: "all"));
                BlocProvider.of<ProfileBloc>(
                  context,
                ).add(const ProfileEvent.loadProfile());

                BlocProvider.of<AartiChalisaLsitBloc>(
                  context,
                ).add(GetFestivalList());
                BlocProvider.of<AartiChalisaLsitBloc>(context).add(GetGodList());

                BlocProvider.of<AartiChalisaLsitBloc>(
                  context,
                ).add(GetAartiChalisaByType("aarti"));
                BlocProvider.of<MobileHomeBloc>(context).add(HomeMantra("mantra"));

                BlocProvider.of<AartiChalisaLsitBloc>(
                  context,
                ).add(StoreType("aarti"));

                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.APPLICATION,
                      (Route<dynamic> route) => false, // 🔥 sab routes remove
                );

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
                final now = DateTime.now();

                BlocProvider.of<MobileHomeBloc>(context).add(
                  MobileHomeEvent.getCalendarEvent(
                    month: now.month,
                    year: now.year,
                  ),
                );

                BlocProvider.of<MobileHomeBloc>(
                  context,
                ).add(MobileHomeEvent.getSantList());

                BlocProvider.of<JaapHistoryBloc>(context).add(const LoadHistory());

                BlocProvider.of<SantBloc>(context).add(SantEvent.started());

                BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
                BlocProvider.of<MobileHomeBloc>(
                  context,
                ).add(MobileHomeEvent.getYoutubePlaylistVideos());

                BlocProvider.of<JaapBloc>(context).add(JaapEvent.getGodData());

                BlocProvider.of<MobileHomeBloc>(
                  context,
                ).add(MobileHomeEvent.getYoutubePlaylistVideos());

                BlocProvider.of<MobileHomeBloc>(context).add(HomeGetBanner());

                BlocProvider.of<MobileHomeBloc>(
                  context,
                ).add(const MobileHomeEvent.loadPanchang());

                BlocProvider.of<AppBloc>(context).add(UserDataUpdate());

                BlocProvider.of<WishlistBloc>(context).add(GetWishlist(userId: ""));
                BlocProvider.of<JaapBloc>(context).add(GetWishlistMantra(userId: ""));

                BlocProvider.of<MobileHomeBloc>(
                  context,
                ).add(GetDayAccordingAartiChalisa(type: "all"));
                BlocProvider.of<ProfileBloc>(
                  context,
                ).add(const ProfileEvent.loadProfile());

                BlocProvider.of<AartiChalisaLsitBloc>(
                  context,
                ).add(GetFestivalList());
                BlocProvider.of<AartiChalisaLsitBloc>(context).add(GetGodList());

                BlocProvider.of<AartiChalisaLsitBloc>(
                  context,
                ).add(GetAartiChalisaByType("aarti"));
                BlocProvider.of<MobileHomeBloc>(context).add(HomeMantra("mantra"));

                BlocProvider.of<AartiChalisaLsitBloc>(
                  context,
                ).add(StoreType("aarti"));

                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.COMPLETEPROFILE,
                      (Route<dynamic> route) => false, // 🔥 sab routes remove
                );


                context.read<OtpBloc>().add(OtpMakeInitial());
              }
            } else {
              if (state.apiErrorMessage.isNotEmpty) {
                context.showCustomSnackbar(state.apiErrorMessage);
              }
            }
          } else {
            if (state.apiErrorMessage.isNotEmpty) {
              context.showCustomSnackbar(state.apiErrorMessage);
            }
          }
        } else
        {
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
        if(state.apiSuccessMessage.isNotEmpty){
          String msg = state.apiSuccessMessage;
          if (msg == "OTP resent successfully") {
            msg = context.l10n.otpResentSuccessfully;
          }
          context.showCustomSnackbar(msg);
        }
      },

      builder: (context, state) {
        return Scaffold(
          body: SizedBox(
            width: context.screenWidth,
            height: context.screenHeight,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/new_design/background/login_background.jpg",
                  ),
                  fit: BoxFit.fill,
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
                    top: context.screenHeight * 0.26,
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

                            CommonTitleLarge(title: context.l10n.verification),
                            const SizedBox(height: 12),

                            Padding(
                              padding: EdgeInsets.only(left: 44, right: 44),
                              child: CommonSubTitleLarge(
                                title:
                                context.l10n.otpSubtitle,
                              ),
                            ),

                            const SizedBox(height: 10),
                            CommonTitleLarge(title: "+91 ${state.phone}"),

                            const SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.screenWidth * 0.2,
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
                                  fieldHeight: context.screenHeight * 0.072223,
                                  fieldWidth: context.screenWidth * 0.08,
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
                                  fontSize: context.screenWidth * 0.023,
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
                                  "Didn’t receive a code? ",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: AppFont.gilroyRegular,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){

                                    otpController.clear();
                                    context.read<OtpBloc>().add(
                                      OtpEvent.otpChanged(""),
                                    );

                                    context.read<OtpBloc>().add(ResendPhoneOtp());
                                  },
                                  child: CommonTitleLarge(title: context.l10n.resendOtp),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                         SizedBox(
                           width: context.screenWidth*0.4,
                           child:    Padding(
                             padding: EdgeInsets.only(left: 24, right: 24),
                             child: PrimaryButtonLarge(
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
