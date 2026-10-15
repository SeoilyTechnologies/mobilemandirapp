import 'dart:io';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/fonts.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import '../../updated_component/updated_categories/aarti_bhajan_tab.dart';

class HomeForyouHorizontalTab extends StatelessWidget {
  const HomeForyouHorizontalTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 32,
          child: ListView.separated(

            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            scrollDirection: Axis.horizontal,
            itemCount: homeForYouTabs.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final item = homeForYouTabs[index];
              final bool isSelected = state.selectedForYouTabIndex == index;
              return GestureDetector(
                onTap: () {

                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.selectHomeForYouTab(index: index),
                  );
                  BlocProvider.of<MobileHomeBloc>(context).add(
                    MobileHomeEvent.getHomeForYouData(
                      type: getHomeForYouType(index),
                    ),
                  );

                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
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
                  alignment: Alignment.centerLeft,
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

class HomeForyouHorizontalTabMedium extends StatelessWidget {
  const HomeForyouHorizontalTabMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 42,
          child: ListView.separated(

            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            scrollDirection: Axis.horizontal,
            itemCount: homeForYouTabs.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final item = homeForYouTabs[index];
              final bool isSelected = state.selectedForYouTabIndex == index;
              return GestureDetector(
                onTap: () {

                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.selectHomeForYouTab(index: index),
                  );
                  BlocProvider.of<MobileHomeBloc>(context).add(
                    MobileHomeEvent.getHomeForYouData(
                      type: getHomeForYouType(index),
                    ),
                  );

                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
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
                  alignment: Alignment.centerLeft,
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
