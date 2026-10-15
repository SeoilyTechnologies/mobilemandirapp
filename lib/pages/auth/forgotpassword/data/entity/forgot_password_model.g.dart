// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotPasswordModel _$ForgotPasswordModelFromJson(Map<String, dynamic> json) =>
    _ForgotPasswordModel(
      code: (json['code'] as num?)?.toInt() ?? 0,
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$ForgotPasswordModelToJson(
  _ForgotPasswordModel instance,
) => <String, dynamic>{
  'code': instance.code,
  'success': instance.success,
  'message': instance.message,
};
