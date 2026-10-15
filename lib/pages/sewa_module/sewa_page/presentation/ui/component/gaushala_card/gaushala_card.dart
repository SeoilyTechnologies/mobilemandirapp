import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class GauShalaCard extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final String sevaCount;
  final String rating;

  const GauShalaCard({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.sevaCount,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.6,

      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Top Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: context.screenWidth,
              height: context.screenHeight * 0.15,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 16),

          /// Title
          Text(
            context.l10n.shriGauShala,
            style: AppTextStyle.gilroySemiBold(
              context.screenWidth * 0.036,
              color: AppColor.fullBlack,
            ),
          ),

          const SizedBox(height: 8),

          /// Location
          Row(
            children: [
              Image.asset(
                "assets/new_design/icon/akar-icons_location.png",
                width: 12,
                color: Color(0xFF8B4A00),
              ),
              const SizedBox(width: 4),
              Text(
                location,
                style: AppTextStyle.gilroyMedium(
                  context.screenWidth * 0.0266,
                  color: AppColor.goldDark,
                ),
              ),
            ],
          ),

          SizedBox(height: 10),

          /// Bottom chips
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 28,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5E5D6),
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: Text(
                  sevaCount,
                  style: AppTextStyle.semiBold(
                    context.screenWidth * 0.03328,
                    color: AppColor.newsecondaruy,
                  ),
                ),
              ),

              Container(
                height: 28,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFE0A800),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    Icon(Icons.star, size: 12, color: Colors.black),
                    SizedBox(width: 4),
                    Text(
                      "4.9",
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.03328,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
