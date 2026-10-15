import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/pages/temple_detail/presentation/ui/component/section_title.dart';

import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';

class HotelSection extends StatelessWidget {
  const HotelSection({super.key});

  Widget hotelCard(BuildContext context) {
    return Container(
      width: context.screenWidth*0.504,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.network(
              'https://images.unsplash.com/photo-1566073771259-6a8506099945',
              height: context.screenHeight*0.156,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sristho In Hotel",
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.0355,
                    color: AppColor.newsecondaruy,
                  ),
                ),

                const SizedBox(height: 6),

                Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/new_design/icon/akar-icons_location.png",
                      width: 10,
                      height: 10,
                    ),
                    Text(
                      " Sector 40, Chandigarh",
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.027,
                        color: AppColor.newGreyy,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 4),

                Text(
                  "Distance from Temple (0.4 Km)",
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.024,
                    color: AppColor.newGreyy,
                  ),
                ),

                const SizedBox(height: 10),

                // SingleChildScrollView(
                //   child:
                SizedBox(
                  height: 22,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      button("Directions", context),
                      const SizedBox(width: 6),
                      button("Call", context),
                      const SizedBox(width: 6),
                      button("Share", context),
                    ],
                  ),
                ),
                //),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget button(String text, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      decoration: BoxDecoration(
        color: AppColor.newsecondaruy.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: AppTextStyle.gilroyMedium(
          context.screenWidth * 0.022,
          color: AppColor.newsecondaruy,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: context.l10n.hotelNearby),
        const SizedBox(height: 14),

        SizedBox(
          height: context.screenHeight*0.29,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              hotelCard(context),
              const SizedBox(width: 12),
              hotelCard(context),
            ],
          ),
        ),
      ],
    );
  }
}
