// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {

 bool get success; String get message; String get token; UserModel get user; bool get isProfileComplete;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.isProfileComplete, isProfileComplete) || other.isProfileComplete == isProfileComplete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,token,user,isProfileComplete);

@override
String toString() {
  return 'LoginResponse(success: $success, message: $message, token: $token, user: $user, isProfileComplete: $isProfileComplete)';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, String token, UserModel user, bool isProfileComplete
});


$UserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? token = null,Object? user = null,Object? isProfileComplete = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,isProfileComplete: null == isProfileComplete ? _self.isProfileComplete : isProfileComplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  String token,  UserModel user,  bool isProfileComplete)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.success,_that.message,_that.token,_that.user,_that.isProfileComplete);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  String token,  UserModel user,  bool isProfileComplete)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that.success,_that.message,_that.token,_that.user,_that.isProfileComplete);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  String token,  UserModel user,  bool isProfileComplete)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.success,_that.message,_that.token,_that.user,_that.isProfileComplete);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponse implements LoginResponse {
  const _LoginResponse({this.success = false, this.message = '', this.token = '', this.user = const UserModel(), this.isProfileComplete = false});
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override@JsonKey() final  String token;
@override@JsonKey() final  UserModel user;
@override@JsonKey() final  bool isProfileComplete;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.isProfileComplete, isProfileComplete) || other.isProfileComplete == isProfileComplete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,token,user,isProfileComplete);

@override
String toString() {
  return 'LoginResponse(success: $success, message: $message, token: $token, user: $user, isProfileComplete: $isProfileComplete)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, String token, UserModel user, bool isProfileComplete
});


@override $UserModelCopyWith<$Res> get user;

}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? token = null,Object? user = null,Object? isProfileComplete = null,}) {
  return _then(_LoginResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,isProfileComplete: null == isProfileComplete ? _self.isProfileComplete : isProfileComplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$UserModel {

@JsonKey(name: '_id') String get id; String get username; String get email; String get phone; String get profile_image; String get date_of_birth; String get birth_time; String get gender; String get language; String get location; String get latitude; String get longitude; String get account_type; bool get isGuest; bool get isSocialLogin; bool get isVerified;// email verified
 bool get isPhoneVerified;// phone verified
 bool get isProfileComplete; bool get isNotificationAllowed; String get createdAt; String get updatedAt;@JsonKey(name: '__v') int get v;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profile_image, profile_image) || other.profile_image == profile_image)&&(identical(other.date_of_birth, date_of_birth) || other.date_of_birth == date_of_birth)&&(identical(other.birth_time, birth_time) || other.birth_time == birth_time)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.language, language) || other.language == language)&&(identical(other.location, location) || other.location == location)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.account_type, account_type) || other.account_type == account_type)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.isSocialLogin, isSocialLogin) || other.isSocialLogin == isSocialLogin)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.isProfileComplete, isProfileComplete) || other.isProfileComplete == isProfileComplete)&&(identical(other.isNotificationAllowed, isNotificationAllowed) || other.isNotificationAllowed == isNotificationAllowed)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,username,email,phone,profile_image,date_of_birth,birth_time,gender,language,location,latitude,longitude,account_type,isGuest,isSocialLogin,isVerified,isPhoneVerified,isProfileComplete,isNotificationAllowed,createdAt,updatedAt,v]);

