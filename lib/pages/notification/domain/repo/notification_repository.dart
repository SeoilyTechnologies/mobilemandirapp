import 'package:either_dart/either.dart';
import '../../../../common/network/failure.dart';
import '../../data/entity/notification_api_response.dart';
import '../../data/entity/unread_notification/unread_notification_response.dart';

abstract class NotificationRepository {
  Future<Either<Failure, NotificationApiResponse>> getNotifications({
    required int page,
    required int limit,
  });

  /// Marks a single notification as read via POST /notifications/{id}/read
  Future<Either<Failure, bool>> markNotificationRead({
    required String notificationId,
  });

  Future<Either<Failure, UnreadNotificationResponse>> unReadNotificationCount();
}
