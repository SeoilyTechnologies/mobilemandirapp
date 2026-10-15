import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';
import 'package:mandirapp/pages/auth/signin/domain/repositery/login_repositery.dart';
import 'package:mandirapp/pages/auth/signup/data/entity/signup_response.dart';
import 'package:mandirapp/pages/auth/signup/domain/repo/signup_repositery.dart';
import '../../../../../common/network/failure.dart';

class SignupUsecase {
  final SignupRepositery _signupRepositery;
  SignupUsecase(this._signupRepositery);

  Future<Either<Failure, SignupResponse>> registerAccount(
      Map<String, dynamic> userData,) async {
    return _signupRepositery.sendOpt(userData);
  }
  Future<Either<Failure, List<dynamic>>> fetchPlaceSuggestions(
      String input,
      String sessionToken,
      ) {
    return _signupRepositery.getPlaceSuggestions(
      input,
      sessionToken,
    );
  }

  Future<Either<Failure, Map<String, dynamic>>> fetchLatLng(
      String placeId,
      String sessionToken,
      ) {
    return _signupRepositery.getLatLngFromPlaceId(
      placeId,
      sessionToken,
    );
  }

}
