import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/values/snack_bar.dart';
import '../../../../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_state.dart';
import '../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../../auth/signin/presentation/ui/component/login_small.dart';
import '../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../lyrics/bloc/aartiplayer_state.dart';
import '../../../../lyrics/lyricrepositery/lyric_line.dart';
import '../../../../lyrics/lyricrepositery/lyrics_repositery.dart';
import '../../../../lyrics/track_model.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../mobile_mandir_home/presentation/ui/updated_component/todayaarti/aarti_tile.dart';
import '../../../lyrics_timex.dart';
import 'component/aarti_music_card.dart';
import 'component/aarti_player_page_larger.dart';
import 'component/aarti_player_page_larger_landscape.dart';
import 'component/aarti_player_page_medium.dart';
import 'component/aarti_player_page_medium_landscape.dart';
import 'component/aarti_player_page_small.dart';
import 'component/aarti_player_page_small_landscape.dart';

class AartiPlayerPage extends StatelessWidget {
  AartiPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Link MobileHomeBloc dynamically so the playback queue can fetch and listen to recommendation updates
    final mobileHomeBloc = BlocProvider.of<MobileHomeBloc>(context);
    BlocProvider.of<AartiPlayerBloc>(context).setMobileHomeBloc(mobileHomeBloc);

    /// SMALL SCREEN
    if (context.isSmallScreen) {
      return context.isPortrait
          ? AartiPlayerPageSmall()
          : AartiPlayerPageSmallLandscape(); // optional
    }

    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? AartiPlayerPageMedium()
          : AartiPlayerPageMediumLandscape();
    }

    /// LARGE SCREEN  ✅ FIXED
    else {
      return context.isPortrait
          ? AartiPlayerPageLarger()
          : AartiPlayerPageLargerLandscape();
    }
  }
}
