import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/utils/auth_helper.dart';
import '../../../../common/utils/utils.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';
import '../../../mobile_mandir_home/presentation/ui/updated_component/updated_categories/aarti_bhajan_tab.dart';
import '../../data/entity/dynamic_tab_models.dart';
import '../../home_tab_registry.dart';
import 'dynamic_page_view.dart';
import 'widgets/dynamic_image.dart';
import 'widgets/dynamic_style.dart';

/// Glue between the home screen and admin-configured tabs.
class HomeTabUi {
  HomeTabUi._();

  /// Server title, or the app's own translation for built-in tabs.
  static String title(BuildContext context, HomeTabModel tab) {
    if (tab.title.trim().isNotEmpty) return tab.title.trim();
    return getLocalizedCategoryName(context, HomeTabKeys.legacyTitle(tab.key));
  }

  /// White tab icon: admin SVG/PNG, else the built-in asset.
  static Widget icon(HomeTabModel tab, double size) {
    final local = Image.asset(
      HomeTabKeys.localIcon(tab.key),
      width: size,
      height: size,
      color: Colors.white,
    );
    if (tab.icon == null || tab.icon!.url.isEmpty) {
      return tab.isDynamic ? SizedBox(width: size, height: size) : local;
    }
    return DynamicImage.media(
      tab.icon,
      width: size,
      height: size,
      fit: BoxFit.contain,
      // Keep built-in look (white) for SVG icons; PNG/GIF icons show as uploaded.
      color: tab.icon!.format == 'svg' ? Colors.white : null,
      // Tab icons stay native (no WebView) even if the SVG is animated.
      animate: false,
      fallback: tab.isDynamic ? SizedBox(width: size, height: size) : local,
    );
  }

  /// Tab bar tap: select the tab and trigger the data each built-in tab needs.
  static void onTap(BuildContext context, HomeTabModel tab, int index) {
    final needsLogin = tab.requiresLogin || HomeTabKeys.loginRequired.contains(tab.key);
    if (needsLogin && context.requireLogin()) return;

    final bloc = context.read<MobileHomeBloc>();
    bloc.add(MobileHomeEvent.selectTopTab(index));

    switch (tab.key) {
      case HomeTabKeys.forYou:
        bloc.add(MobileHomeEvent.selectHomeForYouTab(index: 0));
        bloc.add(ResetSearchForYou());
        bloc.add(const MobileHomeEvent.getHomeForYouData(type: "aartibhajan"));
        break;
      case HomeTabKeys.temples:
        bloc.add(ResetTempleSearchForYou());
        bloc.add(const GetHomeTempleDataList(false));
        break;
      case HomeTabKeys.god:
        bloc.add(ResetGodSearchHome());
        bloc.add(const GetPopularGodList(false));
        bloc.add(const MobileHomeEvent.getNewGodData(false));
        break;
      case HomeTabKeys.reward:
        bloc.add(const MobileHomeEvent.getRewardOverView());
        break;
    }
  }

  /// Header background: admin gradient if set, otherwise the built-in image.
  static BoxDecoration headerDecoration(MobileHomeState state) {
    final tab = state.currentTab;
    if (DynamicPalette.hasGradient(tab.theme)) {
      return BoxDecoration(gradient: DynamicPalette.of(tab.theme).headerGradient);
    }
    final legacy = state.currentLegacyIndex;
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(Utils.getHeaderBackground(legacy < 0 ? 0 : legacy)),
        fit: BoxFit.fill,
      ),
    );
  }

  /// Tab body: built-in screen for native tabs, section page for dynamic ones.
  static Widget body(MobileHomeState state, Widget Function(int legacyIndex) nativeBody) {
    final tab = state.currentTab;
    if (tab.isDynamic) {
      return DynamicPageView(key: ValueKey(tab.pageSlug), slug: tab.pageSlug, theme: tab.theme);
    }
    return nativeBody(HomeTabKeys.legacyIndexOf(tab.key));
  }
}
