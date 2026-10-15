import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_api_response.freezed.dart';
part 'notification_api_response.g.dart';

@freezed
abstract class NotificationApiResponse with _$NotificationApiResponse {
  const factory NotificationApiResponse({
    @Default(false) bool success,
    @Default('') String message,
    NotificationData? data,
    dynamic errors,
  }) = _NotificationApiResponse;

  factory NotificationApiResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationApiResponseFromJson(json);
}

@freezed
abstract class NotificationData with _$NotificationData {
  const factory NotificationData({
    @Default([]) List<NotificationItem> items,
    NotificationPagination? pagination,
    @Default(0) int unreadCount,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}

@freezed
abstract class NotificationItem with _$NotificationItem {
  const factory NotificationItem({
    @JsonKey(name: '_id') @Default('') String id,
    @Default('') String userId,
    @Default('') String appType,
    @Default('') String title,
    @Default('') String body,
    @Default('') String type,
    String? sevaId,
    String? vendorId,
    String? godId,
    String? aartiId,
    String? contentId,
    String? serviceId,
    NotificationPayload? data,
    @Default([]) List<String> topics,
    @Default([]) List<String> messageIds,
    @Default(false) bool isRead,
    DateTime? readAt,
    @Default(false) bool isDemo,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') @Default(0) int version,
  }) = _NotificationItem;

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);
}

@freezed
abstract class NotificationPayload with _$NotificationPayload {
  const factory NotificationPayload({
    String? sevaId,
    String? vendorId,
    String? godId,
    String? aartiId,
    String? contentId,
    String? serviceId,
    @Default('') String type,
    @Default('false') String isDemo,
  }) = _NotificationPayload;

  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);
}

@freezed
abstract class NotificationPagination with _$NotificationPagination {
  const factory NotificationPagination({
    @Default(1) int page,
    @Default(20) int limit,
    @Default(0) int total,
    @Default(0) int totalPages,
  }) = _NotificationPagination;

  factory NotificationPagination.fromJson(Map<String, dynamic> json) =>
      _$NotificationPaginationFromJson(json);
}