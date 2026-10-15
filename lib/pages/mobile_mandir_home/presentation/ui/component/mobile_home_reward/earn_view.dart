import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_reward/task_reward_list.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_reward/weekly_streak_tracker.dart';

import '../../../../../../common/routes/exports.dart';
import '../../updated_component/title_with_see_allbutton.dart';

class EarnView extends StatelessWidget {
  const EarnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         WeeklyStreakTracker(),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 12, top: 18, bottom: 0),
          child: TitleWithSeeAllButton(
            title: context.l10n.tasks,
            showActionButton: false,
            actionText: context.l10n.seeAll,
            onActionTap: () {},
          ),
        ),
         TaskRewardList(),
      ],
    );
  }
}
