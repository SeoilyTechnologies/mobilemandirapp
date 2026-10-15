// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tithi_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TithiApiResponse {

 bool get success; String get message; List<TithiData> get data; dynamic get errors;
/// Create a copy of TithiApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TithiApiResponseCopyWith<TithiApiResponse> get copyWith => _$TithiApiResponseCopyWithImpl<TithiApiResponse>(this as TithiApiResponse, _$identity);

  /// Serializes this TithiApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TithiApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'TithiApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $TithiApiResponseCopyWith<$Res>  {
  factory $TithiApiResponseCopyWith(TithiApiResponse value, $Res Function(TithiApiResponse) _then) = _$TithiApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, List<TithiData> data, dynamic errors
});




}
/// @nodoc
class _$TithiApiResponseCopyWithImpl<$Res>
    implements $TithiApiResponseCopyWith<$Res> {
  _$TithiApiResponseCopyWithImpl(this._self, this._then);

  final TithiApiResponse _self;
  final $Res Function(TithiApiResponse) _then;

/// Create a copy of TithiApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<TithiData>,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [TithiApiResponse].
extension TithiApiResponsePatterns on TithiApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TithiApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TithiApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TithiApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _TithiApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TithiApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TithiApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  List<TithiData> data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TithiApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  List<TithiData> data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _TithiApiResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  List<TithiData> data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _TithiApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TithiApiResponse implements TithiApiResponse {
  const _TithiApiResponse({this.success = false, this.message = '', final  List<TithiData> data = const <TithiData>[], this.errors = null}): _data = data;
  factory _TithiApiResponse.fromJson(Map<String, dynamic> json) => _$TithiApiResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
 final  List<TithiData> _data;
@override@JsonKey() List<TithiData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  dynamic errors;

/// Create a copy of TithiApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TithiApiResponseCopyWith<_TithiApiResponse> get copyWith => __$TithiApiResponseCopyWithImpl<_TithiApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TithiApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TithiApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'TithiApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$TithiApiResponseCopyWith<$Res> implements $TithiApiResponseCopyWith<$Res> {
  factory _$TithiApiResponseCopyWith(_TithiApiResponse value, $Res Function(_TithiApiResponse) _then) = __$TithiApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, List<TithiData> data, dynamic errors
});




}
/// @nodoc
class __$TithiApiResponseCopyWithImpl<$Res>
    implements _$TithiApiResponseCopyWith<$Res> {
  __$TithiApiResponseCopyWithImpl(this._self, this._then);

  final _TithiApiResponse _self;
  final $Res Function(_TithiApiResponse) _then;

/// Create a copy of TithiApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_TithiApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<TithiData>,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$TithiData {

@JsonKey(name: '_id') String get id; String get name; String get hi; String get en;
/// Create a copy of TithiData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TithiDataCopyWith<TithiData> get copyWith => _$TithiDataCopyWithImpl<TithiData>(this as TithiData, _$identity);

  /// Serializes this TithiData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TithiData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.hi, hi) || other.hi == hi)&&(identical(other.en, en) || other.en == en));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,hi,en);

@override
String toString() {
  return 'TithiData(id: $id, name: $name, hi: $hi, en: $en)';
}


}

/// @nodoc
abstract mixin class $TithiDataCopyWith<$Res>  {
  factory $TithiDataCopyWith(TithiData value, $Res Function(TithiData) _then) = _$TithiDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String hi, String en
});




}
/// @nodoc
class _$TithiDataCopyWithImpl<$Res>
    implements $TithiDataCopyWith<$Res> {
  _$TithiDataCopyWithImpl(this._self, this._then);

  final TithiData _self;
  final $Res Function(TithiData) _then;

/// Create a copy of TithiData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? hi = null,Object? en = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,hi: null == hi ? _self.hi : hi // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TithiData].
extension TithiDataPatterns on TithiData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TithiData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TithiData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TithiData value)  $default,){
final _that = this;
switch (_that) {
case _TithiData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TithiData value)?  $default,){
final _that = this;
switch (_that) {
case _TithiData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String hi,  String en)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TithiData() when $default != null:
return $default(_that.id,_that.name,_that.hi,_that.en);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String hi,  String en)  $default,) {final _that = this;
switch (_that) {
case _TithiData():
return $default(_that.id,_that.name,_that.hi,_that.en);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String name,  String hi,  String en)?  $default,) {final _that = this;
switch (_that) {
case _TithiData() when $default != null:
return $default(_that.id,_that.name,_that.hi,_that.en);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TithiData implements TithiData {
  const _TithiData({@JsonKey(name: '_id') this.id = '', this.name = '', this.hi = '', this.en = ''});
  factory _TithiData.fromJson(Map<String, dynamic> json) => _$TithiDataFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String hi;
@override@JsonKey() final  String en;

/// Create a copy of TithiData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TithiDataCopyWith<_TithiData> get copyWith => __$TithiDataCopyWithImpl<_TithiData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TithiDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TithiData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.hi, hi) || other.hi == hi)&&(identical(other.en, en) || other.en == en));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,hi,en);

@override
String toString() {
  return 'TithiData(id: $id, name: $name, hi: $hi, en: $en)';
}


}

/// @nodoc
abstract mixin class _$TithiDataCopyWith<$Res> implements $TithiDataCopyWith<$Res> {
  factory _$TithiDataCopyWith(_TithiData value, $Res Function(_TithiData) _then) = __$TithiDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String hi, String en
});




}
/// @nodoc
class __$TithiDataCopyWithImpl<$Res>
    implements _$TithiDataCopyWith<$Res> {
  __$TithiDataCopyWithImpl(this._self, this._then);

  final _TithiData _self;
  final $Res Function(_TithiData) _then;

/// Create a copy of TithiData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? hi = null,Object? en = null,}) {
  return _then(_TithiData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,hi: null == hi ? _self.hi : hi // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
