import 'package:either_dart/either.dart';
import '../../../../common/network/failure.dart';
import '../repo/notification_repository.dart';
import '../../data/entity/notification_api_response.dart';

class GetNotificationsUseCase {
  final NotificationRepository _repository;

  GetNotificationsUseCase(this._repository);

  Future<Either<Failure, NotificationApiResponse>> call({
    required int page,
    required int limit,
  }) {
    return _repository.getNotifications(page: page, limit: limit);
  }
}
