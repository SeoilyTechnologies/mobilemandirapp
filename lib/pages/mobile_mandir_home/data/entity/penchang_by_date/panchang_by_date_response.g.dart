// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panchang_by_date_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PanchangByDateResponse _$PanchangByDateResponseFromJson(
  Map<String, dynamic> json,
) => _PanchangByDateResponse(
  success: json['success'] as bool? ?? false,
  data: json['data'] == null
      ? null
      : CalendarDayModell.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PanchangByDateResponseToJson(
  _PanchangByDateResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
