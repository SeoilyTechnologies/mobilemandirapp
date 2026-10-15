// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seva_status_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SevaStatusApiResponse _$SevaStatusApiResponseFromJson(
  Map<String, dynamic> json,
) => _SevaStatusApiResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? "",
  data: json['data'] == null
      ? const SevaStatusData()
      : SevaStatusData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] ?? null,
);

Map<String, dynamic> _$SevaStatusApiResponseToJson(
  _SevaStatusApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_SevaStatusData _$SevaStatusDataFromJson(Map<String, dynamic> json) =>
    _SevaStatusData(
      id: json['_id'] as String? ?? "",
      service: json['service'] == null
          ? const ServiceInfo()
          : ServiceInfo.fromJson(json['service'] as Map<String, dynamic>),
      vendor: json['vendor'] == null
          ? const VendorInfo()
          : VendorInfo.fromJson(json['vendor'] as Map<String, dynamic>),
      donorName: json['donorName'] as String? ?? "",
      sevaName: json['sevaName'] as String? ?? "",
      vendorAmount: (json['vendorAmount'] as num?)?.toInt() ?? 0,
      formattedVendorAmount: json['formattedVendorAmount'] as String? ?? "",
      paymentStatus: json['paymentStatus'] as String? ?? "",
      paymentStatusLabel: json['paymentStatusLabel'] as String? ?? "",
      status: json['status'] as String? ?? "",
      statusLabel: json['statusLabel'] as String? ?? "",
      requestedAt: json['requestedAt'] as String? ?? "",
      proofExpectedBy: json['proofExpectedBy'] as String? ?? "",
      liveStatus:
          (json['liveStatus'] as List<dynamic>?)
              ?.map((e) => LiveStatus.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      proof: json['proof'] == null
          ? const ProofInfo()
          : ProofInfo.fromJson(json['proof'] as Map<String, dynamic>),
      pricing: json['pricing'] == null
          ? const PricingInfo()
          : PricingInfo.fromJson(json['pricing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SevaStatusDataToJson(_SevaStatusData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'service': instance.service,
      'vendor': instance.vendor,
      'donorName': instance.donorName,
      'sevaName': instance.sevaName,
      'vendorAmount': instance.vendorAmount,
      'formattedVendorAmount': instance.formattedVendorAmount,
      'paymentStatus': instance.paymentStatus,
      'paymentStatusLabel': instance.paymentStatusLabel,
      'status': instance.status,
      'statusLabel': instance.statusLabel,
      'requestedAt': instance.requestedAt,
      'proofExpectedBy': instance.proofExpectedBy,
      'liveStatus': instance.liveStatus,
      'proof': instance.proof,
      'pricing': instance.pricing,
    };

_ServiceInfo _$ServiceInfoFromJson(Map<String, dynamic> json) => _ServiceInfo(
  id: json['_id'] as String? ?? "",
  name: json['name'] as String? ?? "",
  slug: json['slug'] as String? ?? "",
  description: json['description'] as String? ?? "",
  icon: json['icon'] as String? ?? "",
  lines:
      (json['lines'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$ServiceInfoToJson(_ServiceInfo instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'icon': instance.icon,
      'lines': instance.lines,
    };

_VendorInfo _$VendorInfoFromJson(Map<String, dynamic> json) => _VendorInfo(
  id: json['_id'] as String? ?? "",
  vendorName: json['vendorName'] as String? ?? "",
  location: json['location'] as String? ?? "",
  profilePhoto: json['profilePhoto'] as String? ?? "",
);

Map<String, dynamic> _$VendorInfoToJson(_VendorInfo instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'vendorName': instance.vendorName,
      'location': instance.location,
      'profilePhoto': instance.profilePhoto,
    };

_LiveStatus _$LiveStatusFromJson(Map<String, dynamic> json) => _LiveStatus(
  key: json['key'] as String? ?? "",
  title: json['title'] as String? ?? "",
  subtitle: json['subtitle'] as String? ?? "",
  state: json['state'] as String? ?? "",
  at: json['at'] as String? ?? "",
  action: json['action'] ?? null,
);

Map<String, dynamic> _$LiveStatusToJson(_LiveStatus instance) =>
    <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'state': instance.state,
      'at': instance.at,
      'action': instance.action,
    };

_ProofInfo _$ProofInfoFromJson(Map<String, dynamic> json) => _ProofInfo(
  available: json['available'] as bool? ?? false,
  media: json['media'] ?? null,
);

Map<String, dynamic> _$ProofInfoToJson(_ProofInfo instance) =>
    <String, dynamic>{'available': instance.available, 'media': instance.media};

_PricingInfo _$PricingInfoFromJson(Map<String, dynamic> json) => _PricingInfo(
  grossAmount: (json['grossAmount'] as num?)?.toInt() ?? 0,
  platformFee: (json['platformFee'] as num?)?.toInt() ?? 0,
  gstAmount: (json['gstAmount'] as num?)?.toInt() ?? 0,
  formattedGrossAmount: json['formattedGrossAmount'] as String? ?? "",
  formattedPlatformFee: json['formattedPlatformFee'] as String? ?? "",
  formattedGstAmount: json['formattedGstAmount'] as String? ?? "",
);

Map<String, dynamic> _$PricingInfoToJson(_PricingInfo instance) =>
    <String, dynamic>{
      'grossAmount': instance.grossAmount,
      'platformFee': instance.platformFee,
      'gstAmount': instance.gstAmount,
      'formattedGrossAmount': instance.formattedGrossAmount,
      'formattedPlatformFee': instance.formattedPlatformFee,
      'formattedGstAmount': instance.formattedGstAmount,
    };
