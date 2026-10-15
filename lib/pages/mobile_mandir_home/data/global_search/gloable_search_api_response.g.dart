// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gloable_search_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GloableSearchApiResponse _$GloableSearchApiResponseFromJson(
  Map<String, dynamic> json,
) => _GloableSearchApiResponse(
  success: json['success'] as bool? ?? false,
  q: json['q'] as String? ?? '',
  counts: json['counts'] == null
      ? const GlobalSearchCounts()
      : GlobalSearchCounts.fromJson(json['counts'] as Map<String, dynamic>),
  data: json['data'] == null
      ? const GlobalSearchData()
      : GlobalSearchData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GloableSearchApiResponseToJson(
  _GloableSearchApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'q': instance.q,
  'counts': instance.counts,
  'data': instance.data,
};

_GlobalSearchCounts _$GlobalSearchCountsFromJson(Map<String, dynamic> json) =>
    _GlobalSearchCounts(
      god: (json['god'] as num?)?.toInt() ?? 0,
      aartichalisa: (json['aartichalisa'] as num?)?.toInt() ?? 0,
      temple: (json['temple'] as num?)?.toInt() ?? 0,
      sant: (json['sant'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$GlobalSearchCountsToJson(_GlobalSearchCounts instance) =>
    <String, dynamic>{
      'god': instance.god,
      'aartichalisa': instance.aartichalisa,
      'temple': instance.temple,
      'sant': instance.sant,
      'total': instance.total,
    };

_GlobalSearchData _$GlobalSearchDataFromJson(Map<String, dynamic> json) =>
    _GlobalSearchData(
      god:
          (json['god'] as List<dynamic>?)
              ?.map((e) => GlobalSearchItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      aartichalisa:
          (json['aartichalisa'] as List<dynamic>?)
              ?.map((e) => GlobalSearchItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      temple:
          (json['temple'] as List<dynamic>?)
              ?.map((e) => GlobalSearchItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sant:
          (json['sant'] as List<dynamic>?)
              ?.map((e) => GlobalSearchItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GlobalSearchDataToJson(_GlobalSearchData instance) =>
    <String, dynamic>{
      'god': instance.god,
      'aartichalisa': instance.aartichalisa,
      'temple': instance.temple,
      'sant': instance.sant,
    };
