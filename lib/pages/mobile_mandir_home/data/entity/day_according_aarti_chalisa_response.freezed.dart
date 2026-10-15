// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_according_aarti_chalisa_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DayAccordingAartiChalisaResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'message') String get message;@JsonKey(name: 'data') DayAartiChalisaData get data;
/// Create a copy of DayAccordingAartiChalisaResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayAccordingAartiChalisaResponseCopyWith<DayAccordingAartiChalisaResponse> get copyWith => _$DayAccordingAartiChalisaResponseCopyWithImpl<DayAccordingAartiChalisaResponse>(this as DayAccordingAartiChalisaResponse, _$identity);

  /// Serializes this DayAccordingAartiChalisaResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayAccordingAartiChalisaResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'DayAccordingAartiChalisaResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $DayAccordingAartiChalisaResponseCopyWith<$Res>  {
  factory $DayAccordingAartiChalisaResponseCopyWith(DayAccordingAartiChalisaResponse value, $Res Function(DayAccordingAartiChalisaResponse) _then) = _$DayAccordingAartiChalisaResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') DayAartiChalisaData data
});


$DayAartiChalisaDataCopyWith<$Res> get data;

}
/// @nodoc
class _$DayAccordingAartiChalisaResponseCopyWithImpl<$Res>
    implements $DayAccordingAartiChalisaResponseCopyWith<$Res> {
  _$DayAccordingAartiChalisaResponseCopyWithImpl(this._self, this._then);

  final DayAccordingAartiChalisaResponse _self;
  final $Res Function(DayAccordingAartiChalisaResponse) _then;

/// Create a copy of DayAccordingAartiChalisaResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DayAartiChalisaData,
  ));
}
/// Create a copy of DayAccordingAartiChalisaResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayAartiChalisaDataCopyWith<$Res> get data {
  
  return $DayAartiChalisaDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DayAccordingAartiChalisaResponse].
extension DayAccordingAartiChalisaResponsePatterns on DayAccordingAartiChalisaResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayAccordingAartiChalisaResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayAccordingAartiChalisaResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayAccordingAartiChalisaResponse value)  $default,){
final _that = this;
switch (_that) {
case _DayAccordingAartiChalisaResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayAccordingAartiChalisaResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DayAccordingAartiChalisaResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  DayAartiChalisaData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayAccordingAartiChalisaResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  DayAartiChalisaData data)  $default,) {final _that = this;
switch (_that) {
case _DayAccordingAartiChalisaResponse():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  DayAartiChalisaData data)?  $default,) {final _that = this;
switch (_that) {
case _DayAccordingAartiChalisaResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayAccordingAartiChalisaResponse implements DayAccordingAartiChalisaResponse {
  const _DayAccordingAartiChalisaResponse({@JsonKey(name: 'success') this.success = false, @JsonKey(name: 'message') this.message = '', @JsonKey(name: 'data') this.data = const DayAartiChalisaData()});
  factory _DayAccordingAartiChalisaResponse.fromJson(Map<String, dynamic> json) => _$DayAccordingAartiChalisaResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'message') final  String message;
@override@JsonKey(name: 'data') final  DayAartiChalisaData data;

/// Create a copy of DayAccordingAartiChalisaResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayAccordingAartiChalisaResponseCopyWith<_DayAccordingAartiChalisaResponse> get copyWith => __$DayAccordingAartiChalisaResponseCopyWithImpl<_DayAccordingAartiChalisaResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayAccordingAartiChalisaResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayAccordingAartiChalisaResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'DayAccordingAartiChalisaResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DayAccordingAartiChalisaResponseCopyWith<$Res> implements $DayAccordingAartiChalisaResponseCopyWith<$Res> {
  factory _$DayAccordingAartiChalisaResponseCopyWith(_DayAccordingAartiChalisaResponse value, $Res Function(_DayAccordingAartiChalisaResponse) _then) = __$DayAccordingAartiChalisaResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') DayAartiChalisaData data
});


