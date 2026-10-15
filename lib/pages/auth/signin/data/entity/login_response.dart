import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default('') String token,
    @Default(UserModel()) UserModel user,
    @Default(false) bool isProfileComplete,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: '_id') @Default('') String id,

    @Default('') String username,
    @Default('') String email,
    @Default('') String phone,

    @Default('') String profile_image,
    @Default('') String date_of_birth,
    @Default('') String birth_time,
    @Default('') String gender,

    @Default('en') String language,

    @Default('') String location,
    @Default('') String latitude,
    @Default('') String longitude,

    @Default('') String account_type,
    @Default(false) bool isGuest,
    @Default(false) bool isSocialLogin,
    @Default(false) bool isVerified,        // email verified
    @Default(false) bool isPhoneVerified,   // phone verified
    @Default(false) bool isProfileComplete,

    @Default(true) bool isNotificationAllowed,

    @Default('') String createdAt,
    @Default('') String updatedAt,

    @JsonKey(name: '__v') @Default(0) int v,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
