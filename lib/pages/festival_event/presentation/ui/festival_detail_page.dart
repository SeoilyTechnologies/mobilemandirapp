import 'package:flutter/material.dart';
import '../../../../common/component/app_text_style.dart';
import '../../../../common/component/panchang_common/common_dos_donts_card.dart';
import '../../../../common/component/panchang_common/common_procedure_steps_list.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../muhurat_lagan/presentation/ui/component/common_bottom_action_bar.dart';
import '../../../muhurat_lagan/presentation/ui/component/common_section_card.dart';
import '../../../muhurat_lagan/presentation/ui/component/common_vivaran_grid.dart';

class FestivalDetailPage extends StatefulWidget {
  final String title;

  const FestivalDetailPage({
    super.key,
    this.title = "Diwali–Festival of Lights",
  });

  @override
  State<FestivalDetailPage> createState() => _FestivalDetailPageState();
}

class _FestivalDetailPageState extends State<FestivalDetailPage> {
  final List<CommonVivaranItem> utsavItems = const [
    CommonVivaranItem(label: "Tithi", value: "Amavasya"),
    CommonVivaranItem(label: "Maas", value: "Kartik"),
    CommonVivaranItem(label: "Paksha", value: "Krishna Paksha"),
    CommonVivaranItem(label: "Nakshatra", value: "Swati"),
  ];

  final List<ProcedureStepItem> worshipSteps = const [
    ProcedureStepItem(
      step: "1",
      text: "Clean the house thoroughly and decorate the main entrance with rangoli and diyas.",
    ),
    ProcedureStepItem(
      step: "2",
      text: "In the evening, set up and consecrate the idols of Goddess Lakshmi and Lord Ganesha.",
    ),
    ProcedureStepItem(
      step: "3",
      text: "Perform the aarti during the auspicious muhurat and distribute prasad.",
    ),
  ];

  final List<String> festivalDos = const [
    "Light the diyas in your home",
    "Celebrate with new clothes",
    "Do Sevas and offerings",
  ];

  final List<String> festivalDonts = const [
    "Avoid performing puja during Rahu Kaal",
    "Avoid conflicts and disputes",
    "Avoid bursting firecrackers irresponsibly",
  ];

  final List<Map<String, String>> relatedFestivals = const [
    {"name": "Govardhan Puja", "date": "9 Nov 2026"},
    {"name": "Bhai Dooj", "date": "10 Nov 2026"},
    {"name": "Dhanteras", "date": "11 Nov 2026"},
  ];

  @override
  Widget build(BuildContext context) {
    final double w = context.screenWidth;

    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                // Header with Golden Gradient
                SliverToBoxAdapter(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFB37A0B),
                          Color(0xFF8C5C00),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: SafeArea(
                      bottom: false,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(w * 0.04, 8, w * 0.04, 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.of(context).pop(),
                                  child: Container(
                                    width: w * 0.092,
                                    height: w * 0.092,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withValues(alpha: 0.25),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      color: Colors.white,
                                      size: w * 0.046,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        widget.title,
                                        textAlign: TextAlign.center,
                                        style: AppTextStyle.gilroyBold(
                                          w * 0.041,
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        "8 November 2026 · Ravivaar · Kartik Amavasya",
                                        textAlign: TextAlign.center,
                                        style: AppTextStyle.gilroyMedium(
                                          w * 0.026,
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: w * 0.092),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Content Body
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Card 1: Utsav Vivaran
                        CommonSectionCard(
                          title: "Utsav Vivaran",
                          child: CommonVivaranGrid(items: utsavItems),
                        ),

                        const SizedBox(height: 16),

                        // Card 2: Lakshmi Puja Muhurat
                        CommonSectionCard(
                          title: "Lakshmi Puja Muhurat",
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFECD9),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pradosh Kaal Muhurat",
                                      style: AppTextStyle.gilroyMedium(
                                        w * 0.031,
                                        color: const Color(0xFF793C01),
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "06:05 PM – 08:00 PM",
                                      style: AppTextStyle.gilroyBold(
                                        w * 0.041,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Avadhi",
                                      style: AppTextStyle.gilroyMedium(
                                        w * 0.031,
                                        color: const Color(0xFF793C01),
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "1h 55m",
                                      style: AppTextStyle.gilroyBold(
                                        w * 0.041,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Card 3: The Festival of Lights
                        CommonSectionCard(
                          title: "The Festival of Lights",
                          child: Text(
                            "Diwali celebrates the victory of light over darkness, good over evil. It marks the joyous return of Lord Rama to Ayodhya after fourteen years of exile, following his triumph over Ravana. Homes are lit with diyas and rangoli to welcome prosperity and happiness, while Goddess Lakshmi is worshipped for wealth and well-being.",
                            style: AppTextStyle.gilroyRegular(
                              w * 0.031,
                              color: const Color(0xFF000000),
                              height: 1.42,
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Card 4: Worship Procedure
                        CommonSectionCard(
                          title: "Worship Procedure",
                          child: CommonProcedureStepsList(steps: worshipSteps),
                        ),

                        const SizedBox(height: 16),

                        // Card 5: The Do's and Don'ts
                        CommonSectionCard(
                          title: "The Do's and Don'ts",
                          child: CommonDosDontsCard(
                            dos: festivalDos,
                            donts: festivalDonts,
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Card 6: Related Festivals
                        CommonSectionCard(
                          title: "Related Festivals",
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            child: Row(
                              children: relatedFestivals.map((item) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFF9EE),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item["name"]!,
                                        style: AppTextStyle.gilroySemiBold(
                                          w * 0.031,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        item["date"]!,
                                        style: AppTextStyle.gilroyMedium(
                                          w * 0.026,
                                          color: const Color(0xFF793C01),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Fixed Bottom Action Bar
          CommonBottomActionBar(
            primaryButtonText: "Book Puja",
            onReminderTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Festival reminder set successfully!"),
                  backgroundColor: Color(0xFF793C01),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            onPrimaryTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Redirecting to Puja booking..."),
                  backgroundColor: Color(0xFF793C01),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