@override
String toString() {
  return 'UserModel(id: $id, username: $username, email: $email, phone: $phone, profile_image: $profile_image, date_of_birth: $date_of_birth, birth_time: $birth_time, gender: $gender, language: $language, location: $location, latitude: $latitude, longitude: $longitude, account_type: $account_type, isGuest: $isGuest, isSocialLogin: $isSocialLogin, isVerified: $isVerified, isPhoneVerified: $isPhoneVerified, isProfileComplete: $isProfileComplete, isNotificationAllowed: $isNotificationAllowed, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String email, String phone, String profile_image, String date_of_birth, String birth_time, String gender, String language, String location, String latitude, String longitude, String account_type, bool isGuest, bool isSocialLogin, bool isVerified, bool isPhoneVerified, bool isProfileComplete, bool isNotificationAllowed, String createdAt, String updatedAt,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = null,Object? phone = null,Object? profile_image = null,Object? date_of_birth = null,Object? birth_time = null,Object? gender = null,Object? language = null,Object? location = null,Object? latitude = null,Object? longitude = null,Object? account_type = null,Object? isGuest = null,Object? isSocialLogin = null,Object? isVerified = null,Object? isPhoneVerified = null,Object? isProfileComplete = null,Object? isNotificationAllowed = null,Object? createdAt = null,Object? updatedAt = null,Object? v = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,profile_image: null == profile_image ? _self.profile_image : profile_image // ignore: cast_nullable_to_non_nullable
as String,date_of_birth: null == date_of_birth ? _self.date_of_birth : date_of_birth // ignore: cast_nullable_to_non_nullable
as String,birth_time: null == birth_time ? _self.birth_time : birth_time // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,account_type: null == account_type ? _self.account_type : account_type // ignore: cast_nullable_to_non_nullable
as String,isGuest: null == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool,isSocialLogin: null == isSocialLogin ? _self.isSocialLogin : isSocialLogin // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isPhoneVerified: null == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as bool,isProfileComplete: null == isProfileComplete ? _self.isProfileComplete : isProfileComplete // ignore: cast_nullable_to_non_nullable
as bool,isNotificationAllowed: null == isNotificationAllowed ? _self.isNotificationAllowed : isNotificationAllowed // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String email,  String phone,  String profile_image,  String date_of_birth,  String birth_time,  String gender,  String language,  String location,  String latitude,  String longitude,  String account_type,  bool isGuest,  bool isSocialLogin,  bool isVerified,  bool isPhoneVerified,  bool isProfileComplete,  bool isNotificationAllowed,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.phone,_that.profile_image,_that.date_of_birth,_that.birth_time,_that.gender,_that.language,_that.location,_that.latitude,_that.longitude,_that.account_type,_that.isGuest,_that.isSocialLogin,_that.isVerified,_that.isPhoneVerified,_that.isProfileComplete,_that.isNotificationAllowed,_that.createdAt,_that.updatedAt,_that.v);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String email,  String phone,  String profile_image,  String date_of_birth,  String birth_time,  String gender,  String language,  String location,  String latitude,  String longitude,  String account_type,  bool isGuest,  bool isSocialLogin,  bool isVerified,  bool isPhoneVerified,  bool isProfileComplete,  bool isNotificationAllowed,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int v)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.username,_that.email,_that.phone,_that.profile_image,_that.date_of_birth,_that.birth_time,_that.gender,_that.language,_that.location,_that.latitude,_that.longitude,_that.account_type,_that.isGuest,_that.isSocialLogin,_that.isVerified,_that.isPhoneVerified,_that.isProfileComplete,_that.isNotificationAllowed,_that.createdAt,_that.updatedAt,_that.v);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String username,  String email,  String phone,  String profile_image,  String date_of_birth,  String birth_time,  String gender,  String language,  String location,  String latitude,  String longitude,  String account_type,  bool isGuest,  bool isSocialLogin,  bool isVerified,  bool isPhoneVerified,  bool isProfileComplete,  bool isNotificationAllowed,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int v)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.phone,_that.profile_image,_that.date_of_birth,_that.birth_time,_that.gender,_that.language,_that.location,_that.latitude,_that.longitude,_that.account_type,_that.isGuest,_that.isSocialLogin,_that.isVerified,_that.isPhoneVerified,_that.isProfileComplete,_that.isNotificationAllowed,_that.createdAt,_that.updatedAt,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(name: '_id') this.id = '', this.username = '', this.email = '', this.phone = '', this.profile_image = '', this.date_of_birth = '', this.birth_time = '', this.gender = '', this.language = 'en', this.location = '', this.latitude = '', this.longitude = '', this.account_type = '', this.isGuest = false, this.isSocialLogin = false, this.isVerified = false, this.isPhoneVerified = false, this.isProfileComplete = false, this.isNotificationAllowed = true, this.createdAt = '', this.updatedAt = '', @JsonKey(name: '__v') this.v = 0});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String username;
@override@JsonKey() final  String email;
@override@JsonKey() final  String phone;
@override@JsonKey() final  String profile_image;
@override@JsonKey() final  String date_of_birth;
@override@JsonKey() final  String birth_time;
@override@JsonKey() final  String gender;
@override@JsonKey() final  String language;
@override@JsonKey() final  String location;
@override@JsonKey() final  String latitude;
@override@JsonKey() final  String longitude;
@override@JsonKey() final  String account_type;
@override@JsonKey() final  bool isGuest;
@override@JsonKey() final  bool isSocialLogin;
@override@JsonKey() final  bool isVerified;
// email verified
@override@JsonKey() final  bool isPhoneVerified;
// phone verified
@override@JsonKey() final  bool isProfileComplete;
@override@JsonKey() final  bool isNotificationAllowed;
@override@JsonKey() final  String createdAt;
@override@JsonKey() final  String updatedAt;
@override@JsonKey(name: '__v') final  int v;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profile_image, profile_image) || other.profile_image == profile_image)&&(identical(other.date_of_birth, date_of_birth) || other.date_of_birth == date_of_birth)&&(identical(other.birth_time, birth_time) || other.birth_time == birth_time)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.language, language) || other.language == language)&&(identical(other.location, location) || other.location == location)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.account_type, account_type) || other.account_type == account_type)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.isSocialLogin, isSocialLogin) || other.isSocialLogin == isSocialLogin)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.isProfileComplete, isProfileComplete) || other.isProfileComplete == isProfileComplete)&&(identical(other.isNotificationAllowed, isNotificationAllowed) || other.isNotificationAllowed == isNotificationAllowed)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,username,email,phone,profile_image,date_of_birth,birth_time,gender,language,location,latitude,longitude,account_type,isGuest,isSocialLogin,isVerified,isPhoneVerified,isProfileComplete,isNotificationAllowed,createdAt,updatedAt,v]);

