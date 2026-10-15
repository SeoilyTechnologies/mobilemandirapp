import 'package:flutter_html/flutter_html.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../common/component/network_image.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/utils/download_service.dart';
import '../../../../../common/utils/share_service.dart';
import '../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../lyrics/bloc/aartiplayer_state.dart';
import 'component/aarti_chalisa_html_large.dart';
import 'component/aarti_chalisa_html_large_landscape.dart';
import 'component/aarti_chalisa_html_medium.dart';
import 'component/aarti_chalisa_html_medium_landscape.dart';
import 'component/aarti_chalisa_html_small.dart';
import 'component/aarti_chalisa_html_small_landscape.dart';

import '../../../../lyrics/bloc/aartiplayer_event.dart';

import '../../../../lyrics/track_model.dart';
import '../../../../aarti_chalisa_list/data/entity/aarti_model.dart';

class AartiChalisaHtmlViewr extends StatefulWidget {
  const AartiChalisaHtmlViewr({super.key});

  @override
  State<AartiChalisaHtmlViewr> createState() => _AartiChalisaHtmlViewrState();
}

class _AartiChalisaHtmlViewrState extends State<AartiChalisaHtmlViewr> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final appLang = Localizations.localeOf(context).languageCode == 'hi' ? 'hi' : 'en';
      final bloc = context.read<AartiPlayerBloc>();
      bloc.add(ChangeLyricsLanguage(appLang));

      final Map<String, dynamic>? arguments =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      if (arguments != null) {
        final title = arguments['title'] as String? ?? '';
        final htmlText = arguments['html_text'] as String? ?? '';
        final hiText = (arguments['testLyrics_hi'] ?? arguments['hiHtmlText']) as String? ?? '';
        final enText = (arguments['testLyrics_en'] ?? arguments['enHtmlText']) as String? ?? '';
        final bannerImage = arguments['banner_image'] as String? ?? '';
        final lyricsImage = arguments['lyricsImage'] as String? ?? '';
        final youtubeVideoLink = arguments['youtubeVideoLink'] as String? ?? '';
        final isMpAvailable = (arguments['ismpavilable'] as bool?) ?? false;

        if (bloc.state.track == null) {
          bloc.add(LoadTrack(
            Track(
              title: title,
              aartiChaliaid: '',
              audioAsset: '',
              lyrics: const [],
              thumbnail: '',
              bannerImage: bannerImage,
              lyircsImage: lyricsImage,
              isMpfileAvilable: isMpAvailable,
              youtubeVideoLink: youtubeVideoLink,
              htmlText: htmlText,
              hiHtmLText: hiText,
              enHtmlText: enText,
              god: const GodModel(),
            ),
            isManual: false,
          ));
        } else {
          // If a track is already loaded / playing, NEVER call LoadTrack!
          // Calling LoadTrack would reset playback to 00:00, reload audio, and reset reward progress.
          // Instead, safely update lyrics text in the existing track.
          if (hiText.isNotEmpty || enText.isNotEmpty || htmlText.isNotEmpty) {
            bloc.add(UpdateTrackLyrics(
              hiText: hiText,
              enText: enText,
              htmlText: htmlText,
            ));
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    /// SMALL SCREEN
    if (context.isSmallScreen) {
      return context.isPortrait
          ? AartiChalisaHtmlViewrSmall()
          : AartiChalisaHtmlViewrSmallLandScape(); // optional
    }

    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? AartiChalisaHtmlViewrMedium()
          : AartiChalisaHtmlViewrMediumLandScape();
    }

    /// LARGE SCREEN  ✅ FIXED
    else {
      return context.isPortrait
          ? AartiChalisaHtmlViewrLarge()
          : AartiChalisaHtmlViewrLargeLandScape();
    }
  }
}
