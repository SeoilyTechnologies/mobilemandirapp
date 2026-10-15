import 'dart:convert';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;
import 'package:mandirapp/common/local/SharedPrefs.dart';
import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../common/routes/exports.dart';
import '../../domain/repositery/god_detail_repositery.dart';
import '../entity/god_detail_api_response.dart';
import '../entity/temple_detail/temple_detail_api_response.dart';

class GodDetailsRepositeryImpl implements GodDetailRepositery {
  final ApiServices _apiServices = getIt<ApiServices>();
  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();

  GodDetailsRepositeryImpl();

  String get _currentLang {
    final code = _sharedPrefs.getString(AppConstant.localeKey);
    return code.isNotEmpty ? code : 'en';
  }

  @override
  Future<Either<Failure, GodDetailApiResponse>> getGodDetails(
    String godId,
  ) async {
    try {
      final url = "${AppConstant.getGodById}$godId?lang=$_currentLang";

      http.Response response = await _apiServices.get(
        url,
        useDefaultHeaders: true,
      );


      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          GodDetailApiResponse godDetailApiResponse =
              GodDetailApiResponse.fromJson(responseData);
          return Right(godDetailApiResponse);
        } else {
          final errMsg = responseData['message']?.toString() ?? 'Unknown error';
          return Left(Failure(errMsg));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  // ── SLUG-BASED LOOKUPS ────────────────────────────────────────────────────

  @override
  Future<Either<Failure, GodDetailApiResponse>> getGodDetailBySlug(String slug) async {
    try {
      final url = "${AppConstant.getGodBySlug}$slug?lang=$_currentLang";

      http.Response response = await _apiServices.get(url, useDefaultHeaders: true);


      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          return Right(GodDetailApiResponse.fromJson(responseData));
        } else {
          final errMsg = responseData['message']?.toString() ?? 'Unknown error';
          return Left(Failure(errMsg));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, TempleDetailApiResponse>> getTempleDetailBySlug(String slug) async {
    try {
      final url = "${AppConstant.getTempleBySlug}$slug?lang=$_currentLang";

      http.Response response = await _apiServices.get(url, useDefaultHeaders: true);


      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          return Right(TempleDetailApiResponse.fromJson(responseData));
        } else {
          final errMsg = responseData['message']?.toString() ?? 'Unknown error';
          return Left(Failure(errMsg));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, TempleDetailApiResponse>> getTempleDetail(String templeId) async {
    try {
      final url = "${AppConstant.getTempleById}$templeId?lang=$_currentLang";

      http.Response response = await _apiServices.get(
        url,
        useDefaultHeaders: true,
      );


      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          TempleDetailApiResponse templeDetailApiResponse =
              TempleDetailApiResponse.fromJson(responseData);
          return Right(templeDetailApiResponse);
        } else {
          final errMsg = responseData['message']?.toString() ?? 'Unknown error';
          return Left(Failure(errMsg));
        }
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
