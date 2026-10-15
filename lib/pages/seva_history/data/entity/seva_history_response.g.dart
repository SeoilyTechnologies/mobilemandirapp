// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seva_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SevaHistoryResponse _$SevaHistoryResponseFromJson(Map<String, dynamic> json) =>
    _SevaHistoryResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const SevaHistoryData()
          : SevaHistoryData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'],
    );

Map<String, dynamic> _$SevaHistoryResponseToJson(
  _SevaHistoryResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_SevaHistoryData _$SevaHistoryDataFromJson(Map<String, dynamic> json) =>
    _SevaHistoryData(
      list:
          (json['list'] as List<dynamic>?)
              ?.map((e) => SevaHistoryItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sevaData:
          (json['SevaData'] as List<dynamic>?)
              ?.map((e) => SevaHistoryCard.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pagination: json['pagination'] == null
          ? const PaginationModel()
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
      summary: json['summary'] == null
          ? const SevaSummary()
          : SevaSummary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SevaHistoryDataToJson(_SevaHistoryData instance) =>
    <String, dynamic>{
      'list': instance.list,
      'SevaData': instance.sevaData,
      'pagination': instance.pagination,
      'summary': instance.summary,
    };

_SevaHistoryItem _$SevaHistoryItemFromJson(Map<String, dynamic> json) =>
    _SevaHistoryItem(
      id: json['_id'] as String? ?? '',
      service: json['service'] == null
          ? const ServiceModel()
          : ServiceModel.fromJson(json['service'] as Map<String, dynamic>),
      vendor: json['vendor'] == null
          ? const VendorModel()
          : VendorModel.fromJson(json['vendor'] as Map<String, dynamic>),
      donorName: json['donorName'] as String? ?? '',
      sevaName: json['sevaName'] as String? ?? '',
      vendorAmount: (json['vendorAmount'] as num?)?.toInt() ?? 0,
      formattedVendorAmount: json['formattedVendorAmount'] as String? ?? '',
      paidAmount: (json['paidAmount'] as num?)?.toInt() ?? 0,
      formattedPaidAmount: json['formattedPaidAmount'] as String? ?? '',
      paymentStatus: json['paymentStatus'] as String? ?? '',
      paymentStatusLabel: json['paymentStatusLabel'] as String? ?? '',
      status: json['status'] as String? ?? '',
      statusLabel: json['statusLabel'] as String? ?? '',
      requestedAt: json['requestedAt'] as String? ?? '',
      proofExpectedBy: json['proofExpectedBy'] as String? ?? '',
      liveStatus:
          (json['liveStatus'] as List<dynamic>?)
              ?.map((e) => LiveStatusModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      proof: json['proof'] == null
          ? const ProofModel()
          : ProofModel.fromJson(json['proof'] as Map<String, dynamic>),
      pricing: json['pricing'] == null
          ? const PricingModel()
          : PricingModel.fromJson(json['pricing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SevaHistoryItemToJson(_SevaHistoryItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'service': instance.service,
      'vendor': instance.vendor,
      'donorName': instance.donorName,
      'sevaName': instance.sevaName,
      'vendorAmount': instance.vendorAmount,
      'formattedVendorAmount': instance.formattedVendorAmount,
      'paidAmount': instance.paidAmount,
      'formattedPaidAmount': instance.formattedPaidAmount,
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

_ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) =>
    _ServiceModel(
      id: json['_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      lines:
          (json['lines'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$ServiceModelToJson(_ServiceModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'icon': instance.icon,
      'lines': instance.lines,
    };

_VendorModel _$VendorModelFromJson(Map<String, dynamic> json) => _VendorModel(
  id: json['_id'] as String? ?? '',
  vendorName: json['vendorName'] as String? ?? '',
  location: json['location'] as String? ?? '',
  profilePhoto: json['profilePhoto'] as String? ?? '',
);

Map<String, dynamic> _$VendorModelToJson(_VendorModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'vendorName': instance.vendorName,
      'location': instance.location,
      'profilePhoto': instance.profilePhoto,
    };

_LiveStatusModel _$LiveStatusModelFromJson(Map<String, dynamic> json) =>
    _LiveStatusModel(
      key: json['key'] as String? ?? '',
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      state: json['state'] as String? ?? '',
      at: json['at'] as String? ?? '',
      action: json['action'] as String? ?? '',
    );

Map<String, dynamic> _$LiveStatusModelToJson(_LiveStatusModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'state': instance.state,
      'at': instance.at,
      'action': instance.action,
    };

_ProofModel _$ProofModelFromJson(Map<String, dynamic> json) => _ProofModel(
  available: json['available'] as bool? ?? false,
  media: json['media'] == null
      ? null
      : MediaModel.fromJson(json['media'] as Map<String, dynamic>),
  recordedAt: json['recordedAt'] as String? ?? '',
  gpsAddress: json['gpsAddress'] as String? ?? '',
);

Map<String, dynamic> _$ProofModelToJson(_ProofModel instance) =>
    <String, dynamic>{
      'available': instance.available,
      'media': instance.media,
      'recordedAt': instance.recordedAt,
      'gpsAddress': instance.gpsAddress,
    };

_MediaModel _$MediaModelFromJson(Map<String, dynamic> json) => _MediaModel(
  url: json['url'] as String? ?? '',
  thumbnail: json['thumbnail'] as String? ?? '',
  type: json['type'] as String? ?? '',
);

Map<String, dynamic> _$MediaModelToJson(_MediaModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'thumbnail': instance.thumbnail,
      'type': instance.type,
    };

_PricingModel _$PricingModelFromJson(Map<String, dynamic> json) =>
    _PricingModel(
      grossAmount: (json['grossAmount'] as num?)?.toInt() ?? 0,
      platformFee: (json['platformFee'] as num?)?.toInt() ?? 0,
      gstAmount: (json['gstAmount'] as num?)?.toInt() ?? 0,
      formattedGrossAmount: json['formattedGrossAmount'] as String? ?? '',
      formattedPlatformFee: json['formattedPlatformFee'] as String? ?? '',
      formattedGstAmount: json['formattedGstAmount'] as String? ?? '',
    );

Map<String, dynamic> _$PricingModelToJson(_PricingModel instance) =>
    <String, dynamic>{
      'grossAmount': instance.grossAmount,
      'platformFee': instance.platformFee,
      'gstAmount': instance.gstAmount,
      'formattedGrossAmount': instance.formattedGrossAmount,
      'formattedPlatformFee': instance.formattedPlatformFee,
      'formattedGstAmount': instance.formattedGstAmount,
    };

_SevaHistoryCard _$SevaHistoryCardFromJson(Map<String, dynamic> json) =>
    _SevaHistoryCard(
      id: json['_id'] as String? ?? '',
      thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
      addedAt: json['addedAt'] as String? ?? '',
      sevaName: json['sevaName'] as String? ?? '',
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      formattedAmount: json['formattedAmount'] as String? ?? '',
      formattedFinalPayment: json['formattedFinalPayment'] as String? ?? '',
      paymentStatus: json['paymentStatus'] as String? ?? '',
      status: json['status'] as String? ?? '',
      statusLabel: json['statusLabel'] as String? ?? '',
    );

Map<String, dynamic> _$SevaHistoryCardToJson(_SevaHistoryCard instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'thumbnailUrl': instance.thumbnailUrl,
      'addedAt': instance.addedAt,
      'sevaName': instance.sevaName,
      'amount': instance.amount,
      'formattedAmount': instance.formattedAmount,
      'formattedFinalPayment': instance.formattedFinalPayment,
      'paymentStatus': instance.paymentStatus,
      'status': instance.status,
      'statusLabel': instance.statusLabel,
    };

_PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) =>
    _PaginationModel(
      page: (json['page'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
      totalItems: (json['totalItems'] as num?)?.toInt() ?? 0,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
      hasNextPage: json['hasNextPage'] as bool? ?? false,
      hasPrevPage: json['hasPrevPage'] as bool? ?? false,
    );

Map<String, dynamic> _$PaginationModelToJson(_PaginationModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'hasNextPage': instance.hasNextPage,
      'hasPrevPage': instance.hasPrevPage,
    };

_SevaSummary _$SevaSummaryFromJson(Map<String, dynamic> json) => _SevaSummary(
  total: json['total'] == null
      ? const SummaryItem()
      : SummaryItem.fromJson(json['total'] as Map<String, dynamic>),
  completed: json['completed'] == null
      ? const SummaryItem()
      : SummaryItem.fromJson(json['completed'] as Map<String, dynamic>),
  pending: json['pending'] == null
      ? const SummaryItem()
      : SummaryItem.fromJson(json['pending'] as Map<String, dynamic>),
  inReview: json['inReview'] == null
      ? const InReviewSummary()
      : InReviewSummary.fromJson(json['inReview'] as Map<String, dynamic>),
  refunded: json['refunded'] == null
      ? const SummaryItem()
      : SummaryItem.fromJson(json['refunded'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SevaSummaryToJson(_SevaSummary instance) =>
    <String, dynamic>{
      'total': instance.total,
      'completed': instance.completed,
      'pending': instance.pending,
      'inReview': instance.inReview,
      'refunded': instance.refunded,
    };

_SummaryItem _$SummaryItemFromJson(Map<String, dynamic> json) => _SummaryItem(
  count: (json['count'] as num?)?.toInt() ?? 0,
  amount: (json['amount'] as num?)?.toInt() ?? 0,
  formattedAmount: json['formattedAmount'] as String? ?? '',
);

Map<String, dynamic> _$SummaryItemToJson(_SummaryItem instance) =>
    <String, dynamic>{
      'count': instance.count,
      'amount': instance.amount,
      'formattedAmount': instance.formattedAmount,
    };

_InReviewSummary _$InReviewSummaryFromJson(Map<String, dynamic> json) =>
    _InReviewSummary(
      count: (json['count'] as num?)?.toInt() ?? 0,
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      formattedAmount: json['formattedAmount'] as String? ?? '',
      actionCount: (json['actionCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$InReviewSummaryToJson(_InReviewSummary instance) =>
    <String, dynamic>{
      'count': instance.count,
      'amount': instance.amount,
      'formattedAmount': instance.formattedAmount,
      'actionCount': instance.actionCount,
    };
