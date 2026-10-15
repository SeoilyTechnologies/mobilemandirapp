import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaMahatvaCard extends StatelessWidget {
  final bool isGodSeva;

  const ChadavaMahatvaCard({
    super.key,
    required this.isGodSeva,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: context.w(12),
        vertical: context.h(10),
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF8E7D1),
        borderRadius: BorderRadius.circular(context.w(6)),
        border: Border.all(
          width: 1,
          color: const Color(0xFFF3D3A5),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Pink Lotus Image Badge Asset
          Image.asset(
            "assets/new_design/chadhawa_image/lotus_image.png",
            width: context.w(42),
            height: context.w(42),
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) => Container(
              width: context.w(42),
              height: context.w(42),
              decoration: const BoxDecoration(
                color: Color(0xFFFFE3D0),
                shape: BoxShape.circle,
              ),
              child: Icon(
                isGodSeva ? Icons.filter_vintage_rounded : Icons.eco_rounded,
                color: const Color(0xFFE4AE23),
                size: context.w(24),
              ),
            ),
          ),

          SizedBox(width: context.w(10)),

          // Text Column
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isGodSeva ? 'Chadava ka mahatva' : 'Green Earth, Healthy Life',
                  style: AppTextStyle.gilroySemiBold(
                    context.sp(14),
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: context.h(2)),
                Text(
                  isGodSeva
                      ? 'Apna chadava arpit karein aur divya aashirwad prapt karein.'
                      : 'Every plant you plant brings postivity, purity and prosperity to your life.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.gilroyMedium(
                    context.sp(10),
                    color: Colors.black.withValues(alpha: 0.85),
                    height: 1.30,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: context.w(6)),

          // Right Circle Chevron Button
          Container(
            width: context.w(27),
            height: context.w(27),
            decoration: const BoxDecoration(
              color: Color(0xFFFFDAA7),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                Icons.chevron_right_rounded,
                size: context.w(18),
                color: const Color(0xFF793C01),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
