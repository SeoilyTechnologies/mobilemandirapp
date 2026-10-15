// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'god_data_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GodDataListResponse _$GodDataListResponseFromJson(Map<String, dynamic> json) =>
    _GodDataListResponse(
      success: json['success'] as bool? ?? false,
      lang: json['lang'] as String? ?? '',
      total: (json['total'] as num?)?.toInt() ?? 0,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => GodData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GodData>[],
    );

Map<String, dynamic> _$GodDataListResponseToJson(
  _GodDataListResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'lang': instance.lang,
  'total': instance.total,
  'data': instance.data,
};

_GodData _$GodDataFromJson(Map<String, dynamic> json) => _GodData(
  id: json['_id'] as String? ?? '',
  god_name: json['god_name'] as String? ?? '',
  birth_place: json['birth_place'] as String? ?? '',
  father_name: json['father_name'] as String? ?? '',
  mother_name: json['mother_name'] as String? ?? '',
  wife:
      (json['wife'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  fav_food:
      (json['fav_food'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  fav_color:
      (json['fav_color'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  thumbnail: json['thumbnail'] as String? ?? '',
  main_temples:
      (json['temple'] as List<dynamic>?)
          ?.map((e) => Temple.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Temple>[],
  related_month:
      (json['related_month'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  related_god:
      (json['related_god'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  related_tithi:
      (json['related_tithi'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  related_days:
      (json['related_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  related_festival:
      (json['related_festival'] as List<dynamic>?)
          ?.map((e) => RelatedFestival.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <RelatedFestival>[],
  detail: json['detail'] as String? ?? '',
  godimage:
      (json['godimage'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  familyMembers:
      (json['familyMembers'] as List<dynamic>?)
          ?.map((e) => FamilyMember.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FamilyMember>[],
  createdAt: json['createdAt'] as String? ?? '',
  updatedAt: json['updatedAt'] as String? ?? '',
);

Map<String, dynamic> _$GodDataToJson(_GodData instance) => <String, dynamic>{
  '_id': instance.id,
  'god_name': instance.god_name,
  'birth_place': instance.birth_place,
  'father_name': instance.father_name,
  'mother_name': instance.mother_name,
  'wife': instance.wife,
  'fav_food': instance.fav_food,
  'fav_color': instance.fav_color,
  'thumbnail': instance.thumbnail,
  'temple': instance.main_temples,
  'related_month': instance.related_month,
  'related_god': instance.related_god,
  'related_tithi': instance.related_tithi,
  'related_days': instance.related_days,
  'related_festival': instance.related_festival,
  'detail': instance.detail,
  'godimage': instance.godimage,
  'familyMembers': instance.familyMembers,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

_Temple _$TempleFromJson(Map<String, dynamic> json) => _Temple(
  id: json['_id'] as String? ?? '',
  temple_name: json['name'] as String? ?? '',
  location: json['location'] as String? ?? '',
  image: json['imageUrl'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
);

Map<String, dynamic> _$TempleToJson(_Temple instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.temple_name,
  'location': instance.location,
  'imageUrl': instance.image,
  'slug': instance.slug,
};

_RelatedFestival _$RelatedFestivalFromJson(Map<String, dynamic> json) =>
    _RelatedFestival(
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      when: json['when'] as String? ?? '',
    );

Map<String, dynamic> _$RelatedFestivalToJson(_RelatedFestival instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'when': instance.when,
    };

_FamilyMember _$FamilyMemberFromJson(Map<String, dynamic> json) =>
    _FamilyMember(
      id: json['id'] as String? ?? '',
      relation: json['relation'] as String? ?? '',
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      isClick: json['isClick'] as bool? ?? false,
    );

Map<String, dynamic> _$FamilyMemberToJson(_FamilyMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'relation': instance.relation,
      'name': instance.name,
      'image': instance.image,
      'isClick': instance.isClick,
    };
