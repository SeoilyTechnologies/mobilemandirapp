import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/values_exports.dart';
import 'package:mandirapp/pages/temple_detail/presentation/ui/component/section_title.dart';

import '../../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../bloc/templ_detail_new/temple_detail_new_state.dart';

class ExploreNearbyCard extends StatelessWidget {
  const ExploreNearbyCard({super.key});

  Widget itemBox(String title, List<String> items, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColor.appSantbackground,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.034,
              color: AppColor.fullBlack,
            ),
          ),

          const SizedBox(height: 8),

          ...items.map(
            (e) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "• ",
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.026,
                    color: AppColor.fullBlack,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      e,
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.034,
                        color: AppColor.fullBlack,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TempleDetailNewBloc, TempleDetailNewState>(
      builder: (context, state) {
        final nearby = state.templeDetailApiResponse.data.exploreNearby;

        if (nearby.isEmpty) {
          return const SizedBox.shrink();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: context.l10n.exploreNearby),
            const SizedBox(height: 14),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFE5D8CB)),
              ),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: nearby.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.1,
                ),
                itemBuilder: (context, index) {
                  final item = nearby[index];

                  return itemBox(item.title, item.points, context);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
