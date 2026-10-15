import 'package:bloc/bloc.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../data/entity/notification_api_response.dart';
import '../../domain/usecase/get_notifications_usecase.dart';
import '../../domain/usecase/mark_notification_read_usecase.dart';
import 'notification_event.dart';
import 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetNotificationsUseCase _getNotificationsUseCase =
      getIt<GetNotificationsUseCase>();
  final MarkNotificationReadUseCase _markNotificationReadUseCase =
      getIt<MarkNotificationReadUseCase>();

  static const int _limit = 20;

  NotificationBloc() : super(NotificationState.initial()) {
    on<FetchNotifications>(_onFetch);
    on<FetchMoreNotifications>(_onFetchMore);
    on<MarkAsRead>(_onMarkAsRead);
  }

  // -------------------------------------------------------------------------
  // Fetch (initial / refresh)
  // -------------------------------------------------------------------------
  Future<void> _onFetch(
    FetchNotifications event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: !event.isRefresh,
      errorMessage: '',
      hasReachedMax: false,
      currentPage: 1,
    ));

    final result = await _getNotificationsUseCase(page: 1, limit: _limit);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: failure.message,
        ));
      },
      (response) {
        final data = response.data;
        final items = data?.items ?? [];
        final pagination = data?.pagination;
        final totalPages = pagination?.totalPages ?? 1;
        final totalItems = pagination?.total ?? items.length;

        emit(state.copyWith(
          isLoading: false,
          items: items,
          currentPage: 1,
          totalPages: totalPages,
          totalItems: totalItems,
          hasReachedMax: 1 >= totalPages,
          errorMessage: '',
        ));
      },
    );
  }

  // -------------------------------------------------------------------------
  // Fetch More (pagination)
  // -------------------------------------------------------------------------
  Future<void> _onFetchMore(
    FetchMoreNotifications event,
    Emitter<NotificationState> emit,
  ) async {
    if (state.isMoreLoading || state.hasReachedMax) return;

    emit(state.copyWith(isMoreLoading: true, errorMessage: ''));

    final nextPage = state.currentPage + 1;
    final result =
        await _getNotificationsUseCase(page: nextPage, limit: _limit);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isMoreLoading: false,
          errorMessage: failure.message,
        ));
      },
      (response) {
        final data = response.data;
        final newItems = data?.items ?? [];
        final pagination = data?.pagination;
        final totalPages = pagination?.totalPages ?? state.totalPages;
        final totalItems = pagination?.total ?? state.totalItems;

        emit(state.copyWith(
          isMoreLoading: false,
          items: List.of(state.items)..addAll(newItems),
          currentPage: nextPage,
          totalPages: totalPages,
          totalItems: totalItems,
          hasReachedMax: nextPage >= totalPages,
          errorMessage: '',
        ));
      },
    );
  }

  // -------------------------------------------------------------------------
  // Mark As Read
  // Strategy: Optimistic update first (instant UI), then sync with server.
  // If the server call fails we silently roll back the optimistic change.
  // -------------------------------------------------------------------------
  Future<void> _onMarkAsRead(
    MarkAsRead event,
    Emitter<NotificationState> emit,
  ) async {
    final index = event.index;
    final items = List<NotificationItem>.of(state.items);

    // Guard: already read or index out of range — do nothing.
    if (index < 0 || index >= items.length) return;
    if (items[index].isRead) return;

    // ── 1. Optimistic update ─────────────────────────────────────────────
    final original = items[index];
    items[index] = original.copyWith(isRead: true);
    emit(state.copyWith(items: items));

    // ── 2. Background API call ───────────────────────────────────────────
    final result = await _markNotificationReadUseCase(
      notificationId: event.notificationId,
    );

    result.fold(
      (failure) {
        // Rollback: restore original unread state silently.
        final rollbackItems = List<NotificationItem>.of(state.items);
        if (index < rollbackItems.length) {
          rollbackItems[index] = original;
          emit(state.copyWith(items: rollbackItems));
        }
      },
      (_) {
        // Success — optimistic state already correct, nothing to do.
      },
    );
  }
}
