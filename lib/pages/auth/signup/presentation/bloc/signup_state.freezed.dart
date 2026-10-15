// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupState {

 String get errorMessage; bool get isServerError; bool get isLoading; String get apiSuccessMessage; String get email; String get gender; String get location;// 👇 NEW
 bool get isPlaceLoading; List<dynamic> get placeSuggestions; bool get showHideLocationList;//location list view buulder only show input field fopcus and on tap of this this listview will ne hide
 String get latitidue; String get longitude; String get username; String get password; String get confirmPassword; String get phoneNo; String get dateOfBirth; String get dateOfTime; SignupResponse get response;
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupStateCopyWith<SignupState> get copyWith => _$SignupStateCopyWithImpl<SignupState>(this as SignupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.location, location) || other.location == location)&&(identical(other.isPlaceLoading, isPlaceLoading) || other.isPlaceLoading == isPlaceLoading)&&const DeepCollectionEquality().equals(other.placeSuggestions, placeSuggestions)&&(identical(other.showHideLocationList, showHideLocationList) || other.showHideLocationList == showHideLocationList)&&(identical(other.latitidue, latitidue) || other.latitidue == latitidue)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.phoneNo, phoneNo) || other.phoneNo == phoneNo)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.dateOfTime, dateOfTime) || other.dateOfTime == dateOfTime)&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hashAll([runtimeType,errorMessage,isServerError,isLoading,apiSuccessMessage,email,gender,location,isPlaceLoading,const DeepCollectionEquality().hash(placeSuggestions),showHideLocationList,latitidue,longitude,username,password,confirmPassword,phoneNo,dateOfBirth,dateOfTime,response]);

@override
String toString() {
  return 'SignupState(errorMessage: $errorMessage, isServerError: $isServerError, isLoading: $isLoading, apiSuccessMessage: $apiSuccessMessage, email: $email, gender: $gender, location: $location, isPlaceLoading: $isPlaceLoading, placeSuggestions: $placeSuggestions, showHideLocationList: $showHideLocationList, latitidue: $latitidue, longitude: $longitude, username: $username, password: $password, confirmPassword: $confirmPassword, phoneNo: $phoneNo, dateOfBirth: $dateOfBirth, dateOfTime: $dateOfTime, response: $response)';
}


}

