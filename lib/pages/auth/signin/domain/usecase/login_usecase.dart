import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';
import 'package:mandirapp/pages/auth/signin/domain/repositery/login_repositery.dart';
import '../../../../../common/network/failure.dart';
import '../../data/entity/forceupdate_response/force_update_response.dart';
import '../../data/entity/sociallogin/social_login_entity.dart';

class LoginUsecase {
  final LoginRepositery _loginRepositery;
  LoginUsecase(this._loginRepositery);

  Future<Either<Failure, LoginResponse>> loginAccoun(
      Map<String, dynamic> userData,{File? file}) async {
    return _loginRepositery.loginAccount(userData);
  }
  Future<Either<Failure,ForceUpdateData>> forceUpdate()async {
    return _loginRepositery.forceUpdate();
  }



  Future<Either<Failure, LoginResponse>> guestLoginApiCall(
      Map<String, dynamic> userData,{File? file}) async {
    return _loginRepositery.guestLogin(userData);
  }

  Future<Either<Failure, LoginResponse>> callGetUserProfileAPi(
      Map<String, dynamic> userData,{File? file}) async {
    return _loginRepositery.getUserProfile(userData);
  }

  Future<Either<Failure, LoginResponse>> callUpdateUserProfileAPi(
      Map<String, dynamic> userData,{File? file}) async {
    return _loginRepositery.updateProfile(userData,file: file);
  }

  Future<Either<Failure, SocialLoginEntity>> callGoogleLogin(
      Map<String, dynamic> userData,{File? file}) async {
    return _loginRepositery.googleLogin();
  }
  Future<Either<Failure, LoginResponse>> socailLoginExecute(
      Map<String, dynamic> userData) async {
    return _loginRepositery.socailLogin(userData);
  }



  Future<Either<Failure, SocialLoginEntity>> callAppleLogin(
      Map<String, dynamic> userData,{File? file}) async {
    return _loginRepositery.appleLogin();
  }

  Future<Either<Failure, LoginResponse>> callSendPhoneOtp(Map<String, dynamic> data) async {
    return _loginRepositery.sendPhoneOtp(data);
  }

  Future<Either<Failure, List<dynamic>>> fetchPlaceSuggestions(
      String input,
      String sessionToken,
      ) {
    return _loginRepositery.getPlaceSuggestions(
      input,
      sessionToken,
    );
  }

  Future<Either<Failure, Map<String, dynamic>>> fetchLatLng(
      String placeId,
      String sessionToken,
      ) {
    return _loginRepositery.getLatLngFromPlaceId(
      placeId,
      sessionToken,
    );
  }
}
