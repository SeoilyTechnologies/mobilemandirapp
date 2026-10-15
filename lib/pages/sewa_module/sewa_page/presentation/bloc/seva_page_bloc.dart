import 'package:bloc/bloc.dart';
import 'package:mandirapp/common/service_locator/setivelocator.dart';

import '../../../../../common/analytics/facebook_analytics.dart';
import '../../../../../common/analytics/facebook_events.dart';
import '../../data/entity/schedule_preview/schedule_preview_api_response.dart';
import '../../data/entity/sewa_page/sewa_page_api_response.dart';
import '../../domain/usecase/sewa_page_usecase.dart';
import 'seva_page_event.dart';
import 'seva_page_state.dart';

class SevaPageBloc extends Bloc<SevaPageEvent, SevaPageState> {
  final SewaPageUsecase _sewaPageUsecase = getIt<SewaPageUsecase>();

  SevaPageBloc() : super(SevaPageState.initial()) {
    on<GetSewaPriceList>(_getSewaPriceList);
    on<SelectPrice>(_selectPrice);
    on<SelectPaymentType>(_onSelectPaymentType);
    on<SelectOfferingItem>(_onSelectOfferingItem);
    on<SelectFrequency>(_onSelectFrequency);
    on<ToggleDay>(_onToggleDay);
    on<ToggleTithi>(_onToggleTithi);
    on<FetchSchedulePreview>(_onFetchSchedulePreview);
  }

  Future<void> _onFetchSchedulePreview(
    FetchSchedulePreview event,
    Emitter<SevaPageState> emit,
  ) async {
    await _fetchSchedulePreviewInternal(emit, price: event.amountOption);
  }

  Future<void> _fetchSchedulePreviewInternal(
    Emitter<SevaPageState> emit, {
    AmountOption? price,
  }) async {
    final targetPrice = price ?? state.selectedPrice;
    if (targetPrice == null) return;

    final unitAmount = targetPrice.amount;
    final frequency = state.frequency;
    final startDate = DateTime.now().toIso8601String().split('T')[0];

    int occurrences = 30;
    if (frequency == 'weekly') {
      if (state.selectedDays.isEmpty) return;
      occurrences = _calculateWeeklyOccurrences(state.selectedDays);
    } else if (frequency == 'tithi') {
      if (state.selectedTithis.isEmpty) return;
      occurrences = state.selectedTithis.length;
    }

    final totalAmount = unitAmount * occurrences;

    final Map<String, dynamic> queryParams = {
      'amount': '$totalAmount',
      'frequency': frequency,
      'start': startDate,
    };

    if (frequency == 'weekly') {
      queryParams['weekdays'] = state.selectedDays.join(',');
    } else if (frequency == 'tithi') {
      queryParams['tithiIds'] = state.selectedTithis.join(',');
    }

    emit(state.copyWith(
      isSchedulePreviewLoading: true,
      schedulePreviewApiResponse: const SchedulePreviewApiResponse(),
    ));

    final result = await _sewaPageUsecase.callGetSchedulePreview(queryParams);

    await result.fold(
      (failure) async {
        emit(state.copyWith(
          isSchedulePreviewLoading: false,
          errorMessage: failure.message,
        ));
      },
      (response) async {
        var finalResponse = response;
        if (frequency == 'tithi' &&
            response.data.occurrenceCount > 0 &&
            response.data.occurrenceCount != occurrences) {
          final recalculatedAmount = unitAmount * response.data.occurrenceCount;
          final updatedParams = Map<String, dynamic>.from(queryParams);
          updatedParams['amount'] = '$recalculatedAmount';
          final secondResult = await _sewaPageUsecase.callGetSchedulePreview(updatedParams);
          secondResult.fold(
            (_) {},
            (recalculatedResponse) {
              finalResponse = recalculatedResponse;
            },
          );
        }

        emit(state.copyWith(
          isSchedulePreviewLoading: false,
          schedulePreviewApiResponse: finalResponse,
        ));
      },
    );
  }

