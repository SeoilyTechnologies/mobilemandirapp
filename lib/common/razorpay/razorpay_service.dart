import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'razorpay_web_helper.dart';

class RazorpayService {
  static final RazorpayService _instance = RazorpayService._internal();

  factory RazorpayService() => _instance;

  Razorpay? _razorpay;

  Function(PaymentSuccessResponse)? onPaymentSuccessCallback;
  Function(PaymentFailureResponse)? onPaymentErrorCallback;

  RazorpayService._internal() {
    if (!kIsWeb) {
      _razorpay = Razorpay();
      _initializeListeners();
    }
  }

  void _initializeListeners() {
    _razorpay?.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay?.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay?.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout({
    required double amount,
    required String name,
    required String description,
    required String contact,
    String? orderId,
    String? subscriptionId,
    required String email,
    String? language,
    Function(PaymentSuccessResponse)? onSuccess,
    Function(PaymentFailureResponse)? onError,
  }) {
    onPaymentSuccessCallback = onSuccess;
    onPaymentErrorCallback = onError;
    final razorpayKey = kReleaseMode
        ? 'rzp_live_T4aMEsVIJGQ0Tg' // Production
        : 'rzp_test_SqqishVzjxQBtj'; // Development

    var options = {
      //'key': 'rzp_test_SqqishVzjxQBtj',
     'key': "rzp_live_T4aMEsVIJGQ0Tg",
   //'key': razorpayKey,
      'amount': (amount * 100).toInt(),
      'name': name,
      if (orderId != null && orderId.isNotEmpty) 'order_id': orderId,
      if (subscriptionId != null && subscriptionId.isNotEmpty)
        'subscription_id': subscriptionId,
      'description': description,
      'prefill': {'contact': contact, 'email': email},
      'theme': {'color': '#793C01'},
      'currency': 'INR',
      if (language != null && language.isNotEmpty) 'language': language,
    };
    if (kIsWeb) {

    } else {
      // ✅ Android & iOS Razorpay
      _razorpay?.open(options);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    if (onPaymentSuccessCallback != null) {
      onPaymentSuccessCallback!(response);
    }
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    if (onPaymentErrorCallback != null) {
      onPaymentErrorCallback!(response);
    }
  }

  void _handleExternalWallet(ExternalWalletResponse response) {}

  void clear() {
    if (!kIsWeb) {
      _razorpay?.clear();
    }
  }
}
