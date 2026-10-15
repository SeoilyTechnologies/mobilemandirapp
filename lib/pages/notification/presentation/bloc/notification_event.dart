import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_event.freezed.dart';

@freezed
abstract class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.fetch({required bool isRefresh}) = FetchNotifications;
  const factory NotificationEvent.fetchMore() = FetchMoreNotifications;

  /// Mark a single notification as read — [notificationId] is the _id from API,
  /// [index] is its position in the current [items] list for optimistic update.
  const factory NotificationEvent.markAsRead({
    required String notificationId,
    required int index,
  }) = MarkAsRead;
}
