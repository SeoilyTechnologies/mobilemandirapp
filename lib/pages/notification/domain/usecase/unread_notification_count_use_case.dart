import 'package:either_dart/either.dart';

import '../../../../common/network/failure.dart';
import '../../data/entity/unread_notification/unread_notification_response.dart';
import '../repo/notification_repository.dart';

class UnreadNotificationCountUseCase {
  final NotificationRepository _repository;

  UnreadNotificationCountUseCase(this._repository);

  Future<Either<Failure, UnreadNotificationResponse>> call() {
    return _repository.unReadNotificationCount();
  }
}