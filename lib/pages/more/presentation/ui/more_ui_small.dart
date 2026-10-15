import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'dart:math';
import '../../../seva_history/presentation/bloc/seva_history_bloc.dart';
import '../../../seva_history/presentation/bloc/seva_history_event.dart';
import '../../../seva_history/presentation/ui/seva_history.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/loading_indicator.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:mandirapp/pages/auth/profile/presentation/bloc/profile_bloc.dart';
import 'package:mandirapp/pages/more/presentation/bloc/webivew_bloc.dart';
import '../../../../common/component/app_text_style.dart';
import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../../../common/utils/share_helper.dart';
import '../../../../common/values/app_color.dart';
import '../../../../main.dart';
import '../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../application/presentatioin/bloc/app_state.dart';
import '../../../application/presentatioin/ui/application/mini_music_player.dart';
import '../../../auth/profile/presentation/bloc/profile_event.dart';
import '../../../auth/signin/data/entity/login_response.dart';
import '../../../auth/signin/presentation/bloc/login_event.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../naamjaap/jaap_history/presentation/bloc/jaap_history_bloc.dart';
import '../../../wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../wishlist/presentation/bloc/wishlist_event.dart';
import '../bloc/webivew_event.dart';
import '../bloc/webivew_state.dart';

class MoreUiSmall extends StatelessWidget {
  const MoreUiSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WebViewBloc, WebViewState>(
      listener: (context, state) async {

        if (!state.isAccountDeleted) return;

        await getIt<SharedPrefs>().clear();

        await audioHandler?.stop();

        context.read<LoginBloc>().add(MakeInitial());

        if (!context.mounted) return;

        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.SIGNIN,
          (_) => false,
        );
      },
      builder: (context, state) {
        context.watch<AppBloc>();
        final selectedLang = Localizations.localeOf(context).languageCode;
        final isSocailLogin = BlocProvider.of<AppBloc>(
          context,
        ).state.userdata.user.isSocialLogin;

        return Scaffold(
          backgroundColor: const Color(0xFFF6F7FB),
          appBar: MandirAppBar(
            title: context.l10n.myProfile,
            onBackTap: () async {
              final prefs = getIt<SharedPrefs>();

              final token = await prefs.getString(AppConstant.token);
              final LoginResponse? userData = prefs.getModel<LoginResponse>(
                AppConstant.userModel,
                (json) => LoginResponse.fromJson(json),
              );
              //Utils.LogPrintddddd("${userData}");
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
              }
            },
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(
              left: 18,
              right: 18,
              bottom: context.screenHeight * 0.11,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/new_design/background/mobile_mandir_mask.png",
                  height: context.screenHeight * 0.1,
                  width: 150,
                ),
              ],
            ),
          ),

          body: SafeArea(
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 18,
                  ),
                  child: Container(
                    height: context.screenHeight,
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // _dailyInspirationCard(context),
                        Container(
                          width: double.infinity,
                          height: context.screenHeight * 0.08,
                          padding: EdgeInsets.only(
                            left: 8,
                            right: 8,
                            top: 6,
                            bottom: 6,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/new_design/background/profile_card.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: isSocailLogin
                                        ? NetworkImage(
                                            "${BlocProvider.of<AppBloc>(context).state.userdata.user.profile_image.isEmpty ? AppConstant.fileBaseUrl + "3da39-no-user-image-icon-27.webp" : BlocProvider.of<AppBloc>(context).state.userdata.user.profile_image}",
                                          )
                                        : NetworkImage(
                                            "${AppConstant.fileBaseUrl1}/"
                                            "${BlocProvider.of<AppBloc>(context).state.userdata.user.profile_image.isEmpty ? "3da39-no-user-image-icon-27.webp" : BlocProvider.of<AppBloc>(context).state.userdata.user.profile_image}",
                                          ),
                                  ),
                                  SizedBox(width: 12),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "${BlocProvider.of<AppBloc>(context).state.userdata.user.username}",
                                            style: AppTextStyle.gilroyBold(
                                              context.screenWidth * 0.045,
                                              color: AppColor.appWhiteColor,
                                            ),
                                          ),
                                          isSocailLogin
                                              ? SizedBox.shrink()
                                              : Text(
                                                  "${BlocProvider.of<AppBloc>(context).state.userdata.user.phone}",
                                                  style:
                                                      AppTextStyle.gilroyMedium(
                                                        context.screenWidth *
                                                            0.035,
                                                        color: AppColor
                                                            .appWhiteColor,
                                                      ),
                                                ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<ProfileBloc>(
                                    context,
                                  ).add(ProfileEvent.refreshProfile());
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.USER_PROFILE,
                                  );
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: AppColor.appWhiteColor,
                                  size: 34,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //  _sectionTitle("Account", context),
                        SizedBox(height: 25),

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 4),

                              _settingTile(
                                onTap: () async {
                                  BlocProvider.of<JaapHistoryBloc>(
                                    context,
                                  ).add(const LoadHistory());

                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.JAAP_PAGE_HISTORY,
                                  );
                                },
                                "assets/new_design/icon/malalll.png",
                                context.l10n.jaapHistory,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Divider(
                                  color: AppColor.newGreyy,
                                  thickness: 0.4,
                                ),
                              ),

                              SizedBox(height: 4),

                              _settingTile(
                                onTap: () async {
                                  Navigator.pop(context);
                                  context.read<SevaHistoryBloc>().add(
                                    const SevaHistoryEvent.getSevaHistory(),
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.SEVA_HISTORY_PAGE,
                                  );
                                },
                                "assets/icons/cow.png",
                                context.l10n.sevaHistory,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Divider(
                                  color: AppColor.newGreyy,
                                  thickness: 0.4,
                                ),
                              ),

                              _settingTile(
                                onTap: () async {
                                  // await InAppBrowserService.openWebPage(
                                  BlocProvider.of<WebViewBloc>(context).add(
                                    LoadWebView(
                                      title: context.l10n.termsAndConditions,
                                      url:
                                          "https://mobilemandirapp.com/terms-and-condition?ismobile=true&lang=$selectedLang",
                                    ),
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.TERMSCONDITONABOUT,
                                    arguments: {
                                      "title": context.l10n.termsAndConditions,
                                      "url":
                                          "https://mobilemandirapp.com/terms-and-condition?ismobile=true&lang=$selectedLang",
                                    },
                                  );
                                },
                                "assets/new_design/icon/new_termcondition.png",
                                context.l10n.termsAndConditions,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Divider(
                                  color: AppColor.newGreyy,
                                  thickness: 0.4,
                                ),
                              ),
                              _settingTile(
                                onTap: () async {
                                  BlocProvider.of<WebViewBloc>(context).add(
                                    LoadWebView(
                                      title: context.l10n.privacyPolicy,
                                      url:
                                          "https://mobilemandirapp.com/privacy-policy?ismobile=true&lang=$selectedLang",
                                    ),
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.TERMSCONDITONABOUT,
                                    arguments: {
                                      "title": context.l10n.privacyPolicy,
                                      "url":
                                          "https://mobilemandirapp.com/privacy-policy?ismobile=true&lang=$selectedLang",
                                    },
                                  );
                                },
                                "assets/new_design/icon/new_privacypolicy.png",
                                context.l10n.privacyPolicy,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Divider(
                                  thickness: 0.4,
                                  color: AppColor.newGreyy,
                                ),
                              ),
                              _settingTile(
                                "assets/new_design/icon/new_helpsupport.png",
                                context.l10n.refundPolicy,
                                onTap: () async {
                                  BlocProvider.of<WebViewBloc>(context).add(
                                    LoadWebView(
                                      title: context.l10n.refundPolicy,
                                      url:
                                          "https://mobilemandirapp.com/refund-cancellation-policy?ismobile=true&lang=$selectedLang",
                                    ),
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.TERMSCONDITONABOUT,
                                    arguments: {
                                      "title": context.l10n.refundPolicy,
                                      "url":
                                          "https://mobilemandirapp.com/refund-cancellation-policy?ismobile=true&lang=$selectedLang",
                                    },
                                  );
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Divider(
                                  thickness: 0.4,
                                  color: AppColor.newGreyy,
                                ),
                              ),

                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<WebViewBloc>(context).add(
                                    LoadWebView(
                                      title: context.l10n.aboutUs,
                                      url:
                                          "https://mobilemandirapp.com/about-us?ismobile=true&lang=$selectedLang",
                                    ),
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.TERMSCONDITONABOUT,
                                    arguments: {
                                      "title": context.l10n.aboutUs,
                                      "url":
                                          "https://mobilemandirapp.com/about-us?ismobile=true&lang=$selectedLang",
                                    },
                                  );
                                },
                                child: _settingTile(
                                  "assets/icons/about_us.png",
                                  context.l10n.aboutUs,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Divider(
                                  color: AppColor.newGreyy,
                                  thickness: 0.4,
                                ),
                              ),
                              _languageSettingTile(context),
                              Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Divider(
                                  color: AppColor.newGreyy,
                                  thickness: 0.4,
                                ),
                              ),
                              _settingTile(
                                "assets/new_design/icon/new_logout.png",
                                context.l10n.logout,
                                onTap: () async {
                                  final confirm = await showDialog<bool>(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(context.l10n.logout),
                                        content: Text(
                                          context.l10n.logoutConfirmation,
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, false),
                                            child: Text(context.l10n.cancel),
                                          ),
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, true),
                                            child: Text(
                                              context.l10n.logout,
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );

                                  if (confirm == true) {
                                    // --- Fire-and-forget: unsubscribe in background (no await) ---
                                    final prefs = getIt<SharedPrefs>();
                                    final LoginResponse? userData = prefs
                                        .getModel<LoginResponse>(
                                          AppConstant.userModel,
                                          (json) =>
                                              LoginResponse.fromJson(json),
                                        );

                                    // Stop audio immediately (synchronous enough)
                                    audioHandler?.stop();

                                    // Clear local data first so app feels instant
                                    await prefs.clear();

                                    // Reset blocs
                                    BlocProvider.of<AppBloc>(
                                      context,
                                    ).add(HideShowMusciActionButtons(false));
                                    BlocProvider.of<AppBloc>(
                                      context,
                                    ).add(UserDataUpdate());
                                    BlocProvider.of<LoginBloc>(
                                      context,
                                    ).add(MakeInitial());

                                    // Navigate immediately — don't wait for Firebase
                                    Navigator.pushNamedAndRemoveUntil(
                                      context,
                                      AppRoutes.SIGNIN,
                                      (Route<dynamic> route) => false,
                                    );

                                    // Unsubscribe from all topics in background (fire-and-forget)
                                    if (userData != null) {
                                      FirebaseMessaging.instance
                                          .unsubscribeFromTopic(
                                            "${userData.user.id}_user",
                                          )
                                          .catchError((_) {});
                                    }
                                    FirebaseMessaging.instance
                                        .unsubscribeFromTopic(
                                          "test_notification",
                                        )
                                        .catchError((_) {});
                                    FirebaseMessaging.instance
                                        .unsubscribeFromTopic("all_users")
                                        .catchError((_) {});
                                    FirebaseMessaging.instance
                                        .unsubscribeFromTopic("hanuman")
                                        .catchError((_) {});
                                    FirebaseMessaging.instance
                                        .unsubscribeFromTopic("aarti")
                                        .catchError((_) {});
                                  }
                                },
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Divider(
                                  color: AppColor.newGreyy,
                                  thickness: 0.4,
                                ),
                              ),
                              _deleteTile(
                                Icons.delete,
                                context.l10n.deleteAccount,

                                onTap: () async {
                                  final confirm = await showDialog<bool>(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(context.l10n.deleteAccount),
                                        content: Text(
                                          context.l10n.areYouSureDeleteAccount,
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, false),
                                            child: Text(context.l10n.cancel),
                                          ),
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, true),
                                            child: Text(
                                              context.l10n.delete,
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );

                                  if (confirm == true) {
                                    if (context
                                        .read<WebViewBloc>()
                                        .state
                                        .isLoading) {
                                      return;
                                    }
                                    context.read<WebViewBloc>().add(
                                      DeleteAccountEvent(body: {}),
                                    );
                                  }
                                },
                              ),

                              SizedBox(height: 4),
                            ],
                          ),
                        ),

                        // const SizedBox(height: 28),

                        // _premiumCard(context),
                        // const SizedBox(height: 30),

                        //   Center(child: _footer()),
                      ],
                    ),
                  ),
                ),
                if (state.isLoading) LoadingIndicator(),
              ],
            ),
          ),
        );
      },
    );
  }

  String getHomeForYouType(int index) {
    switch (index) {
      case 1:
        return 'god';
      case 2:
        return 'temple';
      case 3:
        return 'sant';
      case 4:
        return 'seva';
      default:
        return 'aartibhajan';
    }
  }

  Widget _deleteTile(
    IconData icon, // 👈 icon instead of imagePath
    String title, {
    Color iconColor = Colors.black,

    VoidCallback? onTap,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 2),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          // color: Colors.white,
          //borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Icon(icon, size: 24),
            //   Image.asset(icon,width: 24,height: 24,),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                title,
                style: AppTextStyle.medium(
                  navigatorKey.currentContext!.screenWidth * 0.039,
                  color: AppColor.appBlack,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 12, color: AppColor.newGreyy),
          ],
        ),
      ),
    );
  }

  Widget _settingTile(
    String icon, // 👈 icon instead of imagePath
    String title, {
    Color iconColor = Colors.black,

    VoidCallback? onTap,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 2),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        decoration: BoxDecoration(
          // color: Colors.white,
          //borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, width: 20, height: 20, color: Colors.black),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                title,
                style: AppTextStyle.medium(
                  navigatorKey.currentContext!.screenWidth * 0.039,
                  color: AppColor.appBlack,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 12, color: AppColor.newGreyy),
          ],
        ),
      ),
    );
  }

  Widget _languageSettingTile(BuildContext context) {
    final currentLocale = Localizations.localeOf(context);
    final currentLanguageName = currentLocale.languageCode == 'hi'
        ? 'हिन्दी'
        : 'English';

    return InkWell(
      splashColor: Colors.transparent,
      borderRadius: BorderRadius.circular(14),
      onTap: () => _showLanguageDialog(context),
      child: Container(
        margin: const EdgeInsets.only(top: 2),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.translate, size: 20, color: Colors.black),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                context.l10n.changeLanguage,
                style: AppTextStyle.medium(
                  navigatorKey.currentContext!.screenWidth * 0.039,
                  color: AppColor.appBlack,
                ),
              ),
            ),
            Text(
              currentLanguageName,
              style: TextStyle(
                fontSize: navigatorKey.currentContext!.screenWidth * 0.035,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 8),
            Icon(Icons.arrow_forward_ios, size: 12, color: AppColor.newGreyy),
          ],
        ),
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(context.l10n.selectLanguage),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text("English"),
                trailing: Localizations.localeOf(context).languageCode == 'en'
                    ? const Icon(Icons.check, color: AppColor.goldDark)
                    : null,
                onTap: () {
                  context.read<LanguageBloc>().add(
                    const ChangeLanguageEvent(Locale('en')),
                  );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("हिन्दी"),
                trailing: Localizations.localeOf(context).languageCode == 'hi'
                    ? const Icon(Icons.check, color: AppColor.goldDark)
                    : null,
                onTap: () {
                  context.read<LanguageBloc>().add(
                    const ChangeLanguageEvent(Locale('hi')),
                  );
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
