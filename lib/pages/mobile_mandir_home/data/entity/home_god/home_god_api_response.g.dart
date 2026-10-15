// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_god_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeGodApiResponse _$HomeGodApiResponseFromJson(Map<String, dynamic> json) =>
    _HomeGodApiResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const HomeGodData()
          : HomeGodData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'],
    );

Map<String, dynamic> _$HomeGodApiResponseToJson(_HomeGodApiResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'errors': instance.errors,
    };

_HomeGodData _$HomeGodDataFromJson(Map<String, dynamic> json) => _HomeGodData(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => HomeGodItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  pagination: json['pagination'] == null
      ? const HomeGodPagination()
      : HomeGodPagination.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HomeGodDataToJson(_HomeGodData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'pagination': instance.pagination,
    };

_HomeGodItem _$HomeGodItemFromJson(Map<String, dynamic> json) => _HomeGodItem(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  category: json['category'] as String? ?? '',
  location: json['location'] as String? ?? '',
  image: json['image'] as String? ?? '',
  isWishlist: json['isWishlist'] as bool? ?? false,
);

Map<String, dynamic> _$HomeGodItemToJson(_HomeGodItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'category': instance.category,
      'location': instance.location,
      'image': instance.image,
      'isWishlist': instance.isWishlist,
    };

_HomeGodPagination _$HomeGodPaginationFromJson(Map<String, dynamic> json) =>
    _HomeGodPagination(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$HomeGodPaginationToJson(_HomeGodPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };
