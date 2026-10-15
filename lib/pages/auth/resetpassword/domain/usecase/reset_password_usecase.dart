import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/reset_password_model.dart';
import '../repositery/reset_password_repositery.dart';

class ResetPasswordUsecase {
  ResetPasswrodRepositery _resetPasswrodRepositery;
  ResetPasswordUsecase(this._resetPasswrodRepositery);

  Future<Either<Failure, ResetPasswordModel>> resestpasswordExecute(
      Map<String, String> resetPasswordData) async {
    return _resetPasswrodRepositery.resetPasswrod(resetPasswordData);
  }


}
