import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:mandirapp/common/service_locator/setivelocator.dart';

import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/razorpay/razorpay_service.dart';
import '../../../../common/routes/exports.dart';
import '../../../auth/signin/data/entity/login_response.dart';
import '../../sewa_page/domain/usecase/sewa_page_usecase.dart';
import 'book_sewa_page_event.dart';
import 'book_sewa_page_state.dart';

class BookSewaPageBloc extends Bloc<BookSewaPageEvent, BookSewaPageState> {
  final SewaPageUsecase _sewaPageUsecase = getIt<SewaPageUsecase>();

  BookSewaPageBloc() : super(BookSewaPageState.initial()) {
    on<GetTax>(_getTax);
    on<ChangeName>(_changeName);
    on<ChangeDonationOnBehalf>(_changeDonationOnBehalf);
    on<ChangePersonalMessage>(_changePersonalMessage);
    on<StartPaymentDeduction>(_startPaymentDeduction);
    on<PlaceOrder>(_placeOrder);
    on<UpdateOrder>(_saveOrder);
    on<SaveCategoryId>(_saveCategoryid);
    on<SavePaymentSelection>(_savePaymentSelection);
    on<ResetState>(_resetState);
  }

  void _savePaymentSelection(
    SavePaymentSelection event,
    Emitter<BookSewaPageState> emit,
  ) {
    emit(state.copyWith(
      paymentType: event.paymentType,
      frequency: event.frequency,
      selectedDays: event.selectedDays,
      selectedTithis: event.selectedTithis,
      selectedOfferingItem: event.selectedOfferingItem,
    ));
  }

  void _resetState(ResetState event, Emitter<BookSewaPageState> emit) {
    emit(BookSewaPageState.initial());
  }

