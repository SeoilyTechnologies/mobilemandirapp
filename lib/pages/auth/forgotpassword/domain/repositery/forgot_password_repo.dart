import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/forgot_password_model.dart';

abstract class ForgotPasswordRepositery{
  Future<Either<Failure,ForgotPasswordModel>> forgetPassword(Map<String, String> forgotPasswordData);
}