import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_save_api_response.freezed.dart';
part 'order_save_api_response.g.dart';

@freezed
class OrderSaveApiResponse with _$OrderSaveApiResponse {
  const factory OrderSaveApiResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(OrderSaveData()) OrderSaveData data,
    dynamic errors,
  }) = _OrderSaveApiResponse;

  factory OrderSaveApiResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderSaveApiResponseFromJson(json);
}

@freezed
class OrderSaveData with _$OrderSaveData {
  const factory OrderSaveData({
    @Default('') String sevaId,
    @Default(VendorData()) VendorData vendor,
    @Default(ServiceData()) ServiceData service,
    @Default(PricingData()) PricingData pricing,
    @Default(RazorpayData()) RazorpayData razorpay,
    @Default('') String transactionId,
  }) = _OrderSaveData;

  factory OrderSaveData.fromJson(Map<String, dynamic> json) =>
      _$OrderSaveDataFromJson(json);
}

@freezed
class VendorData with _$VendorData {
  const factory VendorData({
    @JsonKey(name: '_id')
    @Default('') String id,
    @Default('') String vendorName,
    @Default('') String location,
  }) = _VendorData;

  factory VendorData.fromJson(Map<String, dynamic> json) =>
      _$VendorDataFromJson(json);
}

@freezed
class ServiceData with _$ServiceData {
  const factory ServiceData({
    @JsonKey(name: '_id')
    @Default('') String id,
    @Default('') String name,
    @Default('') String slug,
  }) = _ServiceData;

  factory ServiceData.fromJson(Map<String, dynamic> json) =>
      _$ServiceDataFromJson(json);
}

@freezed
class PricingData with _$PricingData {
  const factory PricingData({
    @Default(0) int vendorAmount,
    @Default(0) int platformFee,
    @Default(0) int gstAmount,
    @Default(0) int grossAmount,
    @Default('') String formattedVendorAmount,
    @Default('') String formattedPlatformFee,
    @Default('') String formattedGstAmount,
    @Default('') String formattedGrossAmount,
  }) = _PricingData;

  factory PricingData.fromJson(Map<String, dynamic> json) =>
      _$PricingDataFromJson(json);
}

@freezed
class RazorpayData with _$RazorpayData {
  const factory RazorpayData({
    @Default('') String keyId,
    @Default('') String orderId,
    @Default(0) int amount,
    @Default('INR') String currency,
  }) = _RazorpayData;

  factory RazorpayData.fromJson(Map<String, dynamic> json) =>
      _$RazorpayDataFromJson(json);
}