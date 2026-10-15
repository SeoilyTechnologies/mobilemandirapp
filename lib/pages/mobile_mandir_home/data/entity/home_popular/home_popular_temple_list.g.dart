// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_popular_temple_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomePopularTempleListResponse _$HomePopularTempleListResponseFromJson(
  Map<String, dynamic> json,
) => _HomePopularTempleListResponse(
  success: json['success'] as bool? ?? false,
  data: json['data'] == null
      ? const HomePopularTempleData()
      : HomePopularTempleData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HomePopularTempleListResponseToJson(
  _HomePopularTempleListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_HomePopularTempleData _$HomePopularTempleDataFromJson(
  Map<String, dynamic> json,
) => _HomePopularTempleData(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => PopularTempleItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  pagination: json['pagination'] == null
      ? const PopularTemplePagination()
      : PopularTemplePagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$HomePopularTempleDataToJson(
  _HomePopularTempleData instance,
) => <String, dynamic>{
  'items': instance.items,
  'pagination': instance.pagination,
};

_PopularTempleItem _$PopularTempleItemFromJson(Map<String, dynamic> json) =>
    _PopularTempleItem(
      id: json['id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      slug: json['slug'] as String? ?? "",
      category: json['category'] as String? ?? "",
      location: json['location'] as String? ?? "",
      image: json['image'] as String? ?? "",
      isWishlist: json['isWishlist'] as bool? ?? false,
    );

Map<String, dynamic> _$PopularTempleItemToJson(_PopularTempleItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'category': instance.category,
      'location': instance.location,
      'image': instance.image,
      'isWishlist': instance.isWishlist,
    };

_PopularTemplePagination _$PopularTemplePaginationFromJson(
  Map<String, dynamic> json,
) => _PopularTemplePagination(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 0,
  limit: (json['limit'] as num?)?.toInt() ?? 0,
  totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PopularTemplePaginationToJson(
  _PopularTemplePagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'totalPages': instance.totalPages,
};
