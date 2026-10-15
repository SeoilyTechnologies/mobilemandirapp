import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/routes/exports.dart';

class MandirAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;

  const MandirAppBar({super.key, required this.title, required this.onBackTap});

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return MandirAppBarSmall(onBackTap: onBackTap, title: title);
    } else if (context.isMediumScreen) {

      return MandirAppBarMedium(onBackTap: onBackTap, title: title);
    } else {
      return MandirAppBarLarge(onBackTap: onBackTap, title: title);
    }
  }
}

class MandirAppBarSmall extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;

  const MandirAppBarSmall({
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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE7B124), Color(0xFF793C01)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(1)),
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            /// BACK BUTTON
            Positioned(
              left: 16,
              child: Navigator.canPop(context) == true
                  ? GestureDetector(
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
                    )
                  : SizedBox(),
            ),

            /// TITLE
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

class MandirAppBarMedium extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;

  const MandirAppBarMedium({
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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE7B124), Color(0xFF793C01)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(1)),
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            /// BACK BUTTON
            Positioned(
              left: 16,
              child: Navigator.canPop(context) == true
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
                  : SizedBox(),
            ),

            /// TITLE
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

class MandirAppBarLarge extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;

  const MandirAppBarLarge({
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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE7B124), Color(0xFF793C01)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(1)),
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            /// BACK BUTTON
            Positioned(
              left: 16,
              child: Navigator.canPop(context) == true
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
                  : SizedBox(),
            ),

            /// TITLE
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
