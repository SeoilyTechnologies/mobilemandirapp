// complete_profile_repository.dart
import 'package:either_dart/either.dart';
import '../../../../../common/network/failure.dart';
import '../../../signin/data/entity/login_response.dart';

abstract class CompleteProfileRepository {
  Future<Either<Failure, LoginResponse>> updateProfile(Map<String, dynamic> data);
}
