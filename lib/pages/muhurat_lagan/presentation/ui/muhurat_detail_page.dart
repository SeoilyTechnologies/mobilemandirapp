import 'package:flutter/material.dart';
import '../../../../common/component/app_text_style.dart';
import '../../../../common/values/screenUtils.dart';
import '../../domain/models/muhurat_model.dart';
import 'component/common_bottom_action_bar.dart';
import 'component/common_section_card.dart';
import 'component/common_vivaran_grid.dart';
import 'component/dashed_container.dart';

class MuhuratDetailPage extends StatefulWidget {
  final String title;

  const MuhuratDetailPage({
    super.key,
    this.title = "Vivah Muhurat",
  });

  @override
  State<MuhuratDetailPage> createState() => _MuhuratDetailPageState();
}

class _MuhuratDetailPageState extends State<MuhuratDetailPage> {
  final List<CommonVivaranItem> panchangItems = const [
    CommonVivaranItem(label: "Tithi", value: "Panchami"),
    CommonVivaranItem(label: "Paksha", value: "Shukla Paksha"),
    CommonVivaranItem(label: "Nakshatra", value: "Rohini"),
    CommonVivaranItem(label: "Yoga", value: "Siddhi Yoga"),
    CommonVivaranItem(label: "Karan", value: "Balava"),
    CommonVivaranItem(label: "Day", value: "Saturday"),
  ];

  final List<ChoghadiyaSlot> choghadiyaSlots = const [
    ChoghadiyaSlot(
      name: "Amrit",
      time: "06:15 - 07:45",
      isAuspicious: true,
      backgroundColor: Color(0xFFEAF4EC),
      textColor: Color(0xFF000000),
      borderColor: Color(0xFF45855A),
    ),
    ChoghadiyaSlot(
      name: "Rog",
      time: "07:45 - 09:15",
      isAuspicious: false,
      backgroundColor: Color(0xFFFDE8E8),
      textColor: Color(0xFF000000),
      borderColor: Color(0xFFB33A3A),
    ),
    ChoghadiyaSlot(
      name: "Labh",
      time: "09:15 - 10:45",
      isAuspicious: true,
      backgroundColor: Color(0xFFEAF4EC),
      textColor: Color(0xFF000000),
      borderColor: Color(0xFF45855A),
    ),
    ChoghadiyaSlot(
      name: "Shubh",
      time: "10:45 - 12:15",
      isAuspicious: true,
      backgroundColor: Color(0xFFEAF4EC),
      textColor: Color(0xFF000000),
      borderColor: Color(0xFF45855A),
    ),
    ChoghadiyaSlot(
      name: "Char",
      time: "12:15 - 01:45",
      isAuspicious: true,
      backgroundColor: Color(0xFFEAF4EC),
      textColor: Color(0xFF000000),
      borderColor: Color(0xFF45855A),
    ),
  ];

