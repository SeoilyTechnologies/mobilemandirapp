import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaHeader extends StatelessWidget {
  final String title;
  final bool showBackButton;
  final VoidCallback? onBackTap;

  const ChadavaHeader({
    super.key,
    this.title = 'Chadava',
    this.showBackButton = true,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.h(121),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/new_design/chadhawa_image/chadava_headerimg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Vertically & Horizontally Centered Title & Underline Ornament
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.gilroyBold(
                      context.sp(18),
                      color: Colors.white,
                      height: 1.01,
                    ),
                  ),
                  SizedBox(height: context.h(4)),
                  Image.asset(
                    "assets/new_design/chadhawa_image/chadhawa_title_below_image.png",
                    width: context.w(85),
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) =>
                        const SizedBox.shrink(),
                  ),
                ],
              ),
            ),

            // Vertically Centered Back Button on Left
            if (showBackButton)
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: context.w(15)),
                  child: GestureDetector(
                    onTap: onBackTap ?? () => Navigator.of(context).maybePop(),
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      width: context.w(28),
                      height: context.w(28),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.70),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: context.w(14),
                          color: AppColor.goldDark,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
