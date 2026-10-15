import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../bloc/mobile_home_bloc.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import 'temple_gird_item.dart';

class PopularTempleGridView extends StatefulWidget {
  const PopularTempleGridView({super.key});

  @override
  State<PopularTempleGridView> createState() =>
      _PopularTempleGridViewState();
}

class _PopularTempleGridViewState
    extends State<PopularTempleGridView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (currentScroll >= maxScroll - 200) {
      context.read<MobileHomeBloc>().add(
        const GetPopularTempleList(true),
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        final list =
            state.popularTempleListResponse.data.items;

        if (state.isLoadingPopularTemple &&
            list.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (list.isEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: Text(
                "No Temple Found",
                style: AppTextStyle.gilroySemiBold(
                  16,
                  color: AppColor.fullBlack,
                ),
              ),
            ),
          );
        }

        return GridView.builder(
          controller: _scrollController,
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 14,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length +
              (state.isLoadingMorePopularTemple ? 1 : 0),
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.63,
          ),
          itemBuilder: (context, index) {
            if (index >= list.length) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final temple = list[index];

            return TempleGridItem(
              image: temple.image,
              title: temple.title,
              location: temple.location,
              onTap: () {},
            );
          },
        );
      },
    );
  }
}