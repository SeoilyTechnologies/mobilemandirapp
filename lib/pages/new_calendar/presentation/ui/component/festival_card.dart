import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class FestivalCardd extends StatelessWidget {
  final String title;
  final String date;
  final String day;
  final String badge;
  final String topBadge;

  const FestivalCardd({
    super.key,
    required this.title,
    required this.date,
    required this.day,
    required this.badge,
    required this.topBadge,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.screenHeight * 0.16,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            "assets/new_design/background/current_month_fes_background.png",
          ),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(26),
      ),

      child: Stack(
        children: [
          /// LEFT RED BAR
          Positioned(
            left: 0,
            top: 14,
            bottom: 14,
            child: Container(
              width: 12,
              decoration: const BoxDecoration(
                color: Color(0xFFD33E32),

                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 26,
              right: 24,
              top: 22,
              bottom: 22,
            ),

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// FESTIVAL ICON
                Container(
                  width: 92,
                  height: 92,

                  decoration: BoxDecoration(
                    color: const Color(0xFFF4D8D6),
                    borderRadius: BorderRadius.circular(26),
                  ),

                  child: Center(
                    child: Container(
                      width: 52,
                      height: 52,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),

                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/new_design/icon/festivalss.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 24),

                /// CENTER CONTENT
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        /// TITLE
                        Text(
                          title,

                          style: AppTextStyle.gilroyBold(
                            context.screenWidth * 0.040,
                            color: AppColor.fullBlack,
                          ),
                        ),

                        const SizedBox(height: 18),

                        /// DATE ROW
                        Row(
                          children: [
                            Image.asset(
                              "assets/new_design/icon/sharad_one.png",
                              width: 26,
                              height: 26,
                            ),

                            const SizedBox(width: 12),

                            Expanded(
                              child: Text(
                                "$date • $day",

                                style: AppTextStyle.gilroyBold(
                                  context.screenWidth * 0.034,
                                  color: const Color(0xFF8B4B02),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                /// RIGHT SIDE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    /// TOP BADGE
                    Container(
                      height: 54,

                      padding: const EdgeInsets.symmetric(horizontal: 26),

                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F0E2),

                        borderRadius: BorderRadius.circular(40),

                        border: Border.all(
                          color: const Color(0xFFE6C98F),
                          width: 2,
                        ),
                      ),

                      child: Center(
                        child: Text(
                          topBadge,

                          style: AppTextStyle.gilroyMedium(
                            context.screenWidth * 0.034,
                            color: const Color(0xFF8B4B02),
                          ),
                        ),
                      ),
                    ),

                    const Spacer(),

                    /// VRAT BADGE
                    Container(
                      height: 48,

                      padding: const EdgeInsets.symmetric(horizontal: 28),

                      decoration: BoxDecoration(
                        color: const Color(0xFFE4EFE5),

                        borderRadius: BorderRadius.circular(40),
                      ),

                      child: Center(
                        child: Text(
                          badge,

                          style: AppTextStyle.gilroyMedium(
                            context.screenWidth * 0.032,
                            color: const Color(0xFF1C7C36),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