@override $DayAartiChalisaDataCopyWith<$Res> get data;

}
/// @nodoc
class __$DayAccordingAartiChalisaResponseCopyWithImpl<$Res>
    implements _$DayAccordingAartiChalisaResponseCopyWith<$Res> {
  __$DayAccordingAartiChalisaResponseCopyWithImpl(this._self, this._then);

  final _DayAccordingAartiChalisaResponse _self;
  final $Res Function(_DayAccordingAartiChalisaResponse) _then;

/// Create a copy of DayAccordingAartiChalisaResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_DayAccordingAartiChalisaResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DayAartiChalisaData,
  ));
}

/// Create a copy of DayAccordingAartiChalisaResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayAartiChalisaDataCopyWith<$Res> get data {
  
  return $DayAartiChalisaDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DayAartiChalisaData {

@JsonKey(name: 'day') String get day;@JsonKey(name: 'count') int get count;@JsonKey(name: 'list') List<DayAartiChalisaItem> get list;
/// Create a copy of DayAartiChalisaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayAartiChalisaDataCopyWith<DayAartiChalisaData> get copyWith => _$DayAartiChalisaDataCopyWithImpl<DayAartiChalisaData>(this as DayAartiChalisaData, _$identity);

  /// Serializes this DayAartiChalisaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayAartiChalisaData&&(identical(other.day, day) || other.day == day)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.list, list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,count,const DeepCollectionEquality().hash(list));

@override
String toString() {
  return 'DayAartiChalisaData(day: $day, count: $count, list: $list)';
}


}

/// @nodoc
abstract mixin class $DayAartiChalisaDataCopyWith<$Res>  {
  factory $DayAartiChalisaDataCopyWith(DayAartiChalisaData value, $Res Function(DayAartiChalisaData) _then) = _$DayAartiChalisaDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'day') String day,@JsonKey(name: 'count') int count,@JsonKey(name: 'list') List<DayAartiChalisaItem> list
});




}
/// @nodoc
class _$DayAartiChalisaDataCopyWithImpl<$Res>
    implements $DayAartiChalisaDataCopyWith<$Res> {
  _$DayAartiChalisaDataCopyWithImpl(this._self, this._then);

  final DayAartiChalisaData _self;
  final $Res Function(DayAartiChalisaData) _then;

/// Create a copy of DayAartiChalisaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? count = null,Object? list = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<DayAartiChalisaItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [DayAartiChalisaData].
extension DayAartiChalisaDataPatterns on DayAartiChalisaData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayAartiChalisaData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayAartiChalisaData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayAartiChalisaData value)  $default,){
final _that = this;
switch (_that) {
case _DayAartiChalisaData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayAartiChalisaData value)?  $default,){
final _that = this;
switch (_that) {
case _DayAartiChalisaData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'day')  String day, @JsonKey(name: 'count')  int count, @JsonKey(name: 'list')  List<DayAartiChalisaItem> list)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayAartiChalisaData() when $default != null:
return $default(_that.day,_that.count,_that.list);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'day')  String day, @JsonKey(name: 'count')  int count, @JsonKey(name: 'list')  List<DayAartiChalisaItem> list)  $default,) {final _that = this;
switch (_that) {
case _DayAartiChalisaData():
return $default(_that.day,_that.count,_that.list);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'day')  String day, @JsonKey(name: 'count')  int count, @JsonKey(name: 'list')  List<DayAartiChalisaItem> list)?  $default,) {final _that = this;
switch (_that) {
case _DayAartiChalisaData() when $default != null:
return $default(_that.day,_that.count,_that.list);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayAartiChalisaData implements DayAartiChalisaData {
  const _DayAartiChalisaData({@JsonKey(name: 'day') this.day = '', @JsonKey(name: 'count') this.count = 0, @JsonKey(name: 'list') final  List<DayAartiChalisaItem> list = const <DayAartiChalisaItem>[]}): _list = list;
  factory _DayAartiChalisaData.fromJson(Map<String, dynamic> json) => _$DayAartiChalisaDataFromJson(json);

@override@JsonKey(name: 'day') final  String day;
@override@JsonKey(name: 'count') final  int count;
 final  List<DayAartiChalisaItem> _list;
@override@JsonKey(name: 'list') List<DayAartiChalisaItem> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of DayAartiChalisaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayAartiChalisaDataCopyWith<_DayAartiChalisaData> get copyWith => __$DayAartiChalisaDataCopyWithImpl<_DayAartiChalisaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayAartiChalisaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayAartiChalisaData&&(identical(other.day, day) || other.day == day)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._list, _list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,count,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'DayAartiChalisaData(day: $day, count: $count, list: $list)';
}


}

/// @nodoc
abstract mixin class _$DayAartiChalisaDataCopyWith<$Res> implements $DayAartiChalisaDataCopyWith<$Res> {
  factory _$DayAartiChalisaDataCopyWith(_DayAartiChalisaData value, $Res Function(_DayAartiChalisaData) _then) = __$DayAartiChalisaDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'day') String day,@JsonKey(name: 'count') int count,@JsonKey(name: 'list') List<DayAartiChalisaItem> list
});




}
/// @nodoc
class __$DayAartiChalisaDataCopyWithImpl<$Res>
    implements _$DayAartiChalisaDataCopyWith<$Res> {
  __$DayAartiChalisaDataCopyWithImpl(this._self, this._then);

  final _DayAartiChalisaData _self;
  final $Res Function(_DayAartiChalisaData) _then;

/// Create a copy of DayAartiChalisaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? count = null,Object? list = null,}) {
  return _then(_DayAartiChalisaData(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<DayAartiChalisaItem>,
  ));
}


}


