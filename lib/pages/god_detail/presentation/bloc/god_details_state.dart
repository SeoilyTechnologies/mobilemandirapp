import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/god_detail_api_response.dart';

part 'god_details_state.freezed.dart';

@freezed
abstract class GodDetailsState with _$GodDetailsState {
  const factory GodDetailsState({
    @Default(false) bool isLoading,
    @Default('') String apiError,
    @Default('') String apiSuccess,
    @Default(GodDetailApiResponse())
    GodDetailApiResponse godDetailApiResponse,

    @Default(false) bool isWishlistLoading,
    @Default('') String apiErrorMessage,
    @Default('') String wishlistMessage,

  }) = _GodDetailsState;

  factory GodDetailsState.initial() => const GodDetailsState();
}