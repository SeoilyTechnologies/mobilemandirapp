import 'package:either_dart/either.dart';
import '../../../../common/network/failure.dart';
import '../repo/notification_repository.dart';

class MarkNotificationReadUseCase {
  final NotificationRepository _repository;

  MarkNotificationReadUseCase(this._repository);

  Future<Either<Failure, bool>> call({required String notificationId}) {
    return _repository.markNotificationRead(
      notificationId: notificationId,
    );
  }
}