/// @nodoc
mixin _$DayAartiChalisaItem {

@JsonKey(name: '_id') String get id;/// "aarti" / "chalisa" / "mantra" / "baan"
@JsonKey(name: 'type') String get type;@JsonKey(name: 'audioAsset') String get audioAsset;@JsonKey(name: 'lyricsKey') String get lyricsKey;@JsonKey(name: 'isAddedInWishlist') bool get isAddedInWishlist;@JsonKey(name: 'god') DayGodData get god;
/// Create a copy of DayAartiChalisaItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayAartiChalisaItemCopyWith<DayAartiChalisaItem> get copyWith => _$DayAartiChalisaItemCopyWithImpl<DayAartiChalisaItem>(this as DayAartiChalisaItem, _$identity);

  /// Serializes this DayAartiChalisaItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayAartiChalisaItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.audioAsset, audioAsset) || other.audioAsset == audioAsset)&&(identical(other.lyricsKey, lyricsKey) || other.lyricsKey == lyricsKey)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist)&&(identical(other.god, god) || other.god == god));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,audioAsset,lyricsKey,isAddedInWishlist,god);

@override
String toString() {
  return 'DayAartiChalisaItem(id: $id, type: $type, audioAsset: $audioAsset, lyricsKey: $lyricsKey, isAddedInWishlist: $isAddedInWishlist, god: $god)';
}


}

/// @nodoc
abstract mixin class $DayAartiChalisaItemCopyWith<$Res>  {
  factory $DayAartiChalisaItemCopyWith(DayAartiChalisaItem value, $Res Function(DayAartiChalisaItem) _then) = _$DayAartiChalisaItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'type') String type,@JsonKey(name: 'audioAsset') String audioAsset,@JsonKey(name: 'lyricsKey') String lyricsKey,@JsonKey(name: 'isAddedInWishlist') bool isAddedInWishlist,@JsonKey(name: 'god') DayGodData god
});


