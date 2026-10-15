import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mandirapp/common/network/network_eport.dart';
import 'package:mandirapp/common/routes/exports.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/pages/home/presentation/ui/puja_page.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/updated_categories/categories_grid.dart';
import 'package:mandirapp/pages/sant/presentation/santlist/sant_list_ui.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../aarti_chalisa_list/presentation/ui/aarti_chalisa_list_page.dart';
import '../../../home_main/updated_design/home_page_updated_design.dart';
import '../../../mobile_mandir_home/presentation/ui/mobile_home.dart';
import '../../../mobile_mandir_home/presentation/ui/reel_player_screen.dart';
import '../../../more/presentation/ui/more_ui.dart';
import '../../../sewa_module/select_category/ui/select_cateogry.dart';
import '../../../templelist/persentation/ui/temple_list.dart';
import 'component/bottom_bar_item_medium.dart';
import 'component/bottom_bar_item_small.dart';

Widget buildPage(int index) {
  List<Widget> _widget = [
    MobileHome(),
    AartiChalisaListPage(),
    SelectCateogry(),
    JaapPageOne(),
    MoreUi(),
  ];

  return _widget[index];
}

extension BottomTabsExtension on List<BottomNavigationBarItem> {
  List<BottomNavigationBarItem> bottomTabs(BuildContext context, double width, double height) {
    BottomNavigationBarItem buildTab({
      required String label,
      required String asset,
    }) {
      double w = 0.02 * width;
      double h = 0.03 * height;

      return BottomNavigationBarItem(
        backgroundColor: Colors.transparent,
        label: label,
        icon: SizedBox(
          width: w,
          height: h,
          child: Image.asset(
            asset,
            width: w,
            height: h,
            color: AppColor.greycolor1,
            fit: BoxFit.contain,
          ),
        ),
        activeIcon: SizedBox(
          width: w,
          height: h,
          child: Image.asset(
            asset,
            width: w,
            height: h,
            color: AppColor.primary1,
            fit: BoxFit.contain,
          ),
        ),
      );
    }

    return [
      buildTab(label: context.l10n.home, asset: "assets/new_figma_icons/bottom_home.png"),
      buildTab(
        label: context.l10n.aarti,
        asset: "assets/new_design/icon/aarti_bootom.png",
      ),
      buildTab(label: context.l10n.sant, asset: "assets/new_design/icon/sant1.png"),
      buildTab(label: context.l10n.reel, asset: "assets/new_design/icon/reel.png"),
      buildTab(
        label: context.l10n.navProfile,
        asset: "assets/new_figma_icons/bottom_menu.png",
      ),
    ];
  }
}

class BottomNavItemModel {
  final String title;
  final String icon;

  const BottomNavItemModel({required this.title, required this.icon});
}

class _BottomBarItem extends StatelessWidget {
  final BottomNavItemModel item;
  final bool isSelected;
  final VoidCallback onTap;

  const _BottomBarItem({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return BottomBarItemSmall(
        item: item,
        isSelected: isSelected,
        onTap: onTap,
      );
    } else if (context.isMediumScreen) {
      return BottomBarItemMedium(
        item: item,
        isSelected: isSelected,
        onTap: onTap,
      );
    } else {
      return BottomBarItemMedium(
        item: item,
        isSelected: isSelected,
        onTap: onTap,
      );
    }
  }
}




class BottomBarItem extends StatelessWidget {
  final BottomNavItemModel item;
  final bool isSelected;
  final VoidCallback onTap;

  const BottomBarItem({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return BottomBarItemSmall(
        item: item,
        isSelected: isSelected,
        onTap: onTap,
      );
    } else if (context.isMediumScreen) {
      return BottomBarItemMedium(
        item: item,
        isSelected: isSelected,
        onTap: onTap,
      );
    } else {
      return BottomBarItemMedium(
        item: item,
        isSelected: isSelected,
        onTap: onTap,
      );
    }
  }
}

extension CustomBottomBarExtension on List<BottomNavItemModel> {
  Widget buildCustomBottomBar({
    required BuildContext context,

    required int currentIndex,

    required Function(int index) onTap,
    VoidCallback? onVoiceTap,
  }) {
    return SafeArea(
      child: Container(
        margin:  EdgeInsets.only(left: context.screenWidth*0.03, right: 0, bottom: 0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: context.screenHeight * 0.069,
                padding: const EdgeInsets.symmetric(
                  horizontal: 04,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(34),
                  border: Border.all(color: Color(0xffDADADA)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.08),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;

                    return _BottomBarItem(
                      item: item,
                      isSelected: currentIndex == index,
                      onTap: () => onTap(index),
                    );
                  }).toList(),
                ),
              ),
            ),

            const SizedBox(width: 8),

            GestureDetector(
              onTap: onVoiceTap,
              child: Container(
                width: context.screenWidth * 0.25,
                height: context.screenHeight * 0.065,
                padding: const EdgeInsets.only(left: 08),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xff7600FF), Color(0xffC100FF)],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    bottomLeft: Radius.circular(34),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.l10n.voice,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth * 0.042,
                        fontFamily: AppFont.gilroyBold,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.mic, color: Colors.white, size: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}