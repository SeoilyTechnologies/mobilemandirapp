import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/routes/exports.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;

  const TransparentAppBar({
    super.key,
    required this.title,
    required this.onBackTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return TransparentAppBarSmall(onBackTap: onBackTap, title: title);
    } else if (context.isMediumScreen) {
      return TransparentAppBarMedium(onBackTap: onBackTap, title: title);
    } else {
      return TransparentAppBarLarge(onBackTap: onBackTap, title: title);
    }
  }
}

class TransparentAppBarSmall extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;

  const TransparentAppBarSmall({
    super.key,
    required this.title,
    required this.onBackTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: context.screenWidth,
      color: Colors.transparent,
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 16,
              child: GestureDetector(
                onTap: onBackTap,
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 12,
                    color: AppColor.newsecondaruy,
                  ),
                ),
              ),
            ),

            Text(
              title,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.046,
                color: AppColor.appWhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransparentAppBarMedium extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;

  const TransparentAppBarMedium({
    super.key,
    required this.title,
    required this.onBackTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: context.screenWidth,
      color: Colors.transparent,
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 16,
              child: Navigator.canPop(context)
                  ? GestureDetector(
                      onTap: onBackTap,
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 22,
                          color: AppColor.newsecondaruy,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
            Text(
              title,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.042,
                color: AppColor.appWhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransparentAppBarLarge extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;

  const TransparentAppBarLarge({
    super.key,
    required this.title,
    required this.onBackTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.transparent,
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 16,
              child: Navigator.canPop(context)
                  ? GestureDetector(
                      onTap: onBackTap,
                      child: Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 12,
                          color: AppColor.newsecondaruy,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
            Text(
              title,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.042,
                color: AppColor.appWhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