$DayGodDataCopyWith<$Res> get god;

}
/// @nodoc
class _$DayAartiChalisaItemCopyWithImpl<$Res>
    implements $DayAartiChalisaItemCopyWith<$Res> {
  _$DayAartiChalisaItemCopyWithImpl(this._self, this._then);

  final DayAartiChalisaItem _self;
  final $Res Function(DayAartiChalisaItem) _then;

/// Create a copy of DayAartiChalisaItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? audioAsset = null,Object? lyricsKey = null,Object? isAddedInWishlist = null,Object? god = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,audioAsset: null == audioAsset ? _self.audioAsset : audioAsset // ignore: cast_nullable_to_non_nullable
as String,lyricsKey: null == lyricsKey ? _self.lyricsKey : lyricsKey // ignore: cast_nullable_to_non_nullable
as String,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,god: null == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as DayGodData,
  ));
}
/// Create a copy of DayAartiChalisaItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayGodDataCopyWith<$Res> get god {
  
  return $DayGodDataCopyWith<$Res>(_self.god, (value) {
    return _then(_self.copyWith(god: value));
  });
}
}


/// Adds pattern-matching-related methods to [DayAartiChalisaItem].
extension DayAartiChalisaItemPatterns on DayAartiChalisaItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayAartiChalisaItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayAartiChalisaItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayAartiChalisaItem value)  $default,){
final _that = this;
switch (_that) {
case _DayAartiChalisaItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayAartiChalisaItem value)?  $default,){
final _that = this;
switch (_that) {
case _DayAartiChalisaItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'type')  String type, @JsonKey(name: 'audioAsset')  String audioAsset, @JsonKey(name: 'lyricsKey')  String lyricsKey, @JsonKey(name: 'isAddedInWishlist')  bool isAddedInWishlist, @JsonKey(name: 'god')  DayGodData god)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayAartiChalisaItem() when $default != null:
return $default(_that.id,_that.type,_that.audioAsset,_that.lyricsKey,_that.isAddedInWishlist,_that.god);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'type')  String type, @JsonKey(name: 'audioAsset')  String audioAsset, @JsonKey(name: 'lyricsKey')  String lyricsKey, @JsonKey(name: 'isAddedInWishlist')  bool isAddedInWishlist, @JsonKey(name: 'god')  DayGodData god)  $default,) {final _that = this;
switch (_that) {
case _DayAartiChalisaItem():
return $default(_that.id,_that.type,_that.audioAsset,_that.lyricsKey,_that.isAddedInWishlist,_that.god);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'type')  String type, @JsonKey(name: 'audioAsset')  String audioAsset, @JsonKey(name: 'lyricsKey')  String lyricsKey, @JsonKey(name: 'isAddedInWishlist')  bool isAddedInWishlist, @JsonKey(name: 'god')  DayGodData god)?  $default,) {final _that = this;
switch (_that) {
case _DayAartiChalisaItem() when $default != null:
return $default(_that.id,_that.type,_that.audioAsset,_that.lyricsKey,_that.isAddedInWishlist,_that.god);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayAartiChalisaItem implements DayAartiChalisaItem {
  const _DayAartiChalisaItem({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'type') this.type = '', @JsonKey(name: 'audioAsset') this.audioAsset = '', @JsonKey(name: 'lyricsKey') this.lyricsKey = '', @JsonKey(name: 'isAddedInWishlist') this.isAddedInWishlist = false, @JsonKey(name: 'god') this.god = const DayGodData()});
  factory _DayAartiChalisaItem.fromJson(Map<String, dynamic> json) => _$DayAartiChalisaItemFromJson(json);

@override@JsonKey(name: '_id') final  String id;
/// "aarti" / "chalisa" / "mantra" / "baan"
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'audioAsset') final  String audioAsset;
@override@JsonKey(name: 'lyricsKey') final  String lyricsKey;
@override@JsonKey(name: 'isAddedInWishlist') final  bool isAddedInWishlist;
@override@JsonKey(name: 'god') final  DayGodData god;

/// Create a copy of DayAartiChalisaItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayAartiChalisaItemCopyWith<_DayAartiChalisaItem> get copyWith => __$DayAartiChalisaItemCopyWithImpl<_DayAartiChalisaItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayAartiChalisaItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayAartiChalisaItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.audioAsset, audioAsset) || other.audioAsset == audioAsset)&&(identical(other.lyricsKey, lyricsKey) || other.lyricsKey == lyricsKey)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist)&&(identical(other.god, god) || other.god == god));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,audioAsset,lyricsKey,isAddedInWishlist,god);

@override
String toString() {
  return 'DayAartiChalisaItem(id: $id, type: $type, audioAsset: $audioAsset, lyricsKey: $lyricsKey, isAddedInWishlist: $isAddedInWishlist, god: $god)';
}


}

