// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetPasswordModel {

@JsonKey(name: "message") String get message;
/// Create a copy of ResetPasswordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordModelCopyWith<ResetPasswordModel> get copyWith => _$ResetPasswordModelCopyWithImpl<ResetPasswordModel>(this as ResetPasswordModel, _$identity);

  /// Serializes this ResetPasswordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ResetPasswordModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordModelCopyWith<$Res>  {
  factory $ResetPasswordModelCopyWith(ResetPasswordModel value, $Res Function(ResetPasswordModel) _then) = _$ResetPasswordModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "message") String message
});




}
/// @nodoc
class _$ResetPasswordModelCopyWithImpl<$Res>
    implements $ResetPasswordModelCopyWith<$Res> {
  _$ResetPasswordModelCopyWithImpl(this._self, this._then);

  final ResetPasswordModel _self;
  final $Res Function(ResetPasswordModel) _then;

/// Create a copy of ResetPasswordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetPasswordModel].
extension ResetPasswordModelPatterns on ResetPasswordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPasswordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasswordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPasswordModel value)  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPasswordModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "message")  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasswordModel() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "message")  String message)  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordModel():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "message")  String message)?  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResetPasswordModel implements ResetPasswordModel {
  const _ResetPasswordModel({@JsonKey(name: "message") this.message = ''});
  factory _ResetPasswordModel.fromJson(Map<String, dynamic> json) => _$ResetPasswordModelFromJson(json);

@override@JsonKey(name: "message") final  String message;

/// Create a copy of ResetPasswordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordModelCopyWith<_ResetPasswordModel> get copyWith => __$ResetPasswordModelCopyWithImpl<_ResetPasswordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResetPasswordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasswordModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ResetPasswordModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordModelCopyWith<$Res> implements $ResetPasswordModelCopyWith<$Res> {
  factory _$ResetPasswordModelCopyWith(_ResetPasswordModel value, $Res Function(_ResetPasswordModel) _then) = __$ResetPasswordModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "message") String message
});




}
/// @nodoc
class __$ResetPasswordModelCopyWithImpl<$Res>
    implements _$ResetPasswordModelCopyWith<$Res> {
  __$ResetPasswordModelCopyWithImpl(this._self, this._then);

  final _ResetPasswordModel _self;
  final $Res Function(_ResetPasswordModel) _then;

/// Create a copy of ResetPasswordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ResetPasswordModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
