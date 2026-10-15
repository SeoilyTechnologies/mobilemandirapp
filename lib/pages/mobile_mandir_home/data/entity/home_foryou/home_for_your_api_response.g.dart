// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_for_your_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeForYouApiResponse _$HomeForYouApiResponseFromJson(
  Map<String, dynamic> json,
) => _HomeForYouApiResponse(
  success: json['success'] as bool? ?? false,
  count: (json['count'] as num?)?.toInt() ?? 0,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => HomeForYouItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$HomeForYouApiResponseToJson(
  _HomeForYouApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'data': instance.data,
};

_SantData _$SantDataFromJson(Map<String, dynamic> json) => _SantData(
  id: json['_id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  image: json['image'] as String? ?? '',
  thumbnailImage: json['thumbnailImage'] as String? ?? '',
  about: json['about'] as String? ?? '',
  isAddedInWishlist: json['isAddedInWishlist'] as bool? ?? false,
);

Map<String, dynamic> _$SantDataToJson(_SantData instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'thumbnailImage': instance.thumbnailImage,
  'about': instance.about,
  'isAddedInWishlist': instance.isAddedInWishlist,
};

_GodData _$GodDataFromJson(Map<String, dynamic> json) => _GodData(
  id: json['_id'] as String? ?? '',
  godName: json['god_name'] as String? ?? '',
  category: json['category'] as String? ?? '',
  isWishlist: json['isWishlist'] as bool? ?? false,
  location: json['location'] as String? ?? '',
  thumbnail: json['thumbnail'] as String? ?? '',
);

Map<String, dynamic> _$GodDataToJson(_GodData instance) => <String, dynamic>{
  '_id': instance.id,
  'god_name': instance.godName,
  'category': instance.category,
  'isWishlist': instance.isWishlist,
  'location': instance.location,
  'thumbnail': instance.thumbnail,
};

_TempleData _$TempleDataFromJson(Map<String, dynamic> json) => _TempleData(
  id: json['_id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  location: json['location'] as String? ?? '',
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
  isWishlist: json['isWishlist'] as bool? ?? false,
);

Map<String, dynamic> _$TempleDataToJson(_TempleData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'thumbnailUrl': instance.thumbnailUrl,
      'slug': instance.slug,
      'location': instance.location,
      'lat': instance.lat,
      'lng': instance.lng,
      'isWishlist': instance.isWishlist,
    };

_SevaData _$SevaDataFromJson(Map<String, dynamic> json) => _SevaData(
  id: json['_id'] as String? ?? '',
  sevaName: json['sevaName'] as String? ?? '',
  sevaSlug: json['sevaSlug'] as String? ?? '',
  thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
  amount: (json['amount'] as num?)?.toInt() ?? 0,
  formattedAmount: json['formattedAmount'] as String? ?? '',
  finalPaymentAmount: (json['finalPaymentAmount'] as num?)?.toInt() ?? 0,
  formattedFinalPayment: json['formattedFinalPayment'] as String? ?? '',
  paymentStatus: json['paymentStatus'] as String? ?? '',
  status: json['status'] as String? ?? '',
  statusLabel: json['statusLabel'] as String? ?? '',
  donorName: json['donorName'] as String? ?? '',
);

Map<String, dynamic> _$SevaDataToJson(_SevaData instance) => <String, dynamic>{
  '_id': instance.id,
  'sevaName': instance.sevaName,
  'sevaSlug': instance.sevaSlug,
  'thumbnailUrl': instance.thumbnailUrl,
  'amount': instance.amount,
  'formattedAmount': instance.formattedAmount,
  'finalPaymentAmount': instance.finalPaymentAmount,
  'formattedFinalPayment': instance.formattedFinalPayment,
  'paymentStatus': instance.paymentStatus,
  'status': instance.status,
  'statusLabel': instance.statusLabel,
  'donorName': instance.donorName,
};
