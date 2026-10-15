import 'package:freezed_annotation/freezed_annotation.dart';

part 'jaap_event.freezed.dart';

@freezed
abstract class JaapEvent with _$JaapEvent {
  /// Fetch god list API
  const factory JaapEvent.getGodData({
    String? searchQuery, // ✅ ADD THIS
    String? selectedGodId, // ✅ ADD THIS

  }) = GetGodData;

  /// Fetch mantra API with params
  const factory JaapEvent.getMantra(
    String type,
  ) = GetMantra;

  /// Select mantra from list
  const factory JaapEvent.selectMantra(
      String mantraId,String mantraTitle,String mantra
      ) = SelectMantra;

  /// ✅ Select / Unselect Jap Count
  const factory JaapEvent.selectJapCount(
      String japCount,
      ) = SelectJapCount;

  const factory JaapEvent.toggleWishlist({
    required String itemId,
    required String itemModel,
  }) = ToggleWishlistJaapEvent;


  const factory JaapEvent.getWishlist({
    @Default('') String userId,
  }) = GetWishlistMantra;

  /// 🔍 Search God
  const factory JaapEvent.searchGod(
      String query,
      ) = SearchGod;

  const factory JaapEvent.createJaapSession() = CreateJaapSession;
}
