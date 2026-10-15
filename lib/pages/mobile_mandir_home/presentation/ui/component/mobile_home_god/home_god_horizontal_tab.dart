import 'dart:io';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/fonts.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import '../../updated_component/updated_categories/aarti_bhajan_tab.dart';

class HomeGodHorizontalTab extends StatelessWidget {
  HomeGodHorizontalTab({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return HomeGodHorizontalTabSmall();
    } else if (context.isMediumScreen) {
      return HomeGodHorizontalTabMedium();
    } else {
      return HomeGodHorizontalTabMedium();
    }
  }
}



class HomeGodHorizontalTabSmall extends StatelessWidget {
  const HomeGodHorizontalTabSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 28,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            scrollDirection: Axis.horizontal,
            itemCount: homeGodTabs.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final item = homeGodTabs[index];
              final bool isSelected = state.selectedGodTabIndex == index;

              return GestureDetector(
                onTap: () {

                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.selectHomeGodTab(index: index),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    border: Border.all(
                      // 🔥 outline
                      color: !isSelected
                          ? AppColor.newsecondaruy
                          : Colors.transparent, // border color
                      width: 1, // border width
                    ),
                    color: isSelected
                        ? const Color(0xFF7B4A12) // brown
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  alignment: Alignment.center,
                  child:     Text(
                    getLocalizedCategoryName(context, item.title),
                    style:  TextStyle(
                      fontSize: Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
                      fontFamily: AppFont.gilroyBold,
                      color: isSelected
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}


class HomeGodHorizontalTabMedium extends StatelessWidget {
  const HomeGodHorizontalTabMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 42,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            scrollDirection: Axis.horizontal,
            itemCount: homeGodTabs.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final item = homeGodTabs[index];
              final bool isSelected = state.selectedGodTabIndex == index;

              return GestureDetector(
                onTap: () {

                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.selectHomeGodTab(index: index),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    border: Border.all(
                      // 🔥 outline
                      color: !isSelected
                          ? AppColor.newsecondaruy
                          : Colors.transparent, // border color
                      width: 1, // border width
                    ),
                    color: isSelected
                        ? const Color(0xFF7B4A12) // brown
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  alignment: Alignment.center,
                  child:     Text(
                    getLocalizedCategoryName(context, item.title),
                    style:  TextStyle(
                      fontSize: Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
                      fontFamily: AppFont.gilroyBold,
                      color: isSelected
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}