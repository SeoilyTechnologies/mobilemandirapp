import 'dart:io';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_state.dart';

class WeeklyStreakTracker extends StatelessWidget {
  WeeklyStreakTracker({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return WeeklyStreakTrackerSmall();
    } else if (context.isMediumScreen) {
      return WeeklyStreakTrackerMedium();
    } else {
      return WeeklyStreakTrackerMedium();
    }
  }
}


class WeeklyStreakTrackerSmall extends StatelessWidget {
  const WeeklyStreakTrackerSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final weeklyTracker =
            state.rewardOverviewApiResponse.data.weeklyTracker;

        String getIcon(int index) {
          final todayIndex = weeklyTracker.days.indexWhere((e) => e.isToday);

          final day = weeklyTracker.days[index];

          // Today
          if (day.isToday) {
            return "assets/new_design/icon/today_namaste.png";
          }

          // Previous completed days
          if (index < todayIndex && day.completed) {
            return "assets/new_design/icon/complete_days_tick.png";
          }

          // Last reward day
          if (index == weeklyTracker.days.length - 1) {
            return "assets/new_design/icon/rewaid_icon.png";
          }

          // Future days
          return "assets/new_design/icon/coming_day_icon.png";
        }

        return Container(
          margin: const EdgeInsets.all(16),
          height: Platform.isIOS ? 150 : context.screenHeight*0.2,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            image: const DecorationImage(
              image: AssetImage(
                "assets/new_design/icon/streak_tracker_background.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.weeklyStreakTracker,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.048,
                    color: AppColor.appWhiteColor,
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(weeklyTracker.days.length, (index) {
                    final day = weeklyTracker.days[index];

                    return Column(
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xffE6B319),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.12),
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset(
                              getIcon(index),
                              width: 13,
                              height: 13,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          day.isToday ? context.l10n.today : Utils.getDayName(day.day, context, true),
                          style: AppTextStyle.gilroyMedium(
                            context.screenWidth * 0.03,
                            color: AppColor.appWhiteColor,
                          ),
                        ),
                      ],
                    );
                  }),
                ),

                Platform.isIOS ? const Spacer() : const SizedBox(height: 14),

                Center(
                  child: Text(
                    weeklyTracker.bonusMessage,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.026,
                      color: AppColor.appWhiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class WeeklyStreakTrackerMedium extends StatelessWidget {
  const WeeklyStreakTrackerMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final weeklyTracker =
            state.rewardOverviewApiResponse.data.weeklyTracker;

        String getIcon(int index) {
          final todayIndex = weeklyTracker.days.indexWhere((e) => e.isToday);

          final day = weeklyTracker.days[index];

          // Today
          if (day.isToday) {
            return "assets/new_design/icon/today_namaste.png";
          }

          // Previous completed days
          if (index < todayIndex && day.completed) {
            return "assets/new_design/icon/complete_days_tick.png";
          }

          // Last reward day
          if (index == weeklyTracker.days.length - 1) {
            return "assets/new_design/icon/rewaid_icon.png";
          }

          // Future days
          return "assets/new_design/icon/coming_day_icon.png";
        }

        return Container(
          margin: const EdgeInsets.all(16),
          height: Platform.isIOS ? context.screenHeight*0.18 : context.screenHeight*0.17,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            image: const DecorationImage(
              image: AssetImage(
                "assets/new_design/icon/streak_tracker_background.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.weeklyStreakTracker,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.043,
                    color: AppColor.appWhiteColor,
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(weeklyTracker.days.length, (index) {
                    final day = weeklyTracker.days[index];

                    return Column(
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xffE6B319),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.12),
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset(
                              getIcon(index),
                              width: 13,
                              height: 13,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          day.isToday ? context.l10n.today : Utils.getDayName(day.day, context, true),
                          style: AppTextStyle.gilroyMedium(
                            context.screenWidth * 0.027,
                            color: AppColor.appWhiteColor,
                          ),
                        ),
                      ],
                    );
                  }),
                ),

                Platform.isIOS ? const Spacer() : const SizedBox(height: 14),

                Center(
                  child: Text(
                    weeklyTracker.bonusMessage,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.026,
                      color: AppColor.appWhiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}