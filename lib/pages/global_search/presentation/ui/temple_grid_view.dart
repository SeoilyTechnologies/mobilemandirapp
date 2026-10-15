import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/network/app_constant.dart';

import '../../../../common/component/app_text_style.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_event.dart';
import '../bloc/global_search_bloc.dart';
import '../bloc/global_search_state.dart';
import 'god_card.dart';
import 'temple_card.dart';

class TempleGridView extends StatelessWidget {
  TempleGridView({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return TempleGridViewSmall();
    } else if (context.isMediumScreen) {
      return TempleGridViewMedium();
    } else {
      return TempleGridViewMedium();
    }
  }
}


class TempleGridViewMedium extends StatelessWidget {
  const TempleGridViewMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalSearchBloc, GlobalSearchState>(
      listener: (context, state) {},
      builder: (context, state) {
        final temples = state.globalSearchResponse.data.temple;
        if (temples.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                context.l10n.temples,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.048,
                  color: AppColor.newsecondaruy,
                ),
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 3,
                bottom: 24,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: temples.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) {
                final data = temples[index];
                return TempleCardSearch(
                  location: data.templeData!.location!,
                  image: data.templeData!.thumbnailUrl,
                  title: data.templeData!.name!,
                  onTap: () {
                    final templeId = data.contentId.isNotEmpty
                        ? data.contentId
                        : (data.templeData?.id ?? '');
                    BlocProvider.of<TempleDetailNewBloc>(context).add(
                      GetTempleDetailById(id: templeId),
                    );
                    Navigator.pushNamed(context, AppRoutes.TEMPLE_DETAIL_PAGE);
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

class TempleGridViewSmall extends StatelessWidget {
  const TempleGridViewSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalSearchBloc, GlobalSearchState>(
      listener: (context, state) {},
      builder: (context, state) {
        final temples = state.globalSearchResponse.data.temple;
        if (temples.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                context.l10n.temples,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.048,
                  color: AppColor.newsecondaruy,
                ),
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 3,
                bottom: 12,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: temples.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.58,
              ),
              itemBuilder: (context, index) {
                final data = temples[index];
                return TempleCardSearch(
                  location: data.templeData!.location!,
                  image: data.templeData!.thumbnailUrl,
                  title: data.templeData!.name!,
                  onTap: () {
                    final templeId = data.contentId.isNotEmpty
                        ? data.contentId
                        : (data.templeData?.id ?? '');
                    BlocProvider.of<TempleDetailNewBloc>(context).add(
                      GetTempleDetailById(id: templeId),
                    );
                    Navigator.pushNamed(context, AppRoutes.TEMPLE_DETAIL_PAGE);
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
