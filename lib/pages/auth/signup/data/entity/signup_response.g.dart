// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    _SignupResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      email: json['email'] as String? ?? '',
      otp: json['otp'] as String? ?? '',
    );

Map<String, dynamic> _$SignupResponseToJson(_SignupResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'email': instance.email,
      'otp': instance.otp,
    };