  final List<AuspiciousSlotInfo> auspiciousSlots = const [
    AuspiciousSlotInfo(
      number: 1,
      title: "Amrit",
      description:
          "The most favorable slot of all. Ideal for any important task, especially long-term commitments.",
    ),
    AuspiciousSlotInfo(
      number: 2,
      title: "Shubh",
      description:
          "Auspicious and good for ceremonies, ritual functions, and celebrations.",
    ),
    AuspiciousSlotInfo(
      number: 3,
      title: "Labh",
      description:
          "Favorable for gains, profit-related work, business dealings, and starting new ventures.",
    ),
    AuspiciousSlotInfo(
      number: 4,
      title: "Char",
      description: "Generally good for travel and movement-related activities.",
    ),
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
                        child: Row(
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
                              child: Center(
                                child: Text(
                                  widget.title,
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.gilroyBold(
                                    w * 0.041,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: w * 0.092),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Main Content
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Top Summary Card with Golden Dashed Border
                        DashedContainer(
                          color: const Color(0xFFFFEDCC),
                          strokeColor: const Color(0xFF793C01),
                          strokeWidth: 1.0,
                          dashLength: 2.0,
                          gap: 2.0,
                          borderRadius: 10.0,
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Shubh ${widget.title}",
                                      style: AppTextStyle.gilroySemiBold(
                                        w * 0.031,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      "10:45 AM - 12:30 PM",
                                      style: AppTextStyle.gilroyBold(
                                        w * 0.046,
                                        color: const Color(0xFF793C01),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 102,
                                height: 26,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF793C01),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Text(
                                    "12 December 2026",
                                    style: AppTextStyle.gilroySemiBold(
                                      w * 0.026,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Section 1: Panchang Vivaran Card
                        CommonSectionCard(
                          title: "Panchang Vivaran",
                          child: CommonVivaranGrid(items: panchangItems),
                        ),

                        const SizedBox(height: 16),

                        // Section 2: Choghadiya Card
                        CommonSectionCard(
                          title: "Choghadiya",
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                child: Row(
                                  children: choghadiyaSlots.map((slot) {
                                    return Container(
                                      width: 91.86,
                                      height: 49.11,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        color: slot.backgroundColor,
                                        borderRadius: BorderRadius.circular(7.28),
                                        border: Border.all(
                                          color: slot.borderColor,
                                          width: 0.91,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            slot.name,
                                            style: AppTextStyle.gilroySemiBold(
                                              w * 0.028,
                                              color: const Color(0xFF000000),
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            slot.time,
                                            style: AppTextStyle.gilroyMedium(
                                              w * 0.028,
                                              color: const Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                              const SizedBox(height: 14),
                              // Rahu Kaal Dashed Red Box
                              DashedContainer(
                                color: const Color(0xFFF7E9E9),
                                strokeColor: const Color(0xFFB33A3A),
                                strokeWidth: 0.91,
                                gap: 1.82,
                                dashLength: 1.82,
                                borderRadius: 5.28,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 6,
                                ),
                                child: SizedBox(
                                  height: 24,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Rahu Kaal",
                                        style: AppTextStyle.gilroySemiBold(
                                          w * 0.031,
                                          color: const Color(0xFFB74545),
                                        ),
                                      ),
                                      Text(
                                        "09:10 AM - 10:35 AM",
                                        textAlign: TextAlign.right,
                                        style: AppTextStyle.gilroySemiBold(
                                          w * 0.031,
                                          color: const Color(0xFFB74545),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Section 3: About the Muhurat
                        CommonSectionCard(
                          title: "About the Muhurat",
                          child: Text(
                            "The day is divided into eight Choghadiya time slots, each carrying a different quality of energy. These are used to choose favorable timings for important activities like travel, ceremonies, business deals, or new beginnings.",
                            style: AppTextStyle.gilroyRegular(
                              w * 0.031,
                              color: const Color(0xFF000000),
                              height: 1.42,
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Section 4: Auspicious slots
                        CommonSectionCard(
                          title: "Auspicious slots",
                          child: Column(
                            children: List.generate(auspiciousSlots.length, (index) {
                              final item = auspiciousSlots[index];
                              final isLast = index == auspiciousSlots.length - 1;
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 16.53,
                                          height: 16.53,
                                          margin: const EdgeInsets.only(top: 2),
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF793C01),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "${item.number}",
                                              style: AppTextStyle.gilroyBold(
                                                w * 0.024,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                              style: AppTextStyle.gilroyRegular(
                                                w * 0.031,
                                                color: const Color(0xFF000000),
                                                height: 1.25,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: "${item.title} – ",
                                                  style: AppTextStyle.gilroyBold(
                                                    w * 0.031,
                                                    color: const Color(0xFF000000),
                                                  ),
                                                ),
                                                TextSpan(text: item.description),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (!isLast)
                                    const Padding(
                                      padding: EdgeInsets.symmetric(vertical: 4),
                                      child: Divider(
                                        color: Color(0xFFDCDCDC),
                                        height: 1,
                                        thickness: 1,
                                      ),
                                    ),
                                ],
                              );
                            }),
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
            primaryButtonText: "Book Pandit",
            onReminderTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Muhurat reminder set successfully!"),
                  backgroundColor: Color(0xFF793C01),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            onPrimaryTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Redirecting to Pandit booking..."),
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
