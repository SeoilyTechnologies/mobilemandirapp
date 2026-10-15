import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../../../../mobile_mandir_home/data/entity/home_foryou/home_for_your_api_response.dart';
import '../../../../wishlist/data/entity/wishlist/wishlist_response.dart';
import '../../data/entity/goddata/god_data.dart';
import '../../data/entity/new_god_list/naam_jaap_new_god_list_response.dart';

part 'jaap_state.freezed.dart';

@freezed
abstract class JaapState with _$JaapState {
  const factory JaapState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isServerError,
    @Default('') String apiErrorMessage,
    @Default('') String selectedGodId,
    @Default('') String mantraLyrics,
    @Default('') String selectedMantraId,
    @Default('') String selectedMantraTitle,
    @Default('') String apiSuccessMessage,
    @Default(false) bool isGodSelectedByUser,
    @Default(false) bool isWishlistLoading,
    @Default('') String wishlistMessage,

    /// ✅ Jap Count
    @Default('108') String selectedJapCount,
    @Default(HomeForYouApiResponse()) HomeForYouApiResponse items,
    String? jaapSessionId,
    @Default(NaamJaapNewGodListResponse()) NaamJaapNewGodListResponse godResponse,
    @Default(AartiResponse()) AartiResponse aartiResponse,
  }) = _JaapState;

  /// Initial state
  factory JaapState.initial() => const JaapState();
}
