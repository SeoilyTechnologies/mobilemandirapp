import 'package:either_dart/either.dart';
import 'package:mandirapp/pages/auth/signup/data/entity/signup_response.dart';
import '../../../../../common/network/failure.dart';

abstract class SignupRepositery{
  Future<Either<Failure,SignupResponse>> sendOpt(Map<String, dynamic> registerData);
  Future<Either<Failure, List<dynamic>>> getPlaceSuggestions(
      String input,
      String sessionToken,
      );

  Future<Either<Failure, Map<String, dynamic>>> getLatLngFromPlaceId(
      String placeId,
      String sessionToken,
      );

}