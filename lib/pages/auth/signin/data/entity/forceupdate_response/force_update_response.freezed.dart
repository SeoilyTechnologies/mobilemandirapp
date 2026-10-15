// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'force_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForceUpdateResponse {

 bool get success; ForceUpdateData get data;
/// Create a copy of ForceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForceUpdateResponseCopyWith<ForceUpdateResponse> get copyWith => _$ForceUpdateResponseCopyWithImpl<ForceUpdateResponse>(this as ForceUpdateResponse, _$identity);

  /// Serializes this ForceUpdateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForceUpdateResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ForceUpdateResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ForceUpdateResponseCopyWith<$Res>  {
  factory $ForceUpdateResponseCopyWith(ForceUpdateResponse value, $Res Function(ForceUpdateResponse) _then) = _$ForceUpdateResponseCopyWithImpl;
@useResult
$Res call({
 bool success, ForceUpdateData data
});


$ForceUpdateDataCopyWith<$Res> get data;

}
/// @nodoc
class _$ForceUpdateResponseCopyWithImpl<$Res>
    implements $ForceUpdateResponseCopyWith<$Res> {
  _$ForceUpdateResponseCopyWithImpl(this._self, this._then);

  final ForceUpdateResponse _self;
  final $Res Function(ForceUpdateResponse) _then;

/// Create a copy of ForceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ForceUpdateData,
  ));
}
/// Create a copy of ForceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForceUpdateDataCopyWith<$Res> get data {
  
  return $ForceUpdateDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForceUpdateResponse].
extension ForceUpdateResponsePatterns on ForceUpdateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForceUpdateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForceUpdateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForceUpdateResponse value)  $default,){
final _that = this;
switch (_that) {
case _ForceUpdateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForceUpdateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ForceUpdateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ForceUpdateData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForceUpdateResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ForceUpdateData data)  $default,) {final _that = this;
switch (_that) {
case _ForceUpdateResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ForceUpdateData data)?  $default,) {final _that = this;
switch (_that) {
case _ForceUpdateResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForceUpdateResponse implements ForceUpdateResponse {
  const _ForceUpdateResponse({this.success = false, this.data = const ForceUpdateData()});
  factory _ForceUpdateResponse.fromJson(Map<String, dynamic> json) => _$ForceUpdateResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  ForceUpdateData data;

/// Create a copy of ForceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForceUpdateResponseCopyWith<_ForceUpdateResponse> get copyWith => __$ForceUpdateResponseCopyWithImpl<_ForceUpdateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForceUpdateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForceUpdateResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ForceUpdateResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ForceUpdateResponseCopyWith<$Res> implements $ForceUpdateResponseCopyWith<$Res> {
  factory _$ForceUpdateResponseCopyWith(_ForceUpdateResponse value, $Res Function(_ForceUpdateResponse) _then) = __$ForceUpdateResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, ForceUpdateData data
});


@override $ForceUpdateDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ForceUpdateResponseCopyWithImpl<$Res>
    implements _$ForceUpdateResponseCopyWith<$Res> {
  __$ForceUpdateResponseCopyWithImpl(this._self, this._then);

  final _ForceUpdateResponse _self;
  final $Res Function(_ForceUpdateResponse) _then;

/// Create a copy of ForceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ForceUpdateResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ForceUpdateData,
  ));
}

