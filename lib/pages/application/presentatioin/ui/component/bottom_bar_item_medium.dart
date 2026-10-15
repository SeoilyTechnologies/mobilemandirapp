import 'package:mandirapp/l10n/l10n_extension.dart';
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

class BottomBarItemMedium extends StatelessWidget {
  final BottomNavItemModel item;
  final bool isSelected;
  final VoidCallback onTap;

  const BottomBarItemMedium({
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
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffF3F0EA) : Colors.transparent,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              item.icon,
              width: context.screenWidth * 0.04,
              height: context.screenWidth * 0.04,
              // color: isSelected
              //     ? const Color(0xffD8A11A)
              //     : Colors.black,
            ),
            const SizedBox(height: 6),
            Text(
              getLocalizedTitle(context, item.title),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: context.screenWidth * 0.015,
                fontFamily: AppFont.gilroyMedium,
                // color: isSelected
                //     ? const Color(0xffD8A11A)
                //     : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
