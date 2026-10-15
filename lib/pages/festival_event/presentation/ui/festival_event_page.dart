import 'package:flutter/material.dart';
import 'package:mandirapp/common/analytics/analytics_services.dart';
import 'package:mandirapp/common/analytics/facebook_analytics.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/panchang_common/common_category_filter_bar.dart';
import 'package:mandirapp/common/component/panchang_common/common_module_header.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../domain/models/festival_model.dart';

class FestivalEventPage extends StatefulWidget {
  const FestivalEventPage({super.key});

  @override
  State<FestivalEventPage> createState() => _FestivalEventPageState();
}

class _FestivalEventPageState extends State<FestivalEventPage> {
  String selectedCategory = "All";
  final TextEditingController _searchController = TextEditingController();

  final List<String> categories = [
    "All",
    "Festival",
    "Vrat",
    "Jayanti",
    "Vishesh",
  ];

  final List<FestivalItem> allFestivals = const [
    FestivalItem(
      id: "1",
      title: "Krishna Janmashtami",
      date: "27 August, 2026 - Thursday",
      badgeText: "Jayanti",
      badgeColor: Color(0xFF2E7D32),
      description:
          "Celebrating the birth of Lord Krishna, with special midnight worship and puja at 12 AM.",
      daysLeftText: "23 Days Left",
      category: "Jayanti",
      iconAsset: "assets/categories_images/cat_1_aa_1.png",
    ),
    FestivalItem(
      id: "2",
      title: "Ganesh Chaturthi",
      date: "14 December, 2026 - Monday",
      badgeText: "Festival",
      badgeColor: Color(0xFF793C01),
      description:
          "Celebrate the joyous welcome of Lord Ganesha into homes, marking the beginning of a ten-day celebration of devotion",
      daysLeftText: "41 Days Left",
      category: "Festival",
      iconAsset: "assets/categories_images/cat_2_aa_1.png",
    ),
    FestivalItem(
      id: "3",
      title: "Karva Chauth",
      date: "4 November, 2026 - Wednesday",
      badgeText: "Vrat",
      badgeColor: Color(0xFF6B3889),
      description:
          "A day of prayer and fasting observed by married women, seeking their husband's long life, concluded with the sighting of the moon.",
      daysLeftText: "92 Days Left",
      category: "Vrat",
      iconAsset: "assets/categories_images/cat_3_aa_1.png",
    ),
    FestivalItem(
      id: "4",
      title: "Krishna Janmashtami",
      date: "27 August, 2026 - Thursday",
      badgeText: "Jayanti",
      badgeColor: Color(0xFF2E7D32),
      description:
          "Celebrating the birth of Lord Krishna, with special midnight worship and puja at 12 AM.",
      daysLeftText: "23 Days Left",
      category: "Jayanti",
      iconAsset: "assets/categories_images/cat_1_aa_1.png",
    ),
    FestivalItem(
      id: "5",
      title: "Ganesh Chaturthi",
      date: "14 December, 2026 - Monday",
      badgeText: "Festival",
      badgeColor: Color(0xFF793C01),
      description:
          "Celebrate the joyous welcome of Lord Ganesha into homes, marking the beginning of a ten-day celebration of devotion",
      daysLeftText: "41 Days Left",
      category: "Festival",
      iconAsset: "assets/categories_images/cat_2_aa_1.png",
    ),
    FestivalItem(
      id: "6",
      title: "Karva Chauth",
      date: "4 November, 2026 - Wednesday",
      badgeText: "Vrat",
      badgeColor: Color(0xFF6B3889),
      description:
          "A day of prayer and fasting observed by married women, seeking their husband's long life, concluded with the sighting of the moon.",
      daysLeftText: "92 Days Left",
      category: "Vrat",
      iconAsset: "assets/categories_images/cat_3_aa_1.png",
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<FestivalItem> get filteredFestivals {
    return allFestivals.where((item) {
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
              title: "Festival & Event",
              subtitle: "All festivals, vrats and jayantis in one place",
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

                  // Featured Maroon Card ("Diwali - Festival of Lights")
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
                                    "The biggest festival of the year",
                                    style: AppTextStyle.gilroyMedium(
                                      w * 0.031,
                                      color: const Color(0xFFE4AE23),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "Diwali - Festival of Lights",
                                    style: AppTextStyle.gilroySemiBold(
                                      w * 0.033,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Days Left Badge
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(AppRoutes.FESTIVAL_DETAIL_PAGE_NEW);
                              },
                              child: Container(
                                width: w * 0.23,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE4AE23),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                  child: Text(
                                    "96 Days Left",
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
                        const SizedBox(height: 10),
                        // Date Pill Box
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFECD9),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Text(
                            "8 November, 2026 - Sunday",
                            style: AppTextStyle.gilroySemiBold(
                              w * 0.026,
                              color: const Color(0xFF793C01),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: w * 0.051),

                  // Section Title: "Upcoming Festivals"
                  Text(
                    "Upcoming Festivals",
                    style: AppTextStyle.gilroySemiBold(
                      w * 0.046,
                      color: const Color(0xFF000000),
                    ),
                  ),

                  SizedBox(height: w * 0.031),

                  // List of Festival Cards
                  ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: filteredFestivals.length,
                    separatorBuilder: (_, __) => SizedBox(height: w * 0.036),
                    itemBuilder: (context, index) {
                      final item = filteredFestivals[index];
                      return _buildFestivalCard(context, item);
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

  Widget _buildFestivalCard(BuildContext context, FestivalItem item) {
    final double w = context.screenWidth;

    return GestureDetector(
      onTap: () {
        AnalyticsService.logEvent(
          eventName: 'festival_event_click',
          parameters: {'title': item.title},
        );
        FacebookAnalytics.logEvent(
          'festival_event_click',
          parameters: {'title': item.title},
        );
        Navigator.of(context).pushNamed(AppRoutes.FESTIVAL_DETAIL_PAGE_NEW);
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

                  const SizedBox(height: 8),

                  // Description Text
                  Text(
                    item.description,
                    style: AppTextStyle.gilroyRegular(
                      w * 0.031,
                      color: const Color(0xFF555555),
                      height: 1.35,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Days Left Pill Box
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFECD9),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Text(
                      item.daysLeftText,
                      style: AppTextStyle.gilroySemiBold(
                        w * 0.026,
                        color: const Color(0xFF793C01),
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
}
