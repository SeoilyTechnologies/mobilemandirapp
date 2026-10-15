import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/seva_history_response.dart';

part 'seva_history_state.freezed.dart';

@freezed
abstract class SevaHistoryState with _$SevaHistoryState {
  const factory SevaHistoryState.initial() = _Initial;
  const factory SevaHistoryState.loading() = _Loading;
  const factory SevaHistoryState.loaded({
    required SevaHistoryResponse response,
    required List<SevaHistoryCard> accumulatedSevaList,
    @Default('all') String currentStatus,
    @Default(false) bool isFiltering,
    @Default(false) bool isLoadingMore,
  }) = SevaHistoryLoaded;
  const factory SevaHistoryState.error(String message) = _Error;
}
