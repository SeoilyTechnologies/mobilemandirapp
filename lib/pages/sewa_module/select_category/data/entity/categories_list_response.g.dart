// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoriesListResponse _$CategoriesListResponseFromJson(
  Map<String, dynamic> json,
) => _CategoriesListResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <CategoryItem>[],
  errors: json['errors'],
);

Map<String, dynamic> _$CategoriesListResponseToJson(
  _CategoriesListResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_CategoryItem _$CategoryItemFromJson(Map<String, dynamic> json) =>
    _CategoryItem(
      id: json['_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      backgroundColor: json['backgroundColor'] as String? ?? '',
      backgroundColorEnd: json['backgroundColorEnd'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      isActive: json['isActive'] as bool? ?? false,
      order: (json['order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CategoryItemToJson(_CategoryItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'backgroundColor': instance.backgroundColor,
      'backgroundColorEnd': instance.backgroundColorEnd,
      'icon': instance.icon,
      'isActive': instance.isActive,
      'order': instance.order,
    };
