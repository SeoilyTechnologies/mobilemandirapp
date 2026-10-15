// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'panchang_by_date_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PanchangByDateResponse {

@JsonKey(name: "success") bool get success;@JsonKey(name: "data") CalendarDayModell? get data;
/// Create a copy of PanchangByDateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PanchangByDateResponseCopyWith<PanchangByDateResponse> get copyWith => _$PanchangByDateResponseCopyWithImpl<PanchangByDateResponse>(this as PanchangByDateResponse, _$identity);

  /// Serializes this PanchangByDateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PanchangByDateResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'PanchangByDateResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $PanchangByDateResponseCopyWith<$Res>  {
  factory $PanchangByDateResponseCopyWith(PanchangByDateResponse value, $Res Function(PanchangByDateResponse) _then) = _$PanchangByDateResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "data") CalendarDayModell? data
});


$CalendarDayModellCopyWith<$Res>? get data;

}
/// @nodoc
class _$PanchangByDateResponseCopyWithImpl<$Res>
    implements $PanchangByDateResponseCopyWith<$Res> {
  _$PanchangByDateResponseCopyWithImpl(this._self, this._then);

  final PanchangByDateResponse _self;
  final $Res Function(PanchangByDateResponse) _then;

/// Create a copy of PanchangByDateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CalendarDayModell?,
  ));
}
/// Create a copy of PanchangByDateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarDayModellCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CalendarDayModellCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PanchangByDateResponse].
extension PanchangByDateResponsePatterns on PanchangByDateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PanchangByDateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PanchangByDateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PanchangByDateResponse value)  $default,){
final _that = this;
switch (_that) {
case _PanchangByDateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PanchangByDateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PanchangByDateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "data")  CalendarDayModell? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PanchangByDateResponse() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "data")  CalendarDayModell? data)  $default,) {final _that = this;
switch (_that) {
case _PanchangByDateResponse():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "data")  CalendarDayModell? data)?  $default,) {final _that = this;
switch (_that) {
case _PanchangByDateResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PanchangByDateResponse implements PanchangByDateResponse {
  const _PanchangByDateResponse({@JsonKey(name: "success") this.success = false, @JsonKey(name: "data") this.data});
  factory _PanchangByDateResponse.fromJson(Map<String, dynamic> json) => _$PanchangByDateResponseFromJson(json);

@override@JsonKey(name: "success") final  bool success;
@override@JsonKey(name: "data") final  CalendarDayModell? data;

/// Create a copy of PanchangByDateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PanchangByDateResponseCopyWith<_PanchangByDateResponse> get copyWith => __$PanchangByDateResponseCopyWithImpl<_PanchangByDateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PanchangByDateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PanchangByDateResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'PanchangByDateResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PanchangByDateResponseCopyWith<$Res> implements $PanchangByDateResponseCopyWith<$Res> {
  factory _$PanchangByDateResponseCopyWith(_PanchangByDateResponse value, $Res Function(_PanchangByDateResponse) _then) = __$PanchangByDateResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "data") CalendarDayModell? data
});


@override $CalendarDayModellCopyWith<$Res>? get data;

}
/// @nodoc
class __$PanchangByDateResponseCopyWithImpl<$Res>
    implements _$PanchangByDateResponseCopyWith<$Res> {
  __$PanchangByDateResponseCopyWithImpl(this._self, this._then);

  final _PanchangByDateResponse _self;
  final $Res Function(_PanchangByDateResponse) _then;

/// Create a copy of PanchangByDateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_PanchangByDateResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CalendarDayModell?,
  ));
}

/// Create a copy of PanchangByDateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarDayModellCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CalendarDayModellCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
