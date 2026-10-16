import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/values_exports.dart';
import 'updated_categories/aarti_bhajan_tab.dart';

import '../../../../../common/routes/exports.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_state.dart';
import '../../../../dynamic_tab/data/entity/dynamic_tab_models.dart';
import '../../../../dynamic_tab/home_tab_registry.dart';
import '../../../../dynamic_tab/presentation/ui/home_tab_helpers.dart';

class TopTabItem {
  final String title;
  final String asset;

  TopTabItem({required this.title, required this.asset});
}

class TopTabBar extends StatelessWidget {
  final List<TopTabItem> tabs;

  const TopTabBar({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return TopTabBarSmall(tabs: tabs);
    } else if (context.isMediumScreen) {
      return TopTabBarMedium(tabs: tabs);
    } else {
      return TopTabBarMedium(tabs: tabs);
    }
  }
}


class TopTabBarSmall extends StatefulWidget {
  final List<TopTabItem> tabs;

  const TopTabBarSmall({
    super.key,
    required this.tabs,
  });

  @override
  State<TopTabBarSmall> createState() => _TopTabBarSmallState();
}

class _TopTabBarSmallState extends State<TopTabBarSmall> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTab(int index, int count) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) return;
      if (index >= count - 2) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      } else if (index <= 1) {
        _scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      } else {
        final double target = index * 75.0;
        final double maxScroll = _scrollController.position.maxScrollExtent;
        _scrollController.animateTo(
          target.clamp(0.0, maxScroll),
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listenWhen: (previous, current) =>
          previous.topTabIndex != current.topTabIndex || previous.homeTabs != current.homeTabs,
      listener: (context, state) {
        _scrollToTab(state.topTabIndex, state.tabs.length);
      },
      builder: (context, state) {
        return SizedBox(
          height: 56,
          child: Stack(
            children: [
              ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.tabs.length,

                itemBuilder: (context, index) {
                  final isSelected = index == state.topTabIndex;
                  final tab = state.tabs[index];
                  final title = HomeTabUi.title(context, tab);

                  return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => HomeTabUi.onTap(context, tab, index),
                      child:Padding( padding: EdgeInsets.only(
                        right: context.screenWidth * 0.11,
                      ),
                      child:  Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          HomeTabUi.icon(tab, 20),
                          const SizedBox(height: 6),
                          Text(
                            title,
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.032,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                          const SizedBox(height: 4),
                          AnimatedContainer(
                            duration:
                            const Duration(milliseconds: 200),
                            height: 2,
                            width: isSelected
                                ? _underlineWidth(context, tab, title, 0.6)
                                : 0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(2),
                            ),
                          ),
                        ],
                      ),)
                    )
                  ;
                },
              ),
              Positioned(
                left: 4,
                right: 4,
                bottom: 4,
                child: Container(
                  height: 1,
                  color: Colors.white.withOpacity(.25),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  /// Built-in tabs keep their tuned widths; others follow the text width.
  double _underlineWidth(BuildContext context, HomeTabModel tab, String title, double factor) {
    final legacy = HomeTabKeys.legacyIndexOf(tab.key);
    if (legacy >= 0 && tab.title.isEmpty) return getUnderlineWidth(legacy) * factor;
    final painter = TextPainter(
      text: TextSpan(text: title, style: AppTextStyle.gilroyBold(context.screenWidth * 0.032)),
      textDirection: TextDirection.ltr,
    )..layout();
    return painter.width * 0.9;
  }

  double getUnderlineWidth(int index) {
    switch (index) {
      case 0:
        return 40;
      case 1:
        return 85;
      case 2:
        return 95;
      case 3:
        return 40;
      case 4:
        return 60;
      case 5:
        return 60;
      case 6:
        return 80;
      default:
        return 40;
    }
  }
}




class TopTabBarMedium extends StatelessWidget {
  final List<TopTabItem> tabs;

  const TopTabBarMedium({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 72,
          child: Stack(
            children: [
              ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.tabs.length,
                itemBuilder: (context, index) {
                  final isSelected = index == state.topTabIndex;
                  final tab = state.tabs[index];
                  final title = HomeTabUi.title(context, tab);

                  return Padding(
                    padding: EdgeInsets.only(
                      right: context.screenWidth * 0.13,
                    ),
                    child: GestureDetector(
                      onTap: () => HomeTabUi.onTap(context, tab, index),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          HomeTabUi.icon(tab, 24),
                          const SizedBox(height: 8),
                          Text(
                            title,
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.018,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                          const SizedBox(height: 6),
                          AnimatedContainer(
                            duration:
                            const Duration(milliseconds: 200),
                            height: 3,
                            width: isSelected
                                ? (HomeTabKeys.legacyIndexOf(tab.key) >= 0 && tab.title.isEmpty
                                    ? getUnderlineWidth(HomeTabKeys.legacyIndexOf(tab.key))
                                    : title.length * 7.5)
                                : 0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(3),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                left: 4,
                right: 4,
                bottom: 4,
                child: Container(
                  height: 1,
                  color: Colors.white.withOpacity(.25),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  double getUnderlineWidth(int index) {
    switch (index) {
      case 0:
        return 55;
      case 1:
        return 105;
      case 2:
        return 115;
      case 3:
        return 55;
      case 4:
        return 75;
      case 5:
        return 75;
      case 6:
        return 95;
      default:
        return 55;
    }
  }
}


//
// class TopTabBar extends StatelessWidget {
//   final List<TopTabItem> tabs;
//
//   const TopTabBar({super.key, required this.tabs});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<MobileHomeBloc, MobileHomeState>(
//       builder: (context, state) {
//         return SizedBox(
//           height: 56,
//           child: Stack(
//             children: <Widget>[
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: ListView.builder(
//                   //padding: EdgeInsets.zero,
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 4,
//                     vertical: 0,
//                   ),
//                   scrollDirection: Axis.horizontal,
//                   // scrollDirection: Axis.horizontal,
//                   itemCount: tabs.length,
//                   shrinkWrap: true,
//                   clipBehavior: Clip.none,
//                   cacheExtent: 0,
//                   physics: const BouncingScrollPhysics(),
//                   itemBuilder: (context, index) {
//                     final bool isSelected = index == state.topTabIndex;
//
//                     final double tabWidth =
//                         (MediaQuery.of(context).size.width -
//                             (context.screenWidth * 0.063 * (tabs.length - 1))) /
//                         tabs.length;
//                     return Padding(
//                       padding: EdgeInsets.only(
//                         left: 0,
//                         right: context.screenWidth * 0.11,
//                       ),
//                       child: GestureDetector(
//                         onTap: () {
//                           if ([1, 6].contains(index) && context.requireLogin()) {
//                             return;
//                           }
//                           if (index == 1) {
//                             context.read<MobileHomeBloc>().add(
//                               MobileHomeEvent.selectHomeForYouTab(index: 0),
//                             );
//                             BlocProvider.of<MobileHomeBloc>(
//                               context,
//                             ).add(ResetSearchForYou());
//
//                             BlocProvider.of<MobileHomeBloc>(context).add(
//                               const MobileHomeEvent.getHomeForYouData(
//                                 type: "aartibhajan",
//                               ),
//                             );
//                           }
//                           if (index == 2) {
//                             BlocProvider.of<MobileHomeBloc>(
//                               context,
//                             ).add(ResetTempleSearchForYou());
//                             BlocProvider.of<MobileHomeBloc>(
//                               context,
//                             ).add(const GetHomeTempleDataList(false));
//                           }
//
//                           context.read<MobileHomeBloc>().add(
//                             MobileHomeEvent.changeTopTab(index),
//                           );
//                         },
//                         child: Container(
//                           alignment: Alignment.centerLeft,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Image.asset(
//                                 tabs[index].asset,
//                                 width: 20,
//                                 height: 20,
//                                 color: Colors.white,
//                               ),
//                               const SizedBox(height: 6),
//                               Text(
//                                 tabs[index].title,
//                                 style: AppTextStyle.gilroyBold(
//                                   context.screenWidth * 0.032,
//                                   color: AppColor.appWhiteColor,
//                                 ),
//                               ),
//                               const SizedBox(height: 4),
//                               AnimatedContainer(
//                                 duration: const Duration(milliseconds: 200),
//                                 height: 2,
//                                 width: isSelected
//                                     ? getUnderlineWidth(index) * 0.6
//                                     : 0,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(2),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               Positioned(
//                 bottom: 4,
//                 left: 4,
//                 right: 4,
//                 child: Container(
//                   height: 1,
//                   color: Colors.white.withOpacity(0.25),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   double getUnderlineWidth(int tabCount) {
//     switch (tabCount) {
//       case 0:
//         return 40;
//       case 1:
//         return 85;
//       case 2:
//         return 95;
//       case 3:
//         return 40;
//       case 4:
//         return 60;
//       case 5:
//         return 60;
//       case 6:
//         return 80;
//       default:
//         return 40;
//     }
//   }
// }







class CategoryTabItem {
  final String title;
  final String asset;

  CategoryTabItem({required this.title, required this.asset});
}

class CategoryTabs extends StatelessWidget {
  final List<CategoryTabItem> tabs;
  final int selectedIndex;
  final ValueChanged<int>? onTap;

  const CategoryTabs({
    super.key,
    required this.tabs,
    this.selectedIndex = 0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        tabs.length,
        (index) => GestureDetector(
          onTap: () => onTap?.call(index),
          child: Column(
            children: [
              Image.asset(
                tabs[index].asset,
                width: 18,
                height: 18,
                color: Colors.white,
              ),
              const SizedBox(height: 6),
              Text(
                getLocalizedCategoryName(context, tabs[index].title),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: index == selectedIndex
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              if (index == selectedIndex)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  height: 2,
                  width: 30,
                  color: Colors.white,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