  Future<void> _getTax(GetTax event, Emitter<BookSewaPageState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await _sewaPageUsecase.callgetTaxAPi(event.amount);

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure.message));
      },
      (response) {
        emit(state.copyWith(isLoading: false, priceTaxApiResponse: response));
      },
    );
  }

  void _changeName(ChangeName event, Emitter<BookSewaPageState> emit) {
    emit(state.copyWith(userName: event.userName));
  }

  void _saveCategoryid(SaveCategoryId event, Emitter<BookSewaPageState> emit) {
    emit(
      state.copyWith(
        categoryId: event.categoryId,
        catDescription: event.catdes,
        catName: event.catname,
      ),
    );
  }

  void _changeDonationOnBehalf(
    ChangeDonationOnBehalf event,
    Emitter<BookSewaPageState> emit,
  ) {
    emit(state.copyWith(donationOnBehalfof: event.donationOnBehalfof));
  }

  void _changePersonalMessage(
    ChangePersonalMessage event,
    Emitter<BookSewaPageState> emit,
  ) {
    emit(state.copyWith(personalMessage: event.personalMessage));
  }


  Future<void> _startPaymentDeduction(
    StartPaymentDeduction event,
    Emitter<BookSewaPageState> emit,
  ) async {
    var userdata = await getIt<SharedPrefs>().getModel<LoginResponse>(
      "user_model",
      (json) => LoginResponse.fromJson(json),
    );

    final razorpayService = RazorpayService();
    final langCode = getIt<SharedPrefs>().getString('selected_locale');

    final isSubscription = state.paymentType == 'monthly';
    final razorpaySubId = state.orderSaveApiResponse.data.razorpay.orderId;

    razorpayService.openCheckout(
      orderId: isSubscription ? null : event.orderId,
      subscriptionId: isSubscription ? razorpaySubId : null,
      amount: state.priceTaxApiResponse.data.grossAmount.toDouble(),
      name: userdata!.user.username ?? "",
      description: 'Mobile Mandir Seva Payment',
      contact: userdata!.user.phone ?? "",
      email: userdata!.user.email ?? "",
      language: langCode.isNotEmpty ? langCode : 'en',

      onSuccess: (response) {

        final Map<String, dynamic> map = {};

        if (isSubscription) {
          map["razorpay_payment_id"] = response.paymentId ?? "";
          map["razorpay_subscription_id"] = razorpaySubId;
          if (response.signature != null && response.signature!.isNotEmpty) {
            map["razorpay_signature"] = response.signature!;
          }
        } else {
          map["razorpay_order_id"] = response.orderId ?? event.orderId;
          map["razorpay_payment_id"] = response.paymentId ?? "";
          if (response.signature != null && response.signature!.isNotEmpty) {
            map["razorpay_signature"] = response.signature!;
          }
        }


        add(UpdateOrder(paymentResponse: map));
      },

      onError: (response) {},
    );
  }

  Future<void> _placeOrder(
    PlaceOrder event,
    Emitter<BookSewaPageState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    var userdata = await getIt<SharedPrefs>().getModel<LoginResponse>(
      "user_model",
      (json) => LoginResponse.fromJson(json),
    );
    final userPhone = userdata?.user.phone ?? "";

    final offeringsList = state.selectedOfferingItem.isNotEmpty
        ? [state.selectedOfferingItem]
        : <String>[];

    final int amountValue = state.priceTaxApiResponse.data.vendorAmount;

    if (state.paymentType == 'one_time') {
      final Map<String, dynamic> request = {
        "serviceId": state.categoryId,
        "amount": amountValue,
        "donorName": state.userName,
        "dedicationMessage": state.personalMessage,
        "donationOnBehalfOf": state.donationOnBehalfof,
        "offerings": offeringsList,
      };

      if (userPhone.isNotEmpty) {
        request["donorPhone"] = userPhone;
      }


      final result = await _sewaPageUsecase.callSaveOrderApi(request);

      result.fold(
        (failure) {
          emit(state.copyWith(isLoading: false, errorMessage: failure.message));
        },
        (response) {
          emit(state.copyWith(isLoading: false, orderSaveApiResponse: response));
          final orderOrSubscriptionId = response.data.razorpay.orderId.isNotEmpty
              ? response.data.razorpay.orderId
              : response.data.sevaId;
          add(
            BookSewaPageEvent.startPaymentDeduction(
              orderOrSubscriptionId,
            ),
          );
        },
      );
    } else {
      final Map<String, dynamic> request = {
        "serviceId": state.categoryId,
        "amount": amountValue,
        "donorName": state.userName,
        "dedicationMessage": state.personalMessage,
        "donationOnBehalfOf": state.donationOnBehalfof,
        "frequency": state.frequency,
        "weekdays": state.frequency == 'weekly' ? state.selectedDays : <String>[],
        "tithiIds": state.frequency == 'tithi' ? state.selectedTithis : <String>[],
        "offerings": offeringsList,
        "paymentType": "monthly",
      };

      if (userPhone.isNotEmpty) {
        request["donorPhone"] = userPhone;
      }


      final result = await _sewaPageUsecase.callSaveSubscriptionApi(request);

      result.fold(
        (failure) {
          emit(state.copyWith(isLoading: false, errorMessage: failure.message));
        },
        (response) {
          emit(state.copyWith(isLoading: false, orderSaveApiResponse: response));
          add(
            BookSewaPageEvent.startPaymentDeduction(
              response.data.sevaId,
            ),
          );
        },
      );
    }
  }

  Future<void> _saveOrder(
    UpdateOrder event,
    Emitter<BookSewaPageState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await _sewaPageUsecase.callVerifyOrder(
      event.paymentResponse,
      state.orderSaveApiResponse.data.sevaId,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure.message));
      },
      (response) {
        final previousOrder = state.orderSaveApiResponse.data;
        final verifiedOrder = response.data;
        final resolvedOrder = verifiedOrder.service.name.isEmpty
            ? verifiedOrder.copyWith(service: previousOrder.service)
            : verifiedOrder;
        final resolvedAmount =
            verifiedOrder.pricing.formattedGrossAmount.isEmpty
            ? previousOrder.pricing
            : verifiedOrder.pricing;

        emit(
          state.copyWith(
            isLoading: false,
            orderSaveApiResponse: response.copyWith(
              data: resolvedOrder.copyWith(pricing: resolvedAmount),
            ),
            isOrderSuccess: true,
          ),
        );
      },
    );
  }
}
