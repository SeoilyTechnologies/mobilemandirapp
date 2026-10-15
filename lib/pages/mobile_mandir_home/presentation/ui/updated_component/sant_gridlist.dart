import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/sant_card.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/utils/auth_helper.dart';
import '../../../../sant/presentation/bloc/sant_bloc.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_event.dart';
import '../../bloc/mobile_home_state.dart';

class SaintHorizontalGrid extends StatelessWidget {
  const SaintHorizontalGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 185, // 🔥 YAHI SE ITEM HEIGHT KAM HOGI
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 3),

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              childAspectRatio: 0.21, // 🔥 IMPORTANT
            ),
            itemCount: state.santListResponse.data.length,

            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<SantBloc>().add(
                    SantEvent.getSantDetailById(
                      state.santListResponse.data[index].id,
                    ),
                  );
                  Navigator.pushNamed(context, AppRoutes.SANTDETAIL);
                },
                child: SaintCard(
                  onFavoriteTap: () {
                    if (context.requireLogin()) return;

                    BlocProvider.of<MobileHomeBloc>(context).add(
                      SantWishlistHomeEvent(
                        itemModel: "sant",
                        itemId: state.santListResponse.data[index].id,
                      ),
                    );
                  },
                  isFavorite:
                      state.santListResponse.data[index].isAddedInWishlist,
                  imagePath: state.santListResponse.data[index].image,
                  name: state.santListResponse.data[index].name,
                  subtitle:
                      state.santListResponse.data[index].city +
                      ", " +
                      state.santListResponse.data[index].state,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class SaintHorizontalGridMedium extends StatelessWidget {
  const SaintHorizontalGridMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 300, // 🔥 YAHI SE ITEM HEIGHT KAM HOGI
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 3),

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 0.19, // 🔥 IMPORTANT
            ),
            itemCount: state.santListResponse.data.length,

            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<SantBloc>().add(
                    SantEvent.getSantDetailById(
                      state.santListResponse.data[index].id,
                    ),
                  );
                  Navigator.pushNamed(context, AppRoutes.SANTDETAIL);
                },
                child: SaintCardMedium(
                  imagePath: state.santListResponse.data[index].image,
                  name: state.santListResponse.data[index].name,
                  subtitle:
                      state.santListResponse.data[index].city +
                      ", " +
                      state.santListResponse.data[index].state,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class SaintHorizontalGridLarge extends StatelessWidget {
  const SaintHorizontalGridLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 300, // 🔥 YAHI SE ITEM HEIGHT KAM HOGI
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 3),

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 0.18, // 🔥 IMPORTANT
            ),
            itemCount: state.santListResponse.data.length,

            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<SantBloc>().add(
                    SantEvent.getSantDetailById(
                      state.santListResponse.data[index].id,
                    ),
                  );
                  Navigator.pushNamed(context, AppRoutes.SANTDETAIL);
                },
                child: SaintCardLarge(
                  imagePath: state.santListResponse.data[index].image,
                  name: state.santListResponse.data[index].name,
                  subtitle:
                      state.santListResponse.data[index].city +
                      "," +
                      state.santListResponse.data[index].state,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class SaintHorizontalGridLargLandScape extends StatelessWidget {
  const SaintHorizontalGridLargLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 300,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 3),

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 0.26, // 🔥 IMPORTANT
            ),
            itemCount: state.santListResponse.data.length,

            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<SantBloc>().add(
                    SantEvent.getSantDetailById(
                      state.santListResponse.data[index].id,
                    ),
                  );
                  Navigator.pushNamed(context, AppRoutes.SANTDETAIL);
                },
                child: SaintCardLarge(
                  imagePath: state.santListResponse.data[index].image,
                  name: state.santListResponse.data[index].name,
                  subtitle:
                      state.santListResponse.data[index].city +
                      "," +
                      state.santListResponse.data[index].state,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
