import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../common/component/top_bar_component.dart';
import 'component/favorite_filter_chip.dart';
import 'component/favorite_item_card.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  int selectedIndex = 1;

  final List<String> categories = [
    "All",
    "Aarti",
    "Mantra",
    "Chalisa",
    "Shloka",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F5F7),
      body: SafeArea(
        child: Column(
          children: [
          //  _topBar(),
            TopBarComponent(
              title: context.l10n.myFavorites,
              onBackTap: () {
Navigator.pop(context);
              },
              showAction: false,
              actionIcon: Icons.favorite,
              onActionTap: () {
              },
            ),

            _headerCard(context),

            // Category Chips
          Center(child:   SizedBox(
            height: 45,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(

                  child: FavoriteFilterChip(
                    label: categories[index],
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() => selectedIndex = index);
                    },
                  ),
                );
              },
            ),
          ),),

            const SizedBox(height: 10),

            // List of items
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  FavoriteItemCard(
                    imagePath: "🔱",
                    title: "Shiv Ji Ki Aarti",
                    subtitle: "Om Jai Shiv Omkara",
                    plays: "1.2M",
                    duration: "3:45",
                  ),
                  FavoriteItemCard(
                    imagePath: "🐘",
                    title: "Ganesh Aarti",
                    subtitle: "Jai Ganesh Deva",
                    plays: "980K",
                    duration: "4:12",
                  ),
                  FavoriteItemCard(
                    imagePath: "🌸",
                    title: "Lakshmi Aarti",
                    subtitle: "Om Jai Lakshmi Mata",
                    plays: "850K",
                    duration: "3:30",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////
  // TOP NAV BAR
  ////////////////////////////////////////////////////////////////////////////
  Widget _topBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          const Icon(Icons.arrow_back, size: 26),
          const SizedBox(width: 12),
          Text(context.l10n.myFavorites,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(Icons.favorite, color: Colors.red, size: 26),
        ],
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////
  // TOP GRADIENT HEADER
  ////////////////////////////////////////////////////////////////////////////
  Widget _headerCard(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffdd3434), Color(0xffD6388F)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                "3",
                style: AppTextStyle.bold(context.screenWidth*0.054,color: Colors.white),
              ),
              SizedBox(height: 4),
              Text(
                context.l10n.favoriteItems,
                style: AppTextStyle.bold(context.screenWidth*0.038,color: Colors.white54),
              ),
              SizedBox(height: 6),
              Text(
                "Your collection of devotional content",
                style: AppTextStyle.bold(context.screenWidth*0.038,color: Colors.white54),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white24,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.favorite, color: Colors.white, size: 34),
          ),
        ],
      ),
    );
  }
}