/// @nodoc
abstract mixin class $SignupStateCopyWith<$Res>  {
  factory $SignupStateCopyWith(SignupState value, $Res Function(SignupState) _then) = _$SignupStateCopyWithImpl;
@useResult
$Res call({
 String errorMessage, bool isServerError, bool isLoading, String apiSuccessMessage, String email, String gender, String location, bool isPlaceLoading, List<dynamic> placeSuggestions, bool showHideLocationList, String latitidue, String longitude, String username, String password, String confirmPassword, String phoneNo, String dateOfBirth, String dateOfTime, SignupResponse response
});


$SignupResponseCopyWith<$Res> get response;

}
/// @nodoc
class _$SignupStateCopyWithImpl<$Res>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._self, this._then);

  final SignupState _self;
  final $Res Function(SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errorMessage = null,Object? isServerError = null,Object? isLoading = null,Object? apiSuccessMessage = null,Object? email = null,Object? gender = null,Object? location = null,Object? isPlaceLoading = null,Object? placeSuggestions = null,Object? showHideLocationList = null,Object? latitidue = null,Object? longitude = null,Object? username = null,Object? password = null,Object? confirmPassword = null,Object? phoneNo = null,Object? dateOfBirth = null,Object? dateOfTime = null,Object? response = null,}) {
  return _then(_self.copyWith(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isPlaceLoading: null == isPlaceLoading ? _self.isPlaceLoading : isPlaceLoading // ignore: cast_nullable_to_non_nullable
as bool,placeSuggestions: null == placeSuggestions ? _self.placeSuggestions : placeSuggestions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,showHideLocationList: null == showHideLocationList ? _self.showHideLocationList : showHideLocationList // ignore: cast_nullable_to_non_nullable
as bool,latitidue: null == latitidue ? _self.latitidue : latitidue // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,phoneNo: null == phoneNo ? _self.phoneNo : phoneNo // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,dateOfTime: null == dateOfTime ? _self.dateOfTime : dateOfTime // ignore: cast_nullable_to_non_nullable
as String,response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SignupResponse,
  ));
}
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupResponseCopyWith<$Res> get response {
  
  return $SignupResponseCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns on SignupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupState value)  $default,){
final _that = this;
switch (_that) {
case _SignupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupState value)?  $default,){
final _that = this;
switch (_that) {
case _SignupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String errorMessage,  bool isServerError,  bool isLoading,  String apiSuccessMessage,  String email,  String gender,  String location,  bool isPlaceLoading,  List<dynamic> placeSuggestions,  bool showHideLocationList,  String latitidue,  String longitude,  String username,  String password,  String confirmPassword,  String phoneNo,  String dateOfBirth,  String dateOfTime,  SignupResponse response)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupState() when $default != null:
return $default(_that.errorMessage,_that.isServerError,_that.isLoading,_that.apiSuccessMessage,_that.email,_that.gender,_that.location,_that.isPlaceLoading,_that.placeSuggestions,_that.showHideLocationList,_that.latitidue,_that.longitude,_that.username,_that.password,_that.confirmPassword,_that.phoneNo,_that.dateOfBirth,_that.dateOfTime,_that.response);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String errorMessage,  bool isServerError,  bool isLoading,  String apiSuccessMessage,  String email,  String gender,  String location,  bool isPlaceLoading,  List<dynamic> placeSuggestions,  bool showHideLocationList,  String latitidue,  String longitude,  String username,  String password,  String confirmPassword,  String phoneNo,  String dateOfBirth,  String dateOfTime,  SignupResponse response)  $default,) {final _that = this;
switch (_that) {
case _SignupState():
return $default(_that.errorMessage,_that.isServerError,_that.isLoading,_that.apiSuccessMessage,_that.email,_that.gender,_that.location,_that.isPlaceLoading,_that.placeSuggestions,_that.showHideLocationList,_that.latitidue,_that.longitude,_that.username,_that.password,_that.confirmPassword,_that.phoneNo,_that.dateOfBirth,_that.dateOfTime,_that.response);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String errorMessage,  bool isServerError,  bool isLoading,  String apiSuccessMessage,  String email,  String gender,  String location,  bool isPlaceLoading,  List<dynamic> placeSuggestions,  bool showHideLocationList,  String latitidue,  String longitude,  String username,  String password,  String confirmPassword,  String phoneNo,  String dateOfBirth,  String dateOfTime,  SignupResponse response)?  $default,) {final _that = this;
switch (_that) {
case _SignupState() when $default != null:
return $default(_that.errorMessage,_that.isServerError,_that.isLoading,_that.apiSuccessMessage,_that.email,_that.gender,_that.location,_that.isPlaceLoading,_that.placeSuggestions,_that.showHideLocationList,_that.latitidue,_that.longitude,_that.username,_that.password,_that.confirmPassword,_that.phoneNo,_that.dateOfBirth,_that.dateOfTime,_that.response);case _:
  return null;

}
}

}

/// @nodoc


class _SignupState implements SignupState {
  const _SignupState({this.errorMessage = '', this.isServerError = false, this.isLoading = false, this.apiSuccessMessage = '', this.email = '', this.gender = '', this.location = '', this.isPlaceLoading = false, final  List<dynamic> placeSuggestions = const [], this.showHideLocationList = false, this.latitidue = '', this.longitude = '', this.username = '', this.password = '', this.confirmPassword = '', this.phoneNo = '', this.dateOfBirth = '', this.dateOfTime = '', this.response = const SignupResponse()}): _placeSuggestions = placeSuggestions;
  

@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool isServerError;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String apiSuccessMessage;
@override@JsonKey() final  String email;
@override@JsonKey() final  String gender;
@override@JsonKey() final  String location;
// 👇 NEW
@override@JsonKey() final  bool isPlaceLoading;
 final  List<dynamic> _placeSuggestions;
@override@JsonKey() List<dynamic> get placeSuggestions {
  if (_placeSuggestions is EqualUnmodifiableListView) return _placeSuggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_placeSuggestions);
}

