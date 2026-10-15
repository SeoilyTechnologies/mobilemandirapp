import 'package:equatable/equatable.dart';
import '../../data/entity/schedule_preview/schedule_preview_api_response.dart';
import '../../data/entity/sewa_page/sewa_page_api_response.dart';

class SevaPageState extends Equatable {
  final AmountOption? selectedPrice;
  final SewaPageApiResponse sewaPageApiResponse;
  final SchedulePreviewApiResponse schedulePreviewApiResponse;
  final String errorMessage;
  final String categoryId;
  final String categoryName;
  final String categoryDescription;
  final String paymentType; // 'one_time' or 'monthly'
  final String selectedOfferingItem; // 'Banana', 'Tarbooz', 'Chara'
  final String frequency; // 'daily', 'weekly', 'tithi'
  final List<String> selectedDays;
  final List<String> selectedTithis;
  final bool isProceedSuccess;
  final bool isLoading;
  final bool isSchedulePreviewLoading;

  const SevaPageState({
    this.selectedPrice,
    this.sewaPageApiResponse = const SewaPageApiResponse(),
    this.schedulePreviewApiResponse = const SchedulePreviewApiResponse(),
    this.errorMessage = '',
    this.categoryId = '',
    this.categoryName = '',
    this.categoryDescription = '',
    this.paymentType = 'one_time',
    this.selectedOfferingItem = '',
    this.frequency = 'daily',
    this.selectedDays = const [],
    this.selectedTithis = const [],
    this.isProceedSuccess = false,
    this.isLoading = false,
    this.isSchedulePreviewLoading = false,
  });

  factory SevaPageState.initial() => const SevaPageState();

  SevaPageState copyWith({
    AmountOption? selectedPrice,
    SewaPageApiResponse? sewaPageApiResponse,
    SchedulePreviewApiResponse? schedulePreviewApiResponse,
    String? errorMessage,
    String? categoryId,
    String? categoryName,
    String? categoryDescription,
    String? paymentType,
    String? selectedOfferingItem,
    String? frequency,
    List<String>? selectedDays,
    List<String>? selectedTithis,
    bool? isProceedSuccess,
    bool? isLoading,
    bool? isSchedulePreviewLoading,
  }) {
    return SevaPageState(
      selectedPrice: selectedPrice ?? this.selectedPrice,
      sewaPageApiResponse: sewaPageApiResponse ?? this.sewaPageApiResponse,
      schedulePreviewApiResponse:
          schedulePreviewApiResponse ?? this.schedulePreviewApiResponse,
      errorMessage: errorMessage ?? this.errorMessage,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      categoryDescription: categoryDescription ?? this.categoryDescription,
      paymentType: paymentType ?? this.paymentType,
      selectedOfferingItem: selectedOfferingItem ?? this.selectedOfferingItem,
      frequency: frequency ?? this.frequency,
      selectedDays: selectedDays ?? this.selectedDays,
      selectedTithis: selectedTithis ?? this.selectedTithis,
      isProceedSuccess: isProceedSuccess ?? this.isProceedSuccess,
      isLoading: isLoading ?? this.isLoading,
      isSchedulePreviewLoading:
          isSchedulePreviewLoading ?? this.isSchedulePreviewLoading,
    );
  }

  List<AmountOption> get currentAmountOptions {
    final data = sewaPageApiResponse.data;
    if (paymentType == 'monthly') {
      return data.monthlyAmountOptions.isNotEmpty
          ? data.monthlyAmountOptions
          : data.amountOptions;
    } else {
      return data.oneTimeAmountOptions.isNotEmpty
          ? data.oneTimeAmountOptions
          : data.amountOptions;
    }
  }

  @override
  List<Object?> get props => [
        selectedPrice,
        sewaPageApiResponse,
        schedulePreviewApiResponse,
        errorMessage,
        categoryId,
        categoryName,
        categoryDescription,
        paymentType,
        selectedOfferingItem,
        frequency,
        selectedDays,
        selectedTithis,
        isProceedSuccess,
        isLoading,
        isSchedulePreviewLoading,
      ];
}