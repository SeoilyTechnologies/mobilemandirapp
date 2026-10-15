abstract class BookSewaPageEvent {
  const BookSewaPageEvent();

  const factory BookSewaPageEvent.getTax({
    required String amount,
  }) = GetTax;

  const factory BookSewaPageEvent.changeName({
    required String userName,
  }) = ChangeName;

  const factory BookSewaPageEvent.changeDonationOnBehalf({
    required String donationOnBehalfof,
  }) = ChangeDonationOnBehalf;

  const factory BookSewaPageEvent.saveCateogryd({
    required String categoryId,
    required String catname,
    required String catdes,
  }) = SaveCategoryId;

  const factory BookSewaPageEvent.changePersonalMessage({
    required String personalMessage,
  }) = ChangePersonalMessage;

  const factory BookSewaPageEvent.startPaymentDeduction(String orderId) =
      StartPaymentDeduction;

  const factory BookSewaPageEvent.placeOrder() = PlaceOrder;

  const factory BookSewaPageEvent.updateOrder({
    required Map<String, dynamic> paymentResponse,
  }) = UpdateOrder;

  const factory BookSewaPageEvent.savePaymentSelection({
    required String paymentType,
    required String frequency,
    required List<String> selectedDays,
    required List<String> selectedTithis,
    required String selectedOfferingItem,
  }) = SavePaymentSelection;

  const factory BookSewaPageEvent.resetState() = ResetState;
}

class GetTax extends BookSewaPageEvent {
  final String amount;
  const GetTax({required this.amount});
}

class ChangeName extends BookSewaPageEvent {
  final String userName;
  const ChangeName({required this.userName});
}

class ChangeDonationOnBehalf extends BookSewaPageEvent {
  final String donationOnBehalfof;
  const ChangeDonationOnBehalf({required this.donationOnBehalfof});
}

class SaveCategoryId extends BookSewaPageEvent {
  final String categoryId;
  final String catname;
  final String catdes;
  const SaveCategoryId({
    required this.categoryId,
    required this.catname,
    required this.catdes,
  });
}

class ChangePersonalMessage extends BookSewaPageEvent {
  final String personalMessage;
  const ChangePersonalMessage({required this.personalMessage});
}

class StartPaymentDeduction extends BookSewaPageEvent {
  final String orderId;
  const StartPaymentDeduction(this.orderId);
}

class PlaceOrder extends BookSewaPageEvent {
  const PlaceOrder();
}

class UpdateOrder extends BookSewaPageEvent {
  final Map<String, dynamic> paymentResponse;
  const UpdateOrder({required this.paymentResponse});
}

class SavePaymentSelection extends BookSewaPageEvent {
  final String paymentType;
  final String frequency;
  final List<String> selectedDays;
  final List<String> selectedTithis;
  final String selectedOfferingItem;

  const SavePaymentSelection({
    required this.paymentType,
    required this.frequency,
    required this.selectedDays,
    required this.selectedTithis,
    required this.selectedOfferingItem,
  });
}

class ResetState extends BookSewaPageEvent {
  const ResetState();
}