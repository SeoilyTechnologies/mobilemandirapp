import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

import '../../../../../../common/routes/routes.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../../../god_detail/presentation/bloc/god_details_bloc.dart';
import '../../../../../god_detail/presentation/bloc/god_details_event.dart';
import '../../../bloc/mobile_home_bloc.dart';
import '../../../bloc/mobile_home_state.dart';
import '../mobile_home_temple/temple_gird_item.dart';

class PopularGodGrid extends StatelessWidget {
  PopularGodGrid({super.key});

  final ValueNotifier<bool> _showDialogNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return PopularGodGridSmall();
    } else if (context.isMediumScreen) {
      return PopularGodGridMedium();
    } else {
      return PopularGodGridMedium();
    }
  }
}


class PopularGodGridSmall extends StatelessWidget {
  const PopularGodGridSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        if (state.isLoadingHomeGod &&
            state.popularGodList.data.items.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final gods = state.popularGodList.data.items;

        if (gods.isEmpty) {
          return const SizedBox();
        }

        return GridView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 6,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: gods.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: Platform.isIOS ? 0.64 : 0.64,
          ),
          itemBuilder: (context, index) {
            final item = gods[index];

            return TempleGridItem(
              showLocationIcon: false,
              image: item.image,
              title: item.title,
              location: "${context.l10n.category} - ${item.category}",
              onTap: () {
                BlocProvider.of<GodDetailsBloc>(
                  context,
                ).add(GodDetailsEvent.getGodDetailById(id: item.id));
                Navigator.pushNamed(context, AppRoutes.GOD_DETAIL_PAGE);
              },
            );
          },
        );
      },
    );
  }
}

class PopularGodGridMedium extends StatelessWidget {
  const PopularGodGridMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        if (state.isLoadingHomeGod &&
            state.popularGodList.data.items.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final gods = state.popularGodList.data.items;

        if (gods.isEmpty) {
          return const SizedBox();
        }

        return GridView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 6,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: gods.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: Platform.isIOS ? 0.9 : 0.9,
          ),
          itemBuilder: (context, index) {
            final item = gods[index];

            return TempleGridItem(
              showLocationIcon: false,
              image: item.image,
              title: item.title,
              location: "${context.l10n.category} - ${item.category}",
              onTap: () {
                BlocProvider.of<GodDetailsBloc>(
                  context,
                ).add(GodDetailsEvent.getGodDetailById(id: item.id));
                Navigator.pushNamed(context, AppRoutes.GOD_DETAIL_PAGE);
              },
            );
          },
        );
      },
    );
  }
}