import 'dart:convert';
import 'dart:io';

import 'package:either_dart/src/either.dart';


import 'package:http/http.dart' as http;
import 'package:mandirapp/pages/auth/otp/domain/repositery/otp_repositery.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';
import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';

class OtpRepositeryImpl implements OtpRepositery {
  final ApiServices _apiServices = getIt<ApiServices>();

  OtpRepositeryImpl();

  @override
  Future<Either<Failure, dynamic>> deleteAccount(Map<String, dynamic> userData,) async {
    try {
      http.Response response =
      await _apiServices.post(AppConstant.deleteAccount, userData,isJson: true,useDefaultHeaders: true,);
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if(responseData['success']){

          return Right(responseData);
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
  Future<Either<Failure, LoginResponse>> verifyOtp(Map<String, dynamic> userData,) async {
    try {
      http.Response response =
      await _apiServices.post(AppConstant.verifyPhoneOtp, userData,isJson: true,useDefaultHeaders: true,);
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if(responseData['success']){
          final LoginResponse user = LoginResponse.fromJson(responseData);
          return Right(user);
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
  Future<Either<Failure,dynamic>> verifyForgetPasswordOtp(Map<String, dynamic> userData,) async {
    try {
      http.Response response =
      await _apiServices.post(AppConstant.verifyForgetOtp, userData,isJson: true,useDefaultHeaders: true,);
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if(responseData['success']){
          return Right(responseData);
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


  String _extractErrorMessage(String responseBody) {
    try {
      final Map<String, dynamic> errorData = jsonDecode(responseBody);
      return errorData['message'] ?? 'Unknown error occurred';
    } catch (e) {
      return 'Something goes wrong';
    }
  }



}
