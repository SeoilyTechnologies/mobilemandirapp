// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'festival_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FestivalModel _$FestivalModelFromJson(Map<String, dynamic> json) =>
    _FestivalModel(
      id: json['_id'] as String? ?? "",
      titleHi: json['title_hi'] as String? ?? "",
      titleEn: json['title_en'] as String? ?? "",
      relatedGodHi: json['related_god_hi'] as String? ?? "",
      relatedGodEn: json['related_god_en'] as String? ?? "",
      aboutHi: json['about_hi'] as String? ?? "",
      aboutEn: json['about_en'] as String? ?? "",
      pujaVidhiHi: json['puja_vidhi_hi'] as String? ?? "",
      pujaVidhiEn: json['puja_vidhi_en'] as String? ?? "",
    );

Map<String, dynamic> _$FestivalModelToJson(_FestivalModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title_hi': instance.titleHi,
      'title_en': instance.titleEn,
      'related_god_hi': instance.relatedGodHi,
      'related_god_en': instance.relatedGodEn,
      'about_hi': instance.aboutHi,
      'about_en': instance.aboutEn,
      'puja_vidhi_hi': instance.pujaVidhiHi,
      'puja_vidhi_en': instance.pujaVidhiEn,
    };
