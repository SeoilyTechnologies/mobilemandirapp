// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jaap_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JaapHistoryResponse _$JaapHistoryResponseFromJson(Map<String, dynamic> json) =>
    _JaapHistoryResponse(
      success: json['success'] as bool,
      summary: Summary.fromJson(json['summary'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => JaapSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JaapHistoryResponseToJson(
  _JaapHistoryResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'summary': instance.summary,
  'data': instance.data,
};

_Summary _$SummaryFromJson(Map<String, dynamic> json) => _Summary(
  totalSessions: (json['totalSessions'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
);

Map<String, dynamic> _$SummaryToJson(_Summary instance) => <String, dynamic>{
  'totalSessions': instance.totalSessions,
  'totalCount': instance.totalCount,
};

_JaapSession _$JaapSessionFromJson(Map<String, dynamic> json) => _JaapSession(
  sessionId: json['sessionId'] as String,
  mantra: json['mantra'] == null
      ? null
      : Mantra.fromJson(json['mantra'] as Map<String, dynamic>),
  targetCount: (json['targetCount'] as num).toInt(),
  currentCount: (json['currentCount'] as num).toInt(),
  dateLabel: json['dateLabel'] as String,
  timeRange: json['timeRange'] as String,
  durationText: json['durationText'] as String,
  createdAt: json['createdAt'] as String,
  durationSeconds: (json['durationSeconds'] as num).toInt(),
  status: json['status'] as String,
  isCompleted: json['isCompleted'] as bool,
);

Map<String, dynamic> _$JaapSessionToJson(_JaapSession instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'mantra': instance.mantra,
      'targetCount': instance.targetCount,
      'currentCount': instance.currentCount,
      'dateLabel': instance.dateLabel,
      'timeRange': instance.timeRange,
      'durationText': instance.durationText,
      'createdAt': instance.createdAt,
      'durationSeconds': instance.durationSeconds,
      'status': instance.status,
      'isCompleted': instance.isCompleted,
    };

_Mantra _$MantraFromJson(Map<String, dynamic> json) => _Mantra(
  id: json['id'] as String,
  nameEn: json['nameEn'] as String,
  nameHi: json['nameHi'] as String,
  plainLyricsEn: json['plainLyricsEn'] as String,
  plainLyricsHi: json['plainLyricsHi'] as String,
);

Map<String, dynamic> _$MantraToJson(_Mantra instance) => <String, dynamic>{
  'id': instance.id,
  'nameEn': instance.nameEn,
  'nameHi': instance.nameHi,
  'plainLyricsEn': instance.plainLyricsEn,
  'plainLyricsHi': instance.plainLyricsHi,
};
