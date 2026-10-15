import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaHeroBanner extends StatelessWidget {
  final bool isGodSeva;

  const ChadavaHeroBanner({
    super.key,
    required this.isGodSeva,
  });

  @override
  Widget build(BuildContext context) {
    if (isGodSeva) {
      return Container(
        width: double.infinity,
        height: context.h(103),
        padding: EdgeInsets.symmetric(
          horizontal: context.w(16),
          vertical: context.h(12),
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.02, 1.00),
            end: Alignment(0.96, 0.07),
            colors: [Color(0xFF43152A), Color(0xFF941B4C)],
          ),
          borderRadius: BorderRadius.circular(context.w(10)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x20000000),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Aaj ka din',
                    style: AppTextStyle.gilroyMedium(
                      context.sp(12),
                      color: const Color(0xFFE4AE23),
                    ),
                  ),
                  SizedBox(height: context.h(2)),
                  Text(
                    'Shanivaar',
                    style: AppTextStyle.gilroyBold(
                      context.sp(22),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: context.h(2)),
                  Text(
                    'Shani Dev aur Hanuman ji ka din',
                    style: AppTextStyle.gilroyMedium(
                      context.sp(12),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/new_design/chadhawa_image/diyaimage.png",
              width: context.w(91),
              height: context.h(72),
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => Icon(
                Icons.local_fire_department_rounded,
                color: const Color(0xFFFFC107),
                size: context.w(44),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: double.infinity,
        height: context.h(103),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.w(10)),
          image: const DecorationImage(
            image: AssetImage("assets/new_design/chadhawa_image/vanaspati_banner.png"),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x20000000),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(
          horizontal: context.w(16),
          vertical: context.h(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'The Sacred Act of ',
                    style: AppTextStyle.gilroyMedium(
                      context.sp(12),
                      color: Colors.white.withValues(alpha: 0.90),
                    ),
                  ),
                  SizedBox(height: context.h(2)),
                  Text(
                    'Vanspati Seva',
                    style: AppTextStyle.gilroyBold(
                      context.sp(22),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: context.h(2)),
                  Text(
                    'Plant a tree, offer life, earn divine blessing.',
                    style: AppTextStyle.gilroyMedium(
                      context.sp(11),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
