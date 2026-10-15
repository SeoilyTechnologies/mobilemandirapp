import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/reset_password_model.dart';

abstract class ResetPasswrodRepositery{
  Future<Either<Failure,ResetPasswordModel>> resetPasswrod(Map<String, String> resetPasswordData);
}