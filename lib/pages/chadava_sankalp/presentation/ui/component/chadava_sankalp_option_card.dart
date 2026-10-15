import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../data/entity/sankalp_option_model.dart';
import 'chadava_sankalp_star_badge.dart';

class ChadavaSankalpOptionCard extends StatelessWidget {
  final SankalpOptionType type;
  final String optionLabel;
  final String title;
  final String subtitleText;
  final int basePrice;
  final bool isSelected;
  final bool isRecommended;
  final VoidCallback onTap;

  const ChadavaSankalpOptionCard({
    super.key,
    required this.type,
    required this.optionLabel,
    required this.title,
    required this.subtitleText,
    required this.basePrice,
    required this.isSelected,
    this.isRecommended = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cardBorderColor =
        isSelected ? const Color(0xFFE4AE23) : const Color(0xFFE0E0E0);
    final iconBgColor =
        isSelected ? const Color(0xFF793C01) : const Color(0xFFFFEDD0);
    final iconColor = isSelected ? Colors.white : const Color(0xFF793C01);

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: context.w(16),
              vertical: context.h(14),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: cardBorderColor,
                width: isSelected ? 1.5 : 1.0,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x3F9E9E9E),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Calendar SVG Icon Container
                Container(
                  width: context.w(50),
                  height: context.w(50),
                  decoration: BoxDecoration(
                    color: iconBgColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/new_design/chadhawa_image/calendar_icon.svg",
                      width: context.w(22),
                      height: context.w(22),
                      colorFilter:
                          ColorFilter.mode(iconColor, BlendMode.srcIn),
                    ),
                  ),
                ),

                SizedBox(width: context.w(16)),

                // Texts (Option label, Title, Subtitle)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        optionLabel,
                        style: AppTextStyle.gilroyMedium(
                          context.sp(12),
                          color: const Color(0xFF793C01),
                        ),
                      ),
                      SizedBox(height: context.h(2)),
                      Text(
                        title,
                        style: AppTextStyle.gilroySemiBold(
                          context.sp(16),
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: context.h(4)),
                      type == SankalpOptionType.ekBaar
                          ? Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '₹$basePrice',
                                    style: AppTextStyle.gilroyBold(
                                      context.sp(14),
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' · agle shanivaar',
                                    style: AppTextStyle.gilroyMedium(
                                      context.sp(14),
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Text(
                              subtitleText,
                              style: AppTextStyle.gilroyMedium(
                                context.sp(12),
                                color: Colors.black,
                                height: 1.3,
                              ),
                            ),
                    ],
                  ),
                ),

                SizedBox(width: context.w(12)),

                // Radio Button Indicator
                Container(
                  width: context.w(26),
                  height: context.w(26),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF793C01),
                      width: 1.3,
                    ),
                  ),
                  child: isSelected
                      ? Center(
                          child: Container(
                            width: context.w(14),
                            height: context.w(14),
                            decoration: const BoxDecoration(
                              color: Color(0xFF793C01),
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),

          // Star Ribbon Badge on Top Right
          if (isRecommended)
            Positioned(
              right: context.w(16),
              top: 0,
              child: const ChadavaSankalpStarBadge(),
            ),
        ],
      ),
    );
  }
}
