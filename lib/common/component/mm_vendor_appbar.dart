

import '../../../../../common/routes/exports.dart';
import '../values/app_color.dart';
import '../values/screenUtils.dart';
import 'app_text_style.dart';

class MmVendorAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;
  final bool showBackButton; // 👈 add this

  const MmVendorAppbar({
    super.key,
    required this.title,
    required this.onBackTap,
    this.showBackButton = true, // default
  });

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return MandirAppBarSmall(
        onBackTap: onBackTap,
        title: title,
        showBackButton: showBackButton,
      );
    } else if (context.isMediumScreen) {
      return MandirAppBarMedium(
        onBackTap: onBackTap,
        title: title,
        showBackButton: showBackButton,
      );
    } else {
      return MandirAppBarLarge(
        onBackTap: onBackTap,
        title: title,
        showBackButton: showBackButton,
      );
    }
  }
}

class MandirAppBarSmall extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;
  final bool showBackButton; // 👈 add this

  const MandirAppBarSmall({
    super.key,
    required this.title,
    required this.onBackTap,
    required this.showBackButton,
  });

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: const BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage(
        //     "assets/new_design/vendor/gradient_background.png",
        //   ),
        //   fit: BoxFit.fill,
        // ),
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            /// BACK BUTTON
            if (showBackButton) // 👈 use this instead
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
class MandirAppBarMedium extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;
  final bool showBackButton; // 👈 add

  const MandirAppBarMedium({
    super.key,
    required this.title,
    required this.onBackTap,
    required this.showBackButton, // 👈 add
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
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            /// BACK BUTTON
            if (showBackButton) // 👈 replace condition
              Positioned(
                left: 16,
                child: GestureDetector(
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
                ),
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
  final bool showBackButton; // 👈 add

  const MandirAppBarLarge({
    super.key,
    required this.title,
    required this.onBackTap,
    required this.showBackButton, // 👈 add
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
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            /// BACK BUTTON
            if (showBackButton) // 👈 replace condition
              Positioned(
                left: 16,
                child: GestureDetector(
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
                ),
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