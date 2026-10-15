import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:mandirapp/pages/auth/otp/domain/repositery/otp_repositery.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';
import 'package:mandirapp/pages/auth/signin/domain/repositery/login_repositery.dart';
import '../../../../../common/network/failure.dart';

class OtpUsecase {
  final OtpRepositery _otpRepositery;

  OtpUsecase(this._otpRepositery);

  Future<Either<Failure, LoginResponse>> verifyOtpCalling(
    Map<String, dynamic> userData,
  ) async {
    return _otpRepositery.verifyOtp(userData);
  }

  Future<Either<Failure, dynamic>> callVerifyForgetPasswordOtpApi(
      Map<String, dynamic> userData,
      ) async {
    return _otpRepositery.verifyForgetPasswordOtp(userData);
  }
  Future<Either<Failure, dynamic>> callDeleteAccountApi(
      Map<String, dynamic> userData,
      ) async {
    return _otpRepositery.deleteAccount(userData);
  }
}
