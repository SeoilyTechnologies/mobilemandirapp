// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompleteProfileState {

 String get name; String get gender; String get dob; String get time; bool get isLoading; bool get isSuccess; bool get isServerError; String get apiErrorMessage; String get apiSuccessMessage;// ❌ REMOVE this
// @Default(LoginResponse()) LoginResponse loginResponse,
// ✅ ADD this
 LoginResponse? get updatedUser;
/// Create a copy of CompleteProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteProfileStateCopyWith<CompleteProfileState> get copyWith => _$CompleteProfileStateCopyWithImpl<CompleteProfileState>(this as CompleteProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteProfileState&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.time, time) || other.time == time)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.updatedUser, updatedUser) || other.updatedUser == updatedUser));
}


@override
int get hashCode => Object.hash(runtimeType,name,gender,dob,time,isLoading,isSuccess,isServerError,apiErrorMessage,apiSuccessMessage,updatedUser);

@override
String toString() {
  return 'CompleteProfileState(name: $name, gender: $gender, dob: $dob, time: $time, isLoading: $isLoading, isSuccess: $isSuccess, isServerError: $isServerError, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, updatedUser: $updatedUser)';
}


}

/// @nodoc
abstract mixin class $CompleteProfileStateCopyWith<$Res>  {
  factory $CompleteProfileStateCopyWith(CompleteProfileState value, $Res Function(CompleteProfileState) _then) = _$CompleteProfileStateCopyWithImpl;
@useResult
$Res call({
 String name, String gender, String dob, String time, bool isLoading, bool isSuccess, bool isServerError, String apiErrorMessage, String apiSuccessMessage, LoginResponse? updatedUser
});


$LoginResponseCopyWith<$Res>? get updatedUser;

}
/// @nodoc
class _$CompleteProfileStateCopyWithImpl<$Res>
    implements $CompleteProfileStateCopyWith<$Res> {
  _$CompleteProfileStateCopyWithImpl(this._self, this._then);

  final CompleteProfileState _self;
  final $Res Function(CompleteProfileState) _then;

/// Create a copy of CompleteProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? gender = null,Object? dob = null,Object? time = null,Object? isLoading = null,Object? isSuccess = null,Object? isServerError = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? updatedUser = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,updatedUser: freezed == updatedUser ? _self.updatedUser : updatedUser // ignore: cast_nullable_to_non_nullable
as LoginResponse?,
  ));
}
/// Create a copy of CompleteProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res>? get updatedUser {
    if (_self.updatedUser == null) {
    return null;
  }

  return $LoginResponseCopyWith<$Res>(_self.updatedUser!, (value) {
    return _then(_self.copyWith(updatedUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompleteProfileState].
extension CompleteProfileStatePatterns on CompleteProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteProfileState value)  $default,){
final _that = this;
switch (_that) {
case _CompleteProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String gender,  String dob,  String time,  bool isLoading,  bool isSuccess,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  LoginResponse? updatedUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteProfileState() when $default != null:
return $default(_that.name,_that.gender,_that.dob,_that.time,_that.isLoading,_that.isSuccess,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.updatedUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String gender,  String dob,  String time,  bool isLoading,  bool isSuccess,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  LoginResponse? updatedUser)  $default,) {final _that = this;
switch (_that) {
case _CompleteProfileState():
return $default(_that.name,_that.gender,_that.dob,_that.time,_that.isLoading,_that.isSuccess,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.updatedUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String gender,  String dob,  String time,  bool isLoading,  bool isSuccess,  bool isServerError,  String apiErrorMessage,  String apiSuccessMessage,  LoginResponse? updatedUser)?  $default,) {final _that = this;
switch (_that) {
case _CompleteProfileState() when $default != null:
return $default(_that.name,_that.gender,_that.dob,_that.time,_that.isLoading,_that.isSuccess,_that.isServerError,_that.apiErrorMessage,_that.apiSuccessMessage,_that.updatedUser);case _:
  return null;

}
}

}

/// @nodoc


class _CompleteProfileState implements CompleteProfileState {
  const _CompleteProfileState({this.name = '', this.gender = '', this.dob = '', this.time = '', this.isLoading = false, this.isSuccess = false, this.isServerError = false, this.apiErrorMessage = '', this.apiSuccessMessage = '', this.updatedUser});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String gender;
@override@JsonKey() final  String dob;
@override@JsonKey() final  String time;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool isServerError;
@override@JsonKey() final  String apiErrorMessage;
@override@JsonKey() final  String apiSuccessMessage;
// ❌ REMOVE this
// @Default(LoginResponse()) LoginResponse loginResponse,
// ✅ ADD this
@override final  LoginResponse? updatedUser;

/// Create a copy of CompleteProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteProfileStateCopyWith<_CompleteProfileState> get copyWith => __$CompleteProfileStateCopyWithImpl<_CompleteProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteProfileState&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.time, time) || other.time == time)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.updatedUser, updatedUser) || other.updatedUser == updatedUser));
}


@override
int get hashCode => Object.hash(runtimeType,name,gender,dob,time,isLoading,isSuccess,isServerError,apiErrorMessage,apiSuccessMessage,updatedUser);

@override
String toString() {
  return 'CompleteProfileState(name: $name, gender: $gender, dob: $dob, time: $time, isLoading: $isLoading, isSuccess: $isSuccess, isServerError: $isServerError, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, updatedUser: $updatedUser)';
}


}

/// @nodoc
abstract mixin class _$CompleteProfileStateCopyWith<$Res> implements $CompleteProfileStateCopyWith<$Res> {
  factory _$CompleteProfileStateCopyWith(_CompleteProfileState value, $Res Function(_CompleteProfileState) _then) = __$CompleteProfileStateCopyWithImpl;
@override @useResult
$Res call({
 String name, String gender, String dob, String time, bool isLoading, bool isSuccess, bool isServerError, String apiErrorMessage, String apiSuccessMessage, LoginResponse? updatedUser
});


@override $LoginResponseCopyWith<$Res>? get updatedUser;

}
/// @nodoc
class __$CompleteProfileStateCopyWithImpl<$Res>
    implements _$CompleteProfileStateCopyWith<$Res> {
  __$CompleteProfileStateCopyWithImpl(this._self, this._then);

  final _CompleteProfileState _self;
  final $Res Function(_CompleteProfileState) _then;

/// Create a copy of CompleteProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? gender = null,Object? dob = null,Object? time = null,Object? isLoading = null,Object? isSuccess = null,Object? isServerError = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? updatedUser = freezed,}) {
  return _then(_CompleteProfileState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,updatedUser: freezed == updatedUser ? _self.updatedUser : updatedUser // ignore: cast_nullable_to_non_nullable
as LoginResponse?,
  ));
}

/// Create a copy of CompleteProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res>? get updatedUser {
    if (_self.updatedUser == null) {
    return null;
  }

  return $LoginResponseCopyWith<$Res>(_self.updatedUser!, (value) {
    return _then(_self.copyWith(updatedUser: value));
  });
}
}

// dart format on
