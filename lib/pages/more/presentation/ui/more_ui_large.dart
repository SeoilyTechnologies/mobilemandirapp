import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/routes/routes.dart';
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
import '../../../auth/profile/presentation/bloc/profile_event.dart';
import '../../../wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../wishlist/presentation/bloc/wishlist_event.dart';
import '../bloc/webivew_event.dart';
import '../bloc/webivew_state.dart';

class MoreUiLarge extends StatelessWidget {
  const MoreUiLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WebViewBloc, WebViewState>(
      listener: (context, state) async {
        if (state.isAccountDeleted == true) {
          await getIt<SharedPrefs>().clear();
          context.showCustomSnackbar("Account Deleted");
        }
      },
      builder: (context, state) {
        context.watch<AppBloc>();
        final selectedLang = Localizations.localeOf(context).languageCode;
        return Scaffold(
          backgroundColor: const Color(0xFFF6F7FB),
          appBar: MandirAppBar(
            title: context.l10n.myProfile,
            onBackTap: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
              }
            },
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(left: 18, right: 18, bottom: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/new_design/background/mobile_mandir_mask.png",
                  height: context.screenWidth * 0.48,
                  width: 150,
                ),
              ],
            ),
          ),

          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // _dailyInspirationCard(context),
                  Container(
                    width: double.infinity,
                    height: context.screenHeight * 0.07,
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
                              backgroundImage: NetworkImage(
                                "${AppConstant.fileBaseUrl1}/"
                                    "${BlocProvider.of<AppBloc>(context).state.userdata.user.profile_image.isEmpty ? "3da39-no-user-image-icon-27.webp" : BlocProvider.of<AppBloc>(context).state.userdata.user.profile_image}",
                              ),
                            ),
                            SizedBox(width: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "${BlocProvider.of<AppBloc>(context).state.userdata.user.username}",
                                      style: AppTextStyle.gilroyBold(
                                        context.screenWidth * 0.045,
                                        color: AppColor.appWhiteColor,
                                      ),
                                    ),
                                    Text(
                                      "${BlocProvider.of<AppBloc>(context).state.userdata.user.phone}",
                                      style: AppTextStyle.gilroyMedium(
                                        context.screenWidth * 0.035,
                                        color: AppColor.appWhiteColor,
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
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.all(Radius.circular(8)),
                  //   ),
                  //   child: Column(
                  //     children: <Widget>[
                  //       SizedBox(height: 8),
                  //       GestureDetector(
                  //         onTap: () {
                  //           Navigator.pushNamed(
                  //             context,
                  //             AppRoutes.MY_FAVOURITE_UI_PAGE,
                  //           );
                  //         },
                  //         child: _settingTile(
                  //           "assets/new_design/icon/new_lik.png",
                  //           context.l10n.myFavourites,
                  //         ),
                  //       ),
                  //       SizedBox(height: 8),
                  //       // _settingTile(Icons.settings, "Settings"),
                  //     ],
                  //   ),
                  // ),

                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.pushNamed(context, AppRoutes.USER_PROFILE);
                  //   },
                  //   child: _settingTile(
                  //     "assets/new_figma_icons/more_avatar.png",
                  //     "My Profile",
                  //   ),
                  // ),

                  // _settingTile(Icons.download_outlined, "Downloads"),
                  // const SizedBox(height: 28),
                  //
                  // //_sectionTitle("Preferences", context),
                  // _settingTile(
                  //   "assets/new_figma_icons/more_notification.png",
                  //   "Notifications",
                  // ),
                  //_settingTile(Icons.dark_mode_outlined, "Dark Mode"),
                  const SizedBox(height: 25),

                  //  _sectionTitle("More", context),
                  //   _settingTile(
                  //     "assets/new_figma_icons/more_share.png",
                  //     "Share App",
                  //   ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 8),
                        _settingTile(
                          onTap: () async {
                            BlocProvider.of<WishlistBloc>(context).add(GetWishlist(userId: ""));


                            Navigator.pushNamed(
                              context,
                              AppRoutes.MY_FAVOURITE_UI_PAGE,

                            );
                          },
                          "assets/new_design/icon/my_fav.png",
                          context.l10n.myFavourites,
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
                            //   "https://mobilemandirapp.com/terms-and-conditions",
                            // );
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
                            // await InAppBrowserService.openWebPage(
                            //   "https://mobilemandirapp.com/privacy-policy.php",
                            // );
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
                          "Help & Support",
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
                            // await InAppBrowserService.openWebPage(
                            //   "https://mobilemandirapp.com/privacy-policy.php",
                            // );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Divider(
                            thickness: 0.4,
                            color: AppColor.newGreyy,
                          ),
                        ),

                        // GestureDetector(
                        //   onTap: () {
                        //     BlocProvider.of<WebViewBloc>(context).add(
                        //       LoadWebView(
                        //         title: context.l10n.aboutUs,
                        //         url: "https://mobilemandirapp.com/about-us.php",
                        //       ),
                        //     );
                        //     Navigator.pushNamed(
                        //       context,
                        //       AppRoutes.TERMSCONDITONABOUT,
                        //       arguments: {
                        //         "title": context.l10n.aboutUs,
                        //         "url":
                        //             "https://mobilemandirapp.com/about-us.php",
                        //       },
                        //     );
                        //   },
                        //   child: _settingTile(
                        //     Icons.about_i,
                        //     context.l10n.aboutUs,
                        //   ),
                        // ),
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
                                  content: Text(context.l10n.logoutConfirmation),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, false),
                                      child: Text(context.l10n.cancel),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, true),
                                      child: Text(context.l10n.logout,
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );

                            if (confirm == true) {
                              await getIt<SharedPrefs>().clear();

                              BlocProvider.of<ProfileBloc>(context)
                                  .add(ProfileEvent.refreshProfile());

                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                AppRoutes.SIGNIN,
                                    (Route<dynamic> route) => false,
                              );
                            }
                          },
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Divider(
                            color: AppColor.newGreyy.withOpacity(0.3),
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
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );

                            if (confirm == true) {
                              // 🔥 DELETE ACTION
                              // var token = await getIt<SharedPrefs>().getString(AppConstant.token);
                              //
                              // print("🔥 TOKEN FROM PREFS => $token"); // TEMP DEBUG
                              //
                              // Map<String, String> headers = {};
                              // if (token != null && token.isNotEmpty) {
                              //   headers['Authorization'] = "Bearer $token";
                              // }
                              // //
                              // // return headers;
                              // // await getIt<SharedPrefs>().clear();
                              // //
                              BlocProvider.of<WebViewBloc>(
                                context,
                              ).add(DeleteAccountEvent(body: {}));

                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                AppRoutes.SIGNIN,
                                    (Route<dynamic> route) => false,
                              );
                            }
                          },
                        ),

                        SizedBox(height: 4),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),

                  // _premiumCard(context),
                  const SizedBox(height: 30),

                  //   Center(child: _footer()),
                  const SizedBox(height: 20),
                  // _logoutButton(context),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  ////////////////////////////////////////////////////////////////////////////
  // DAILY INSPIRATION CARD
  ////////////////////////////////////////////////////////////////////////////


  /// sirf UI ka part ek jagah rakha hai (model nahi, bas widget)
  Widget _buildDailyInspirationContent(
      BuildContext context, {
        required String quoteHi,
        required String quoteEn,
        required String author,
      }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white24,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.auto_awesome, color: Colors.white),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Daily Inspiration",
                  style: AppTextStyle.semiBold(
                    navigatorKey.currentContext!.screenWidth * 0.051,
                    color: AppColor.appWhiteColor,
                  ),
                ),
                Text(
                  "Quote of the Day",
                  style: AppTextStyle.regular(
                    navigatorKey.currentContext!.screenWidth * 0.031,
                    color: AppColor.appWhiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Hindi quote
        if (quoteHi.isNotEmpty) ...[
          Text(
            '"$quoteHi"',
            style: AppTextStyle.regular(
              navigatorKey.currentContext!.screenWidth * 0.036,
              color: AppColor.appWhiteColor,
            ),
          ),
          const SizedBox(height: 12),
        ],

        // English quote
        if (quoteEn.isNotEmpty)
          Text(
            '"$quoteEn"',
            style: AppTextStyle.regular(
              navigatorKey.currentContext!.screenWidth * 0.036,
              color: AppColor.appWhiteColor,
            ),
          ),

        const SizedBox(height: 18),
        Container(height: 1, color: Colors.white30),
        const SizedBox(height: 14),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              author,
              style: AppTextStyle.lightText(
                navigatorKey.currentContext!.screenWidth * 0.036,
                color: Colors.white54,
              ),
            ),
            GestureDetector(
              onTap: () {
                ShareHelper.shareText(text: "${quoteHi.trim()}");
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Share Quote",
                  style: AppTextStyle.regular(
                    navigatorKey.currentContext!.screenWidth * 0.036,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////////
  // SECTION TITLE
  ////////////////////////////////////////////////////////////////////////////

  Widget _sectionTitle(String text, BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.semiBold(
        context.screenWidth * 0.051,
        color: AppColor.appBlack,
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////
  // SETTING TILE COMPONENT
  ////////////////////////////////////////////////////////////////////////////

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
            Image.asset(icon, width: 20, height: 20),
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
    final currentLanguageName = currentLocale.languageCode == 'hi' ? 'हिन्दी' : 'English';

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
                  context.read<LanguageBloc>().add(const ChangeLanguageEvent(Locale('en')));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("हिन्दी"),
                trailing: Localizations.localeOf(context).languageCode == 'hi'
                    ? const Icon(Icons.check, color: AppColor.goldDark)
                    : null,
                onTap: () {
                  context.read<LanguageBloc>().add(const ChangeLanguageEvent(Locale('hi')));
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  ////////////////////////////////////////////////////////////////////////////
  // PREMIUM CARD
  ////////////////////////////////////////////////////////////////////////////

  Widget _premiumCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xfffff4e2),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.orange.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/new_figma_icons/more_preminium.png",
                width: 38,
                height: 38,
              ),
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Go Premium",
                    style: AppTextStyle.bold(
                      navigatorKey.currentContext!.screenWidth * 0.046,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Unlock all features & remove ads",
                    style: AppTextStyle.medium(
                      navigatorKey.currentContext!.screenWidth * 0.032,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 14),

          // Upgrade Button
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 14),
            decoration: BoxDecoration(
              color: AppColor.primary1,
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Text(
              "Upgrade Now",
              style: AppTextStyle.bold(
                navigatorKey.currentContext!.screenWidth * 0.042,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////
  // FOOTER
  ////////////////////////////////////////////////////////////////////////////

  Widget _footer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Mobile Mandir v1.0.0",
          style: AppTextStyle.bold(
            navigatorKey.currentContext!.screenWidth * 0.028,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 6),
        Text(
          "Made with 🙏 for devotees by Seoily",
          style: AppTextStyle.bold(
            navigatorKey.currentContext!.screenWidth * 0.028,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////////
  // LOGOUT BUTTON
  ////////////////////////////////////////////////////////////////////////////

  Widget _logoutButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColor.primary1),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.logout, color: AppColor.primary1),
          SizedBox(width: 8),
          GestureDetector(
            onTap: () async {
              await getIt<SharedPrefs>().getString("user_model");

              await getIt<SharedPrefs>().clear();
              BlocProvider.of<ProfileBloc>(
                context,
              ).add(ProfileEvent.refreshProfile());
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.SIGNIN,
                    (Route<dynamic> route) => false,
              );
            },
            child: Text(context.l10n.logout,
              style: AppTextStyle.bold(
                navigatorKey.currentContext!.screenWidth * 0.04,
                color: AppColor.primary1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
