// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_proof_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoProofApiResponse _$VideoProofApiResponseFromJson(
  Map<String, dynamic> json,
) => _VideoProofApiResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? "",
  data: json['data'] == null
      ? const VideoProofData()
      : VideoProofData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] ?? null,
);

Map<String, dynamic> _$VideoProofApiResponseToJson(
  _VideoProofApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_VideoProofData _$VideoProofDataFromJson(Map<String, dynamic> json) =>
    _VideoProofData(
      sevaId: json['sevaId'] as String? ?? "",
      vendorId: json['vendorId'] as String? ?? "",
      donorName: json['donorName'] as String? ?? "",
      sevaName: json['sevaName'] as String? ?? "",
      service: json['service'] == null
          ? const VideoProofService()
          : VideoProofService.fromJson(json['service'] as Map<String, dynamic>),
      vendor: json['vendor'] == null
          ? const VideoProofVendor()
          : VideoProofVendor.fromJson(json['vendor'] as Map<String, dynamic>),
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      formattedAmount: json['formattedAmount'] as String? ?? "",
      grossAmount: (json['grossAmount'] as num?)?.toInt() ?? 0,
      formattedGrossAmount: json['formattedGrossAmount'] as String? ?? "",
      recordedAt: json['recordedAt'] as String? ?? "",
      formattedRecordedAt: json['formattedRecordedAt'] as String? ?? "",
      paidAt: json['paidAt'] as String? ?? "",
      formattedPaidAt: json['formattedPaidAt'] as String? ?? "",
      paymentStatus: json['paymentStatus'] as String? ?? "",
      paymentReleased: json['paymentReleased'] as bool? ?? false,
      status: json['status'] as String? ?? "",
      canRaiseIssue: json['canRaiseIssue'] as bool? ?? false,
      showGaushalaFields: json['showGaushalaFields'] as bool? ?? false,
      proofTitle: json['proofTitle'] as String? ?? "",
      proofSubtitle: json['proofSubtitle'] as String? ?? "",
      dedicationMessage: json['dedicationMessage'] as String? ?? "",
      gpsLocation: json['gpsLocation'] == null
          ? const GpsLocation()
          : GpsLocation.fromJson(json['gpsLocation'] as Map<String, dynamic>),
      media: json['media'] == null
          ? const VideoMedia()
          : VideoMedia.fromJson(json['media'] as Map<String, dynamic>),
      infoCards:
          (json['infoCards'] as List<dynamic>?)
              ?.map((e) => InfoCard.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      receipt: json['receipt'] == null
          ? const VideoReceipt()
          : VideoReceipt.fromJson(json['receipt'] as Map<String, dynamic>),
      badges: json['badges'] == null
          ? const VideoBadges()
          : VideoBadges.fromJson(json['badges'] as Map<String, dynamic>),
      whatWasSaid: json['whatWasSaid'] as String? ?? "",
    );

Map<String, dynamic> _$VideoProofDataToJson(_VideoProofData instance) =>
    <String, dynamic>{
      'sevaId': instance.sevaId,
      'vendorId': instance.vendorId,
      'donorName': instance.donorName,
      'sevaName': instance.sevaName,
      'service': instance.service,
      'vendor': instance.vendor,
      'amount': instance.amount,
      'formattedAmount': instance.formattedAmount,
      'grossAmount': instance.grossAmount,
      'formattedGrossAmount': instance.formattedGrossAmount,
      'recordedAt': instance.recordedAt,
      'formattedRecordedAt': instance.formattedRecordedAt,
      'paidAt': instance.paidAt,
      'formattedPaidAt': instance.formattedPaidAt,
      'paymentStatus': instance.paymentStatus,
      'paymentReleased': instance.paymentReleased,
      'status': instance.status,
      'canRaiseIssue': instance.canRaiseIssue,
      'showGaushalaFields': instance.showGaushalaFields,
      'proofTitle': instance.proofTitle,
      'proofSubtitle': instance.proofSubtitle,
      'dedicationMessage': instance.dedicationMessage,
      'gpsLocation': instance.gpsLocation,
      'media': instance.media,
      'infoCards': instance.infoCards,
      'receipt': instance.receipt,
      'badges': instance.badges,
      'whatWasSaid': instance.whatWasSaid,
    };

_VideoProofService _$VideoProofServiceFromJson(Map<String, dynamic> json) =>
    _VideoProofService(
      id: json['_id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      slug: json['slug'] as String? ?? "",
      description: json['description'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
      lines:
          (json['lines'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$VideoProofServiceToJson(_VideoProofService instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'icon': instance.icon,
      'lines': instance.lines,
    };

_VideoProofVendor _$VideoProofVendorFromJson(Map<String, dynamic> json) =>
    _VideoProofVendor(
      id: json['_id'] as String? ?? "",
      vendorName: json['vendorName'] as String? ?? "",
      location: json['location'] as String? ?? "",
    );

Map<String, dynamic> _$VideoProofVendorToJson(_VideoProofVendor instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'vendorName': instance.vendorName,
      'location': instance.location,
    };

_GpsLocation _$GpsLocationFromJson(Map<String, dynamic> json) => _GpsLocation(
  type: json['type'] as String? ?? "",
  coordinates:
      (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList() ??
      const [],
  address: json['address'] as String? ?? "",
);

Map<String, dynamic> _$GpsLocationToJson(_GpsLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
      'address': instance.address,
    };

_VideoMedia _$VideoMediaFromJson(Map<String, dynamic> json) => _VideoMedia(
  url: json['url'] as String? ?? "",
  thumbnail: json['thumbnail'] as String? ?? "",
  type: json['type'] as String? ?? "",
  duration: json['duration'] ?? null,
);

Map<String, dynamic> _$VideoMediaToJson(_VideoMedia instance) =>
    <String, dynamic>{
      'url': instance.url,
      'thumbnail': instance.thumbnail,
      'type': instance.type,
      'duration': instance.duration,
    };

_InfoCard _$InfoCardFromJson(Map<String, dynamic> json) => _InfoCard(
  key: json['key'] as String? ?? "",
  title: json['title'] as String? ?? "",
  subtitle: json['subtitle'] as String? ?? "",
);

Map<String, dynamic> _$InfoCardToJson(_InfoCard instance) => <String, dynamic>{
  'key': instance.key,
  'title': instance.title,
  'subtitle': instance.subtitle,
};

_VideoReceipt _$VideoReceiptFromJson(Map<String, dynamic> json) =>
    _VideoReceipt(
      sevaType: json['sevaType'] as String? ?? "",
      vendorLine: json['vendorLine'] as String? ?? "",
      formattedPaidAt: json['formattedPaidAt'] as String? ?? "",
      formattedGrossAmount: json['formattedGrossAmount'] as String? ?? "",
    );

Map<String, dynamic> _$VideoReceiptToJson(_VideoReceipt instance) =>
    <String, dynamic>{
      'sevaType': instance.sevaType,
      'vendorLine': instance.vendorLine,
      'formattedPaidAt': instance.formattedPaidAt,
      'formattedGrossAmount': instance.formattedGrossAmount,
    };

_VideoBadges _$VideoBadgesFromJson(Map<String, dynamic> json) => _VideoBadges(
  gpsVerified: json['gpsVerified'] as bool? ?? false,
  recordedLive: json['recordedLive'] as bool? ?? false,
  noEditPossible: json['noEditPossible'] as bool? ?? false,
);

Map<String, dynamic> _$VideoBadgesToJson(_VideoBadges instance) =>
    <String, dynamic>{
      'gpsVerified': instance.gpsVerified,
      'recordedLive': instance.recordedLive,
      'noEditPossible': instance.noEditPossible,
    };
