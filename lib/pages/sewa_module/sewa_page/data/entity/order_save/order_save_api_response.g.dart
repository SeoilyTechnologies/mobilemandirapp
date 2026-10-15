// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_save_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderSaveApiResponseImpl _$$OrderSaveApiResponseImplFromJson(
  Map<String, dynamic> json,
) => _$OrderSaveApiResponseImpl(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? const OrderSaveData()
      : OrderSaveData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'],
);

Map<String, dynamic> _$$OrderSaveApiResponseImplToJson(
  _$OrderSaveApiResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_$OrderSaveDataImpl _$$OrderSaveDataImplFromJson(Map<String, dynamic> json) =>
    _$OrderSaveDataImpl(
      sevaId: json['sevaId'] as String? ?? '',
      vendor: json['vendor'] == null
          ? const VendorData()
          : VendorData.fromJson(json['vendor'] as Map<String, dynamic>),
      service: json['service'] == null
          ? const ServiceData()
          : ServiceData.fromJson(json['service'] as Map<String, dynamic>),
      pricing: json['pricing'] == null
          ? const PricingData()
          : PricingData.fromJson(json['pricing'] as Map<String, dynamic>),
      razorpay: json['razorpay'] == null
          ? const RazorpayData()
          : RazorpayData.fromJson(json['razorpay'] as Map<String, dynamic>),
      transactionId: json['transactionId'] as String? ?? '',
    );

Map<String, dynamic> _$$OrderSaveDataImplToJson(_$OrderSaveDataImpl instance) =>
    <String, dynamic>{
      'sevaId': instance.sevaId,
      'vendor': instance.vendor,
      'service': instance.service,
      'pricing': instance.pricing,
      'razorpay': instance.razorpay,
      'transactionId': instance.transactionId,
    };

_$VendorDataImpl _$$VendorDataImplFromJson(Map<String, dynamic> json) =>
    _$VendorDataImpl(
      id: json['_id'] as String? ?? '',
      vendorName: json['vendorName'] as String? ?? '',
      location: json['location'] as String? ?? '',
    );

Map<String, dynamic> _$$VendorDataImplToJson(_$VendorDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'vendorName': instance.vendorName,
      'location': instance.location,
    };

_$ServiceDataImpl _$$ServiceDataImplFromJson(Map<String, dynamic> json) =>
    _$ServiceDataImpl(
      id: json['_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
    );

Map<String, dynamic> _$$ServiceDataImplToJson(_$ServiceDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_$PricingDataImpl _$$PricingDataImplFromJson(Map<String, dynamic> json) =>
    _$PricingDataImpl(
      vendorAmount: (json['vendorAmount'] as num?)?.toInt() ?? 0,
      platformFee: (json['platformFee'] as num?)?.toInt() ?? 0,
      gstAmount: (json['gstAmount'] as num?)?.toInt() ?? 0,
      grossAmount: (json['grossAmount'] as num?)?.toInt() ?? 0,
      formattedVendorAmount: json['formattedVendorAmount'] as String? ?? '',
      formattedPlatformFee: json['formattedPlatformFee'] as String? ?? '',
      formattedGstAmount: json['formattedGstAmount'] as String? ?? '',
      formattedGrossAmount: json['formattedGrossAmount'] as String? ?? '',
    );

Map<String, dynamic> _$$PricingDataImplToJson(_$PricingDataImpl instance) =>
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

_$RazorpayDataImpl _$$RazorpayDataImplFromJson(Map<String, dynamic> json) =>
    _$RazorpayDataImpl(
      keyId: json['keyId'] as String? ?? '',
      orderId: json['orderId'] as String? ?? '',
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      currency: json['currency'] as String? ?? 'INR',
    );

Map<String, dynamic> _$$RazorpayDataImplToJson(_$RazorpayDataImpl instance) =>
    <String, dynamic>{
      'keyId': instance.keyId,
      'orderId': instance.orderId,
      'amount': instance.amount,
      'currency': instance.currency,
    };
