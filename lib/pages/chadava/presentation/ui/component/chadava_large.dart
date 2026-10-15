import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class ChadavaLarge extends StatefulWidget {
  const ChadavaLarge({super.key});

  @override
  State<ChadavaLarge> createState() => _ChadavaLargeState();
}

class _ChadavaLargeState extends State<ChadavaLarge> {
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
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 850),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: context.w(24)),
                      child: Column(
                        children: [
                          SizedBox(height: context.h(20)),
                          ChadavaPillToggle(
                            activeIndex: state.selectedTabIndex,
                            onTabChanged: (index) {
                              context.read<ChadavaBloc>().add(SelectChadavaTab(index));
                            },
                          ),
                          SizedBox(height: context.h(22)),
                          ChadavaHeroBanner(isGodSeva: isGodSeva),
                          SizedBox(height: context.h(22)),
                          ChadavaItemsGrid(
                            items: currentItems,
                            crossAxisCount: 5,
                            onItemSelect: (id) {
                              context.read<ChadavaBloc>().add(SelectChadavaItem(id));
                            },
                          ),
                          SizedBox(height: context.h(22)),
                          ChadavaMahatvaCard(isGodSeva: isGodSeva),
                          SizedBox(height: context.h(24)),
                          ChadavaContinueButton(
                            onPressed: () {},
                          ),
                          SizedBox(height: context.h(100)),
                        ],
                      ),
                    ),
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