/// @nodoc
abstract mixin class _$DayAartiChalisaItemCopyWith<$Res> implements $DayAartiChalisaItemCopyWith<$Res> {
  factory _$DayAartiChalisaItemCopyWith(_DayAartiChalisaItem value, $Res Function(_DayAartiChalisaItem) _then) = __$DayAartiChalisaItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'type') String type,@JsonKey(name: 'audioAsset') String audioAsset,@JsonKey(name: 'lyricsKey') String lyricsKey,@JsonKey(name: 'isAddedInWishlist') bool isAddedInWishlist,@JsonKey(name: 'god') DayGodData god
});


@override $DayGodDataCopyWith<$Res> get god;

}
/// @nodoc
class __$DayAartiChalisaItemCopyWithImpl<$Res>
    implements _$DayAartiChalisaItemCopyWith<$Res> {
  __$DayAartiChalisaItemCopyWithImpl(this._self, this._then);

  final _DayAartiChalisaItem _self;
  final $Res Function(_DayAartiChalisaItem) _then;

/// Create a copy of DayAartiChalisaItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? audioAsset = null,Object? lyricsKey = null,Object? isAddedInWishlist = null,Object? god = null,}) {
  return _then(_DayAartiChalisaItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,audioAsset: null == audioAsset ? _self.audioAsset : audioAsset // ignore: cast_nullable_to_non_nullable
as String,lyricsKey: null == lyricsKey ? _self.lyricsKey : lyricsKey // ignore: cast_nullable_to_non_nullable
as String,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,god: null == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as DayGodData,
  ));
}

/// Create a copy of DayAartiChalisaItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayGodDataCopyWith<$Res> get god {
  
  return $DayGodDataCopyWith<$Res>(_self.god, (value) {
    return _then(_self.copyWith(god: value));
  });
}
}


/// @nodoc
mixin _$DayGodData {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'god_name') String get godName;@JsonKey(name: 'thumbnail') String get thumbnail;@JsonKey(name: 'related_month') List<String> get relatedMonth;@JsonKey(name: 'related_days') List<String> get relatedDays;@JsonKey(name: 'detail_hi') String get detailHi;@JsonKey(name: 'detail_en') String get detailEn;@JsonKey(name: 'godimage') List<String> get godimage;@JsonKey(name: '__v') int get v;
/// Create a copy of DayGodData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayGodDataCopyWith<DayGodData> get copyWith => _$DayGodDataCopyWithImpl<DayGodData>(this as DayGodData, _$identity);

  /// Serializes this DayGodData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayGodData&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other.relatedMonth, relatedMonth)&&const DeepCollectionEquality().equals(other.relatedDays, relatedDays)&&(identical(other.detailHi, detailHi) || other.detailHi == detailHi)&&(identical(other.detailEn, detailEn) || other.detailEn == detailEn)&&const DeepCollectionEquality().equals(other.godimage, godimage)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,godName,thumbnail,const DeepCollectionEquality().hash(relatedMonth),const DeepCollectionEquality().hash(relatedDays),detailHi,detailEn,const DeepCollectionEquality().hash(godimage),v);

@override
String toString() {
  return 'DayGodData(id: $id, godName: $godName, thumbnail: $thumbnail, relatedMonth: $relatedMonth, relatedDays: $relatedDays, detailHi: $detailHi, detailEn: $detailEn, godimage: $godimage, v: $v)';
}


}

