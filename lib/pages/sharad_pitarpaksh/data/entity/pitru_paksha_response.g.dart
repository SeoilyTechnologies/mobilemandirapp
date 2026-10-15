// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pitru_paksha_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PitruPakshaResponse _$PitruPakshaResponseFromJson(Map<String, dynamic> json) =>
    _PitruPakshaResponse(
      success: json['success'] as bool? ?? false,
      lang: json['lang'] as String? ?? '',
      data: json['data'] == null
          ? null
          : PitruPakshaData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PitruPakshaResponseToJson(
  _PitruPakshaResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'lang': instance.lang,
  'data': instance.data,
};

_PitruPakshaData _$PitruPakshaDataFromJson(Map<String, dynamic> json) =>
    _PitruPakshaData(
      header: json['header'] == null
          ? null
          : PitruHeader.fromJson(json['header'] as Map<String, dynamic>),
      period: json['period'] == null
          ? null
          : PitruPeriod.fromJson(json['period'] as Map<String, dynamic>),
      todayCard: json['todayCard'] == null
          ? null
          : PitruTodayCard.fromJson(json['todayCard'] as Map<String, dynamic>),
      count: (json['count'] as num?)?.toInt() ?? 0,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => PitruItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PitruItem>[],
      meta: json['meta'] == null
          ? null
          : PitruMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PitruPakshaDataToJson(_PitruPakshaData instance) =>
    <String, dynamic>{
      'header': instance.header,
      'period': instance.period,
      'todayCard': instance.todayCard,
      'count': instance.count,
      'items': instance.items,
      'meta': instance.meta,
    };

_PitruHeader _$PitruHeaderFromJson(Map<String, dynamic> json) => _PitruHeader(
  title: json['title'] as String? ?? '',
  subtitle: json['subtitle'] as String? ?? '',
);

Map<String, dynamic> _$PitruHeaderToJson(_PitruHeader instance) =>
    <String, dynamic>{'title': instance.title, 'subtitle': instance.subtitle};

_PitruPeriod _$PitruPeriodFromJson(Map<String, dynamic> json) => _PitruPeriod(
  label: json['label'] as String? ?? '',
  rangeLabel: json['rangeLabel'] as String? ?? '',
  start: json['start'] as String? ?? '',
  end: json['end'] as String? ?? '',
  year: (json['year'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PitruPeriodToJson(_PitruPeriod instance) =>
    <String, dynamic>{
      'label': instance.label,
      'rangeLabel': instance.rangeLabel,
      'start': instance.start,
      'end': instance.end,
      'year': instance.year,
    };

_PitruTodayCard _$PitruTodayCardFromJson(
  Map<String, dynamic> json,
) => _PitruTodayCard(
  isToday: json['isToday'] as bool? ?? false,
  badge: json['badge'] as String? ?? '',
  title: json['title'] as String? ?? '',
  dateLine: json['dateLine'] as String? ?? '',
  kutupMuhurat: json['kutupMuhurat'] == null
      ? null
      : MuhuratTiming.fromJson(json['kutupMuhurat'] as Map<String, dynamic>),
  aparahnaKaal: json['aparahnaKaal'] == null
      ? null
      : MuhuratTiming.fromJson(json['aparahnaKaal'] as Map<String, dynamic>),
  date: json['date'] as String? ?? '',
  shraddhaType: json['shraddhaType'] as String? ?? '',
  shraddhaTitle: json['shraddhaTitle'] as String? ?? '',
);

Map<String, dynamic> _$PitruTodayCardToJson(_PitruTodayCard instance) =>
    <String, dynamic>{
      'isToday': instance.isToday,
      'badge': instance.badge,
      'title': instance.title,
      'dateLine': instance.dateLine,
      'kutupMuhurat': instance.kutupMuhurat,
      'aparahnaKaal': instance.aparahnaKaal,
      'date': instance.date,
      'shraddhaType': instance.shraddhaType,
      'shraddhaTitle': instance.shraddhaTitle,
    };

_MuhuratTiming _$MuhuratTimingFromJson(Map<String, dynamic> json) =>
    _MuhuratTiming(
      label: json['label'] as String? ?? '',
      display: json['display'] as String? ?? '',
      start: json['start'] as String? ?? '',
      end: json['end'] as String? ?? '',
    );

Map<String, dynamic> _$MuhuratTimingToJson(_MuhuratTiming instance) =>
    <String, dynamic>{
      'label': instance.label,
      'display': instance.display,
      'start': instance.start,
      'end': instance.end,
    };

_PitruItem _$PitruItemFromJson(Map<String, dynamic> json) => _PitruItem(
  id: json['id'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  title: json['title'] as String? ?? '',
  date: json['date'] as String? ?? '',
  dateDisplay: json['dateDisplay'] as String? ?? '',
  dayName: json['dayName'] as String? ?? '',
  category: json['category'] as String? ?? '',
  categoryLabel: json['categoryLabel'] as String? ?? '',
  shortDescription: json['shortDescription'] as String? ?? '',
  isToday: json['isToday'] as bool? ?? false,
  isPitruPaksha: json['isPitruPaksha'] as bool? ?? false,
  isShraddhaDay: json['isShraddhaDay'] as bool? ?? false,
  specialTags:
      (json['specialTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  dayIndex: (json['dayIndex'] as num?)?.toInt() ?? 0,
  aparahnaKaal: json['aparahnaKaal'] == null
      ? null
      : MuhuratTiming.fromJson(json['aparahnaKaal'] as Map<String, dynamic>),
  kutupMuhurat: json['kutupMuhurat'] == null
      ? null
      : MuhuratTiming.fromJson(json['kutupMuhurat'] as Map<String, dynamic>),
  rohinaMuhurat: json['rohinaMuhurat'] == null
      ? null
      : MuhuratTiming.fromJson(json['rohinaMuhurat'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PitruItemToJson(_PitruItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'title': instance.title,
      'date': instance.date,
      'dateDisplay': instance.dateDisplay,
      'dayName': instance.dayName,
      'category': instance.category,
      'categoryLabel': instance.categoryLabel,
      'shortDescription': instance.shortDescription,
      'isToday': instance.isToday,
      'isPitruPaksha': instance.isPitruPaksha,
      'isShraddhaDay': instance.isShraddhaDay,
      'specialTags': instance.specialTags,
      'dayIndex': instance.dayIndex,
      'aparahnaKaal': instance.aparahnaKaal,
      'kutupMuhurat': instance.kutupMuhurat,
      'rohinaMuhurat': instance.rohinaMuhurat,
    };

_PitruMeta _$PitruMetaFromJson(Map<String, dynamic> json) => _PitruMeta(
  latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
  longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
  timezone: json['timezone'] as String? ?? '',
  source: json['source'] as String? ?? '',
);

Map<String, dynamic> _$PitruMetaToJson(_PitruMeta instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'source': instance.source,
    };
