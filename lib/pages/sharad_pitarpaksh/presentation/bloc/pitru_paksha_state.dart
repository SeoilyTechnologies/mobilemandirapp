import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/pitru_paksha_response.dart';

part 'pitru_paksha_state.freezed.dart';

@freezed
abstract class PitruPakshaState with _$PitruPakshaState {
  const factory PitruPakshaState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
    PitruPakshaResponse? response,
    @Default('') String searchQuery,
    DateTime? selectedDateFilter,
    @Default(2026) int selectedYear,
    @Default(28.6139) double latitude,
    @Default(77.209) double longitude,
    @Default('en') String language,
  }) = _PitruPakshaState;

  factory PitruPakshaState.initial() => const PitruPakshaState();
}

extension PitruPakshaStateX on PitruPakshaState {
  List<PitruItem> get filteredItems {
    final all = response?.data?.items ?? [];
    return all.where((item) {
      final q = searchQuery.trim().toLowerCase();
      final matchesSearch = q.isEmpty ||
          item.title.toLowerCase().contains(q) ||
          item.dateDisplay.toLowerCase().contains(q) ||
          item.categoryLabel.toLowerCase().contains(q) ||
          item.shortDescription.toLowerCase().contains(q);

      bool matchesDate = true;
      if (selectedDateFilter != null) {
        try {
          final itemDate = DateTime.parse(item.date);
          matchesDate = itemDate.year == selectedDateFilter!.year &&
              itemDate.month == selectedDateFilter!.month &&
              itemDate.day == selectedDateFilter!.day;
        } catch (_) {
          matchesDate = false;
        }
      }

      return matchesSearch && matchesDate;
    }).toList();
  }
}
