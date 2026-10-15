import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/wishlist/wishlist_response.dart';

part 'wishlist_state.freezed.dart';

@freezed
abstract class WishlistState with _$WishlistState {
  const factory WishlistState({
    /// UI State
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default('') String apiErrorMessage,
    @Default('') String apiSuccessMessage,
    @Default(false) bool isWishlistLoading,
    @Default('') String wishlistMessage,
    /// API Data
    @Default(0) int count,
    @Default(WishlistResponse()) WishlistResponse items,

  }) = _WishlistState;

  factory WishlistState.initial() =>  WishlistState();

}
