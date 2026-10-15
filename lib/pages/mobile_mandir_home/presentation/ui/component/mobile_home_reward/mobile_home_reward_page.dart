import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';

import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_reward/reward_view.dart';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import 'common_toggle_tab.dart';
import 'earn_view.dart';
import 'how_it_works_card.dart';

class MobileHomeRewardPage extends StatelessWidget {
  const MobileHomeRewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.screenWidth * 0.03,
              ),
              child: CustomToggleSwitchNew(
                borderRadius: 4,
                selectedTabIndex: state.selectedRewardTab,
                tabs: [
                  ToggleTabItem(
                    title: context.l10n.earnPoints,
                    imagePath: 'assets/new_design/icon/new_coin.png',
                  ),
                  ToggleTabItem(
                    title: context.l10n.rewards,
                    imagePath: 'assets/new_design/icon/hanger.png',
                  ),
                ],
                onTabChanged: (index) {
                  BlocProvider.of<MobileHomeBloc>(
                    context,
                  ).add(RewardSelectedTabEvent(index));
                },
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: _buildTopCard(
                      context,
                      value:
                          "${state.rewardOverviewApiResponse.data.totalCoinsProgress.current}",
                      title: context.l10n.totalCoins,
                      subtitle:
                          "${state.rewardOverviewApiResponse.data.totalCoinsProgress.remaining} ${context.l10n.moreToNextReward}",
                      progress:
                          state
                                  .rewardOverviewApiResponse
                                  .data
                                  .totalCoinsProgress
                                  .nextRewardAt ==
                              0
                          ? 0
                          : state
                                    .rewardOverviewApiResponse
                                    .data
                                    .totalCoinsProgress
                                    .current /
                                state
                                    .rewardOverviewApiResponse
                                    .data
                                    .totalCoinsProgress
                                    .nextRewardAt,
                      image: "assets/new_design/icon/earn_ponts.png",
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _buildTopCard(
                      context,
                      value:
                          "${state.rewardOverviewApiResponse.data.dayStreak.current}",
                      title: context.l10n.dayStreak,
                      subtitle:
                          "${state.rewardOverviewApiResponse.data.dayStreak.remainingForBonus} ${context.l10n.moreForBonusCoins}",
                      progress:
                          state
                                  .rewardOverviewApiResponse
                                  .data
                                  .dayStreak
                                  .nextBonusAt ==
                              0
                          ? 0
                          : state
                                    .rewardOverviewApiResponse
                                    .data
                                    .dayStreak
                                    .current /
                                state
                                    .rewardOverviewApiResponse
                                    .data
                                    .dayStreak
                                    .nextBonusAt,
                      image: "assets/new_design/icon/fire_bolt.png",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // const WeeklyStreakTracker(),
            // Padding(
            //   padding: EdgeInsets.only(left: 16, right: 12, top: 18, bottom: 0),
            //   child: TitleWithSeeAllButton(
            //     title: "Tasks",
            //     showActionButton: false,
            //     actionText: "See All",
            //     onActionTap: () {},
            //   ),
            // ),
            // const TaskRewardList(),
            //  HowItWorksCard(),
            state.selectedRewardTab == 0 ? EarnView() : RewardView(),
            HowItWorksCard(),
            //const FreeTirthYatraCard(),
            SizedBox(height: context.screenHeight * 0.14),
          ],
        );
      },
    );
  }

  Widget _buildTopCard(
    BuildContext context, {
    required String value,
    required String title,
    required String subtitle,
    required String image,
    required double progress,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.appWhiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
            right: Platform.isIOS ? -38 : -54,
            top: Platform.isIOS ? -38 : -40,
            child: Container(
              width: Platform.isIOS ? 110 : 105,
              height: Platform.isIOS ? 110 : 105,
              decoration: const BoxDecoration(
                color: Color(0xFFF8EEDF),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Positioned(
            right: Platform.isIOS ? 14 : 8,
            top: Platform.isIOS ? 14 : 12,
            child: Image.asset(
              image,
              width: Platform.isIOS ? 36 : 30,
              height: Platform.isIOS ? 36 : 30,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: AppTextStyle.gilroyBold(
                    38,
                    color: AppColor.newsecondaruy,
                  ),
                ),

                Text(
                  title,
                  style: AppTextStyle.gilroyMedium(16, color: Colors.black),
                ),

                const SizedBox(height: 12),

                Container(
                  width: double.infinity,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9D8B8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: progress.clamp(0.0, 1.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.newsecondaruy,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.029,
                    color: AppColor.newGreyy,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
