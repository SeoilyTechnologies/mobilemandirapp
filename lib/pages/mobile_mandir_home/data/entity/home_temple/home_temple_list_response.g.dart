// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_temple_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeTempleListResponse _$HomeTempleListResponseFromJson(
  Map<String, dynamic> json,
) => _HomeTempleListResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? const HomeTempleData()
      : HomeTempleData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'],
);

Map<String, dynamic> _$HomeTempleListResponseToJson(
  _HomeTempleListResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_HomeTempleData _$HomeTempleDataFromJson(Map<String, dynamic> json) =>
    _HomeTempleData(
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => HomeTempleItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pagination: json['pagination'] == null
          ? const HomeTemplePagination()
          : HomeTemplePagination.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$HomeTempleDataToJson(_HomeTempleData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'pagination': instance.pagination,
    };

_HomeTempleItem _$HomeTempleItemFromJson(Map<String, dynamic> json) =>
    _HomeTempleItem(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      location: json['location'] as String? ?? '',
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      image: json['image'] as String? ?? '',
      isWishlist: json['isWishlist'] as bool? ?? false,
    );

Map<String, dynamic> _$HomeTempleItemToJson(_HomeTempleItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'location': instance.location,
      'lat': instance.lat,
      'lng': instance.lng,
      'image': instance.image,
      'isWishlist': instance.isWishlist,
    };

_HomeTemplePagination _$HomeTemplePaginationFromJson(
  Map<String, dynamic> json,
) => _HomeTemplePagination(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 0,
  totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$HomeTemplePaginationToJson(
  _HomeTemplePagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'totalPages': instance.totalPages,
};
