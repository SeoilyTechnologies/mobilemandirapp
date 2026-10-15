import 'dart:io';

import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../bloc/mobile_home_bloc.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import 'aarti_bhajan_tab.dart';

class HomeHorizontalTabs extends StatelessWidget {
  const HomeHorizontalTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 32,
          child: ListView.separated(

            padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 0),
            scrollDirection: Axis.horizontal,
            itemCount: homeTabs.length,
            shrinkWrap: true,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final item = homeTabs[index];
              final bool isSelected =
                  state.selectedTabIndex == index;

              return GestureDetector(
                onTap: () {
                  //GetDayAccordingAartiChalisa
                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.selectHomeTab(
                      index: index,
                      day: item.day,
                    ),
                  );

                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.getDayAccordingAartiChalisa(
                      type: item.day.isEmpty?"all":item.day,
                    ),
                  );
                },
                child: Container(

                  padding:
                  const EdgeInsets.symmetric(horizontal: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(                 // 🔥 outline
                      color: !isSelected?AppColor.newsecondaruy:Colors.transparent,           // border color
                      width: 1,                         // border width
                    ),
                    color: isSelected
                        ? const Color(0xFF7B4A12) // brown
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                     Padding(padding: EdgeInsets.only(top: 3),child:  Text(
                       getLocalizedCategoryName(context, item.title),
                       style:  TextStyle(
                         fontSize: Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
                         fontFamily: AppFont.gilroyBold,
                         color: isSelected
                             ? Colors.white
                             : Colors.black,
                       ),

                       // style: TextStyle(
                       //   fontSize: context.screenWidth*0.032,
                       //
                       //   fontFamily: isSelected?AppFont.gilroyBold:AppFont.gilroyMedium,
                       //   color: isSelected
                       //       ? Colors.white
                       //       : Colors.black,
                       // ),
                     ),)
                     // const SizedBox(width: 8),
                    ],
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


class HomeHorizontalTabsLarge extends StatelessWidget {
  const HomeHorizontalTabsLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: context.screenHeight*0.08,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            scrollDirection: Axis.horizontal,
            itemCount: homeTabs.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final item = homeTabs[index];
              final bool isSelected =
                  state.selectedTabIndex == index;

              return GestureDetector(
                onTap: () {
                  //GetDayAccordingAartiChalisa
                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.selectHomeTab(
                      index: index,
                      day: item.day,
                    ),
                  );

                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.getDayAccordingAartiChalisa(
                      type: item.day.isEmpty?"all":item.day,
                    ),
                  );
                },
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xFF7B4A12) // brown
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(1),
                        child: Image.asset(
                          item.asset,
                          height: 34,
                          width: 34,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        getLocalizedCategoryName(context, item.title),
                        style: TextStyle(
                          fontSize: context.screenWidth*0.024,

                          fontFamily: isSelected?AppFont.gilroyBold:AppFont.gilroyMedium,
                          color: isSelected
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
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