@override
String toString() {
  return 'UserModel(id: $id, username: $username, email: $email, phone: $phone, profile_image: $profile_image, date_of_birth: $date_of_birth, birth_time: $birth_time, gender: $gender, language: $language, location: $location, latitude: $latitude, longitude: $longitude, account_type: $account_type, isGuest: $isGuest, isSocialLogin: $isSocialLogin, isVerified: $isVerified, isPhoneVerified: $isPhoneVerified, isProfileComplete: $isProfileComplete, isNotificationAllowed: $isNotificationAllowed, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String email, String phone, String profile_image, String date_of_birth, String birth_time, String gender, String language, String location, String latitude, String longitude, String account_type, bool isGuest, bool isSocialLogin, bool isVerified, bool isPhoneVerified, bool isProfileComplete, bool isNotificationAllowed, String createdAt, String updatedAt,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = null,Object? phone = null,Object? profile_image = null,Object? date_of_birth = null,Object? birth_time = null,Object? gender = null,Object? language = null,Object? location = null,Object? latitude = null,Object? longitude = null,Object? account_type = null,Object? isGuest = null,Object? isSocialLogin = null,Object? isVerified = null,Object? isPhoneVerified = null,Object? isProfileComplete = null,Object? isNotificationAllowed = null,Object? createdAt = null,Object? updatedAt = null,Object? v = null,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,profile_image: null == profile_image ? _self.profile_image : profile_image // ignore: cast_nullable_to_non_nullable
as String,date_of_birth: null == date_of_birth ? _self.date_of_birth : date_of_birth // ignore: cast_nullable_to_non_nullable
as String,birth_time: null == birth_time ? _self.birth_time : birth_time // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,account_type: null == account_type ? _self.account_type : account_type // ignore: cast_nullable_to_non_nullable
as String,isGuest: null == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool,isSocialLogin: null == isSocialLogin ? _self.isSocialLogin : isSocialLogin // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isPhoneVerified: null == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as bool,isProfileComplete: null == isProfileComplete ? _self.isProfileComplete : isProfileComplete // ignore: cast_nullable_to_non_nullable
as bool,isNotificationAllowed: null == isNotificationAllowed ? _self.isNotificationAllowed : isNotificationAllowed // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
