// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pitru_paksha_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PitruPakshaDetailResponse _$PitruPakshaDetailResponseFromJson(
  Map<String, dynamic> json,
) => _PitruPakshaDetailResponse(
  success: json['success'] as bool? ?? false,
  lang: json['lang'] as String? ?? '',
  data: json['data'] == null
      ? null
      : PitruPakshaDetailData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PitruPakshaDetailResponseToJson(
  _PitruPakshaDetailResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'lang': instance.lang,
  'data': instance.data,
};

_PitruPakshaDetailData _$PitruPakshaDetailDataFromJson(
  Map<String, dynamic> json,
) => _PitruPakshaDetailData(
  title: json['title'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  date: json['date'] as String? ?? '',
  dateDisplay: json['dateDisplay'] as String? ?? '',
  category: json['category'] as String? ?? '',
  categoryLabel: json['categoryLabel'] as String? ?? '',
  specialTags:
      (json['specialTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  isPitruPaksha: json['isPitruPaksha'] as bool? ?? false,
  isShraddhaDay: json['isShraddhaDay'] as bool? ?? false,
  isSarvaPitruAmavasya: json['isSarvaPitruAmavasya'] as bool? ?? false,
  shraddhaType: json['shraddhaType'] as String? ?? '',
  muhurats: json['muhurats'] == null
      ? null
      : PitruDetailMuhurats.fromJson(json['muhurats'] as Map<String, dynamic>),
  panchangVivaran: json['panchangVivaran'] == null
      ? null
      : PitruPanchangVivaran.fromJson(
          json['panchangVivaran'] as Map<String, dynamic>,
        ),
  aparahnaVyapiniTithi: json['aparahnaVyapiniTithi'] == null
      ? null
      : PitruAparahnaVyapiniTithi.fromJson(
          json['aparahnaVyapiniTithi'] as Map<String, dynamic>,
        ),
  rituals:
      (json['rituals'] as List<dynamic>?)
          ?.map((e) => PitruRitual.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  significance: json['significance'] as String? ?? '',
  forWhom: json['forWhom'] as String? ?? '',
  vidhi:
      (json['vidhi'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  dos:
      (json['dos'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  donts:
      (json['donts'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  rahuKaal: json['rahuKaal'] == null
      ? null
      : MuhuratTiming.fromJson(json['rahuKaal'] as Map<String, dynamic>),
  aarti: json['aarti'] == null
      ? null
      : PitruAarti.fromJson(json['aarti'] as Map<String, dynamic>),
  note: json['note'] as String? ?? '',
  meta: json['meta'] == null
      ? null
      : PitruMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PitruPakshaDetailDataToJson(
  _PitruPakshaDetailData instance,
) => <String, dynamic>{
  'title': instance.title,
  'slug': instance.slug,
  'date': instance.date,
  'dateDisplay': instance.dateDisplay,
  'category': instance.category,
  'categoryLabel': instance.categoryLabel,
  'specialTags': instance.specialTags,
  'isPitruPaksha': instance.isPitruPaksha,
  'isShraddhaDay': instance.isShraddhaDay,
  'isSarvaPitruAmavasya': instance.isSarvaPitruAmavasya,
  'shraddhaType': instance.shraddhaType,
  'muhurats': instance.muhurats,
  'panchangVivaran': instance.panchangVivaran,
  'aparahnaVyapiniTithi': instance.aparahnaVyapiniTithi,
  'rituals': instance.rituals,
  'significance': instance.significance,
  'forWhom': instance.forWhom,
  'vidhi': instance.vidhi,
  'dos': instance.dos,
  'donts': instance.donts,
  'rahuKaal': instance.rahuKaal,
  'aarti': instance.aarti,
  'note': instance.note,
  'meta': instance.meta,
};

_PitruDetailMuhurats _$PitruDetailMuhuratsFromJson(
  Map<String, dynamic> json,
) => _PitruDetailMuhurats(
  kutupMuhurat: json['kutupMuhurat'] == null
      ? null
      : MuhuratTiming.fromJson(json['kutupMuhurat'] as Map<String, dynamic>),
  rohinaMuhurat: json['rohinaMuhurat'] == null
      ? null
      : MuhuratTiming.fromJson(json['rohinaMuhurat'] as Map<String, dynamic>),
  aparahnaKaal: json['aparahnaKaal'] == null
      ? null
      : MuhuratTiming.fromJson(json['aparahnaKaal'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PitruDetailMuhuratsToJson(
  _PitruDetailMuhurats instance,
) => <String, dynamic>{
  'kutupMuhurat': instance.kutupMuhurat,
  'rohinaMuhurat': instance.rohinaMuhurat,
  'aparahnaKaal': instance.aparahnaKaal,
};

_PitruPanchangVivaran _$PitruPanchangVivaranFromJson(
  Map<String, dynamic> json,
) => _PitruPanchangVivaran(
  tithi: json['tithi'] as String? ?? '',
  paksha: json['paksha'] as String? ?? '',
  nakshatra: json['nakshatra'] as String? ?? '',
  yoga: json['yoga'] as String? ?? '',
  karan: json['karan'] as String? ?? '',
  day: json['day'] as String? ?? '',
);

Map<String, dynamic> _$PitruPanchangVivaranToJson(
  _PitruPanchangVivaran instance,
) => <String, dynamic>{
  'tithi': instance.tithi,
  'paksha': instance.paksha,
  'nakshatra': instance.nakshatra,
  'yoga': instance.yoga,
  'karan': instance.karan,
  'day': instance.day,
};

_PitruAparahnaVyapiniTithi _$PitruAparahnaVyapiniTithiFromJson(
  Map<String, dynamic> json,
) => _PitruAparahnaVyapiniTithi(
  name: json['name'] as String? ?? '',
  index: (json['index'] as num?)?.toInt() ?? 0,
  paksha: json['paksha'] as String? ?? '',
);

Map<String, dynamic> _$PitruAparahnaVyapiniTithiToJson(
  _PitruAparahnaVyapiniTithi instance,
) => <String, dynamic>{
  'name': instance.name,
  'index': instance.index,
  'paksha': instance.paksha,
};

_PitruRitual _$PitruRitualFromJson(Map<String, dynamic> json) => _PitruRitual(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  subtitle: json['subtitle'] as String? ?? '',
);

Map<String, dynamic> _$PitruRitualToJson(_PitruRitual instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
    };

_PitruAarti _$PitruAartiFromJson(Map<String, dynamic> json) => _PitruAarti(
  slug: json['slug'] as String? ?? '',
  title: json['title'] as String? ?? '',
  titleEn: json['titleEn'] as String? ?? '',
  titleHi: json['titleHi'] as String? ?? '',
);

Map<String, dynamic> _$PitruAartiToJson(_PitruAarti instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'titleEn': instance.titleEn,
      'titleHi': instance.titleHi,
    };
