import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../bloc/chadava_bloc.dart';
import '../../bloc/chadava_event.dart';
import '../../bloc/chadava_state.dart';
import 'chadava_continue_button.dart';
import 'chadava_header.dart';
import 'chadava_hero_banner.dart';
import 'chadava_items_grid.dart';
import 'chadava_mahatva_card.dart';
import 'chadava_pill_toggle.dart';

class ChadavaSmall extends StatefulWidget {
  const ChadavaSmall({super.key});

  @override
  State<ChadavaSmall> createState() => _ChadavaSmallState();
}

class _ChadavaSmallState extends State<ChadavaSmall> {
  @override
  void initState() {
    super.initState();
    context.read<ChadavaBloc>().add(const LoadChadavaData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6EE),
      body: BlocBuilder<ChadavaBloc, ChadavaState>(
        builder: (context, state) {
          final isGodSeva = state.selectedTabIndex == 0;
          final currentItems = isGodSeva ? state.godItems : state.vanspatiItems;

          return Column(
            children: [
              const ChadavaHeader(),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: context.w(15)),
                  child: Column(
                    children: [
                      SizedBox(height: context.h(16)),
                      ChadavaPillToggle(
                        activeIndex: state.selectedTabIndex,
                        onTabChanged: (index) {
                          context.read<ChadavaBloc>().add(SelectChadavaTab(index));
                        },
                      ),
                      SizedBox(height: context.h(16)),
                      ChadavaHeroBanner(isGodSeva: isGodSeva),
                      SizedBox(height: context.h(22)),
                      ChadavaItemsGrid(
                        items: currentItems,
                        crossAxisCount: 3,
                        onItemSelect: (id) {
                          context.read<ChadavaBloc>().add(SelectChadavaItem(id));
                        },
                      ),
                      SizedBox(height: context.h(22)),
                      ChadavaMahatvaCard(isGodSeva: isGodSeva),
                      SizedBox(height: context.h(20)),
                      ChadavaContinueButton(
                        onPressed: () {
                          final selectedItem = state.selectedItem;
                          final title = selectedItem != null
                              ? '${selectedItem.title} Chadava'
                              : 'Shani Dev Chadava';
                          Navigator.pushNamed(
                            context,
                            AppRoutes.CHADAVA_DETAIL_PAGE,
                            arguments: {
                              'title': title,
                              'image': selectedItem?.imageAsset,
                            },
                          );
                        },
                      ),
                      SizedBox(height: context.h(90)),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
