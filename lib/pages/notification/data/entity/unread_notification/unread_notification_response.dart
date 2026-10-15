import 'package:freezed_annotation/freezed_annotation.dart';

part 'unread_notification_response.freezed.dart';
part 'unread_notification_response.g.dart';

@freezed
abstract class UnreadNotificationResponse with _$UnreadNotificationResponse {
  const factory UnreadNotificationResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(UnreadNotificationData()) UnreadNotificationData data,
    @Default(null) dynamic errors,
  }) = _UnreadNotificationResponse;

  factory UnreadNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$UnreadNotificationResponseFromJson(json);
}

@freezed
abstract class UnreadNotificationData with _$UnreadNotificationData {
  const factory UnreadNotificationData({
    @Default(0) int unreadCount,
  }) = _UnreadNotificationData;

  factory UnreadNotificationData.fromJson(Map<String, dynamic> json) =>
      _$UnreadNotificationDataFromJson(json);
}