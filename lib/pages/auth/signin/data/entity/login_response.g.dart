// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      token: json['token'] as String? ?? '',
      user: json['user'] == null
          ? const UserModel()
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      isProfileComplete: json['isProfileComplete'] as bool? ?? false,
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'token': instance.token,
      'user': instance.user,
      'isProfileComplete': instance.isProfileComplete,
    };

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['_id'] as String? ?? '',
  username: json['username'] as String? ?? '',
  email: json['email'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  profile_image: json['profile_image'] as String? ?? '',
  date_of_birth: json['date_of_birth'] as String? ?? '',
  birth_time: json['birth_time'] as String? ?? '',
  gender: json['gender'] as String? ?? '',
  language: json['language'] as String? ?? 'en',
  location: json['location'] as String? ?? '',
  latitude: json['latitude'] as String? ?? '',
  longitude: json['longitude'] as String? ?? '',
  account_type: json['account_type'] as String? ?? '',
  isGuest: json['isGuest'] as bool? ?? false,
  isSocialLogin: json['isSocialLogin'] as bool? ?? false,
  isVerified: json['isVerified'] as bool? ?? false,
  isPhoneVerified: json['isPhoneVerified'] as bool? ?? false,
  isProfileComplete: json['isProfileComplete'] as bool? ?? false,
  isNotificationAllowed: json['isNotificationAllowed'] as bool? ?? true,
  createdAt: json['createdAt'] as String? ?? '',
  updatedAt: json['updatedAt'] as String? ?? '',
  v: (json['__v'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'profile_image': instance.profile_image,
      'date_of_birth': instance.date_of_birth,
      'birth_time': instance.birth_time,
      'gender': instance.gender,
      'language': instance.language,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'account_type': instance.account_type,
      'isGuest': instance.isGuest,
      'isSocialLogin': instance.isSocialLogin,
      'isVerified': instance.isVerified,
      'isPhoneVerified': instance.isPhoneVerified,
      'isProfileComplete': instance.isProfileComplete,
      'isNotificationAllowed': instance.isNotificationAllowed,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
    };
