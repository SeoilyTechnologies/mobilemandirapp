import 'package:mandirapp/pages/wishlist/data/entity/wishlist/wishlist_response.dart';
import 'package:mandirapp/pages/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:mandirapp/pages/wishlist/presentation/bloc/wishlist_state.dart';
import 'package:mandirapp/pages/wishlist/presentation/ui/wishlist_page_large.dart';
import 'package:mandirapp/pages/wishlist/presentation/ui/wishlist_page_large_landscape.dart';
import 'package:mandirapp/pages/wishlist/presentation/ui/wishlist_page_medium.dart';
import 'package:mandirapp/pages/wishlist/presentation/ui/wishlist_page_medium_landscape.dart';
import 'package:mandirapp/pages/wishlist/presentation/ui/wishlist_page_small.dart';
import 'package:mandirapp/pages/wishlist/presentation/ui/wishlist_page_small_landscape.dart';
import '../../../../common/component/app_text_style.dart';
import '../../../../common/component/top_bar_component.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/routes/routes.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../../common/values/snack_bar.dart';
import '../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../favorites/presentation/component/favorite_item_card.dart';
import '../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../lyrics/track_model.dart';
import '../../../mobile_mandir_home/presentation/ui/updated_component/aarti_grid_item.dart';
import '../bloc/wishlist_event.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {

    /// SMALL SCREEN
    if (context.isSmallScreen) {
      return context.isPortrait
          ? WishlistPageSmall()
          : WishlistPageSmallLandscape(); // optional
    }

    /// MEDIUM SCREEN
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? WishlistPageMedium()
          : WishlistPageMediumLandscape();
    }

    /// LARGE SCREEN
    else {
      return context.isPortrait
          ? WishlistPageLarge()
          : WishlistPageLargeLandscape();
    }
  }
}