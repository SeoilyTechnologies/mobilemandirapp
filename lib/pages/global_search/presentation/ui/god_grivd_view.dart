import 'package:flutter/material.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/common/network/network_eport.dart';

import '../../../../common/component/app_text_style.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../god_detail/presentation/bloc/god_details_bloc.dart';
import '../../../god_detail/presentation/bloc/god_details_event.dart';
import '../bloc/global_search_bloc.dart';
import '../bloc/global_search_state.dart';
import 'god_card.dart';

class GodGrivdView extends StatelessWidget {
  GodGrivdView({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return const GodGrivdViewSmall();
    } else if (context.isMediumScreen) {
      return const GodGrivdViewMedium();
    } else {
      return const GodGrivdViewMedium();
    }
  }
}

class GodGrivdViewMedium extends StatelessWidget {
  const GodGrivdViewMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalSearchBloc, GlobalSearchState>(
      listener: (context, state) {},
      builder: (context, state) {
        final gods = state.globalSearchResponse.data.god;
        if (gods.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                context.l10n.godAndAvatar,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.048,
                  color: AppColor.newsecondaruy,
                ),
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 3, bottom: 12),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: gods.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.79,
              ),
              itemBuilder: (context, index) {
                final data = gods[index];
                return AartiCard(
                  image: data.godData!.thumbnail!,
                  title: data.godData!.godName!,
                  onTap: () {
                    BlocProvider.of<GodDetailsBloc>(context).add(
                      GodDetailsEvent.getGodDetailById(id: data.contentId),
                    );
                    Navigator.pushNamed(context, AppRoutes.GOD_DETAIL_PAGE);
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class GodGrivdViewSmall extends StatelessWidget {
  const GodGrivdViewSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalSearchBloc, GlobalSearchState>(
      listener: (context, state) {},
      builder: (context, state) {
        final gods = state.globalSearchResponse.data.god;
        if (gods.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                context.l10n.godAndAvatar,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.048,
                  color: AppColor.newsecondaruy,
                ),
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 3, bottom: 12),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: gods.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                final data = gods[index];
                return AartiCard(
                  image: data.godData!.thumbnail!,
                  title: data.godData!.godName!,
                  onTap: () {
                    BlocProvider.of<GodDetailsBloc>(context).add(
                      GodDetailsEvent.getGodDetailById(id: data.contentId),
                    );
                    Navigator.pushNamed(context, AppRoutes.GOD_DETAIL_PAGE);
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}
