import 'package:flutter/material.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../god_detail/presentation/bloc/god_details_bloc.dart';
import '../../../god_detail/presentation/bloc/god_details_event.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';
import '../../../mobile_mandir_home/presentation/ui/component/mobile_home_god/home_god_item.dart';
import 'component/custom_calendar.dart';
import 'component/festival_section.dart';
import 'component/god_small_card.dart';
import 'component/panchang_header.dart';


class PanchangScreenNew extends StatelessWidget {
  PanchangScreenNew({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return PanchangScreenNewSmall();
    } else if (context.isMediumScreen) {
      return PanchangScreenNewMedium();
    } else {
      return PanchangScreenNewMedium();
    }
  }
}


class PanchangScreenNewSmall extends StatelessWidget {
  const PanchangScreenNewSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFF6F1EB),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const PanchangHeader(),
                SizedBox(height: 12),

                SizedBox(
                  height: 155,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: state.selectedCalendarDay.relatedGods.length,
                    itemBuilder: (context, index) {
                      final god = state.selectedCalendarDay.relatedGods[index];

                      return SizedBox(
                        width: 397,
                        child: GestureDetector(
                          onTap: () {
                            BlocProvider.of<GodDetailsBloc>(
                              context,
                            ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                            Navigator.pushNamed(
                              context,
                              AppRoutes.GOD_DETAIL_PAGE,
                            );
                          },
                          child: HomeGodItem(
                            onCallTap: (){
                              BlocProvider.of<GodDetailsBloc>(
                                context,
                              ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                              Navigator.pushNamed(
                                context,
                                AppRoutes.GOD_DETAIL_PAGE,
                                arguments: {'scrollToNaamJaap': true},
                              );
                            },
                            onDirectionTap: (){
                              BlocProvider.of<GodDetailsBloc>(
                                context,
                              ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                              Navigator.pushNamed(
                                context,
                                AppRoutes.GOD_DETAIL_PAGE,
                                arguments: {'scrollToAarti': true},
                              );

                            },
                            showWishlistIcon: false,
                            category: god.category,
                            imagePath: god.image,
                            templeName: god.name,
                            location: god.birthPlace,
                            tags: const [],
                            isFavorite: false,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                Transform.translate(
                  offset: const Offset(0, 0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6F1EB),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          SizedBox(height: 16),

                          //table calendar
                          BlocBuilder<MobileHomeBloc, MobileHomeState>(
                            builder: (context, state) {
                              return CustomCalendar(
                                calendarResponse: state.calendarResponse,
                              );
                            },
                          ),
                          SizedBox(height: 22),

                          FestivalSection(),

                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class PanchangScreenNewMedium extends StatelessWidget {
  const PanchangScreenNewMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFF6F1EB),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const PanchangHeader(),
                SizedBox(height: 12),

                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: state.selectedCalendarDay.relatedGods.length,
                    itemBuilder: (context, index) {
                      final god = state.selectedCalendarDay.relatedGods[index];

                      return SizedBox(
                        width: context.screenWidth*0.78,
                        child: GestureDetector(
                          onTap: () {
                            BlocProvider.of<GodDetailsBloc>(
                              context,
                            ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                            Navigator.pushNamed(
                              context,
                              AppRoutes.GOD_DETAIL_PAGE,
                            );
                          },
                          child: HomeGodItemMedium(
                            onCallTap: (){
                              BlocProvider.of<GodDetailsBloc>(
                                context,
                              ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                              Navigator.pushNamed(
                                context,
                                AppRoutes.GOD_DETAIL_PAGE,
                                arguments: {'scrollToNaamJaap': true},
                              );
                            },
                            onDirectionTap: (){
                              BlocProvider.of<GodDetailsBloc>(
                                context,
                              ).add(GodDetailsEvent.getGodDetailById(id: god.id));
                              Navigator.pushNamed(
                                context,
                                AppRoutes.GOD_DETAIL_PAGE,
                                arguments: {'scrollToAarti': true},
                              );

                            },
                            showWishlistIcon: false,
                            category: god.category,
                            imagePath: god.image,
                            templeName: god.name,
                            location: god.birthPlace,
                            tags: const [],
                            isFavorite: false,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                Transform.translate(
                  offset: const Offset(0, 0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6F1EB),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          SizedBox(height: 16),

                          //table calendar
                          BlocBuilder<MobileHomeBloc, MobileHomeState>(
                            builder: (context, state) {
                              return CustomCalendar(
                                calendarResponse: state.calendarResponse,
                              );
                            },
                          ),
                          SizedBox(height: 22),

                          FestivalSection(),

                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}