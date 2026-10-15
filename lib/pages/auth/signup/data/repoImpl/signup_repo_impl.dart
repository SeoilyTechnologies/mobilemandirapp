import 'dart:convert';
import 'dart:io';
import 'package:either_dart/src/either.dart';
import 'package:http/http.dart' as http;
import 'package:mandirapp/pages/auth/signup/data/entity/signup_response.dart';
import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../domain/repo/signup_repositery.dart';

class SignupRepoImpl implements SignupRepositery {
  final ApiServices _apiServices = getIt<ApiServices>();

  SignupRepoImpl();

  @override
  Future<Either<Failure, SignupResponse>> sendOpt(
    Map<String, dynamic> userData,
  ) async
  {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.register,
        userData,
        isJson: false,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          final SignupResponse user = SignupResponse.fromJson(responseData);
          return Right(user);
        } else {
          return Left(Failure(responseData['message']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }


  // 🔹 Google place autocomplete
  @override
  Future<Either<Failure, List<dynamic>>> getPlaceSuggestions(
      String input,
      String sessionToken,
      ) async
  {
    try {
      final response =
      await _apiServices.googlePlace(input, sessionToken);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return Right(data['predictions']);
      } else {
        return Left(Failure("Failed to fetch suggestions"));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  // 🔹 Get lat/lng from placeId
  @override
  Future<Either<Failure, Map<String, dynamic>>> getLatLngFromPlaceId(
      String placeId,
      String sessionToken,
      ) async
  {
    try {
      final response = await _apiServices.getLatLngWithPlaceId(
        placeId,
        sessionToken,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final location =
        data['result']['geometry']['location'];
        return Right({
          "lat": location['lat'],
          "lng": location['lng'],
        });
      } else {
        return Left(Failure("Failed to fetch location"));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
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
