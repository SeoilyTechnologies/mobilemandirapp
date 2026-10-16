import '../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';
import 'data/entity/dynamic_tab_models.dart';

/// Keys of the built-in home tabs, in the app's original order.
///
/// `MobileHomeEvent.changeTopTab(n)` keeps its original meaning ("n-th built-in
/// tab": 3 = god, 6 = reward…) so existing callers keep working after an admin
/// reorders, hides or inserts tabs.
class HomeTabKeys {
  HomeTabKeys._();

  static const String all = 'all';
  static const String forYou = 'for_you';
  static const String temples = 'temples';
  static const String god = 'god';
  static const String seva = 'seva';
  static const String sant = 'sant';
  static const String reward = 'reward';

  static const List<String> legacyOrder = [
    all,
    forYou,
    temples,
    god,
    seva,
    sant,
    reward,
  ];

  /// Built-in tabs that always need a logged-in user.
  static const Set<String> loginRequired = {forYou, reward};

  static String fromLegacyIndex(int index) =>
      index >= 0 && index < legacyOrder.length ? legacyOrder[index] : all;

  static int legacyIndexOf(String key) => legacyOrder.indexOf(key);

  static bool isNative(String key) => legacyOrder.contains(key);

  /// English name passed to `getLocalizedCategoryName` (built-in translations).
  static String legacyTitle(String key) {
    switch (key) {
      case forYou:
        return 'For You';
      case temples:
        return 'Temples';
      case god:
        return 'God';
      case seva:
        return 'Seva';
      case sant:
        return 'Sant';
      case reward:
        return 'Reward';
      default:
        return 'All';
    }
  }

  static String localIcon(String key) {
    switch (key) {
      case forYou:
        return 'assets/icons/foryou.png';
      case temples:
        return 'assets/icons/temple_icon.png';
      case god:
        return 'assets/icons/god_iconn.png';
      case seva:
        return 'assets/icons/sewa_icon.png';
      case sant:
        return 'assets/icons/sant_top_tab.png';
      case reward:
        return 'assets/icons/reward_top_tab.png';
      default:
        return 'assets/icons/all.png';
    }
  }

  /// Built-in tabs exactly as the app shows them without server config.
  static final List<HomeTabModel> nativeDefaults = List.unmodifiable(
    legacyOrder.map(
      (key) => HomeTabModel(
        key: key,
        kind: 'NATIVE',
        requiresLogin: loginRequired.contains(key),
      ),
    ),
  );

  /// Keep only tabs the app can render; never returns an empty list.
  static List<HomeTabModel> sanitize(List<HomeTabModel> tabs) {
    final seen = <String>{};
    final valid = tabs.where((t) {
      if (t.key.isEmpty || !seen.add(t.key)) return false;
      if (t.isDynamic) return t.pageSlug.isNotEmpty;
      return isNative(t.key);
    }).toList();
    return valid.isEmpty ? nativeDefaults : valid;
  }
}

extension HomeTabsStateX on MobileHomeState {
  /// Tabs shown in the tab bar (server config, or the built-in defaults).
  List<HomeTabModel> get tabs =>
      homeTabs.isEmpty ? HomeTabKeys.nativeDefaults : homeTabs;

  HomeTabModel get currentTab {
    final list = tabs;
    return list[topTabIndex.clamp(0, list.length - 1)];
  }

  /// Index of the built-in screen for the current tab, or -1 for a dynamic tab.
  int get currentLegacyIndex =>
      currentTab.isDynamic ? -1 : HomeTabKeys.legacyIndexOf(currentTab.key);
}
