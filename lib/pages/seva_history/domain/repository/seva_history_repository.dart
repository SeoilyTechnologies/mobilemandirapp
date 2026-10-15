import 'package:either_dart/either.dart';
import '../../../../common/network/failure.dart';
import '../../data/entity/seva_history_response.dart';
import '../../data/entity/seva_subscription_detail_response.dart';
import '../../data/entity/seva_subscription_response.dart';

abstract class SevaHistoryRepository {
  Future<Either<Failure, SevaHistoryResponse>> getSevaHistory(String status, int page, int limit);
  Future<Either<Failure, SevaSubscriptionResponse>> getSubscriptionHistory(int page, int limit);
  Future<Either<Failure, SevaSubscriptionDetailResponse>> getSubscriptionDetail(String subscriptionId);
}

