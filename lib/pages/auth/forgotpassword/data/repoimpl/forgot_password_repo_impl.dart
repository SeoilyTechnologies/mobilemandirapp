import 'dart:convert';

import 'package:either_dart/src/either.dart';

import 'package:http/http.dart' as http;

import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../domain/repositery/forgot_password_repo.dart';
import '../entity/forgot_password_model.dart';

class ForgotPasswordImpl implements ForgotPasswordRepositery {
  final ApiServices _apiServices = getIt<ApiServices>();
  ForgotPasswordImpl();

  @override
  Future<Either<Failure, ForgotPasswordModel>> forgetPassword(
      Map<String, String> forgotPasswordData) async {
    try {
      http.Response response = await _apiServices.post(
          AppConstant.forgetPassword, forgotPasswordData);
        if (response.statusCode == 200) {
          final Map<String, dynamic> responseData = jsonDecode(response.body);
          final ForgotPasswordModel forgotPasswordModel =
              ForgotPasswordModel.fromJson(responseData);
          return Right(forgotPasswordModel);
        } else {
          final errorMessage = _extractErrorMessage(response.body);
          return Left(Failure(errorMessage));
        }

    } catch (e) {
      return Left(Failure("${e}"));
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
