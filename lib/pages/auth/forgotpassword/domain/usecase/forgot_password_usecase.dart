import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/forgot_password_model.dart';
import '../repositery/forgot_password_repo.dart';

class ForgotPasswordUseCase{
  ForgotPasswordRepositery  _forgotPasswordRepositery;
  ForgotPasswordUseCase(this._forgotPasswordRepositery);

  Future<Either<Failure,ForgotPasswordModel>>executeForgetPassword(Map<String, String> forgotPasswordData)async{
    return await _forgotPasswordRepositery.forgetPassword(forgotPasswordData);
  }
}