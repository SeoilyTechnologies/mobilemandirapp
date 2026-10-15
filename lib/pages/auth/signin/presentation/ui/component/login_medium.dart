import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mandirapp/common/component/app_loader.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/common_title.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:mandirapp/pages/auth/otp/presentation/bloc/otp_bloc.dart';
import 'package:mandirapp/pages/auth/otp/presentation/ui/otp_page.dart';
import 'package:mandirapp/pages/auth/profile/presentation/bloc/profile_bloc.dart';
import 'package:mandirapp/pages/auth/signin/presentation/bloc/login_state.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/language/language_toggle_button.dart';
import 'package:mandirapp/pages/auth/signin/presentation/ui/component/phone_number_field.dart';
import 'package:mandirapp/pages/auth/signin/presentation/ui/component/socil_login_section/Social_login_section.dart';
import 'package:mandirapp/pages/auth/signin/presentation/ui/component/socil_login_section/social_login_section_small.dart';
import 'package:mandirapp/pages/auth/signin/presentation/ui/component/terms_check_box.dart';

import '../../../../../../common/analytics/facebook_analytics.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/fonts.dart';
import '../../../../../more/presentation/bloc/webivew_bloc.dart';
import '../../../../../more/presentation/bloc/webivew_event.dart';
import '../../../../../splash/presentation/ui/app_initializer.dart';
import '../../../../component/primary_button.dart';
import '../../../../otp/presentation/bloc/otp_event.dart';
import '../../bloc/login_bloc.dart';
import '../../bloc/login_event.dart';
import '../../../../../../common/local/SharedPrefs.dart';
import '../../../../../../common/network/app_constant.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/service_locator/setivelocator.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';

//import '../../../../../explore/explore_main/presentation/bloc/explore_event.dart';
import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../../../naamjaap/jaap_history/presentation/bloc/jaap_history_bloc.dart';
import '../../../../../naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../../../../naamjaap/jaappage_one/presentation/bloc/jaap_event.dart';
import '../../../../../sant/presentation/bloc/sant_bloc.dart';
import '../../../../../wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../../../wishlist/presentation/bloc/wishlist_event.dart';
import '../../../../component/primary_button.dart';
import '../../../../otp/presentation/bloc/otp_event.dart';
import '../../../../profile/presentation/bloc/profile_event.dart';

class LoginMedium extends StatefulWidget {
  const LoginMedium({super.key});

  @override
  State<LoginMedium> createState() => _LoginMediumState();
}

class _LoginMediumState extends State<LoginMedium> {
  late TextEditingController mobileNumberController;

  @override
  void initState() {
    super.initState();
    mobileNumberController = TextEditingController();
  }

  @override
  void dispose() {
    mobileNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) async {
        // 🔴 Validation errors
        if (state.validationErrorMessage.isNotEmpty) {
          context.showCustomSnackbar(
            state.validationErrorMessage,
            backgroundColor: AppColor.appcolor,
          );
        }

        // 🔴 API errors
        if (state.isServerError) {
          context.showCustomSnackbar(
            state.apiErrorMessage,
            backgroundColor: AppColor.appcolor,
          );
        }

        // ✅ Guest login success → save data & navigate
        if (state.isSuccess && state.isGuestButtonClick) {
          await getIt<SharedPrefs>().setModel(
            AppConstant.userModel,
            state.loginResponse,
          );

          await getIt<SharedPrefs>().setString(
            AppConstant.token,
            state.loginResponse.token,
          );

          await AppInitializer.loadInitialData(context);
          context.read<LoginBloc>().add(MakeInitial());

          /// 👉 Navigate directly to Application
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutes.APPLICATION,
            (route) => false,
          );
        }

