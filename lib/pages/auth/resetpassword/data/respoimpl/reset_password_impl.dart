import 'dart:convert';

import 'package:either_dart/src/either.dart';

import 'package:http/http.dart' as http;

import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../domain/repositery/reset_password_repositery.dart';
import '../entity/reset_password_model.dart';

class ResetPasswordImpl implements ResetPasswrodRepositery {
  final ApiServices _apiServices = getIt<ApiServices>();

  ResetPasswordImpl();

  @override
  Future<Either<Failure, ResetPasswordModel>> resetPasswrod(
    Map<String, String> resetPasswordData,
  ) async {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.resetPassword,
        resetPasswordData,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final ResetPasswordModel verificationModel =
            ResetPasswordModel.fromJson(responseData);
        return Right(verificationModel);
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  String _extractErrorMessage(String responseBody) {
    try {
      final Map<String, dynamic> errorData = jsonDecode(responseBody);
      return errorData['message'] ?? 'Unknown error occurred';
    } catch (e) {
      return 'Something goes wrong';
    }
  }
}
