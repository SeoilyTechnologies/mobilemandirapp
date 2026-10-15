// complete_profile_usecase.dart
import 'package:either_dart/either.dart';
import '../../../../../common/network/failure.dart';
import '../../../signin/data/entity/login_response.dart';
import '../repositery/complete_profile_repository.dart';

class CompleteProfileUsecase {
  final CompleteProfileRepository repository;

  CompleteProfileUsecase(this.repository);

  Future<Either<Failure, LoginResponse>> submitProfile(
      Map<String, dynamic> data) {
    return repository.updateProfile(data);
  }
}
