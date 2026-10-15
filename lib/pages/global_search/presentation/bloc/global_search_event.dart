import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_search_event.freezed.dart';

@freezed
abstract class GlobalSearchEvent with _$GlobalSearchEvent {
  const factory GlobalSearchEvent.search({
    @Default('') String query,
    String? apiQuery,
  }) = SearchQueryEvent;

  const factory GlobalSearchEvent.toggleWishlist({
    required String itemId,
    required String itemModel,
  }) = ToggleGlobalSearchWishlistEvent;

  const factory GlobalSearchEvent.clear() = ClearSearchEvent;
}
