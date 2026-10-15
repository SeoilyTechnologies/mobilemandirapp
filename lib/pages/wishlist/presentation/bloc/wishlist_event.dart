import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_event.freezed.dart';

@freezed
abstract class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent.getWishlist({
    @Default('') String userId,
  }) = GetWishlist;

  /// Wishlist add / remove (toggle)
  const factory WishlistEvent.toggleWishlist({
    @Default('') String userId,
    @Default('') String itemId,
    @Default('') String itemModel,
  }) = ToggleWishlist;


  const factory WishlistEvent.toggleWishlistnew({
    required String itemId,
    required String itemModel, // e.g. aarti / chalisa / temple / mantra
  }) = ToggleWishlistAartiChalisaListNew;
}