/// Create a copy of ForceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForceUpdateDataCopyWith<$Res> get data {
  
  return $ForceUpdateDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ForceUpdateData {

@JsonKey(name: 'latest_version_android') String get latestVersionAndroid;@JsonKey(name: 'latest_version_ios') String get latestVersionIos;@JsonKey(name: 'min_required_version_android') String get minRequiredVersionAndroid;@JsonKey(name: 'min_required_version_ios') String get minRequiredVersionIos;@JsonKey(name: 'force_update') bool get forceUpdate;@JsonKey(name: 'update_url_android') String get updateUrlAndroid;@JsonKey(name: 'update_url_ios') String get updateUrlIos;
/// Create a copy of ForceUpdateData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForceUpdateDataCopyWith<ForceUpdateData> get copyWith => _$ForceUpdateDataCopyWithImpl<ForceUpdateData>(this as ForceUpdateData, _$identity);

  /// Serializes this ForceUpdateData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForceUpdateData&&(identical(other.latestVersionAndroid, latestVersionAndroid) || other.latestVersionAndroid == latestVersionAndroid)&&(identical(other.latestVersionIos, latestVersionIos) || other.latestVersionIos == latestVersionIos)&&(identical(other.minRequiredVersionAndroid, minRequiredVersionAndroid) || other.minRequiredVersionAndroid == minRequiredVersionAndroid)&&(identical(other.minRequiredVersionIos, minRequiredVersionIos) || other.minRequiredVersionIos == minRequiredVersionIos)&&(identical(other.forceUpdate, forceUpdate) || other.forceUpdate == forceUpdate)&&(identical(other.updateUrlAndroid, updateUrlAndroid) || other.updateUrlAndroid == updateUrlAndroid)&&(identical(other.updateUrlIos, updateUrlIos) || other.updateUrlIos == updateUrlIos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latestVersionAndroid,latestVersionIos,minRequiredVersionAndroid,minRequiredVersionIos,forceUpdate,updateUrlAndroid,updateUrlIos);

@override
String toString() {
  return 'ForceUpdateData(latestVersionAndroid: $latestVersionAndroid, latestVersionIos: $latestVersionIos, minRequiredVersionAndroid: $minRequiredVersionAndroid, minRequiredVersionIos: $minRequiredVersionIos, forceUpdate: $forceUpdate, updateUrlAndroid: $updateUrlAndroid, updateUrlIos: $updateUrlIos)';
}


}

