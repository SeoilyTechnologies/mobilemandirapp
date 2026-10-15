// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_god_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PopularGodApiResponse _$PopularGodApiResponseFromJson(
  Map<String, dynamic> json,
) => _PopularGodApiResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? const PopularGodData()
      : PopularGodData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] ?? null,
);

Map<String, dynamic> _$PopularGodApiResponseToJson(
  _PopularGodApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_PopularGodData _$PopularGodDataFromJson(Map<String, dynamic> json) =>
    _PopularGodData(
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => PopularGodItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PopularGodItem>[],
      pagination: json['pagination'] == null
          ? const PopularGodPagination()
          : PopularGodPagination.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PopularGodDataToJson(_PopularGodData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'pagination': instance.pagination,
    };

_PopularGodItem _$PopularGodItemFromJson(Map<String, dynamic> json) =>
    _PopularGodItem(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      category: json['category'] as String? ?? '',
      location: json['location'] as String? ?? '',
      image: json['image'] as String? ?? '',
      isWishlist: json['isWishlist'] as bool? ?? false,
    );

Map<String, dynamic> _$PopularGodItemToJson(_PopularGodItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'category': instance.category,
      'location': instance.location,
      'image': instance.image,
      'isWishlist': instance.isWishlist,
    };

_PopularGodPagination _$PopularGodPaginationFromJson(
  Map<String, dynamic> json,
) => _PopularGodPagination(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PopularGodPaginationToJson(
  _PopularGodPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'totalPages': instance.totalPages,
};
