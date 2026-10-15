import 'package:either_dart/either.dart';
import '../../../../common/network/failure.dart';
import '../../data/entity/seva_history_response.dart';
import '../../data/entity/seva_subscription_detail_response.dart';
import '../../data/entity/seva_subscription_response.dart';
import '../repository/seva_history_repository.dart';

class SevaHistoryUsecase {
  final SevaHistoryRepository _repository;

  SevaHistoryUsecase(this._repository);

  Future<Either<Failure, SevaHistoryResponse>> call(String status, int page, int limit) async {
    return await _repository.getSevaHistory(status, page, limit);
  }

  Future<Either<Failure, SevaSubscriptionResponse>> callSubscriptions(int page, int limit) async {
    return await _repository.getSubscriptionHistory(page, limit);
  }

  Future<Either<Failure, SevaSubscriptionDetailResponse>> callSubscriptionDetail(String subscriptionId) async {
    return await _repository.getSubscriptionDetail(subscriptionId);
  }
}