/// @nodoc
abstract mixin class $ForceUpdateDataCopyWith<$Res>  {
  factory $ForceUpdateDataCopyWith(ForceUpdateData value, $Res Function(ForceUpdateData) _then) = _$ForceUpdateDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'latest_version_android') String latestVersionAndroid,@JsonKey(name: 'latest_version_ios') String latestVersionIos,@JsonKey(name: 'min_required_version_android') String minRequiredVersionAndroid,@JsonKey(name: 'min_required_version_ios') String minRequiredVersionIos,@JsonKey(name: 'force_update') bool forceUpdate,@JsonKey(name: 'update_url_android') String updateUrlAndroid,@JsonKey(name: 'update_url_ios') String updateUrlIos
});




}
/// @nodoc
class _$ForceUpdateDataCopyWithImpl<$Res>
    implements $ForceUpdateDataCopyWith<$Res> {
  _$ForceUpdateDataCopyWithImpl(this._self, this._then);

  final ForceUpdateData _self;
  final $Res Function(ForceUpdateData) _then;

/// Create a copy of ForceUpdateData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latestVersionAndroid = null,Object? latestVersionIos = null,Object? minRequiredVersionAndroid = null,Object? minRequiredVersionIos = null,Object? forceUpdate = null,Object? updateUrlAndroid = null,Object? updateUrlIos = null,}) {
  return _then(_self.copyWith(
latestVersionAndroid: null == latestVersionAndroid ? _self.latestVersionAndroid : latestVersionAndroid // ignore: cast_nullable_to_non_nullable
as String,latestVersionIos: null == latestVersionIos ? _self.latestVersionIos : latestVersionIos // ignore: cast_nullable_to_non_nullable
as String,minRequiredVersionAndroid: null == minRequiredVersionAndroid ? _self.minRequiredVersionAndroid : minRequiredVersionAndroid // ignore: cast_nullable_to_non_nullable
as String,minRequiredVersionIos: null == minRequiredVersionIos ? _self.minRequiredVersionIos : minRequiredVersionIos // ignore: cast_nullable_to_non_nullable
as String,forceUpdate: null == forceUpdate ? _self.forceUpdate : forceUpdate // ignore: cast_nullable_to_non_nullable
as bool,updateUrlAndroid: null == updateUrlAndroid ? _self.updateUrlAndroid : updateUrlAndroid // ignore: cast_nullable_to_non_nullable
as String,updateUrlIos: null == updateUrlIos ? _self.updateUrlIos : updateUrlIos // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForceUpdateData].
extension ForceUpdateDataPatterns on ForceUpdateData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForceUpdateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForceUpdateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForceUpdateData value)  $default,){
final _that = this;
switch (_that) {
case _ForceUpdateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForceUpdateData value)?  $default,){
final _that = this;
switch (_that) {
case _ForceUpdateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'latest_version_android')  String latestVersionAndroid, @JsonKey(name: 'latest_version_ios')  String latestVersionIos, @JsonKey(name: 'min_required_version_android')  String minRequiredVersionAndroid, @JsonKey(name: 'min_required_version_ios')  String minRequiredVersionIos, @JsonKey(name: 'force_update')  bool forceUpdate, @JsonKey(name: 'update_url_android')  String updateUrlAndroid, @JsonKey(name: 'update_url_ios')  String updateUrlIos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForceUpdateData() when $default != null:
return $default(_that.latestVersionAndroid,_that.latestVersionIos,_that.minRequiredVersionAndroid,_that.minRequiredVersionIos,_that.forceUpdate,_that.updateUrlAndroid,_that.updateUrlIos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'latest_version_android')  String latestVersionAndroid, @JsonKey(name: 'latest_version_ios')  String latestVersionIos, @JsonKey(name: 'min_required_version_android')  String minRequiredVersionAndroid, @JsonKey(name: 'min_required_version_ios')  String minRequiredVersionIos, @JsonKey(name: 'force_update')  bool forceUpdate, @JsonKey(name: 'update_url_android')  String updateUrlAndroid, @JsonKey(name: 'update_url_ios')  String updateUrlIos)  $default,) {final _that = this;
switch (_that) {
case _ForceUpdateData():
return $default(_that.latestVersionAndroid,_that.latestVersionIos,_that.minRequiredVersionAndroid,_that.minRequiredVersionIos,_that.forceUpdate,_that.updateUrlAndroid,_that.updateUrlIos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'latest_version_android')  String latestVersionAndroid, @JsonKey(name: 'latest_version_ios')  String latestVersionIos, @JsonKey(name: 'min_required_version_android')  String minRequiredVersionAndroid, @JsonKey(name: 'min_required_version_ios')  String minRequiredVersionIos, @JsonKey(name: 'force_update')  bool forceUpdate, @JsonKey(name: 'update_url_android')  String updateUrlAndroid, @JsonKey(name: 'update_url_ios')  String updateUrlIos)?  $default,) {final _that = this;
switch (_that) {
case _ForceUpdateData() when $default != null:
return $default(_that.latestVersionAndroid,_that.latestVersionIos,_that.minRequiredVersionAndroid,_that.minRequiredVersionIos,_that.forceUpdate,_that.updateUrlAndroid,_that.updateUrlIos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForceUpdateData implements ForceUpdateData {
  const _ForceUpdateData({@JsonKey(name: 'latest_version_android') this.latestVersionAndroid = '', @JsonKey(name: 'latest_version_ios') this.latestVersionIos = '', @JsonKey(name: 'min_required_version_android') this.minRequiredVersionAndroid = '', @JsonKey(name: 'min_required_version_ios') this.minRequiredVersionIos = '', @JsonKey(name: 'force_update') this.forceUpdate = false, @JsonKey(name: 'update_url_android') this.updateUrlAndroid = '', @JsonKey(name: 'update_url_ios') this.updateUrlIos = ''});
  factory _ForceUpdateData.fromJson(Map<String, dynamic> json) => _$ForceUpdateDataFromJson(json);

@override@JsonKey(name: 'latest_version_android') final  String latestVersionAndroid;
@override@JsonKey(name: 'latest_version_ios') final  String latestVersionIos;
@override@JsonKey(name: 'min_required_version_android') final  String minRequiredVersionAndroid;
@override@JsonKey(name: 'min_required_version_ios') final  String minRequiredVersionIos;
@override@JsonKey(name: 'force_update') final  bool forceUpdate;
@override@JsonKey(name: 'update_url_android') final  String updateUrlAndroid;
@override@JsonKey(name: 'update_url_ios') final  String updateUrlIos;

/// Create a copy of ForceUpdateData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForceUpdateDataCopyWith<_ForceUpdateData> get copyWith => __$ForceUpdateDataCopyWithImpl<_ForceUpdateData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForceUpdateDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForceUpdateData&&(identical(other.latestVersionAndroid, latestVersionAndroid) || other.latestVersionAndroid == latestVersionAndroid)&&(identical(other.latestVersionIos, latestVersionIos) || other.latestVersionIos == latestVersionIos)&&(identical(other.minRequiredVersionAndroid, minRequiredVersionAndroid) || other.minRequiredVersionAndroid == minRequiredVersionAndroid)&&(identical(other.minRequiredVersionIos, minRequiredVersionIos) || other.minRequiredVersionIos == minRequiredVersionIos)&&(identical(other.forceUpdate, forceUpdate) || other.forceUpdate == forceUpdate)&&(identical(other.updateUrlAndroid, updateUrlAndroid) || other.updateUrlAndroid == updateUrlAndroid)&&(identical(other.updateUrlIos, updateUrlIos) || other.updateUrlIos == updateUrlIos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latestVersionAndroid,latestVersionIos,minRequiredVersionAndroid,minRequiredVersionIos,forceUpdate,updateUrlAndroid,updateUrlIos);

@override
String toString() {
  return 'ForceUpdateData(latestVersionAndroid: $latestVersionAndroid, latestVersionIos: $latestVersionIos, minRequiredVersionAndroid: $minRequiredVersionAndroid, minRequiredVersionIos: $minRequiredVersionIos, forceUpdate: $forceUpdate, updateUrlAndroid: $updateUrlAndroid, updateUrlIos: $updateUrlIos)';
}


}

/// @nodoc
abstract mixin class _$ForceUpdateDataCopyWith<$Res> implements $ForceUpdateDataCopyWith<$Res> {
  factory _$ForceUpdateDataCopyWith(_ForceUpdateData value, $Res Function(_ForceUpdateData) _then) = __$ForceUpdateDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'latest_version_android') String latestVersionAndroid,@JsonKey(name: 'latest_version_ios') String latestVersionIos,@JsonKey(name: 'min_required_version_android') String minRequiredVersionAndroid,@JsonKey(name: 'min_required_version_ios') String minRequiredVersionIos,@JsonKey(name: 'force_update') bool forceUpdate,@JsonKey(name: 'update_url_android') String updateUrlAndroid,@JsonKey(name: 'update_url_ios') String updateUrlIos
});




}
/// @nodoc
class __$ForceUpdateDataCopyWithImpl<$Res>
    implements _$ForceUpdateDataCopyWith<$Res> {
  __$ForceUpdateDataCopyWithImpl(this._self, this._then);

  final _ForceUpdateData _self;
  final $Res Function(_ForceUpdateData) _then;

/// Create a copy of ForceUpdateData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latestVersionAndroid = null,Object? latestVersionIos = null,Object? minRequiredVersionAndroid = null,Object? minRequiredVersionIos = null,Object? forceUpdate = null,Object? updateUrlAndroid = null,Object? updateUrlIos = null,}) {
  return _then(_ForceUpdateData(
latestVersionAndroid: null == latestVersionAndroid ? _self.latestVersionAndroid : latestVersionAndroid // ignore: cast_nullable_to_non_nullable
as String,latestVersionIos: null == latestVersionIos ? _self.latestVersionIos : latestVersionIos // ignore: cast_nullable_to_non_nullable
as String,minRequiredVersionAndroid: null == minRequiredVersionAndroid ? _self.minRequiredVersionAndroid : minRequiredVersionAndroid // ignore: cast_nullable_to_non_nullable
as String,minRequiredVersionIos: null == minRequiredVersionIos ? _self.minRequiredVersionIos : minRequiredVersionIos // ignore: cast_nullable_to_non_nullable
as String,forceUpdate: null == forceUpdate ? _self.forceUpdate : forceUpdate // ignore: cast_nullable_to_non_nullable
as bool,updateUrlAndroid: null == updateUrlAndroid ? _self.updateUrlAndroid : updateUrlAndroid // ignore: cast_nullable_to_non_nullable
as String,updateUrlIos: null == updateUrlIos ? _self.updateUrlIos : updateUrlIos // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
