import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/mobile_home_bloc.dart';
import '../../../bloc/mobile_home_state.dart';
import '../../../../../../common/routes/exports.dart';
import '../../updated_component/title_with_see_allbutton.dart';
import 'free_tirth_yatra_card.dart';

class RewardView extends StatelessWidget {
  const RewardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final coupons = state.rewardOverviewApiResponse.data.coupons;

        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 12,
                top: 18,
                bottom: 0,
              ),
              child: TitleWithSeeAllButton(
                title: context.l10n.allCoupons,
                showActionButton: false,
                actionText: context.l10n.seeAll,
                onActionTap: () {},
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: coupons.length,
              itemBuilder: (context, index) {
                return FreeTirthYatraCard(coupon: coupons[index]);
              },
            ),
          ],
        );
      },
    );
  }
}
