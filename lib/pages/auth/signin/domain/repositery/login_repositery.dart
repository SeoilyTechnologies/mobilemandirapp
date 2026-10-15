import 'dart:io';

import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/forceupdate_response/force_update_response.dart';
import '../../data/entity/login_response.dart';
import '../../data/entity/sociallogin/social_login_entity.dart';



abstract class LoginRepositery{
  Future<Either<Failure,LoginResponse>> loginAccount(Map<String, dynamic> loginData);
  Future<Either<Failure,LoginResponse>> guestLogin(Map<String, dynamic> loginData);
  Future<Either<Failure,LoginResponse>> getUserProfile(Map<String, dynamic> loginData);
  Future<Either<Failure,SocialLoginEntity>> googleLogin();
  Future<Either<Failure,SocialLoginEntity>> appleLogin();
  Future<Either<Failure, LoginResponse>> socailLogin(Map<String, dynamic> loginData);
  Future<Either<Failure,LoginResponse>> updateProfile(Map<String, dynamic> loginData,{File? file});
  Future<Either<Failure,ForceUpdateData>> forceUpdate();

  Future<Either<Failure, LoginResponse>> sendPhoneOtp(Map<String, dynamic> data);

  Future<Either<Failure, List<dynamic>>> getPlaceSuggestions(
      String input,
      String sessionToken,
      );

  Future<Either<Failure, Map<String, dynamic>>> getLatLngFromPlaceId(
      String placeId,
      String sessionToken,
      );
}