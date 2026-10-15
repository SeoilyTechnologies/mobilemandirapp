// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'god_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GodApiResponse _$GodApiResponseFromJson(Map<String, dynamic> json) =>
    _GodApiResponse(
      success: json['success'] as bool? ?? false,
      lang: json['lang'] as String? ?? '',
      total: (json['total'] as num?)?.toInt() ?? 0,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => GodData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GodData>[],
    );

Map<String, dynamic> _$GodApiResponseToJson(_GodApiResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'lang': instance.lang,
      'total': instance.total,
      'data': instance.data,
    };

_GodData _$GodDataFromJson(Map<String, dynamic> json) => _GodData(
  id: json['_id'] as String? ?? '',
  godName: json['god_name'] as String? ?? '',
  birthPlace: json['birth_place'] as String? ?? '',
  fatherName: json['father_name'] as String? ?? '',
  motherName: json['mother_name'] as String? ?? '',
  wife:
      (json['wife'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  favFood:
      (json['fav_food'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  favColor:
      (json['fav_color'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  thumbnail: json['thumbnail'] as String? ?? '',
  mainTemples:
      (json['main_temples'] as List<dynamic>?)
          ?.map((e) => MainTemple.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <MainTemple>[],
  relatedMonth:
      (json['related_month'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  relatedGod:
      (json['related_god'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  relatedTithi:
      (json['related_tithi'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  relatedDays:
      (json['related_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  relatedFestival:
      (json['related_festival'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  detail: json['detail'] as String? ?? '',
  godImage:
      (json['godimage'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  createdAt: json['createdAt'] as String? ?? '',
  updatedAt: json['updatedAt'] as String? ?? '',
);

Map<String, dynamic> _$GodDataToJson(_GodData instance) => <String, dynamic>{
  '_id': instance.id,
  'god_name': instance.godName,
  'birth_place': instance.birthPlace,
  'father_name': instance.fatherName,
  'mother_name': instance.motherName,
  'wife': instance.wife,
  'fav_food': instance.favFood,
  'fav_color': instance.favColor,
  'thumbnail': instance.thumbnail,
  'main_temples': instance.mainTemples,
  'related_month': instance.relatedMonth,
  'related_god': instance.relatedGod,
  'related_tithi': instance.relatedTithi,
  'related_days': instance.relatedDays,
  'related_festival': instance.relatedFestival,
  'detail': instance.detail,
  'godimage': instance.godImage,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

_MainTemple _$MainTempleFromJson(Map<String, dynamic> json) => _MainTemple(
  templeName: json['temple_name'] as String? ?? '',
  location: json['location'] as String? ?? '',
  image: json['image'] as String? ?? '',
);

Map<String, dynamic> _$MainTempleToJson(_MainTemple instance) =>
    <String, dynamic>{
      'temple_name': instance.templeName,
      'location': instance.location,
      'image': instance.image,
    };