  Future<void> _getSewaPriceList(
    GetSewaPriceList event,
    Emitter<SevaPageState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: '',
      sewaPageApiResponse: const SewaPageApiResponse(),
      categoryName: event.categoryName,
      categoryDescription: event.categoryDescription,
      paymentType: 'one_time',
      frequency: 'daily',
      selectedDays: const [],
      selectedTithis: const [],
      selectedOfferingItem: '',
      schedulePreviewApiResponse: const SchedulePreviewApiResponse(),
    ));

    final result = await _sewaPageUsecase.callPencahngAPi(event.categoryId);

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure.message));
      },
      (response) {
        final initialOptions = response.data.oneTimeAmountOptions.isNotEmpty
            ? response.data.oneTimeAmountOptions
            : (response.data.amountOptions.isNotEmpty
                ? response.data.amountOptions
                : const <AmountOption>[]);

        emit(
          state.copyWith(
            categoryId: event.categoryId,
            isLoading: false,
            sewaPageApiResponse: response,
            selectedPrice: initialOptions.isNotEmpty ? initialOptions.first : null,
            paymentType: 'one_time',
            frequency: 'daily',
            selectedDays: const [],
            selectedTithis: const [],
            selectedOfferingItem: '',
            schedulePreviewApiResponse: const SchedulePreviewApiResponse(),
          ),
        );
      },
    );
  }

  Future<void> _selectPrice(SelectPrice event, Emitter<SevaPageState> emit) async {
    emit(state.copyWith(
      selectedPrice: event.amountOption,
      schedulePreviewApiResponse: const SchedulePreviewApiResponse(),
    ));
    FacebookAnalytics.logEvent(
      FacebookEvents.sewaPriceSelected,
      parameters: {
        "sewa_type": "${state.categoryName}",
        "amount": event.amountOption.amount,
      },
    );

    if (state.paymentType == 'monthly') {
      if (state.frequency == 'daily' ||
          (state.frequency == 'weekly' && state.selectedDays.isNotEmpty) ||
          (state.frequency == 'tithi' && state.selectedTithis.isNotEmpty)) {
        await _fetchSchedulePreviewInternal(emit, price: event.amountOption);
      }
    }
  }

  Future<void> _onSelectPaymentType(SelectPaymentType event, Emitter<SevaPageState> emit) async {
    if (state.paymentType == event.paymentType) return;

    final data = state.sewaPageApiResponse.data;
    final options = event.paymentType == 'monthly'
        ? (data.monthlyAmountOptions.isNotEmpty
            ? data.monthlyAmountOptions
            : data.amountOptions)
        : (data.oneTimeAmountOptions.isNotEmpty
            ? data.oneTimeAmountOptions
            : data.amountOptions);

    final newSelectedPrice = options.isNotEmpty ? options.first : state.selectedPrice;

    if (event.paymentType == 'one_time') {
      emit(state.copyWith(
        paymentType: event.paymentType,
        selectedPrice: newSelectedPrice,
        frequency: 'daily',
        selectedDays: const [],
        selectedTithis: const [],
        isSchedulePreviewLoading: false,
        schedulePreviewApiResponse: const SchedulePreviewApiResponse(),
      ));
    } else {
      emit(state.copyWith(
        paymentType: event.paymentType,
        selectedPrice: newSelectedPrice,
        frequency: 'daily',
        selectedDays: const [],
        selectedTithis: const [],
        isSchedulePreviewLoading: true,
        schedulePreviewApiResponse: const SchedulePreviewApiResponse(),
      ));

      await _fetchSchedulePreviewInternal(emit, price: newSelectedPrice);
    }
  }

  void _onSelectOfferingItem(SelectOfferingItem event, Emitter<SevaPageState> emit) {
    if (state.selectedOfferingItem == event.item) {
      emit(state.copyWith(selectedOfferingItem: ''));
    } else {
      emit(state.copyWith(selectedOfferingItem: event.item));
    }
  }

  Future<void> _onSelectFrequency(SelectFrequency event, Emitter<SevaPageState> emit) async {
    emit(state.copyWith(
      frequency: event.frequency,
      selectedDays: const [],
      selectedTithis: const [],
      isSchedulePreviewLoading: event.frequency == 'daily' && state.paymentType == 'monthly',
      schedulePreviewApiResponse: const SchedulePreviewApiResponse(),
    ));

    if (event.frequency == 'daily' && state.paymentType == 'monthly') {
      await _fetchSchedulePreviewInternal(emit);
    }
  }

  void _onToggleDay(ToggleDay event, Emitter<SevaPageState> emit) {
    final updated = List<String>.from(state.selectedDays);
    final target = event.day.toLowerCase();

    final existingIndex = updated.indexWhere((d) {
      final dl = d.toLowerCase();
      if (dl == target) return true;
      if ((target == 'mon' || target == 'monday') && (dl == 'mon' || dl == 'monday')) return true;
      if ((target == 'tue' || target == 'tuesday') && (dl == 'tue' || dl == 'tuesday')) return true;
      if ((target == 'wed' || target == 'wednesday') && (dl == 'wed' || dl == 'wednesday')) return true;
      if ((target == 'thu' || target == 'thursday') && (dl == 'thu' || dl == 'thursday')) return true;
      if ((target == 'fri' || target == 'friday') && (dl == 'fri' || dl == 'friday')) return true;
      if ((target == 'sat' || target == 'saturday') && (dl == 'sat' || dl == 'saturday')) return true;
      if ((target == 'sun' || target == 'sunday') && (dl == 'sun' || dl == 'sunday')) return true;
      return false;
    });

    if (existingIndex >= 0) {
      updated.removeAt(existingIndex);
    } else {
      updated.add(event.day);
    }
    emit(state.copyWith(selectedDays: updated));
  }

  void _onToggleTithi(ToggleTithi event, Emitter<SevaPageState> emit) {
    final updated = List<String>.from(state.selectedTithis);
    if (updated.contains(event.tithi)) {
      updated.remove(event.tithi);
    } else {
      updated.add(event.tithi);
    }
    emit(state.copyWith(selectedTithis: updated));
  }

  int _calculateWeeklyOccurrences(List<String> selectedDays) {
    if (selectedDays.isEmpty) return 0;
    final dayMap = {
      'mon': DateTime.monday,
      'tue': DateTime.tuesday,
      'wed': DateTime.wednesday,
      'thu': DateTime.thursday,
      'fri': DateTime.friday,
      'sat': DateTime.saturday,
      'sun': DateTime.sunday,
    };
    final targetWeekdays = selectedDays
        .map((d) => dayMap[d.toLowerCase()])
        .whereType<int>()
        .toSet();
    if (targetWeekdays.isEmpty) return selectedDays.length * 4;

    final now = DateTime.now();
    int count = 0;
    for (int i = 0; i < 30; i++) {
      final date = now.add(Duration(days: i));
      if (targetWeekdays.contains(date.weekday)) {
        count++;
      }
    }
    return count > 0 ? count : selectedDays.length * 4;
  }
}
