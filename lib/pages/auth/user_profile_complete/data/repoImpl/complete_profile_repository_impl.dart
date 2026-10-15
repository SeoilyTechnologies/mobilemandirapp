// complete_profile_repository_impl.dart
import 'dart:convert';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;

import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../signin/data/entity/login_response.dart';
import '../../domain/repositery/complete_profile_repository.dart';

class CompleteProfileRepositoryImpl implements CompleteProfileRepository {
  final ApiServices _apiServices = getIt<ApiServices>();

  @override
  Future<Either<Failure, LoginResponse>> updateProfile(
      Map<String, dynamic> data) async {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.updateUserProfile, // 👈 same API you already use
        data,
        isJson: true,
        useDefaultHeaders: true,

      );

      final Map<String, dynamic> responseData = jsonDecode(response.body);
      if ( responseData['success'] == true) {
        final LoginResponse user = LoginResponse.fromJson(responseData);
        return Right(user);
      } else {
        return Left(Failure(responseData['message'] ?? "Something went wrong"));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
