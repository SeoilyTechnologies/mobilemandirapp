import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../dynamic_tab/data/entity/dynamic_tab_models.dart';

part 'festival_event_state.freezed.dart';

/// Months can be browsed this many years back, up to the end of next year.
const int kFestivalYearsBack = 5;

/// "2026-10" — key of one month's data.
String festivalMonthKey(int year, int month) => '$year-${month.toString().padLeft(2, '0')}';

/// Per-month load status.
abstract final class MonthStatus {
  static const loading = 'loading';
  // Server is still fetching that month's dates from Panchang.
  static const pending = 'pending';
  static const error = 'error';
  static const ready = 'ready';
}

@freezed
abstract class FestivalEventState with _$FestivalEventState {
  const FestivalEventState._();

  const factory FestivalEventState({
    @Default(false) bool isLoading,
    @Default('') String error,
    @Default([]) List<PageTagModel> tags,
    // Every tagged page with its NEXT date (featured card + search).
    @Default([]) List<PageListItemModel> pages,
    @Default('') String selectedTag,
    @Default('') String search,
    // Month on screen; swiping moves it.
    required int viewYear,
    required int viewMonth,
    // Pages dated in each month ("2026-10", past months too), loaded on demand.
    @Default({}) Map<String, List<PageListItemModel>> monthData,
    @Default({}) Map<String, String> monthStatus,
  }) = _FestivalEventState;

  static int get minYear => DateTime.now().year - kFestivalYearsBack;
  static int get maxYear => DateTime.now().year + 1;

  bool get canGoBack => viewYear > minYear || viewMonth > 1;
  bool get canGoForward => viewYear < maxYear || viewMonth < 12;

  bool _tagOk(PageListItemModel p) => selectedTag.isEmpty || p.tags.contains(selectedTag);

  String get viewKey => festivalMonthKey(viewYear, viewMonth);

  /// Shown month's pages for the selected tag, by date. The upcoming list's dates
  /// count too, so coming months show at once even while the month is still loading.
  List<PageListItemModel> get monthPages {
    final seen = <String>{};
    final out = <PageListItemModel>[];
    for (final p in [...(monthData[viewKey] ?? const <PageListItemModel>[]), ...pages]) {
      final d = DateTime.tryParse(p.festivalDate);
      if (d == null || d.year != viewYear || d.month != viewMonth || !_tagOk(p)) continue;
      if (seen.add('${p.slug}|${p.festivalDate}')) out.add(p);
    }
    return out..sort((a, b) => a.festivalDate.compareTo(b.festivalDate));
  }

  String get viewMonthStatus => monthStatus[viewKey] ?? '';

  /// Search across all tagged pages (upcoming dates).
  List<PageListItemModel> get searchResults {
    final q = search.trim().toLowerCase();
    return pages.where((p) => _tagOk(p) && (p.title.toLowerCase().contains(q) || p.slug.contains(q))).toList();
  }

  /// Hero card: featured page with the nearest upcoming date, else the nearest upcoming page.
  PageListItemModel? get featured {
    final upcoming = pages.where((p) => _tagOk(p) && p.festivalDate.isNotEmpty && (p.daysLeft ?? -1) >= 0).toList();
    if (upcoming.isEmpty) return null;
    return upcoming.firstWhere((p) => p.isFeatured, orElse: () => upcoming.first);
  }

  /// Year dropdown: latest first.
  List<int> get years => [for (var y = maxYear; y >= minYear; y--) y];

  String tagName(String key) => tags
      .firstWhere(
        (t) => t.key == key,
        orElse: () => PageTagModel(key: key, name: key),
      )
      .name;
}
