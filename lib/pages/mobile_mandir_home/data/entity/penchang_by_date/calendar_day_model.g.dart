// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CalendarDayModell _$CalendarDayModellFromJson(Map<String, dynamic> json) =>
    _CalendarDayModell(
      id: json['_id'] as String? ?? "",
      date: json['date'] as String? ?? "",
      isPurnima: json['isPurnima'] as bool? ?? false,
      isAmavasya: json['isAmavasya'] as bool? ?? false,
      isGrahan: json['isGrahan'] as bool? ?? false,
      tithi: json['tithi'] as String? ?? "",
      tithiHi: json['tithi_hi'] as String? ?? "",
      tithiEn: json['tithi_en'] as String? ?? "",
      paksha: json['paksha'] as String? ?? "",
      nakshatra: json['nakshatra'] as String? ?? "",
      yog: json['yog'] as String? ?? "",
      karan: json['karan'] as String? ?? "",
      sunrise: json['sunrise'] as String? ?? "",
      sunset: json['sunset'] as String? ?? "",
      moonrise: json['moonrise'] as String? ?? "",
      relatedGodHi: json['related_god_hi'] as String? ?? "",
      relatedGodEn: json['related_god_en'] as String? ?? "",
      grahan: json['grahan'] == null
          ? const GrahanModel()
          : GrahanModel.fromJson(json['grahan'] as Map<String, dynamic>),
      festivals:
          (json['festivals'] as List<dynamic>?)
              ?.map((e) => FestivalModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
    );

Map<String, dynamic> _$CalendarDayModellToJson(_CalendarDayModell instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'date': instance.date,
      'isPurnima': instance.isPurnima,
      'isAmavasya': instance.isAmavasya,
      'isGrahan': instance.isGrahan,
      'tithi': instance.tithi,
      'tithi_hi': instance.tithiHi,
      'tithi_en': instance.tithiEn,
      'paksha': instance.paksha,
      'nakshatra': instance.nakshatra,
      'yog': instance.yog,
      'karan': instance.karan,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'related_god_hi': instance.relatedGodHi,
      'related_god_en': instance.relatedGodEn,
      'grahan': instance.grahan,
      'festivals': instance.festivals,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
