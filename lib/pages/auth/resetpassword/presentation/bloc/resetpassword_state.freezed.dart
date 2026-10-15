// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resetpassword_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResetPasswordState {

 String get newPassword; String get confirmPassword; ResetPasswordModel get resetPasswordModel; bool get isLoading; bool get isSuccess; String get errorMessage; String get successMessage; bool get isServerError;
/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordStateCopyWith<ResetPasswordState> get copyWith => _$ResetPasswordStateCopyWithImpl<ResetPasswordState>(this as ResetPasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordState&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.resetPasswordModel, resetPasswordModel) || other.resetPasswordModel == resetPasswordModel)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError));
}


@override
int get hashCode => Object.hash(runtimeType,newPassword,confirmPassword,resetPasswordModel,isLoading,isSuccess,errorMessage,successMessage,isServerError);

@override
String toString() {
  return 'ResetPasswordState(newPassword: $newPassword, confirmPassword: $confirmPassword, resetPasswordModel: $resetPasswordModel, isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, successMessage: $successMessage, isServerError: $isServerError)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordStateCopyWith<$Res>  {
  factory $ResetPasswordStateCopyWith(ResetPasswordState value, $Res Function(ResetPasswordState) _then) = _$ResetPasswordStateCopyWithImpl;
@useResult
$Res call({
 String newPassword, String confirmPassword, ResetPasswordModel resetPasswordModel, bool isLoading, bool isSuccess, String errorMessage, String successMessage, bool isServerError
});


$ResetPasswordModelCopyWith<$Res> get resetPasswordModel;

}
/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final ResetPasswordState _self;
  final $Res Function(ResetPasswordState) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newPassword = null,Object? confirmPassword = null,Object? resetPasswordModel = null,Object? isLoading = null,Object? isSuccess = null,Object? errorMessage = null,Object? successMessage = null,Object? isServerError = null,}) {
  return _then(_self.copyWith(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,resetPasswordModel: null == resetPasswordModel ? _self.resetPasswordModel : resetPasswordModel // ignore: cast_nullable_to_non_nullable
as ResetPasswordModel,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,successMessage: null == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResetPasswordModelCopyWith<$Res> get resetPasswordModel {
  
  return $ResetPasswordModelCopyWith<$Res>(_self.resetPasswordModel, (value) {
    return _then(_self.copyWith(resetPasswordModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResetPasswordState].
extension ResetPasswordStatePatterns on ResetPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String newPassword,  String confirmPassword,  ResetPasswordModel resetPasswordModel,  bool isLoading,  bool isSuccess,  String errorMessage,  String successMessage,  bool isServerError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
return $default(_that.newPassword,_that.confirmPassword,_that.resetPasswordModel,_that.isLoading,_that.isSuccess,_that.errorMessage,_that.successMessage,_that.isServerError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String newPassword,  String confirmPassword,  ResetPasswordModel resetPasswordModel,  bool isLoading,  bool isSuccess,  String errorMessage,  String successMessage,  bool isServerError)  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordState():
return $default(_that.newPassword,_that.confirmPassword,_that.resetPasswordModel,_that.isLoading,_that.isSuccess,_that.errorMessage,_that.successMessage,_that.isServerError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String newPassword,  String confirmPassword,  ResetPasswordModel resetPasswordModel,  bool isLoading,  bool isSuccess,  String errorMessage,  String successMessage,  bool isServerError)?  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
return $default(_that.newPassword,_that.confirmPassword,_that.resetPasswordModel,_that.isLoading,_that.isSuccess,_that.errorMessage,_that.successMessage,_that.isServerError);case _:
  return null;

}
}

}

/// @nodoc


class _ResetPasswordState implements ResetPasswordState {
  const _ResetPasswordState({this.newPassword = '', this.confirmPassword = '', this.resetPasswordModel = const ResetPasswordModel(), this.isLoading = false, this.isSuccess = false, this.errorMessage = '', this.successMessage = '', this.isServerError = false});
  

@override@JsonKey() final  String newPassword;
@override@JsonKey() final  String confirmPassword;
@override@JsonKey() final  ResetPasswordModel resetPasswordModel;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  String successMessage;
@override@JsonKey() final  bool isServerError;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith => __$ResetPasswordStateCopyWithImpl<_ResetPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasswordState&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.resetPasswordModel, resetPasswordModel) || other.resetPasswordModel == resetPasswordModel)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isServerError, isServerError) || other.isServerError == isServerError));
}


@override
int get hashCode => Object.hash(runtimeType,newPassword,confirmPassword,resetPasswordModel,isLoading,isSuccess,errorMessage,successMessage,isServerError);

@override
String toString() {
  return 'ResetPasswordState(newPassword: $newPassword, confirmPassword: $confirmPassword, resetPasswordModel: $resetPasswordModel, isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, successMessage: $successMessage, isServerError: $isServerError)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordStateCopyWith<$Res> implements $ResetPasswordStateCopyWith<$Res> {
  factory _$ResetPasswordStateCopyWith(_ResetPasswordState value, $Res Function(_ResetPasswordState) _then) = __$ResetPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 String newPassword, String confirmPassword, ResetPasswordModel resetPasswordModel, bool isLoading, bool isSuccess, String errorMessage, String successMessage, bool isServerError
});


@override $ResetPasswordModelCopyWith<$Res> get resetPasswordModel;

}
/// @nodoc
class __$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordStateCopyWith<$Res> {
  __$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final _ResetPasswordState _self;
  final $Res Function(_ResetPasswordState) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newPassword = null,Object? confirmPassword = null,Object? resetPasswordModel = null,Object? isLoading = null,Object? isSuccess = null,Object? errorMessage = null,Object? successMessage = null,Object? isServerError = null,}) {
  return _then(_ResetPasswordState(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,resetPasswordModel: null == resetPasswordModel ? _self.resetPasswordModel : resetPasswordModel // ignore: cast_nullable_to_non_nullable
as ResetPasswordModel,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,successMessage: null == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String,isServerError: null == isServerError ? _self.isServerError : isServerError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResetPasswordModelCopyWith<$Res> get resetPasswordModel {
  
  return $ResetPasswordModelCopyWith<$Res>(_self.resetPasswordModel, (value) {
    return _then(_self.copyWith(resetPasswordModel: value));
  });
}
}

// dart format on
