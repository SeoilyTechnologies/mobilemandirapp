import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/service_locator/setivelocator.dart';
import '../../../jaappage_one/domain/usecase/jaap_usecase.dart';
import 'jaap_history_state.dart';

part 'jaap_history_event.dart';

part 'jaap_history_bloc.freezed.dart';   // ⭐ IMPORTANT

class JaapHistoryBloc extends Bloc<JaapHistoryEvent, JaapHistoryState> {
  final JaapUsecase _jaapUsecase = getIt<JaapUsecase>();
  JaapHistoryBloc() : super(JaapHistoryState.initial()) {
    on<LoadHistory>(_loadHistory);
    on<ChangeStartDate>(_changeStartDate);
    on<ChangeEndDate>(_changeEndDate);
    on<ApplyFilter>(_applyFilter);
    on<ClearFilter>(_clearFilter);
    on<Retry>(_retry);
  }

  String _apiDateFormat(DateTime date) {
    return "${date.year.toString().padLeft(4, '0')}-"
        "${date.month.toString().padLeft(2, '0')}-"
        "${date.day.toString().padLeft(2, '0')}";
  }

  /// ================= LOAD HISTORY =================
  Future<void> _loadHistory(
      LoadHistory event,
      Emitter<JaapHistoryState> emit,
      ) async {
    /// 👉 Agar event me date nahi aayi to state wali use hogi
    final startDate = event.startDate ?? state.startDate;
    final endDate = event.endDate ?? state.endDate;

    emit(state.copyWith(
      isLoading: true,
      isServerError: false,
      apiErrorMessage: '',
    ));

    try {
      final body = {
        if (startDate != null) "startDate": _apiDateFormat(startDate),
        if (endDate != null) "endDate": _apiDateFormat(endDate),
      };


      final result = await _jaapUsecase.getJaapHistoryApiCall(body);

      result.fold(
        /// ❌ ERROR
            (failure) {
          emit(state.copyWith(
            isLoading: false,
            isServerError: true,
            apiErrorMessage: failure.message,
          ));
        },

        /// ✅ SUCCESS
            (response) {
          emit(state.copyWith(
            isLoading: false,
            isSuccess: true,
            sessions: response.data,
            totalCount: response.summary.totalCount,
            totalSessions: response.summary.totalSessions,
            startDate: startDate,
            endDate: endDate,
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isServerError: true,
        apiErrorMessage: e.toString(),
      ));
    }
  }



  /// ================= CHANGE START DATE =================
  void _changeStartDate(
      ChangeStartDate event,
      Emitter<JaapHistoryState> emit,
      ) {
    emit(state.copyWith(startDate: event.startDate));
  }

  /// ================= CHANGE END DATE =================
  void _changeEndDate(
      ChangeEndDate event,
      Emitter<JaapHistoryState> emit,
      ) {
    emit(state.copyWith(endDate: event.endDate));
  }

  /// ================= APPLY FILTER =================
  void _applyFilter(
      ApplyFilter event,
      Emitter<JaapHistoryState> emit,
      ) {
    add(LoadHistory(
      startDate: state.startDate,
      endDate: state.endDate,
    ));
  }

  /// ================= CLEAR FILTER =================
  void _clearFilter(
      ClearFilter event,
      Emitter<JaapHistoryState> emit,
      ) {
    emit(state.copyWith(startDate: null, endDate: null));
    add(const LoadHistory());
  }

  /// ================= RETRY =================
  void _retry(
      Retry event,
      Emitter<JaapHistoryState> emit,
      ) {
    add(LoadHistory(
      startDate: state.startDate,
      endDate: state.endDate,
    ));
  }

  /// =====================================================
  /// 🔹 COMMON STATE BUILDERS (Clean Architecture Style)
  /// =====================================================

  JaapHistoryState _loadingState() {
    return state.copyWith(
      isLoading: true,
      isServerError: false,
      apiErrorMessage: '',
    );
  }

  JaapHistoryState _successState({
    required List sessions,
    required int totalCount,
    required int totalSessions,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return state.copyWith(
      isLoading: false,
      isSuccess: true,
      sessions: sessions.cast(),
      totalCount: totalCount,
      totalSessions: totalSessions,
      startDate: startDate,
      endDate: endDate,
    );
  }

  JaapHistoryState _errorState(String message) {
    return state.copyWith(
      isLoading: false,
      isServerError: true,
      apiErrorMessage: message,
    );
  }
}
