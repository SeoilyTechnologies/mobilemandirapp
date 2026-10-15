import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../jaappage_one/domain/usecase/jaap_usecase.dart';
import 'jaap_page_event.dart';
import 'jaap_page_state.dart';

class JaapPageBloc extends Bloc<JaapPageEvent, JaapPageState> {
  Timer? _timer;
  Timer? _syncTimer; // api sync timer
  static const int syncGap = 5;
  final JaapUsecase _jaapUsecase = getIt<JaapUsecase>();

  JaapPageBloc() : super(JaapPageState.initial()) {
    on<InitJaapPage>(_onInit);
    on<IncrementJaap>(_onIncrement);
    on<ResetJaap>(_onReset);
    on<TickJaap>(_onTick);
    on<CompleteResetJaap>(_onCompleteReset);
    on<SyncProgress>(_onSyncProgress);
    on<CreateSameJaapSession>(_onCreateJaapSession);
    on<CompleteJaap>(_onGetJaapComplete);
  }

  Future<void> _onGetJaapComplete(
    CompleteJaap event,
    Emitter<JaapPageState> emit,
  ) async {
    final result = await _jaapUsecase.getJaapCompleteApi(event.dayData);

    result.fold(
      (failure) {

        /// error handle
      },
      (response) {

        /// agar backend completed return kare
        final bool completed = response["status"] == "completed";

        if (completed) {
          _stopTimer();
        }
      },
    );
  }

  Future<void> _onCreateJaapSession(
    CreateSameJaapSession event,
    Emitter<JaapPageState> emit,
  ) async {
    emit(state.copyWith());

    final int targetCount = int.tryParse(event.jaapcpunt) ?? 108;

    final result = await _jaapUsecase.createJaapSession(
      targetCount: targetCount,
      mantraId: event.selectedmantra.isNotEmpty
          ? event.selectedmantra
          : null, // 👈 “I will do” case
    );

    result.fold(
      (failure) {
        emit(state.copyWith());
      },
      (sessionId) {
        emit(state.copyWith(sessionId: sessionId));
      },
    );
  }


  Future<void> _onInit(InitJaapPage event, Emitter<JaapPageState> emit) async
  {
    _stopTimer();
    _stopSyncTimer();

    await _jaapUsecase.flushPendingJaap(activeSessionId: event.sessionId);

    final firstRoundTotal = event.totalCount > 108 ? 108 : event.totalCount;

    emit(
      state.copyWith(
        totalCount: event.totalCount,
        roundTotal: firstRoundTotal,
        roundIndex: 1,
        sessionId: event.sessionId,
        mantraName: event.mantraName,
        //startTime: DateTime.now(),
        /// Resume support
        duration: event.duration,

        currentCount: event.currentCount,
        // startTime: event.currentCount > 0
        //     ? DateTime.now().subtract(
        //   Duration(seconds: event.duration),
        // )
        //     : DateTime.now(),
        startTime: event.createdAt.isNotEmpty
            ? DateTime.parse(event.createdAt)
            : DateTime.now(),
        /// Timer wahi se continue hoga
        // ✅ User ne resume kab kiya
        resumeTime: DateTime.now(),
        lastSyncedCount: event.currentCount,
        isCompleted: false,
      ),
    );

    _startTimer();
    _startSyncTimer(); // 👈 start 5 sec sync
  }

  void _startSyncTimer() {
    _syncTimer?.cancel();

    _syncTimer = Timer.periodic(
      const Duration(seconds: 5),
          (_) {
        if (!isClosed) {
          add(const SyncProgress());
        }
      },
    );
  }

  void _stopSyncTimer() {
    _syncTimer?.cancel();
    _syncTimer = null;
  }

  // ================= INCREMENT =================
  void _onIncrement(IncrementJaap event, Emitter<JaapPageState> emit)
  {
    if (state.isCompleted) return;

    final next = state.currentCount + 1;
    final total = state.totalCount;

    /// 🧿 ROUND CALCULATION
    final nextRoundIndex = (next ~/ 108) + 1;
    final remaining = total - (nextRoundIndex - 1) * 108;
    final nextRoundTotal = remaining > 108 ? 108 : remaining;

    /// 🔥 LOCAL COMPLETION (IMPORTANT)
    final bool locallyCompleted = next >= total;

    emit(
      state.copyWith(
        currentCount: locallyCompleted ? total : next,
        roundIndex: nextRoundIndex,
        roundTotal: nextRoundTotal,
        isCompleted: locallyCompleted,
        // ⭐ KEY FIX
        endTime: locallyCompleted ? DateTime.now() : state.endTime,
        // ✅ original start time change nahi hoga
        startTime: state.startTime,

        // ✅ resume time bhi preserve rahega
        resumeTime: state.resumeTime,
      ),
    );

    if (locallyCompleted) {
      _stopTimer();
      _stopSyncTimer();

      add(const SyncProgress(isFinal: true));

      return;
    }

    /// 🔁 PERIODIC SYNC
    if (next % syncGap == 0) {
      add(const JaapPageEvent.syncProgress());
    }
  }

  // ================= SYNC =================
  Future<void> _onSyncProgress(
    SyncProgress event,
    Emitter<JaapPageState> emit,
  ) async
  {
    final sessionId = state.sessionId;
    if (sessionId == null) return;

    //final delta = state.currentCount - state.lastSyncedCount;
   // if (delta <= 0) return;
   //  final durationSeconds = state.startTime != null
   //      ? DateTime.now().difference(state.startTime!).inSeconds
   //      : state.duration;
// ✅ state.duration hi use karo
    final durationSeconds = state.duration;

    final result = await _jaapUsecase.updateJaapProgress({
      "sessionId": sessionId,
      "currentCount": state.currentCount,
      "durationSeconds": durationSeconds,
    });

    result.fold(
      (failure) async {
        await _jaapUsecase.savePendingJaap(
          sessionId: sessionId,
          incrementBy: state.currentCount,
          durationSeconds: durationSeconds,
        );
      },
      (response) {
        final backendCompleted = response["status"] == "completed";

        emit(
          state.copyWith(
            lastSyncedCount: state.currentCount,

            /// ⭐ local OR backend completion
            isCompleted: state.isCompleted || backendCompleted,

            endTime: (state.isCompleted || backendCompleted)
                ? state.endTime ?? DateTime.now()
                : null,
          ),
        );

       // if (backendCompleted) _stopTimer();
        if (backendCompleted) {
          _stopTimer();
          _stopSyncTimer();
        }
      },
    );
  }

  // ================= RESET =================
  void _onReset(ResetJaap event, Emitter<JaapPageState> emit) {
    _stopTimer();
    _stopSyncTimer();
    emit(JaapPageState.initial());
  }

  // ================= TIMER =================
  void _onTick(TickJaap event, Emitter<JaapPageState> emit) {
    emit(state.copyWith(duration: state.duration + 1));
  }

  void _onCompleteReset(CompleteResetJaap event, Emitter<JaapPageState> emit) {
    _stopTimer();
    emit(JaapPageState.initial());
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => add(const JaapPageEvent.tick()),
    );
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Future<void> close() {
    _stopTimer();
    _stopSyncTimer();

    return super.close();
  }
}
