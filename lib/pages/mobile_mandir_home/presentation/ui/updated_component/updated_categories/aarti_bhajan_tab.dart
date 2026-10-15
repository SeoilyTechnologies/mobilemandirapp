import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/l10n/l10n.dart';

class HomeTabItem {
  final String title;
  final String day; // API parameter
  final String asset;

  HomeTabItem({required this.title, required this.day, required this.asset});
}

class HomeForYouTab {
  final String title;

  HomeForYouTab({required this.title});
}

String getLocalizedCategoryName(BuildContext context, String name) {
  final l10n = context.l10n;
  if (l10n == null) return name;
  switch (name.toLowerCase().trim()) {
    case 'all':
      return l10n.all;
    case 'aarti':
      return l10n.aarti;
    case 'bhajan':
      return l10n.bhajan;
    case 'aarti & bhajan':
    case 'aarti bhajan':
      return l10n.aartiBhajan;
    case 'chalisa':
      return l10n.chalisa;
    case 'katha':
      return l10n.katha;
    case 'mantra':
      return l10n.mantra;
    case 'stuti':
      return l10n.stuti;
    case 'god':
      return l10n.god;
    case 'temple':
      return l10n.temple;
    case 'sant':
      return l10n.sant;
    case 'seva':
      return l10n.seva;
    case 'for you':
      return l10n.forYou;
    case 'temples':
      return l10n.temple;
    case 'jaap':
      return l10n.jaap;
    case 'gods':
      return l10n.god;
    case 'rewards':
    case 'reward':
      return l10n.reward;
    case 'devta':
      return l10n.devta;
    case 'devi':
      return l10n.devi;
    case 'epic characters':
      return l10n.epicCharacters;
    case 'darshan':
      return l10n.darshan;
    case 'live':
      return l10n.live;
    default:
      return name;
  }
}

String getLocalizedSearchCategoryHint(BuildContext context, String categoryTitle) {
  final category = getLocalizedCategoryName(context, categoryTitle);
  final isHindi = Localizations.localeOf(context).languageCode == 'hi';
  if (isHindi) {
    return '$category खोजें';
  } else {
    return 'Search $category';
  }
}

List<String> getLocalizedTags(BuildContext context, List<String> tags) {
  final isHindi = Localizations.localeOf(context).languageCode == 'hi';
  if (!isHindi) return tags;
  return tags.map((tag) {
    switch (tag.toLowerCase().trim()) {
      case 'bhakti':
        return 'भक्ति';
      case 'naam jaap':
        return 'नाम जप';
      case 'prem':
        return 'प्रेम';
      default:
        return tag;
    }
  }).toList();
}

final List<HomeTabItem> homeTabs = [
  HomeTabItem(
    title: 'All',
    day: '',
    asset: 'assets/new_design/background/arti_icon.png',
  ),
  HomeTabItem(
    title: 'Aarti',
    day: 'aarti',
    asset: 'assets/new_design/background/arti_icon.png',
  ),
  HomeTabItem(
    title: 'Bhajan',
    day: 'bhajan',
    asset: 'assets/new_design/background/bhajan_icon.png',
  ),
  HomeTabItem(
    title: 'Chalisa',
    day: 'chalisa',
    asset: 'assets/new_design/background/chalisa_icon.png',
  ),
  HomeTabItem(
    title: 'Katha',
    day: 'katha',
    asset: 'assets/new_design/background/katha_icon.png',
  ),
  HomeTabItem(
    title: 'Mantra',
    day: 'mantra',
    asset: 'assets/new_design/background/mantra_icon.png',
  ),
  HomeTabItem(
    title: 'Stuti',
    day: 'stuti',
    asset: 'assets/new_design/background/stuti_icon.png',
  ),
];

final List<HomeForYouTab> homeForYouTabs = [
  HomeForYouTab(title: 'Aarti & Bhajan'),
  HomeForYouTab(title: 'God'),
  HomeForYouTab(title: 'Temple'),
  HomeForYouTab(title: 'Sant'),
  // HomeForYouTab(title: 'Seva'),
];

String getHomeForYouType(int index) {
  switch (index) {
    case 1:
      return 'god';
    case 2:
      return 'temple';
    case 3:
      return 'sant';
    // case 4:
    //   return 'seva';
    default:
      return 'aartibhajan';
  }
}

final List<HomeForYouTab> homeGodTabs = [
  HomeForYouTab(title: 'All'),
  HomeForYouTab(title: 'God'),
  HomeForYouTab(title: 'Devta'),
  HomeForYouTab(title: 'Devi'),
  HomeForYouTab(title: 'Epic Characters'),
];