/// @nodoc
abstract mixin class $DayGodDataCopyWith<$Res>  {
  factory $DayGodDataCopyWith(DayGodData value, $Res Function(DayGodData) _then) = _$DayGodDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String godName,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'related_month') List<String> relatedMonth,@JsonKey(name: 'related_days') List<String> relatedDays,@JsonKey(name: 'detail_hi') String detailHi,@JsonKey(name: 'detail_en') String detailEn,@JsonKey(name: 'godimage') List<String> godimage,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class _$DayGodDataCopyWithImpl<$Res>
    implements $DayGodDataCopyWith<$Res> {
  _$DayGodDataCopyWithImpl(this._self, this._then);

  final DayGodData _self;
  final $Res Function(DayGodData) _then;

/// Create a copy of DayGodData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? godName = null,Object? thumbnail = null,Object? relatedMonth = null,Object? relatedDays = null,Object? detailHi = null,Object? detailEn = null,Object? godimage = null,Object? v = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,godName: null == godName ? _self.godName : godName // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,relatedMonth: null == relatedMonth ? _self.relatedMonth : relatedMonth // ignore: cast_nullable_to_non_nullable
as List<String>,relatedDays: null == relatedDays ? _self.relatedDays : relatedDays // ignore: cast_nullable_to_non_nullable
as List<String>,detailHi: null == detailHi ? _self.detailHi : detailHi // ignore: cast_nullable_to_non_nullable
as String,detailEn: null == detailEn ? _self.detailEn : detailEn // ignore: cast_nullable_to_non_nullable
as String,godimage: null == godimage ? _self.godimage : godimage // ignore: cast_nullable_to_non_nullable
as List<String>,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DayGodData].
extension DayGodDataPatterns on DayGodData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayGodData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayGodData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayGodData value)  $default,){
final _that = this;
switch (_that) {
case _DayGodData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayGodData value)?  $default,){
final _that = this;
switch (_that) {
case _DayGodData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'related_month')  List<String> relatedMonth, @JsonKey(name: 'related_days')  List<String> relatedDays, @JsonKey(name: 'detail_hi')  String detailHi, @JsonKey(name: 'detail_en')  String detailEn, @JsonKey(name: 'godimage')  List<String> godimage, @JsonKey(name: '__v')  int v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayGodData() when $default != null:
return $default(_that.id,_that.godName,_that.thumbnail,_that.relatedMonth,_that.relatedDays,_that.detailHi,_that.detailEn,_that.godimage,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'related_month')  List<String> relatedMonth, @JsonKey(name: 'related_days')  List<String> relatedDays, @JsonKey(name: 'detail_hi')  String detailHi, @JsonKey(name: 'detail_en')  String detailEn, @JsonKey(name: 'godimage')  List<String> godimage, @JsonKey(name: '__v')  int v)  $default,) {final _that = this;
switch (_that) {
case _DayGodData():
return $default(_that.id,_that.godName,_that.thumbnail,_that.relatedMonth,_that.relatedDays,_that.detailHi,_that.detailEn,_that.godimage,_that.v);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'related_month')  List<String> relatedMonth, @JsonKey(name: 'related_days')  List<String> relatedDays, @JsonKey(name: 'detail_hi')  String detailHi, @JsonKey(name: 'detail_en')  String detailEn, @JsonKey(name: 'godimage')  List<String> godimage, @JsonKey(name: '__v')  int v)?  $default,) {final _that = this;
switch (_that) {
case _DayGodData() when $default != null:
return $default(_that.id,_that.godName,_that.thumbnail,_that.relatedMonth,_that.relatedDays,_that.detailHi,_that.detailEn,_that.godimage,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayGodData implements DayGodData {
  const _DayGodData({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'god_name') this.godName = '', @JsonKey(name: 'thumbnail') this.thumbnail = '', @JsonKey(name: 'related_month') final  List<String> relatedMonth = const <String>[], @JsonKey(name: 'related_days') final  List<String> relatedDays = const <String>[], @JsonKey(name: 'detail_hi') this.detailHi = '', @JsonKey(name: 'detail_en') this.detailEn = '', @JsonKey(name: 'godimage') final  List<String> godimage = const <String>[], @JsonKey(name: '__v') this.v = 0}): _relatedMonth = relatedMonth,_relatedDays = relatedDays,_godimage = godimage;
  factory _DayGodData.fromJson(Map<String, dynamic> json) => _$DayGodDataFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'god_name') final  String godName;
@override@JsonKey(name: 'thumbnail') final  String thumbnail;
 final  List<String> _relatedMonth;
@override@JsonKey(name: 'related_month') List<String> get relatedMonth {
  if (_relatedMonth is EqualUnmodifiableListView) return _relatedMonth;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedMonth);
}

 final  List<String> _relatedDays;
@override@JsonKey(name: 'related_days') List<String> get relatedDays {
  if (_relatedDays is EqualUnmodifiableListView) return _relatedDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedDays);
}

