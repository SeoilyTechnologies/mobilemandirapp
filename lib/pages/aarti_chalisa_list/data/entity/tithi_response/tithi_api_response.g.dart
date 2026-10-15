// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tithi_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TithiApiResponse _$TithiApiResponseFromJson(Map<String, dynamic> json) =>
    _TithiApiResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => TithiData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TithiData>[],
      errors: json['errors'] ?? null,
    );

Map<String, dynamic> _$TithiApiResponseToJson(_TithiApiResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'errors': instance.errors,
    };

_TithiData _$TithiDataFromJson(Map<String, dynamic> json) => _TithiData(
  id: json['_id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  hi: json['hi'] as String? ?? '',
  en: json['en'] as String? ?? '',
);

Map<String, dynamic> _$TithiDataToJson(_TithiData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'hi': instance.hi,
      'en': instance.en,
    };
