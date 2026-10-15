import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/values_exports.dart';
import 'updated_categories/aarti_bhajan_tab.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../../common/utils/auth_helper.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_event.dart';
import '../../bloc/mobile_home_state.dart';

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
  final List<GlobalKey> _tabKeys = [];

  @override
  void initState() {
    super.initState();
    _tabKeys.addAll(List.generate(widget.tabs.length, (_) => GlobalKey()));
  }

  @override
  void didUpdateWidget(covariant TopTabBarSmall oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.tabs.length != _tabKeys.length) {
      _tabKeys.clear();
      _tabKeys.addAll(List.generate(widget.tabs.length, (_) => GlobalKey()));
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTab(int index) {
    if (index < 0 || index >= _tabKeys.length) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_scrollController.hasClients) return;
      final tabContext = _tabKeys[index].currentContext;
      if (tabContext == null) return;

      final RenderBox? tabBox = tabContext.findRenderObject() as RenderBox?;
      final RenderBox? scrollBox = context.findRenderObject() as RenderBox?;
      if (tabBox == null || scrollBox == null) return;

      final Offset tabPosition = tabBox.localToGlobal(Offset.zero, ancestor: scrollBox);
      final double tabLeft = tabPosition.dx;
      final double tabWidth = tabBox.size.width;
      final double tabRight = tabLeft + tabWidth;
      final double viewportWidth = scrollBox.size.width;

      const double margin = 16.0;

      // Agar tab already completely visible hai screen par, toh scroll bilkul mat karo
      if (tabLeft >= margin && tabRight <= viewportWidth - margin) {
        return;
      }

      // Agar tab cut off hai ya screen se bahar hai, toh use smoothly bring into view karo
      final double currentOffset = _scrollController.offset;
      double targetOffset;

      if (tabLeft < margin) {
        targetOffset = currentOffset + tabLeft - margin;
      } else {
        targetOffset = currentOffset + (tabRight - viewportWidth) + margin;
      }

      final double maxScroll = _scrollController.position.maxScrollExtent;
      final double clampedOffset = targetOffset.clamp(0.0, maxScroll);

      if ((clampedOffset - currentOffset).abs() > 2.0) {
        _scrollController.animateTo(
          clampedOffset,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOutCubic,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listenWhen: (previous, current) => previous.topTabIndex != current.topTabIndex,
      listener: (context, state) {
        _scrollToTab(state.topTabIndex);
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
                itemCount: widget.tabs.length,

                itemBuilder: (context, index) {
                  final isSelected = index == state.topTabIndex;

                  return Container(
                    key: index < _tabKeys.length ? _tabKeys[index] : null,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        if ([1, 6].contains(index) &&
                            context.requireLogin()) {
                          return;
                        }

                        context.read<MobileHomeBloc>().add(
                          MobileHomeEvent.changeTopTab(index),
                        );
                        if (index == 1) {
                          context.read<MobileHomeBloc>().add(
                            MobileHomeEvent.selectHomeForYouTab(
                              index: 0,
                            ),
                          );

                          context.read<MobileHomeBloc>().add(
                            ResetSearchForYou(),
                          );

                          context.read<MobileHomeBloc>().add(
                            const MobileHomeEvent.getHomeForYouData(
                              type: "aartibhajan",
                            ),
                          );
                        }

                        if (index == 2) {
                          context.read<MobileHomeBloc>().add(
                            ResetTempleSearchForYou(),
                          );

                          context.read<MobileHomeBloc>().add(
                            const GetHomeTempleDataList(false),
                          );
                        }
                        if (index == 3) {
                          BlocProvider.of<MobileHomeBloc>(
                            context,
                          ).add(ResetGodSearchHome());

                          context.read<MobileHomeBloc>().add(const GetPopularGodList(false));
                          context.read<MobileHomeBloc>().add(const MobileHomeEvent.getNewGodData(false));
                        }

                        if (index == 6) {
                          context.read<MobileHomeBloc>().add(
                            const MobileHomeEvent.getRewardOverView(),
                          );
                        }
                      },
                      child:Padding( padding: EdgeInsets.only(
                        right: context.screenWidth * 0.11,
                      ),
                      child:  Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            widget.tabs[index].asset,
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            getLocalizedCategoryName(context, widget.tabs[index].title),
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
                                ? getUnderlineWidth(index) * 0.6
                                : 0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ],
                      ),
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
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  final isSelected = index == state.topTabIndex;

                  return Padding(
                    padding: EdgeInsets.only(
                      right: context.screenWidth * 0.13,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        if ([1, 6].contains(index) &&
                            context.requireLogin()) {
                          return;
                        }

                        if (index == 1) {
                          context.read<MobileHomeBloc>().add(
                            MobileHomeEvent.selectHomeForYouTab(
                              index: 0,
                            ),
                          );

                          context.read<MobileHomeBloc>().add(
                            ResetSearchForYou(),
                          );

                          context.read<MobileHomeBloc>().add(
                            const MobileHomeEvent.getHomeForYouData(
                              type: "aartibhajan",
                            ),
                          );
                        }

                        if (index == 2) {
                          context.read<MobileHomeBloc>().add(
                            ResetTempleSearchForYou(),
                          );

                          context.read<MobileHomeBloc>().add(
                            const GetHomeTempleDataList(false),
                          );
                        }

                        if (index == 6) {
                          context.read<MobileHomeBloc>().add(
                            const MobileHomeEvent.getRewardOverView(),
                          );
                        }

                        context.read<MobileHomeBloc>().add(
                          MobileHomeEvent.changeTopTab(index),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            tabs[index].asset,
                            width: 24,
                            height: 24,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            getLocalizedCategoryName(context, tabs[index].title),
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
                                ? getUnderlineWidth(index)
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
