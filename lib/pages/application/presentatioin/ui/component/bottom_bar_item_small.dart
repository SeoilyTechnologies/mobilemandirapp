import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/l10n/l10n.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/fonts.dart';
import '../../../../../common/values/screenUtils.dart';
import '../application_widget.dart';

String getLocalizedTitle(BuildContext context, String title) {
  final l10n = context.l10n;
  if (l10n == null) return title;
  switch (title.toLowerCase()) {
    case 'home':
      return l10n.home;
    case 'aarti':
      return l10n.aarti;
    case 'seva':
      return l10n.seva;
    case 'jaap':
      return l10n.jaap;
    case 'sant':
      return l10n.sant;
    case 'reel':
      return l10n.reel;
    case 'profile':
      return l10n.navProfile;
    case 'more':
      return l10n.more;
    default:
      return title;
  }
}

class BottomBarItemSmall extends StatelessWidget {
  final BottomNavItemModel item;
  final bool isSelected;
  final VoidCallback onTap;

  const BottomBarItemSmall({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        padding: EdgeInsets.symmetric(
          horizontal: isSelected ? 14 : 8,
          vertical: 3,
        ),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffF3F0EA) : Colors.transparent,
          borderRadius: BorderRadius.circular(28),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  const SizedBox(height: 2),
            Image.asset(
              item.icon,
              width: context.screenWidth * 0.056,
              height: context.screenWidth * 0.056,
              fit: BoxFit.fill,
              // color: isSelected
              //     ? const Color(0xffD8A11A)
              //     : Colors.black,
            ),
            const SizedBox(height: 3),
            Text(
              getLocalizedTitle(context, item.title),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: context.screenWidth * 0.028,
                fontFamily: AppFont.gilroyBold,
                color: isSelected ? AppColor.goldDark : Colors.black,
              ),
            ),
            // const SizedBox(height: 2),
          ],
        ),
      ),
    );
  }
}
