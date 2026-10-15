// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CalendarDayModel _$CalendarDayModelFromJson(
  Map<String, dynamic> json,
) => _CalendarDayModel(
  date: json['date'] as String? ?? "",
  isPurnima: json['isPurnima'] as bool? ?? false,
  isEkadashi: json['isEkadashi'] as bool? ?? false,
  isAmavasya: json['isAmavasya'] as bool? ?? false,
  isGrahan: json['isGrahan'] as bool? ?? false,
  tithi: json['tithi'] as String? ?? "",
  paksha: json['paksha'] as String? ?? "",
  nakshatra: json['nakshatra'] as String? ?? "",
  yog: json['yog'] as String? ?? "",
  karan: json['karan'] as String? ?? "",
  moonPhasePercent: (json['moonPhasePercent'] as num?)?.toInt() ?? 0,
  moonPhase: (json['moonPhase'] as num?)?.toDouble() ?? 0.0,
  sunrise: json['sunrise'] as String? ?? "",
  sunset: json['sunset'] as String? ?? "",
  moonrise: json['moonrise'] as String? ?? "",
  festivals:
      (json['festivals'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  relatedGods:
      (json['relatedGods'] as List<dynamic>?)
          ?.map((e) => CalendarRelatedGod.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <CalendarRelatedGod>[],
);

Map<String, dynamic> _$CalendarDayModelToJson(_CalendarDayModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'isPurnima': instance.isPurnima,
      'isEkadashi': instance.isEkadashi,
      'isAmavasya': instance.isAmavasya,
      'isGrahan': instance.isGrahan,
      'tithi': instance.tithi,
      'paksha': instance.paksha,
      'nakshatra': instance.nakshatra,
      'yog': instance.yog,
      'karan': instance.karan,
      'moonPhasePercent': instance.moonPhasePercent,
      'moonPhase': instance.moonPhase,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'festivals': instance.festivals,
      'relatedGods': instance.relatedGods,
    };

_CalendarRelatedGod _$CalendarRelatedGodFromJson(Map<String, dynamic> json) =>
    _CalendarRelatedGod(
      name: json['name'] as String? ?? "",
      image: json['image'] as String? ?? "",
      birthPlace: json['birthPlace'] as String? ?? "",
      category: json['category'] as String? ?? "",
      id: json['_id'] as String? ?? "",
    );

Map<String, dynamic> _$CalendarRelatedGodToJson(_CalendarRelatedGod instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'birthPlace': instance.birthPlace,
      'category': instance.category,
      '_id': instance.id,
    };

_CalendarResponse _$CalendarResponseFromJson(Map<String, dynamic> json) =>
    _CalendarResponse(
      success: json['success'] as bool? ?? false,
      lang: json['lang'] as String? ?? "",
      count: (json['count'] as num?)?.toInt() ?? 0,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CalendarDayModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CalendarDayModel>[],
    );

Map<String, dynamic> _$CalendarResponseToJson(_CalendarResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'lang': instance.lang,
      'count': instance.count,
      'data': instance.data,
    };
