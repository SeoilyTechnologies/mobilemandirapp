// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPasswordModel {

@JsonKey(name: 'code') int get code;@JsonKey(name: 'success') bool get success;@JsonKey(name: 'message') String get message;
/// Create a copy of ForgotPasswordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordModelCopyWith<ForgotPasswordModel> get copyWith => _$ForgotPasswordModelCopyWithImpl<ForgotPasswordModel>(this as ForgotPasswordModel, _$identity);

  /// Serializes this ForgotPasswordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordModel&&(identical(other.code, code) || other.code == code)&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,success,message);

@override
String toString() {
  return 'ForgotPasswordModel(code: $code, success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordModelCopyWith<$Res>  {
  factory $ForgotPasswordModelCopyWith(ForgotPasswordModel value, $Res Function(ForgotPasswordModel) _then) = _$ForgotPasswordModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'code') int code,@JsonKey(name: 'success') bool success,@JsonKey(name: 'message') String message
});




}
/// @nodoc
class _$ForgotPasswordModelCopyWithImpl<$Res>
    implements $ForgotPasswordModelCopyWith<$Res> {
  _$ForgotPasswordModelCopyWithImpl(this._self, this._then);

  final ForgotPasswordModel _self;
  final $Res Function(ForgotPasswordModel) _then;

/// Create a copy of ForgotPasswordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? success = null,Object? message = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotPasswordModel].
extension ForgotPasswordModelPatterns on ForgotPasswordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPasswordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPasswordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPasswordModel value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPasswordModel value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'code')  int code, @JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPasswordModel() when $default != null:
return $default(_that.code,_that.success,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'code')  int code, @JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message)  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordModel():
return $default(_that.code,_that.success,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'code')  int code, @JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordModel() when $default != null:
return $default(_that.code,_that.success,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForgotPasswordModel implements ForgotPasswordModel {
  const _ForgotPasswordModel({@JsonKey(name: 'code') this.code = 0, @JsonKey(name: 'success') this.success = false, @JsonKey(name: 'message') this.message = ''});
  factory _ForgotPasswordModel.fromJson(Map<String, dynamic> json) => _$ForgotPasswordModelFromJson(json);

@override@JsonKey(name: 'code') final  int code;
@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'message') final  String message;

/// Create a copy of ForgotPasswordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordModelCopyWith<_ForgotPasswordModel> get copyWith => __$ForgotPasswordModelCopyWithImpl<_ForgotPasswordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgotPasswordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordModel&&(identical(other.code, code) || other.code == code)&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,success,message);

@override
String toString() {
  return 'ForgotPasswordModel(code: $code, success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordModelCopyWith<$Res> implements $ForgotPasswordModelCopyWith<$Res> {
  factory _$ForgotPasswordModelCopyWith(_ForgotPasswordModel value, $Res Function(_ForgotPasswordModel) _then) = __$ForgotPasswordModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'code') int code,@JsonKey(name: 'success') bool success,@JsonKey(name: 'message') String message
});




}
/// @nodoc
class __$ForgotPasswordModelCopyWithImpl<$Res>
    implements _$ForgotPasswordModelCopyWith<$Res> {
  __$ForgotPasswordModelCopyWithImpl(this._self, this._then);

  final _ForgotPasswordModel _self;
  final $Res Function(_ForgotPasswordModel) _then;

/// Create a copy of ForgotPasswordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? success = null,Object? message = null,}) {
  return _then(_ForgotPasswordModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