@override@JsonKey(name: 'detail_hi') final  String detailHi;
@override@JsonKey(name: 'detail_en') final  String detailEn;
 final  List<String> _godimage;
@override@JsonKey(name: 'godimage') List<String> get godimage {
  if (_godimage is EqualUnmodifiableListView) return _godimage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_godimage);
}

@override@JsonKey(name: '__v') final  int v;

/// Create a copy of DayGodData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayGodDataCopyWith<_DayGodData> get copyWith => __$DayGodDataCopyWithImpl<_DayGodData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayGodDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayGodData&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other._relatedMonth, _relatedMonth)&&const DeepCollectionEquality().equals(other._relatedDays, _relatedDays)&&(identical(other.detailHi, detailHi) || other.detailHi == detailHi)&&(identical(other.detailEn, detailEn) || other.detailEn == detailEn)&&const DeepCollectionEquality().equals(other._godimage, _godimage)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,godName,thumbnail,const DeepCollectionEquality().hash(_relatedMonth),const DeepCollectionEquality().hash(_relatedDays),detailHi,detailEn,const DeepCollectionEquality().hash(_godimage),v);

@override
String toString() {
  return 'DayGodData(id: $id, godName: $godName, thumbnail: $thumbnail, relatedMonth: $relatedMonth, relatedDays: $relatedDays, detailHi: $detailHi, detailEn: $detailEn, godimage: $godimage, v: $v)';
}


}

/// @nodoc
abstract mixin class _$DayGodDataCopyWith<$Res> implements $DayGodDataCopyWith<$Res> {
  factory _$DayGodDataCopyWith(_DayGodData value, $Res Function(_DayGodData) _then) = __$DayGodDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String godName,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'related_month') List<String> relatedMonth,@JsonKey(name: 'related_days') List<String> relatedDays,@JsonKey(name: 'detail_hi') String detailHi,@JsonKey(name: 'detail_en') String detailEn,@JsonKey(name: 'godimage') List<String> godimage,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class __$DayGodDataCopyWithImpl<$Res>
    implements _$DayGodDataCopyWith<$Res> {
  __$DayGodDataCopyWithImpl(this._self, this._then);

  final _DayGodData _self;
  final $Res Function(_DayGodData) _then;

/// Create a copy of DayGodData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? godName = null,Object? thumbnail = null,Object? relatedMonth = null,Object? relatedDays = null,Object? detailHi = null,Object? detailEn = null,Object? godimage = null,Object? v = null,}) {
  return _then(_DayGodData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,godName: null == godName ? _self.godName : godName // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,relatedMonth: null == relatedMonth ? _self._relatedMonth : relatedMonth // ignore: cast_nullable_to_non_nullable
as List<String>,relatedDays: null == relatedDays ? _self._relatedDays : relatedDays // ignore: cast_nullable_to_non_nullable
as List<String>,detailHi: null == detailHi ? _self.detailHi : detailHi // ignore: cast_nullable_to_non_nullable
as String,detailEn: null == detailEn ? _self.detailEn : detailEn // ignore: cast_nullable_to_non_nullable
as String,godimage: null == godimage ? _self._godimage : godimage // ignore: cast_nullable_to_non_nullable
as List<String>,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
