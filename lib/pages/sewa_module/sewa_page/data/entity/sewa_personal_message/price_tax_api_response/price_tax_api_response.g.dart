// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_tax_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceTaxApiResponse _$PriceTaxApiResponseFromJson(Map<String, dynamic> json) =>
    _PriceTaxApiResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const PriceTaxData()
          : PriceTaxData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'],
    );

Map<String, dynamic> _$PriceTaxApiResponseToJson(
  _PriceTaxApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_PriceTaxData _$PriceTaxDataFromJson(Map<String, dynamic> json) =>
    _PriceTaxData(
      vendorAmount: (json['vendorAmount'] as num?)?.toInt() ?? 0,
      platformFee: (json['platformFee'] as num?)?.toInt() ?? 0,
      gstAmount: (json['gstAmount'] as num?)?.toInt() ?? 0,
      grossAmount: (json['grossAmount'] as num?)?.toInt() ?? 0,
      formattedVendorAmount: json['formattedVendorAmount'] as String? ?? '',
      formattedPlatformFee: json['formattedPlatformFee'] as String? ?? '',
      formattedGstAmount: json['formattedGstAmount'] as String? ?? '',
      formattedGrossAmount: json['formattedGrossAmount'] as String? ?? '',
    );

Map<String, dynamic> _$PriceTaxDataToJson(_PriceTaxData instance) =>
    <String, dynamic>{
      'vendorAmount': instance.vendorAmount,
      'platformFee': instance.platformFee,
      'gstAmount': instance.gstAmount,
      'grossAmount': instance.grossAmount,
      'formattedVendorAmount': instance.formattedVendorAmount,
      'formattedPlatformFee': instance.formattedPlatformFee,
      'formattedGstAmount': instance.formattedGstAmount,
      'formattedGrossAmount': instance.formattedGrossAmount,
    };
