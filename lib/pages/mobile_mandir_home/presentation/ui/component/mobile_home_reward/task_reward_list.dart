
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../common/component/skeleton_loader.dart';

import '../../../../../../common/values/screenUtils.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../bloc/mobile_home_bloc.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import '../mobile_home_small.dart';
import 'task_reward_card.dart';

class TaskRewardList extends StatelessWidget {
  TaskRewardList({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return const TaskRewardListSmall();
    } else if (context.isMediumScreen) {
      return const TaskRewardListMedium();
    } else {
      return const TaskRewardListMedium();
    }
  }
}

class TaskRewardListSmall extends StatelessWidget {
  const TaskRewardListSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final tasks = state.rewardOverviewApiResponse.data.tasks;

        String getIcon(String title) {
          final lower = title.toLowerCase();

          if (lower.contains("aarti")) {
            return "assets/new_design/icon/aarti_complete_kro.png";
          }

          if (lower.contains("seva")) {
            return "assets/new_design/icon/sewa_dan_kro.png";
          }

          if (lower.contains("jaap")) {
            return "assets/new_design/icon/naam_jaap_kro.png";
          }

          return "assets/new_design/icon/aarti_complete_kro.png";
        }

        return state.isRewardOverViewLoading 
            ? const SkeletonListView(itemCount: 4) 
            : ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tasks.length,
          separatorBuilder: (_, __) => const SizedBox(height: 1),
          itemBuilder: (context, index) {
            final item = tasks[index];

            return TaskRewardCard(
              onTap: () {
                if (item.activityType == "aarti_complete") {
                  BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(1));
                } else if (item.activityType == "seva_donate") {
                  BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(2));
                } else {
                  BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(3));
                }
              },
              title: item.title,
              currentProgress: item.progress.current,
              totalProgress: item.progress.target,
              coins: item.rewardCoins,
              buttonText: item.cta.label,
              iconPath: getIcon(item.title),
              isCompleted: item.status.toLowerCase() == "completed",
            );
          },
        );
      },
    );
  }
}

class TaskRewardListMedium extends StatelessWidget {
  const TaskRewardListMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final tasks = state.rewardOverviewApiResponse.data.tasks;

        String getIcon(String title) {
          final lower = title.toLowerCase();

          if (lower.contains("aarti")) {
            return "assets/new_design/icon/aarti_complete_kro.png";
          }

          if (lower.contains("seva")) {
            return "assets/new_design/icon/sewa_dan_kro.png";
          }

          if (lower.contains("jaap")) {
            return "assets/new_design/icon/naam_jaap_kro.png";
          }

          return "assets/new_design/icon/aarti_complete_kro.png";
        }

        return state.isRewardOverViewLoading 
            ? const SkeletonListView(itemCount: 4) 
            : ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tasks.length,
          separatorBuilder: (_, __) => const SizedBox(height: 1),
          itemBuilder: (context, index) {
            final item = tasks[index];

            return TaskRewardCard(
              onTap: () {
                if (item.activityType == "aarti_complete") {
                  BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(1));
                } else if (item.activityType == "seva_donate") {
                  BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(2));
                } else {
                  BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(3));
                }
              },
              title: item.title,
              currentProgress: item.progress.current,
              totalProgress: item.progress.target,
              coins: item.rewardCoins,
              buttonText: item.cta.label,
              iconPath: getIcon(item.title),
              isCompleted: item.status.toLowerCase() == "completed",
            );
          },
        );
      },
    );
  }
}
