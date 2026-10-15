// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'force_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForceUpdateResponse _$ForceUpdateResponseFromJson(Map<String, dynamic> json) =>
    _ForceUpdateResponse(
      success: json['success'] as bool? ?? false,
      data: json['data'] == null
          ? const ForceUpdateData()
          : ForceUpdateData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForceUpdateResponseToJson(
  _ForceUpdateResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_ForceUpdateData _$ForceUpdateDataFromJson(Map<String, dynamic> json) =>
    _ForceUpdateData(
      latestVersionAndroid: json['latest_version_android'] as String? ?? '',
      latestVersionIos: json['latest_version_ios'] as String? ?? '',
      minRequiredVersionAndroid:
          json['min_required_version_android'] as String? ?? '',
      minRequiredVersionIos: json['min_required_version_ios'] as String? ?? '',
      forceUpdate: json['force_update'] as bool? ?? false,
      updateUrlAndroid: json['update_url_android'] as String? ?? '',
      updateUrlIos: json['update_url_ios'] as String? ?? '',
    );

Map<String, dynamic> _$ForceUpdateDataToJson(_ForceUpdateData instance) =>
    <String, dynamic>{
      'latest_version_android': instance.latestVersionAndroid,
      'latest_version_ios': instance.latestVersionIos,
      'min_required_version_android': instance.minRequiredVersionAndroid,
      'min_required_version_ios': instance.minRequiredVersionIos,
      'force_update': instance.forceUpdate,
      'update_url_android': instance.updateUrlAndroid,
      'update_url_ios': instance.updateUrlIos,
    };
