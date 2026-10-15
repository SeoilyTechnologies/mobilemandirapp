// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grahan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GrahanModel _$GrahanModelFromJson(Map<String, dynamic> json) => _GrahanModel(
  titleHi: json['title_hi'] as String? ?? "",
  titleEn: json['title_en'] as String? ?? "",
  relatedGodHi: json['related_god_hi'] as String? ?? "",
  relatedGodEn: json['related_god_en'] as String? ?? "",
  type: json['type'] as String? ?? "",
);

Map<String, dynamic> _$GrahanModelToJson(_GrahanModel instance) =>
    <String, dynamic>{
      'title_hi': instance.titleHi,
      'title_en': instance.titleEn,
      'related_god_hi': instance.relatedGodHi,
      'related_god_en': instance.relatedGodEn,
      'type': instance.type,
    };
