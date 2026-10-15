import 'dart:convert';
import 'dart:io';

import 'package:either_dart/src/either.dart';


import 'package:http/http.dart' as http;

import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../domain/repositery/categories_repositery.dart';
import '../entity/categories_list_response.dart';


class CategoryRepoImpl implements CategoriesRepositery {
  final ApiServices _apiServices = getIt<ApiServices>();

  CategoryRepoImpl();

  String get _currentLang {
    try {
      final code = getIt<SharedPrefs>().getString(AppConstant.localeKey);
      return code.isNotEmpty ? code : 'en';
    } catch (_) {
      return 'en';
    }
  }

  @override
  Future<Either<Failure,CategoriesListResponse>> getSericesBreedAndTotalCows(Map<String, dynamic> data) async {
    try {
      http.Response response =
      await _apiServices.get("${AppConstant.cateroiesList}?lang=$_currentLang");
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if(responseData['success']){
          final CategoriesListResponse data = CategoriesListResponse.fromJson(responseData);
          return Right(data);
        }else{
          return Left(Failure(responseData['success']));
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



  String _extractErrorMessage(String responseBody) {
    try {
      final Map<String, dynamic> errorData = jsonDecode(responseBody);
      return errorData['message'] ?? 'Unknown error occurred';
    } catch (e) {
      return 'Something goes wrong';
    }
  }



}