        if (state.isSuccess &&
            state.isSocialLogin &&
            state.loginResponse.success == true) {
          await getIt<SharedPrefs>().setModel(
            AppConstant.userModel,
            state.loginResponse,
          );

          await getIt<SharedPrefs>().setString(
            AppConstant.token,
            state.loginResponse.token,
          );

          await AppInitializer.loadInitialData(context);
          context.read<LoginBloc>().add(MakeInitial());

          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutes.APPLICATION,
            (route) => false,
          );
        }

        // ✅ OTP sent → Navigate to OTP screen
        if (state.isOtpSent) {
          final phone = state.phone;
          context.read<LoginBloc>().add(MakeInitial());
          BlocProvider.of<OtpBloc>(context).add(OtpPhoneChanged(phone));
          Navigator.pushNamed(
            context,
            AppRoutes.CONFIRMOTP,
            arguments: {"phone": phone, "isFromCreateAccount": true},
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SizedBox(
            width: context.screenWidth,
            height: context.screenHeight,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/new_design/background/ipad_login_background.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 40,
                    right: 16,
                    child: SafeArea(
                      child: LanguageToggleButton(),
                    ),
                  ),
                  Positioned(
                    top: context.screenHeight * 0.33,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: context.screenWidth,
                      height: context.screenHeight,
                      decoration: const BoxDecoration(
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
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              CommonTitle(title: context.l10n.loginTitle),
                              CommonSubTitle(
                                title: context.l10n.loginSubtitle,
                                color: AppColor.fullBlack,
                              ),
                              const SizedBox(height: 18),

                              /// 📱 Phone Field
                              PhoneNumberFieldMedium(
                                controller: mobileNumberController,
                                countryCode: "+91",
                                flagAsset: "assets/new_design/icon/flag.png",
                                onChanged: (value) {
                                  context.read<LoginBloc>().add(
                                    LoginEvent.phoneChanged(value),
                                  );
                                },
                              ),

                              SizedBox(height: context.screenHeight * 0.01),

                              /// ✅ Terms
                              TermsCheckboxMedium(
                                value: state.isTermsAccepted,
                                onChanged: (val) {
                                  context.read<LoginBloc>().add(
                                    LoginEvent.termsChanged(val ?? false),
                                  );
                                },
                                onTermsTap: () {
                                  BlocProvider.of<WebViewBloc>(context).add(
                                    LoadWebView(
                                      title: context.l10n.termsAndConditions,
                                      url:
                                          "https://mobilemandirapp.com/terms-and-conditions.php",
                                    ),
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.TERMSCONDITONABOUT,
                                    arguments: {
                                      "title": context.l10n.termsAndConditions,
                                      "url":
                                          "https://mobilemandirapp.com/terms-and-conditions.php",
                                    },
                                  );
                                  // open terms page
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (_) => TermsConditionsPage(),
                                  //   ),
                                  // );
                                },
                              ),
                              const SizedBox(height: 20),

                              /// 👉 Continue
                              PrimaryButtonMedium(
                                title: context.l10n.continueText,
                                onTap: () {
                                  FocusScope.of(context).unfocus();

                                  if (!state.isTermsAccepted) {
                                    context.showCustomSnackbar(
                                      "Please accept Terms & Conditions",
                                      backgroundColor: AppColor.appcolor,
                                    );
                                    return;
                                  }

                                  if (state.phone.length < 10) {
                                    context.showCustomSnackbar(
                                      "Please enter valid phone number",
                                      backgroundColor: AppColor.appcolor,
                                    );
                                    return;
                                  }

                                  context.read<LoginBloc>().add(
                                    LoginEvent.sendPhoneOtp(),
                                  );
                                },
                              ),
                              SizedBox(height: 30),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () async {

                                        context.read<LoginBloc>().add(
                                          const LoginEvent.loginGuestSubmitted(),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColor.appWhiteColor,
                                        foregroundColor: Colors.white,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 6,
                                        ),
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            3,
                                          ),
                                          side: const BorderSide(
                                            // 👈 border yaha se add hota hai
                                            color: AppColor.newsecondaruy,
                                            // border color
                                            width: 1.5,
                                          ),
                                        ),
                                      ),
                                      child: Text(context.l10n.guestLogin,
                                        style: AppTextStyle.gilroyBold(
                                          context.screenWidth * 0.034,

                                          color: AppColor.newsecondaruy,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              SocialLoginSection(
                                onGoogleTap: () {
                                  context.read<LoginBloc>().add(
                                    const LoginEvent.googleLogin(),
                                  );
                                },
                                onAppleTap: () {
                                  context.read<LoginBloc>().add(
                                    const LoginEvent.appLogin(),
                                  );
                                },
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  if (state.isLoading) AppLoader.show(state.isLoading),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
