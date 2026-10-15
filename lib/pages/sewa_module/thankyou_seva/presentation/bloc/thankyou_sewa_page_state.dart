import '../../../sewa_page/data/entity/thankyou_sewa/thankyou_seva_api_response.dart';

class ThankyouSewaPageState {
  final ThankYouSevaApiResponse thankyouApoiResponse;
  final String errorMessage;
  final bool isLoading;
  final bool isOrderSuccess;

  const ThankyouSewaPageState({
    this.thankyouApoiResponse = const ThankYouSevaApiResponse(),
    this.errorMessage = '',
    this.isLoading = false,
    this.isOrderSuccess = false,
  });

  factory ThankyouSewaPageState.initial() => const ThankyouSewaPageState();

  ThankyouSewaPageState copyWith({
    ThankYouSevaApiResponse? thankyouApoiResponse,
    String? errorMessage,
    bool? isLoading,
    bool? isOrderSuccess,
  }) {
    return ThankyouSewaPageState(
      thankyouApoiResponse: thankyouApoiResponse ?? this.thankyouApoiResponse,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
      isOrderSuccess: isOrderSuccess ?? this.isOrderSuccess,
    );
  }
}
