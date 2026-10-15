import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/application/presentatioin/bloc/app_bloc.dart';
import 'package:mandirapp/pages/auth/profile/presentation/bloc/profile_bloc.dart';
import 'package:mandirapp/pages/language/language_toggle_button.dart';

import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../../common/utils/auth_helper.dart';
import '../../../../application/presentatioin/bloc/app_state.dart';
import '../../../../auth/signin/data/entity/login_response.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_event.dart';
import '../../bloc/mobile_home_state.dart';

class HomeHeader extends StatelessWidget {
  final String name;

  const HomeHeader({super.key, required this.name});

  bool requireLogin() {
    final prefs = getIt<SharedPrefs>();

    final LoginResponse? userData = prefs.getModel<LoginResponse>(
      AppConstant.userModel,
      (json) => LoginResponse.fromJson(json),
    );

    return userData?.user?.isGuest ?? false;
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    context.watch<AppBloc>();
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Row(
          children: [
            _profileAvatar(context, width: 54, height: 54),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.namastey,
                  // style: TextStyle(
                  //   color: Colors.white70,
                  //   fontSize: context.screenWidth*0.036,
                  //   fontFamily: AppFont.gilroyMedium,
                  // ),
                  style: AppTextStyle.gilroySemiBold(
                    context.screenWidth * 0.035,
                    color: AppColor.appWhiteColor,
                  ),
                ),

                Text(
                  "${BlocProvider.of<AppBloc>(context).state.userdata.user.username}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: context.screenWidth * 0.0426,
                    fontFamily: AppFont.gilroyBold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            if (context.isLoggedIn())
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (context.requireLogin()) return;
                      BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
                      BlocProvider.of<MobileHomeBloc>(
                        context,
                      ).add(const MobileHomeEvent.getRewardOverView());
                      context.read<MobileHomeBloc>().add(
                        const MobileHomeEvent.changeTopTab(6),
                      );
                    },
                    child: Container(
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/new_design/icon/earn_ponts.png',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "${state.rewardOverviewApiResponse.data.coins}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: AppFont.gilroyBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  BlocBuilder<AppBloc, AppState>(
                    builder: (context, appState) {
                      final unreadCount =
                          appState.unreadNotification.data.unreadCount;

                      return GestureDetector(
                        onTap: () async {
                          await Navigator.pushNamed(
                            context,
                            AppRoutes.NOTIFICATIONPAGE,
                          );

                          if (context.mounted) {
                            context.read<AppBloc>().add(
                              GetUnreadNotificationCountEvent(),
                            );
                          }
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.notifications_none_outlined,
                                  size: 20,
                                  color: Color(0xFF793C01),
                                ),
                              ),
                            ),
                            if (unreadCount > 0)
                              Positioned(
                                right: -2,
                                top: -2,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  constraints: const BoxConstraints(
                                    minWidth: 16,
                                    minHeight: 16,
                                  ),
                                  child: Text(
                                    '$unreadCount',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}

class HomeHeaderMedium extends StatelessWidget {
  final String name;

  const HomeHeaderMedium({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    context.watch<AppBloc>();
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (_, __) {},
      builder: (context, state) {
        return Row(
          children: [
            _profileAvatar(
              context,
              width: context.screenWidth * 0.075,
              height: context.screenWidth * 0.075,
            ),

            const SizedBox(width: 14),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.namastey,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: context.screenWidth * 0.022,
                    fontFamily: AppFont.gilroyMedium,
                  ),
                ),

                Text(
                  BlocProvider.of<AppBloc>(
                    context,
                  ).state.userdata.user.username,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: context.screenWidth * 0.028,
                    fontFamily: AppFont.gilroyBold,
                  ),
                ),
              ],
            ),

            const Spacer(),

            if (context.isLoggedIn())
              GestureDetector(
                onTap: () {
                  if (context.requireLogin()) return;
                  BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
                  context.read<MobileHomeBloc>().add(
                    const MobileHomeEvent.getRewardOverView(),
                  );
                  context.read<MobileHomeBloc>().add(
                    const MobileHomeEvent.changeTopTab(6),
                  );
                },
                child: Container(
                  height: 33,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/new_design/icon/earn_ponts.png",
                        width: 24,
                        height: 24,
                      ),

                      const SizedBox(width: 8),

                      Text(
                        "${state.rewardOverviewApiResponse.data.coins}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: AppFont.gilroyBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(width: 12,),

            BlocBuilder<AppBloc, AppState>(
              builder: (context, state) {
                final unreadCount = state.unreadNotification.data.unreadCount;

                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.NOTIFICATIONPAGE);
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.notifications_none_outlined,
                            size: 20,
                            color: Color(0xFF793C01),
                          ),
                        ),
                      ),

                      if (unreadCount > 0)
                        const Positioned(
                          right: 1,
                          top: -4,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.red,
                          ),
                        ),
                    ],
                  ),
                );
              },
            )
          ],
        );
      },
    );
  }
}

class HomeHeaderLarge extends StatelessWidget {
  final String name;

  const HomeHeaderLarge({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    context.watch<AppBloc>();
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Row(
          children: [
            _profileAvatar(
              context,
              width: context.screenWidth * 0.1,
              height: context.screenHeight * 0.11,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.namastey,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: context.screenWidth * 0.025,
                    fontFamily: AppFont.gilroyMedium,
                  ),
                ),
                Text(
                  "${BlocProvider.of<AppBloc>(context).state.userdata.user.username}",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: context.screenWidth * 0.027,
                    fontFamily: AppFont.gilroyBold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (context.isLoggedIn())
                  GestureDetector(
                    onTap: () {
                      if (context.requireLogin()) return;
                      BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
                      context.read<MobileHomeBloc>().add(
                        const MobileHomeEvent.getRewardOverView(),
                      );
                      context.read<MobileHomeBloc>().add(
                        const MobileHomeEvent.changeTopTab(6),
                      );
                    },
                    child: Container(
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/new_design/icon/earn_ponts.png',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "${state.rewardOverviewApiResponse.data.coins}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: AppFont.gilroyBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.NOTIFICATIONPAGE);
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.notifications_none_outlined,
                        size: 20,
                        color: Color(0xFF793C01),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _icon(IconData icon) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: Colors.white,
      child: Icon(icon, size: 18, color: AppColor.gold),
    );
  }
}

Widget _profileAvatar(
  BuildContext context, {
  required double width,
  required double height,
}) {
  final profileImage = BlocProvider.of<AppBloc>(
    context,
  ).state.userdata.user.profile_image;
  final isSocailLogin = BlocProvider.of<AppBloc>(
    context,
  ).state.userdata.user.isSocialLogin;
  return GestureDetector(
    onTap: () {
      if (context.requireLogin()) return;
      Navigator.pushNamed(context, AppRoutes.MORE_UI_PAGE);
    },
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(
          isSocailLogin
              ? "${profileImage.isEmpty ? AppConstant.fileBaseUrl + "3da39-no-user-image-icon-27.webp" : profileImage}"
              : "${AppConstant.fileBaseUrl1}/${profileImage.isEmpty ? "3da39-no-user-image-icon-27.webp" : profileImage}",
        ),
      ),
    ),
  );
}
