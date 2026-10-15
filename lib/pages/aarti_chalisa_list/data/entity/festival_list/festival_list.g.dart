// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'festival_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FestivalListResponse _$FestivalListResponseFromJson(
  Map<String, dynamic> json,
) => _FestivalListResponse(
  success: json['success'] as bool? ?? false,
  lang: json['lang'] as String? ?? '',
  count: (json['count'] as num?)?.toInt() ?? 0,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => FestivalItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FestivalItem>[],
);

Map<String, dynamic> _$FestivalListResponseToJson(
  _FestivalListResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'lang': instance.lang,
  'count': instance.count,
  'data': instance.data,
};

_FestivalItem _$FestivalItemFromJson(Map<String, dynamic> json) =>
    _FestivalItem(
      title: json['title'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      relatedGod:
          (json['relatedGods'] as List<dynamic>?)
              ?.map((e) => RelatedGod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <RelatedGod>[],
    );

Map<String, dynamic> _$FestivalItemToJson(_FestivalItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'relatedGods': instance.relatedGod,
    };

_RelatedGod _$RelatedGodFromJson(Map<String, dynamic> json) => _RelatedGod(
  name: json['name'] as String? ?? '',
  image: json['image'] as String? ?? '',
  birthPlace: json['birthPlace'] as String? ?? '',
  category: json['category'] as String? ?? '',
);

Map<String, dynamic> _$RelatedGodToJson(_RelatedGod instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'birthPlace': instance.birthPlace,
      'category': instance.category,
    };
