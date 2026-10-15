import '../../sewa_page/data/entity/order_save/order_save_api_response.dart';
import '../../sewa_page/data/entity/sewa_personal_message/price_tax_api_response/price_tax_api_response.dart';

class BookSewaPageState {
  final PriceTaxApiResponse priceTaxApiResponse;
  final OrderSaveApiResponse orderSaveApiResponse;
  final String catName;
  final String catDescription;
  final String userName;
  final String donationOnBehalfof;
  final String personalMessage;
  final String errorMessage;
  final String categoryId;
  final bool isLoading;
  final bool isOrderSuccess;
  final String paymentType;
  final String frequency;
  final List<String> selectedDays;
  final List<String> selectedTithis;
  final String selectedOfferingItem;

  const BookSewaPageState({
    this.priceTaxApiResponse = const PriceTaxApiResponse(),
    this.orderSaveApiResponse = const OrderSaveApiResponse(),
    this.catName = '',
    this.catDescription = '',
    this.userName = '',
    this.donationOnBehalfof = '',
    this.personalMessage = '',
    this.errorMessage = '',
    this.categoryId = '',
    this.isLoading = false,
    this.isOrderSuccess = false,
    this.paymentType = 'one_time',
    this.frequency = 'daily',
    this.selectedDays = const <String>[],
    this.selectedTithis = const <String>[],
    this.selectedOfferingItem = '',
  });

  factory BookSewaPageState.initial() => const BookSewaPageState();

  BookSewaPageState copyWith({
    PriceTaxApiResponse? priceTaxApiResponse,
    OrderSaveApiResponse? orderSaveApiResponse,
    String? catName,
    String? catDescription,
    String? userName,
    String? donationOnBehalfof,
    String? personalMessage,
    String? errorMessage,
    String? categoryId,
    bool? isLoading,
    bool? isOrderSuccess,
    String? paymentType,
    String? frequency,
    List<String>? selectedDays,
    List<String>? selectedTithis,
    String? selectedOfferingItem,
  }) {
    return BookSewaPageState(
      priceTaxApiResponse: priceTaxApiResponse ?? this.priceTaxApiResponse,
      orderSaveApiResponse: orderSaveApiResponse ?? this.orderSaveApiResponse,
      catName: catName ?? this.catName,
      catDescription: catDescription ?? this.catDescription,
      userName: userName ?? this.userName,
      donationOnBehalfof: donationOnBehalfof ?? this.donationOnBehalfof,
      personalMessage: personalMessage ?? this.personalMessage,
      errorMessage: errorMessage ?? this.errorMessage,
      categoryId: categoryId ?? this.categoryId,
      isLoading: isLoading ?? this.isLoading,
      isOrderSuccess: isOrderSuccess ?? this.isOrderSuccess,
      paymentType: paymentType ?? this.paymentType,
      frequency: frequency ?? this.frequency,
      selectedDays: selectedDays ?? this.selectedDays,
      selectedTithis: selectedTithis ?? this.selectedTithis,
      selectedOfferingItem: selectedOfferingItem ?? this.selectedOfferingItem,
    );
  }
}