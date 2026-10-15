// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unread_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnreadNotificationResponse _$UnreadNotificationResponseFromJson(
  Map<String, dynamic> json,
) => _UnreadNotificationResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? const UnreadNotificationData()
      : UnreadNotificationData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] ?? null,
);

Map<String, dynamic> _$UnreadNotificationResponseToJson(
  _UnreadNotificationResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_UnreadNotificationData _$UnreadNotificationDataFromJson(
  Map<String, dynamic> json,
) => _UnreadNotificationData(
  unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$UnreadNotificationDataToJson(
  _UnreadNotificationData instance,
) => <String, dynamic>{'unreadCount': instance.unreadCount};
