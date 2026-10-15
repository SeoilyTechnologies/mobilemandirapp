import 'dart:io';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class HowItWorksCard extends StatelessWidget {
  HowItWorksCard({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return const HowItWorksCardSmall();
    } else if (context.isMediumScreen) {
      return const HowItWorksCardMedium();
    } else {
      return const HowItWorksCardMedium();
    }
  }
}

class HowItWorksCardSmall extends StatelessWidget {
  const HowItWorksCardSmall({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        "icon": "assets/new_design/icon/daily_sewa_aarti_icon.png",
        "title": context.l10n.dailySevaAarti,
      },
      {"icon": "assets/new_design/icon/earn_ponts.png", "title": context.l10n.earnCoins},
      {
        "icon": "assets/new_design/icon/claim_rewards.png",
        "title": context.l10n.claimRewards,
      },
      {
        "icon": "assets/new_design/icon/enjhoy_benefits.png",
        "title": context.l10n.enjoyBenefits,
      },
    ];

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      height: Platform.isIOS ? 160 : context.screenHeight * 0.19,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: const DecorationImage(
          image: AssetImage(
            "assets/new_design/icon/how_it_work_background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.howItWorks,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.048,
                color: AppColor.appWhiteColor,
              ),
            ),

            const SizedBox(height: 18),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: items.map((item) {
                return Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            item["icon"]!,
                            width: 22,
                            height: 22,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      const SizedBox(height: 14),

                      Text(
                        item["title"]!,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth * 0.03,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class HowItWorksCardMedium extends StatelessWidget {
  const HowItWorksCardMedium({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        "icon": "assets/new_design/icon/daily_sewa_aarti_icon.png",
        "title": context.l10n.dailySevaAarti,
      },
      {"icon": "assets/new_design/icon/earn_ponts.png", "title": context.l10n.earnCoins},
      {
        "icon": "assets/new_design/icon/claim_rewards.png",
        "title": context.l10n.claimRewards,
      },
      {
        "icon": "assets/new_design/icon/enjhoy_benefits.png",
        "title": context.l10n.enjoyBenefits,
      },
    ];

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      height: Platform.isIOS
          ? context.screenHeight * 0.18
          : context.screenHeight * 0.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: const DecorationImage(
          image: AssetImage(
            "assets/new_design/icon/how_it_work_background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.howItWorks,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.048,
                color: AppColor.appWhiteColor,
              ),
            ),

            const SizedBox(height: 18),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: items.map((item) {
                return Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            item["icon"]!,
                            width: 22,
                            height: 22,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      const SizedBox(height: 14),

                      Text(
                        item["title"]!,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth * 0.03,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
