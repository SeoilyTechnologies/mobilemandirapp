import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_tax_api_response.freezed.dart';
part 'price_tax_api_response.g.dart';

@freezed
abstract class PriceTaxApiResponse with _$PriceTaxApiResponse {
  const factory PriceTaxApiResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(PriceTaxData()) PriceTaxData data,
    dynamic errors,
  }) = _PriceTaxApiResponse;

  factory PriceTaxApiResponse.fromJson(Map<String, dynamic> json) =>
      _$PriceTaxApiResponseFromJson(json);
}

@freezed
abstract class PriceTaxData with _$PriceTaxData {
  const factory PriceTaxData({
    @Default(0) int vendorAmount,
    @Default(0) int platformFee,
    @Default(0) int gstAmount,
    @Default(0) int grossAmount,

    @Default('') String formattedVendorAmount,
    @Default('') String formattedPlatformFee,
    @Default('') String formattedGstAmount,
    @Default('') String formattedGrossAmount,
  }) = _PriceTaxData;

  factory PriceTaxData.fromJson(Map<String, dynamic> json) =>
      _$PriceTaxDataFromJson(json);
}