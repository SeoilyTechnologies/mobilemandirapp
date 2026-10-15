import 'package:mandirapp/common/network/app_constant.dart';
import '../../../../../../common/component/skeleton_loader.dart';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../../common/utils/share_helper.dart';
import '../../../../../../common/utils/utils.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../bloc/mobile_home_bloc.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import 'home_temple_item.dart';


class HomeTempleListviewPage extends StatelessWidget {
  HomeTempleListviewPage({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return HomeTempleListviewPageSmall();
    } else if (context.isMediumScreen) {
      return HomeTempleListviewPageMedium();
    } else {
      return HomeTempleListviewPageMedium();
    }
  }
}


class HomeTempleListviewPageSmall extends StatelessWidget {
  const HomeTempleListviewPageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        final list = state.homeTempleListResponse.data.items;

        if (state.isLoadingHomeTemple && list.isEmpty) {
          return const SkeletonListView(itemCount: 4);
        }

        if (list.isEmpty) {
          return const Center(child: Text("No Temple Found"));
        }

        return ListView.builder(
          padding: EdgeInsets.only(bottom: 5),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length + (state.isLoadingMoreHomeTemple ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == list.length) {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(child: CircularProgressIndicator()),
              );
            }

            final temple = list[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: HomeTempleItem(
                onShareTap: () {
                  ShareHelper.shareTemple(slug: temple.slug, name: temple.title);
                },
                onDirectionTap: () {
                  Utils.openMapLocation(
                    latitude: temple!.lat ?? 0.0,
                    longitude: temple!.lng ?? 0.0,
                    placeName: temple.location,
                  );
                },
                onWishListAddTap: () {
                  if (context.requireLogin()) return;
                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.templeToggleWishlist(
                      itemId: temple.id,
                      itemModel: "temple",
                    ),
                  );
                },
                id: temple.id,
                latitude: temple.lat ?? 0.0,
                longitude: temple.lng ?? 0.0,
                imagePath: temple.image,
                templeName: temple.title,
                location: temple.location,
                tags: const [],
                isFavorite: temple.isWishlist,
              ),
            );
          },
        );
      },
    );
  }
}


class HomeTempleListviewPageMedium extends StatelessWidget {
  const HomeTempleListviewPageMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        final list = state.homeTempleListResponse.data.items;

        if (state.isLoadingHomeTemple && list.isEmpty) {
          return const SkeletonListView(itemCount: 4);
        }

        if (list.isEmpty) {
          return const Center(child: Text("No Temple Found"));
        }

        return ListView.builder(
          padding: EdgeInsets.only(bottom: 5),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length + (state.isLoadingMoreHomeTemple ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == list.length) {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(child: CircularProgressIndicator()),
              );
            }

            final temple = list[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: HomeTempleItemMedium(
                onShareTap: () {
                  ShareHelper.shareTemple(slug: temple.slug, name: temple.title);
                },
                onDirectionTap: () {
                  Utils.openMapLocation(
                    latitude: temple!.lat ?? 0.0,
                    longitude: temple!.lng ?? 0.0,
                    placeName: temple.location,
                  );
                },
                onWishListAddTap: () {
                  if (context.requireLogin()) return;
                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.templeToggleWishlist(
                      itemId: temple.id,
                      itemModel: "temple",
                    ),
                  );
                },
                id: temple.id,
                latitude: temple.lat ?? 0.0,
                longitude: temple.lng ?? 0.0,
                imagePath: temple.image,
                templeName: temple.title,
                location: temple.location,
                tags: const [],
                isFavorite: temple.isWishlist,
              ),
            );
          },
        );
      },
    );
  }
}