@override@JsonKey() final  bool showHideLocationList;
//location list view buulder only show input field fopcus and on tap of this this listview will ne hide
@override@JsonKey() final  String latitidue;
@override@JsonKey() final  String longitude;
@override@JsonKey() final  String username;
@override@JsonKey() final  String password;
@override@JsonKey() final  String confirmPassword;
@override@JsonKey() final  String phoneNo;
@override@JsonKey() final  String dateOfBirth;
@override@JsonKey() final  String dateOfTime;
@override@JsonKey() final  SignupResponse response;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupStateCopyWith<_SignupState> get copyWith => __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.location, location) || other.location == location)&&(identical(other.isPlaceLoading, isPlaceLoading) || other.isPlaceLoading == isPlaceLoading)&&const DeepCollectionEquality().equals(other._placeSuggestions, _placeSuggestions)&&(identical(other.showHideLocationList, showHideLocationList) || other.showHideLocationList == showHideLocationList)&&(identical(other.latitidue, latitidue) || other.latitidue == latitidue)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.phoneNo, phoneNo) || other.phoneNo == phoneNo)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.dateOfTime, dateOfTime) || other.dateOfTime == dateOfTime)&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hashAll([runtimeType,errorMessage,isServerError,isLoading,apiSuccessMessage,email,gender,location,isPlaceLoading,const DeepCollectionEquality().hash(_placeSuggestions),showHideLocationList,latitidue,longitude,username,password,confirmPassword,phoneNo,dateOfBirth,dateOfTime,response]);

@override
String toString() {
  return 'SignupState(errorMessage: $errorMessage, isServerError: $isServerError, isLoading: $isLoading, apiSuccessMessage: $apiSuccessMessage, email: $email, gender: $gender, location: $location, isPlaceLoading: $isPlaceLoading, placeSuggestions: $placeSuggestions, showHideLocationList: $showHideLocationList, latitidue: $latitidue, longitude: $longitude, username: $username, password: $password, confirmPassword: $confirmPassword, phoneNo: $phoneNo, dateOfBirth: $dateOfBirth, dateOfTime: $dateOfTime, response: $response)';
}


}

/// @nodoc
abstract mixin class _$SignupStateCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(_SignupState value, $Res Function(_SignupState) _then) = __$SignupStateCopyWithImpl;
@override @useResult
$Res call({
 String errorMessage, bool isServerError, bool isLoading, String apiSuccessMessage, String email, String gender, String location, bool isPlaceLoading, List<dynamic> placeSuggestions, bool showHideLocationList, String latitidue, String longitude, String username, String password, String confirmPassword, String phoneNo, String dateOfBirth, String dateOfTime, SignupResponse response
});


@override $SignupResponseCopyWith<$Res> get response;

}
/// @nodoc
class __$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(this._self, this._then);

  final _SignupState _self;
  final $Res Function(_SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,Object? isServerError = null,Object? isLoading = null,Object? apiSuccessMessage = null,Object? email = null,Object? gender = null,Object? location = null,Object? isPlaceLoading = null,Object? placeSuggestions = null,Object? showHideLocationList = null,Object? latitidue = null,Object? longitude = null,Object? username = null,Object? password = null,Object? confirmPassword = null,Object? phoneNo = null,Object? dateOfBirth = null,Object? dateOfTime = null,Object? response = null,}) {
  return _then(_SignupState(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isPlaceLoading: null == isPlaceLoading ? _self.isPlaceLoading : isPlaceLoading // ignore: cast_nullable_to_non_nullable
as bool,placeSuggestions: null == placeSuggestions ? _self._placeSuggestions : placeSuggestions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,showHideLocationList: null == showHideLocationList ? _self.showHideLocationList : showHideLocationList // ignore: cast_nullable_to_non_nullable
as bool,latitidue: null == latitidue ? _self.latitidue : latitidue // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,phoneNo: null == phoneNo ? _self.phoneNo : phoneNo // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,dateOfTime: null == dateOfTime ? _self.dateOfTime : dateOfTime // ignore: cast_nullable_to_non_nullable
as String,response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SignupResponse,
  ));
}

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupResponseCopyWith<$Res> get response {
  
  return $SignupResponseCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

// dart format on
