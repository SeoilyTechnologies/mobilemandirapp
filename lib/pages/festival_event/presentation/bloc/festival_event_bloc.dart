import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/service_locator/setivelocator.dart';
import '../../../dynamic_tab/data/entity/dynamic_tab_models.dart';
import '../../../dynamic_tab/domain/usecase/dynamic_tab_usecase.dart';
import 'festival_event_event.dart';
import 'festival_event_state.dart';

/// "Festival & Event": admin-tagged inner pages, browsed month by month.
class FestivalEventBloc extends Bloc<FestivalEventEvent, FestivalEventState> {
  final DynamicTabUsecase _usecase = getIt<DynamicTabUsecase>();

  // A month takes the server a few seconds the first time.
  static const Duration _pendingRetry = Duration(seconds: 5);
  static const int _maxPendingRetries = 12;

  FestivalEventBloc() : super(FestivalEventState(viewYear: DateTime.now().year, viewMonth: DateTime.now().month)) {
    on<LoadFestivalEvents>(_onLoad);
    on<SelectFestivalTag>((e, emit) => emit(state.copyWith(selectedTag: e.tag)));
    on<SearchFestivalEvents>((e, emit) => emit(state.copyWith(search: e.query)));
    on<ShowFestivalMonth>((e, emit) => _goTo(e.year, e.month, emit));
    on<ShiftFestivalMonth>((e, emit) {
      final index = state.viewYear * 12 + (state.viewMonth - 1) + e.delta;
      return _goTo(index ~/ 12, index % 12 + 1, emit);
    });
  }

  Future<void> _onLoad(LoadFestivalEvents event, Emitter<FestivalEventState> emit) async {
    emit(state.copyWith(isLoading: true, error: ''));

    // Both requests run in parallel.
    final tagsFuture = _usecase.callGetPageTags();
    final pagesFuture = _usecase.callGetPages();
    final tagsResult = await tagsFuture;
    final pagesResult = await pagesFuture;
    if (isClosed) return;

    var next = state.copyWith(isLoading: false);
    // Tags are optional: without them the chips show only "All".
    tagsResult.fold((_) {}, (tags) => next = next.copyWith(tags: tags));
    pagesResult.fold(
      // Keep already-loaded pages on a failed refresh.
      (failure) => next = next.copyWith(error: next.pages.isEmpty ? failure.message : ''),
      (res) => next = next.copyWith(pages: res.data, error: ''),
    );
    // Drop a selected tag the admin has since removed.
    if (next.selectedTag.isNotEmpty && !next.tags.any((t) => t.key == next.selectedTag)) {
      next = next.copyWith(selectedTag: '');
    }
    emit(next);

    await _loadMonth(state.viewYear, state.viewMonth, emit, force: true);
  }

  Future<void> _goTo(int year, int month, Emitter<FestivalEventState> emit) async {
    final minYear = FestivalEventState.minYear;
    final maxYear = FestivalEventState.maxYear;
    if (year < minYear) (year, month) = (minYear, 1);
    if (year > maxYear) (year, month) = (maxYear, 12);
    if (year == state.viewYear && month == state.viewMonth) return;
    emit(state.copyWith(viewYear: year, viewMonth: month));
    await _loadMonth(year, month, emit);
  }

  void _setMonth(String key, Emitter<FestivalEventState> emit, {String? status, List<PageListItemModel>? pages}) {
    final statuses = {...state.monthStatus};
    // null status = forget it, so the next visit fetches again.
    if (status == null) {
      statuses.remove(key);
    } else {
      statuses[key] = status;
    }
    emit(
      state.copyWith(
        monthStatus: statuses,
        monthData: pages == null ? state.monthData : {...state.monthData, key: pages},
      ),
    );
  }

  /// Fetch one month once (?year=&month=); while the server is still resolving
  /// its dates (`pending`), retry for as long as that month stays on screen.
  Future<void> _loadMonth(int year, int month, Emitter<FestivalEventState> emit, {bool force = false}) async {
    final key = festivalMonthKey(year, month);
    final status = state.monthStatus[key];
    if (status == MonthStatus.loading) return;
    if (!force && (status == MonthStatus.ready || status == MonthStatus.pending)) return;

    _setMonth(key, emit, status: MonthStatus.loading);
    for (var attempt = 0; attempt <= _maxPendingRetries; attempt++) {
      final result = await _usecase.callGetPages(year: year, month: month);
      if (isClosed) return;

      final pending = result.fold(
        (failure) {
          _setMonth(key, emit, status: MonthStatus.error);
          return false;
        },
        (res) {
          _setMonth(key, emit, status: res.pending ? MonthStatus.pending : MonthStatus.ready, pages: res.data);
          return res.pending;
        },
      );
      if (!pending) return;
      await Future.delayed(_pendingRetry);
      if (isClosed) return;
      // Swiped away → stop; coming back fetches again.
      if (state.viewKey != key) {
        _setMonth(key, emit);
        return;
      }
    }
    // Gave up waiting; pull-to-refresh tries again.
    _setMonth(key, emit, status: MonthStatus.error);
  }
}
