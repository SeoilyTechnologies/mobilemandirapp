import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../common/deep_link/deep_link_service.dart';
import '../../../../common/routes/routes.dart';
import '../../../../common/utils/share_helper.dart';
import '../../../naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../../naamjaap/jaappage_one/presentation/bloc/jaap_event.dart' hide GetGodData;
import '../../data/entity/dynamic_tab_models.dart';

/// Opens the screen an admin attached to a banner / card.
/// Unknown or incomplete actions do nothing (never throw).
class DynamicActionRouter {
  DynamicActionRouter._();

  static bool isTappable(DynamicAction a) {
    switch (a.type) {
      case 'NONE':
        return false;
      case 'EXTERNAL_URL':
        return a.url.trim().isNotEmpty;
      case 'PAGE':
      case 'GOD':
      case 'TEMPLE':
      case 'AARTI':
      case 'DEEPLINK':
        return a.value.trim().isNotEmpty;
      default:
        return true;
    }
  }

  static Future<void> open(
    BuildContext context,
    DynamicAction action, {
    String shareText = '',
  }) async {
    final value = action.value.trim();
    try {
      switch (action.type) {
        case 'PAGE':
          if (value.isEmpty) return;
          await Navigator.pushNamed(context, AppRoutes.DYNAMIC_PAGE, arguments: {'slug': value});
          return;

        case 'GOD':
          if (value.isEmpty) return;
          // Accepts an id, "slug" or "category/slug" (god/shiv-ji, devi/lakshmi-mata).
          await Navigator.pushNamed(
            context,
            AppRoutes.GOD_DETAIL_PAGE,
            arguments: {'godId': value},
          );
          return;

        case 'TEMPLE':
          if (value.isEmpty) return;
          await Navigator.pushNamed(
            context,
            AppRoutes.TEMPLE_DETAIL_PAGE,
            arguments: {'templeId': value},
          );
          return;

        case 'AARTI':
          if (value.isEmpty) return;
          await DeepLinkService.instance.playAartiBySlug(context, value);
          return;

        case 'JAAP':
          if (value.isEmpty) {
            await Navigator.pushNamed(context, AppRoutes.JAAP_PAGE);
            return;
          }
          final jaapBloc = BlocProvider.of<JaapBloc>(context);
          jaapBloc.add(JaapEvent.getGodData(selectedGodId: value));
          jaapBloc.add(JaapEvent.selectMantra("", "", ""));
          await Navigator.pushNamed(
            context,
            AppRoutes.JAAP_MALA_ONE_PAGE,
            arguments: {"godId": value, "fromNotification": false},
          );
          return;

        case 'SEVA':
          await DeepLinkService.instance.handleDeepLink(
            Uri.parse(value.isEmpty ? '/go/seva' : '/go/seva/${Uri.encodeComponent(value)}'),
          );
          return;

        case 'FESTIVAL':
          // No festival picked → the tagged "Festival & Event" list.
          if (value.isEmpty) {
            await Navigator.pushNamed(context, AppRoutes.FESTIVAL_EVENT_PAGE);
            return;
          }
          await Navigator.pushNamed(context, AppRoutes.NEW_CALENDAR_PAGE);
          return;
        case 'PANCHANG':
          await Navigator.pushNamed(context, AppRoutes.NEW_CALENDAR_PAGE);
          return;

        case 'DEEPLINK':
          if (value.isEmpty) return;
          final uri = Uri.tryParse(value.startsWith('/') || value.startsWith('http') ? value : '/go/$value');
          if (uri != null) await DeepLinkService.instance.handleDeepLink(uri);
          return;

        case 'EXTERNAL_URL':
          final uri = Uri.tryParse(action.url.trim());
          if (uri == null || !(uri.scheme == 'https' || uri.scheme == 'http')) return;
          await launchUrl(uri, mode: LaunchMode.externalApplication);
          return;

        case 'SHARE':
          final text = value.isNotEmpty ? value : shareText;
          if (text.isEmpty) return;
          await ShareHelper.shareText(text: text);
          return;

        default:
          return;
      }
    } catch (e) {
      debugPrint('DynamicActionRouter: ${action.type} failed: $e');
    }
  }
}
