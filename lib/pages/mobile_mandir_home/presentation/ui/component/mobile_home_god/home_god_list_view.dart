import 'dart:io';

import 'package:mandirapp/pages/god_detail/presentation/bloc/god_details_bloc.dart';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../../../god_detail/presentation/bloc/god_details_event.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import 'home_god_item.dart';


class HomeGodListView extends StatelessWidget {
  HomeGodListView({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return HomeGodListViewSmall();
    } else if (context.isMediumScreen) {
      return HomeGodListViewMedium();
    } else {
      return HomeGodListViewMedium();
    }
  }
}


class HomeGodListViewSmall extends StatelessWidget {
  const HomeGodListViewSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        final list = state.homeGodApiResponse.data.items;

        if (state.isLoadingHomeGod && list.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length + (state.isLoadingMoreHomeGod ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == list.length) {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(child: CircularProgressIndicator()),
              );
            }

            final god = list[index];

            return GestureDetector(
              onTap: () {
                BlocProvider.of<GodDetailsBloc>(
                  context,
                ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                Navigator.pushNamed(context, AppRoutes.GOD_DETAIL_PAGE);
              },

              child: Padding(padding: EdgeInsets.only(bottom: Platform.isIOS?12.0:12),child: HomeGodItem(
                category: god.category,
                imagePath: god.image,
                templeName: god.title,
                location: god.location,
                tags: const [],
                onCallTap: () {
                  BlocProvider.of<GodDetailsBloc>(
                    context,
                  ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                  Navigator.pushNamed(
                    context,
                    AppRoutes.GOD_DETAIL_PAGE,
                    arguments: {'scrollToNaamJaap': true},
                  );
                },
                onDirectionTap: () {
                  BlocProvider.of<GodDetailsBloc>(
                    context,
                  ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                  Navigator.pushNamed(
                    context,
                    AppRoutes.GOD_DETAIL_PAGE,
                    arguments: {'scrollToAarti': true},
                  );
                },
                onwishlistaddTap: () {
                  if (context.requireLogin()) return;
                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.godtoggleWishlist(
                      itemId: god.id,
                      itemModel: "god",
                    ),
                  );
                },
                isFavorite: god.isWishlist,
              ),)
            );
          },
        );
      },
    );
  }
}

class HomeGodListViewMedium extends StatelessWidget {
  const HomeGodListViewMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        final list = state.homeGodApiResponse.data.items;

        if (state.isLoadingHomeGod && list.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length + (state.isLoadingMoreHomeGod ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == list.length) {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(child: CircularProgressIndicator()),
              );
            }

            final god = list[index];

            return GestureDetector(
                onTap: () {
                  BlocProvider.of<GodDetailsBloc>(
                    context,
                  ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                  Navigator.pushNamed(context, AppRoutes.GOD_DETAIL_PAGE);
                },

                child: Padding(padding: EdgeInsets.only(bottom: Platform.isIOS?12.0:12),child: HomeGodItemMedium(
                  category: god.category,
                  imagePath: god.image,
                  templeName: god.title,
                  location: god.location,
                  tags: const [],
                  onCallTap: () {
                    BlocProvider.of<GodDetailsBloc>(
                      context,
                    ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                    Navigator.pushNamed(
                      context,
                      AppRoutes.GOD_DETAIL_PAGE,
                      arguments: {'scrollToNaamJaap': true},
                    );
                  },
                  onDirectionTap: () {
                    BlocProvider.of<GodDetailsBloc>(
                      context,
                    ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                    Navigator.pushNamed(
                      context,
                      AppRoutes.GOD_DETAIL_PAGE,
                      arguments: {'scrollToAarti': true},
                    );
                  },
                  onwishlistaddTap: () {
                    if (context.requireLogin()) return;
                    context.read<MobileHomeBloc>().add(
                      MobileHomeEvent.godtoggleWishlist(
                        itemId: god.id,
                        itemModel: "god",
                      ),
                    );
                  },
                  isFavorite: god.isWishlist,
                ),)
            );
          },
        );
      },
    );
  }
}
