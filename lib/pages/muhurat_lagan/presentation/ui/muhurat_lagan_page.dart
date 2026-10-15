import 'package:flutter/material.dart';
import 'package:mandirapp/common/analytics/analytics_services.dart';
import 'package:mandirapp/common/analytics/facebook_analytics.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/panchang_common/common_category_filter_bar.dart';
import 'package:mandirapp/common/component/panchang_common/common_module_header.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../domain/models/muhurat_model.dart';
import 'component/dashed_container.dart';

class MuhuratLaganPage extends StatefulWidget {
  const MuhuratLaganPage({super.key});

  @override
  State<MuhuratLaganPage> createState() => _MuhuratLaganPageState();
}

class _MuhuratLaganPageState extends State<MuhuratLaganPage> {
  String selectedCategory = "All";
  final TextEditingController _searchController = TextEditingController();

  final List<String> categories = [
    "All",
    "Vivah",
    "Mundan",
    "Griha Parvesh",
    "Annaprashan",
    "Upnayan",
  ];

  final List<MuhuratItem> allMuhurats = const [
    MuhuratItem(
      id: "1",
      title: "Vivah Muhurat",
      date: "12 December, 2026 - Saturday",
      badgeText: "Shreshtha",
      badgeColor: Color(0xFF2E7D32),
      tithi: "Panchami",
      paksha: "Shukla",
      nakshatra: "Rohini",
      shubhTime: "10:45 AM - 12:30 PM",
      category: "Vivah",
      iconAsset: "assets/categories_images/cat_1_aa_1.png",
    ),
    MuhuratItem(
      id: "2",
      title: "Mundan Muhurat",
      date: "18 December, 2026 - Friday",
      badgeText: "Shubh",
      badgeColor: Color(0xFFD89200),
      tithi: "Ekadashi",
      paksha: "Krishna",
      nakshatra: "Pushya",
      shubhTime: "07:20 AM - 09:10 AM",
      category: "Mundan",
      iconAsset: "assets/categories_images/cat_2_aa_1.png",
    ),
    MuhuratItem(
      id: "3",
      title: "Griha Pravesh Muhurat",
      date: "21 December, 2026 - Monday",
      badgeText: "Shreshtha",
      badgeColor: Color(0xFF2E7D32),
      tithi: "Tritiya",
      paksha: "Shukla",
      nakshatra: "Mrigashira",
      shubhTime: "09:15 AM - 11:30 AM",
      category: "Griha Parvesh",
      iconAsset: "assets/categories_images/cat_3_aa_1.png",
    ),
    MuhuratItem(
      id: "4",
      title: "Vivah Muhurat",
      date: "28 December, 2026 - Saturday",
      badgeText: "Shreshtha",
      badgeColor: Color(0xFF2E7D32),
      tithi: "Panchami",
      paksha: "Shukla",
      nakshatra: "Rohini",
      shubhTime: "10:45 AM - 12:30 PM",
      category: "Vivah",
      iconAsset: "assets/categories_images/cat_1_aa_1.png",
    ),
    MuhuratItem(
      id: "5",
      title: "Mundan Muhurat",
      date: "05 January, 2027 - Tuesday",
      badgeText: "Shubh",
      badgeColor: Color(0xFFD89200),
      tithi: "Ekadashi",
      paksha: "Krishna",
      nakshatra: "Pushya",
      shubhTime: "07:20 AM - 09:10 AM",
      category: "Mundan",
      iconAsset: "assets/categories_images/cat_2_aa_1.png",
    ),
    MuhuratItem(
      id: "6",
      title: "Griha Pravesh Muhurat",
      date: "12 January, 2027 - Tuesday",
      badgeText: "Shreshtha",
      badgeColor: Color(0xFF2E7D32),
      tithi: "Tritiya",
      paksha: "Shukla",
      nakshatra: "Mrigashira",
      shubhTime: "09:15 AM - 11:30 AM",
      category: "Griha Parvesh",
      iconAsset: "assets/categories_images/cat_3_aa_1.png",
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<MuhuratItem> get filteredMuhurats {
    return allMuhurats.where((item) {
      final matchesCategory = selectedCategory == "All" || item.category == selectedCategory;
      final query = _searchController.text.trim().toLowerCase();
      final matchesQuery = query.isEmpty ||
          item.title.toLowerCase().contains(query) ||
          item.date.toLowerCase().contains(query);
      return matchesCategory && matchesQuery;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final double w = context.screenWidth;

    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      body: CustomScrollView(
        slivers: [
          // Common Header
          SliverToBoxAdapter(
            child: CommonModuleHeader(
              title: "Muhurat & Lagan",
              subtitle: "Find the right time, for auspicious moments",
              controller: _searchController,
              onChanged: (_) => setState(() {}),
            ),
          ),

          // Content List
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Common Category Filter Chips
                  CommonCategoryFilterBar(
                    categories: categories,
                    selectedCategory: selectedCategory,
                    onCategorySelected: (cat) {
                      setState(() {
                        selectedCategory = cat;
                      });
                    },
                  ),

                  SizedBox(height: w * 0.04),

                  // Featured Card ("Auspicious day of this week")
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF631229),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF631229).withValues(alpha: 0.25),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Auspicious day of this week",
                                    style: AppTextStyle.gilroyMedium(
                                      w * 0.031,
                                      color: const Color(0xFFE4AE23),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "12 Dec, 2026 - Saturday",
                                    style: AppTextStyle.gilroySemiBold(
                                      w * 0.033,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    "Best time for a wedding ceremony",
                                    style: AppTextStyle.gilroySemiBold(
                                      w * 0.033,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Learn More Button
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(AppRoutes.MUHURAT_DETAIL_PAGE);
                              },
                              child: Container(
                                width: w * 0.185,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE4AE23),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                  child: Text(
                                    "Learn More",
                                    textAlign: TextAlign.center,
                                    style: AppTextStyle.gilroySemiBold(
                                      w * 0.026,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        // Time Pill Box
                        Container(
                          width: w * 0.277,
                          height: 22,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFECD9),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              "10:45 AM - 12:30 PM",
                              style: AppTextStyle.gilroySemiBold(
                                w * 0.026,
                                color: const Color(0xFF793C01),
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: w * 0.051),

                  // Section Title: "Upcoming Muhurat"
                  Text(
                    "Upcoming Muhurat",
                    style: AppTextStyle.gilroySemiBold(
                      w * 0.046,
                      color: const Color(0xFF000000),
                    ),
                  ),

                  SizedBox(height: w * 0.031),

                  // List of Muhurat Cards
                  ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: filteredMuhurats.length,
                    separatorBuilder: (_, __) => SizedBox(height: w * 0.036),
                    itemBuilder: (context, index) {
                      final item = filteredMuhurats[index];
                      return _buildMuhuratCard(context, item);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMuhuratCard(BuildContext context, MuhuratItem item) {
    final double w = context.screenWidth;

    return GestureDetector(
      onTap: () {
        AnalyticsService.logEvent(
          eventName: 'muhurat_lagan_click',
          parameters: {'title': item.title},
        );
        FacebookAnalytics.logEvent(
          'muhurat_lagan_click',
          parameters: {'title': item.title},
        );
        Navigator.of(context).pushNamed(AppRoutes.MUHURAT_DETAIL_PAGE);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.44),
          border: Border.all(
            color: const Color(0xFFE4AE23),
            width: 0.5,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x408E8E8E),
              blurRadius: 13.46,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left: Thumbnail Container (43x43, #FFEDCC, radius 5px)
            Container(
              width: w * 0.11,
              height: w * 0.11,
              decoration: BoxDecoration(
                color: const Color(0xFFFFEDCC),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Image.asset(
                  item.iconAsset,
                  width: w * 0.072,
                  height: w * 0.072,
                  errorBuilder: (_, __, ___) => Icon(
                    Icons.brightness_7,
                    color: const Color(0xFFB37A0B),
                    size: w * 0.061,
                  ),
                ),
              ),
            ),

            SizedBox(width: w * 0.026),

            // Right: Content Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row 1: Title & Date (Left) + Badge (Right)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: AppTextStyle.gilroySemiBold(
                                w * 0.041,
                                color: const Color(0xFF000000),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              item.date,
                              style: AppTextStyle.gilroyMedium(
                                w * 0.031,
                                color: const Color(0xFF793C01),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: item.badgeColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          item.badgeText,
                          style: AppTextStyle.gilroyBold(
                            w * 0.026,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Row 2: Middle Info Row (Tithi | Paksha | Nakshatra)
                  Row(
                    children: [
                      Expanded(
                        child: _buildInfoItem(context, "Tithi", item.tithi),
                      ),
                      Container(
                        height: 20,
                        width: 1,
                        color: const Color(0xFFE0D5C5),
                      ),
                      Expanded(
                        child: _buildInfoItem(context, "Paksha", item.paksha),
                      ),
                      Container(
                        height: 20,
                        width: 1,
                        color: const Color(0xFFE0D5C5),
                      ),
                      Expanded(
                        child: _buildInfoItem(context, "Nakshatra", item.nakshatra),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Row 3: Dashed Border Box
                  DashedContainer(
                    color: const Color(0xFFFFF5E2),
                    strokeColor: const Color(0xFF793C01),
                    strokeWidth: 1.0,
                    gap: 2.0,
                    dashLength: 2.0,
                    borderRadius: 4.0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    child: SizedBox(
                      height: 21,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shubh Time",
                            style: AppTextStyle.gilroySemiBold(
                              w * 0.031,
                              color: const Color(0xFF000000),
                            ),
                          ),
                          Text(
                            item.shubhTime,
                            style: AppTextStyle.gilroySemiBold(
                              w * 0.031,
                              color: const Color(0xFF793C01),
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(BuildContext context, String label, String value) {
    final double w = context.screenWidth;
    return Column(
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: AppTextStyle.gilroySemiBold(
            w * 0.030,
            color: const Color(0xFFE4AE23),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          textAlign: TextAlign.center,
          style: AppTextStyle.gilroySemiBold(
            w * 0.030,
            color: const Color(0xFF000000),
          ),
        ),
      ],
    );
  }
}
