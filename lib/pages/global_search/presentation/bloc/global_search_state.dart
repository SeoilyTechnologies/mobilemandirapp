import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../mobile_mandir_home/data/global_search/gloable_search_api_response.dart';

part 'global_search_state.freezed.dart';

@freezed
abstract class GlobalSearchState with _$GlobalSearchState {
  const factory GlobalSearchState({
    @Default(false) bool isLoading,
    @Default(false) bool isWishlistLoading,
    @Default('') String query,
    @Default(GloableSearchApiResponse())
    GloableSearchApiResponse globalSearchResponse,
    @Default('') String errorMessage,
  }) = _GlobalSearchState;

  factory GlobalSearchState.initial() => const GlobalSearchState();
}
