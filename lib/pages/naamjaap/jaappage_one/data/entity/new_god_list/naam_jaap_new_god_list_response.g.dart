// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naam_jaap_new_god_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NaamJaapNewGodListResponse _$NaamJaapNewGodListResponseFromJson(
  Map<String, dynamic> json,
) => _NaamJaapNewGodListResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? const NaamJaapNewGodListData()
      : NaamJaapNewGodListData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] ?? null,
);

Map<String, dynamic> _$NaamJaapNewGodListResponseToJson(
  _NaamJaapNewGodListResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_NaamJaapNewGodListData _$NaamJaapNewGodListDataFromJson(
  Map<String, dynamic> json,
) => _NaamJaapNewGodListData(
  mantraContentTypeIds:
      (json['mantraContentTypeIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  gods:
      (json['gods'] as List<dynamic>?)
          ?.map((e) => God.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <God>[],
);

Map<String, dynamic> _$NaamJaapNewGodListDataToJson(
  _NaamJaapNewGodListData instance,
) => <String, dynamic>{
  'mantraContentTypeIds': instance.mantraContentTypeIds,
  'gods': instance.gods,
};

_God _$GodFromJson(Map<String, dynamic> json) => _God(
  id: json['_id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  nameLocalized: json['nameLocalized'] == null
      ? const NameLocalized()
      : NameLocalized.fromJson(json['nameLocalized'] as Map<String, dynamic>),
  thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
);

Map<String, dynamic> _$GodToJson(_God instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'nameLocalized': instance.nameLocalized,
  'thumbnailUrl': instance.thumbnailUrl,
  'slug': instance.slug,
};

_NameLocalized _$NameLocalizedFromJson(Map<String, dynamic> json) =>
    _NameLocalized(
      en: json['en'] as String? ?? '',
      hi: json['hi'] as String? ?? '',
    );

Map<String, dynamic> _$NameLocalizedToJson(_NameLocalized instance) =>
    <String, dynamic>{'en': instance.en, 'hi': instance.hi};
