import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../god_detail/data/entity/temple_detail/temple_detail_api_response.dart';

part 'temple_detail_new_state.freezed.dart';

@freezed
abstract class TempleDetailNewState with _$TempleDetailNewState {
  const factory TempleDetailNewState({
    @Default(false) bool isLoading,
    @Default('') String apiError,
    @Default('') String apiSuccess,

    @Default(TempleDetailApiResponse())
    TempleDetailApiResponse templeDetailApiResponse,

    @Default(false) bool isWishlistLoading,
    @Default('') String apiErrorMessage,
    @Default('') String wishlistMessage,

  }) = _TempleDetailNewState;

  factory TempleDetailNewState.initial() =>
      const TempleDetailNewState();
}