import 'dart:io';

import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../../signin/data/entity/login_response.dart';



abstract class OtpRepositery{
  Future<Either<Failure,LoginResponse>> verifyOtp(Map<String, dynamic> confirmOtp);
  Future<Either<Failure,dynamic>> verifyForgetPasswordOtp(Map<String, dynamic> confirmOtp);
  Future<Either<Failure,dynamic>> deleteAccount(Map<String, dynamic> confirmOtp);



}