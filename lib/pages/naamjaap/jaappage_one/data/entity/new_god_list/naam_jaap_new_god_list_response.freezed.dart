// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'naam_jaap_new_god_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NaamJaapNewGodListResponse {

 bool get success; String get message; NaamJaapNewGodListData get data; dynamic get errors;
/// Create a copy of NaamJaapNewGodListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NaamJaapNewGodListResponseCopyWith<NaamJaapNewGodListResponse> get copyWith => _$NaamJaapNewGodListResponseCopyWithImpl<NaamJaapNewGodListResponse>(this as NaamJaapNewGodListResponse, _$identity);

  /// Serializes this NaamJaapNewGodListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NaamJaapNewGodListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'NaamJaapNewGodListResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $NaamJaapNewGodListResponseCopyWith<$Res>  {
  factory $NaamJaapNewGodListResponseCopyWith(NaamJaapNewGodListResponse value, $Res Function(NaamJaapNewGodListResponse) _then) = _$NaamJaapNewGodListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, NaamJaapNewGodListData data, dynamic errors
});


$NaamJaapNewGodListDataCopyWith<$Res> get data;

}
/// @nodoc
class _$NaamJaapNewGodListResponseCopyWithImpl<$Res>
    implements $NaamJaapNewGodListResponseCopyWith<$Res> {
  _$NaamJaapNewGodListResponseCopyWithImpl(this._self, this._then);

  final NaamJaapNewGodListResponse _self;
  final $Res Function(NaamJaapNewGodListResponse) _then;

/// Create a copy of NaamJaapNewGodListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NaamJaapNewGodListData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of NaamJaapNewGodListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NaamJaapNewGodListDataCopyWith<$Res> get data {
  
  return $NaamJaapNewGodListDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NaamJaapNewGodListResponse].
extension NaamJaapNewGodListResponsePatterns on NaamJaapNewGodListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NaamJaapNewGodListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NaamJaapNewGodListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NaamJaapNewGodListResponse value)  $default,){
final _that = this;
switch (_that) {
case _NaamJaapNewGodListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NaamJaapNewGodListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _NaamJaapNewGodListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  NaamJaapNewGodListData data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NaamJaapNewGodListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  NaamJaapNewGodListData data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _NaamJaapNewGodListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  NaamJaapNewGodListData data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _NaamJaapNewGodListResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NaamJaapNewGodListResponse implements NaamJaapNewGodListResponse {
  const _NaamJaapNewGodListResponse({this.success = false, this.message = '', this.data = const NaamJaapNewGodListData(), this.errors = null});
  factory _NaamJaapNewGodListResponse.fromJson(Map<String, dynamic> json) => _$NaamJaapNewGodListResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override@JsonKey() final  NaamJaapNewGodListData data;
@override@JsonKey() final  dynamic errors;

/// Create a copy of NaamJaapNewGodListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NaamJaapNewGodListResponseCopyWith<_NaamJaapNewGodListResponse> get copyWith => __$NaamJaapNewGodListResponseCopyWithImpl<_NaamJaapNewGodListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NaamJaapNewGodListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NaamJaapNewGodListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'NaamJaapNewGodListResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$NaamJaapNewGodListResponseCopyWith<$Res> implements $NaamJaapNewGodListResponseCopyWith<$Res> {
  factory _$NaamJaapNewGodListResponseCopyWith(_NaamJaapNewGodListResponse value, $Res Function(_NaamJaapNewGodListResponse) _then) = __$NaamJaapNewGodListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, NaamJaapNewGodListData data, dynamic errors
});


@override $NaamJaapNewGodListDataCopyWith<$Res> get data;

}
/// @nodoc
class __$NaamJaapNewGodListResponseCopyWithImpl<$Res>
    implements _$NaamJaapNewGodListResponseCopyWith<$Res> {
  __$NaamJaapNewGodListResponseCopyWithImpl(this._self, this._then);

  final _NaamJaapNewGodListResponse _self;
  final $Res Function(_NaamJaapNewGodListResponse) _then;

/// Create a copy of NaamJaapNewGodListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_NaamJaapNewGodListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NaamJaapNewGodListData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of NaamJaapNewGodListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NaamJaapNewGodListDataCopyWith<$Res> get data {
  
  return $NaamJaapNewGodListDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NaamJaapNewGodListData {

 List<String> get mantraContentTypeIds; List<God> get gods;
/// Create a copy of NaamJaapNewGodListData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NaamJaapNewGodListDataCopyWith<NaamJaapNewGodListData> get copyWith => _$NaamJaapNewGodListDataCopyWithImpl<NaamJaapNewGodListData>(this as NaamJaapNewGodListData, _$identity);

  /// Serializes this NaamJaapNewGodListData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NaamJaapNewGodListData&&const DeepCollectionEquality().equals(other.mantraContentTypeIds, mantraContentTypeIds)&&const DeepCollectionEquality().equals(other.gods, gods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(mantraContentTypeIds),const DeepCollectionEquality().hash(gods));

@override
String toString() {
  return 'NaamJaapNewGodListData(mantraContentTypeIds: $mantraContentTypeIds, gods: $gods)';
}


}

/// @nodoc
abstract mixin class $NaamJaapNewGodListDataCopyWith<$Res>  {
  factory $NaamJaapNewGodListDataCopyWith(NaamJaapNewGodListData value, $Res Function(NaamJaapNewGodListData) _then) = _$NaamJaapNewGodListDataCopyWithImpl;
@useResult
$Res call({
 List<String> mantraContentTypeIds, List<God> gods
});




}
/// @nodoc
class _$NaamJaapNewGodListDataCopyWithImpl<$Res>
    implements $NaamJaapNewGodListDataCopyWith<$Res> {
  _$NaamJaapNewGodListDataCopyWithImpl(this._self, this._then);

  final NaamJaapNewGodListData _self;
  final $Res Function(NaamJaapNewGodListData) _then;

/// Create a copy of NaamJaapNewGodListData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mantraContentTypeIds = null,Object? gods = null,}) {
  return _then(_self.copyWith(
mantraContentTypeIds: null == mantraContentTypeIds ? _self.mantraContentTypeIds : mantraContentTypeIds // ignore: cast_nullable_to_non_nullable
as List<String>,gods: null == gods ? _self.gods : gods // ignore: cast_nullable_to_non_nullable
as List<God>,
  ));
}

}


/// Adds pattern-matching-related methods to [NaamJaapNewGodListData].
extension NaamJaapNewGodListDataPatterns on NaamJaapNewGodListData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NaamJaapNewGodListData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NaamJaapNewGodListData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NaamJaapNewGodListData value)  $default,){
final _that = this;
switch (_that) {
case _NaamJaapNewGodListData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NaamJaapNewGodListData value)?  $default,){
final _that = this;
switch (_that) {
case _NaamJaapNewGodListData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> mantraContentTypeIds,  List<God> gods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NaamJaapNewGodListData() when $default != null:
return $default(_that.mantraContentTypeIds,_that.gods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> mantraContentTypeIds,  List<God> gods)  $default,) {final _that = this;
switch (_that) {
case _NaamJaapNewGodListData():
return $default(_that.mantraContentTypeIds,_that.gods);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> mantraContentTypeIds,  List<God> gods)?  $default,) {final _that = this;
switch (_that) {
case _NaamJaapNewGodListData() when $default != null:
return $default(_that.mantraContentTypeIds,_that.gods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NaamJaapNewGodListData implements NaamJaapNewGodListData {
  const _NaamJaapNewGodListData({final  List<String> mantraContentTypeIds = const <String>[], final  List<God> gods = const <God>[]}): _mantraContentTypeIds = mantraContentTypeIds,_gods = gods;
  factory _NaamJaapNewGodListData.fromJson(Map<String, dynamic> json) => _$NaamJaapNewGodListDataFromJson(json);

 final  List<String> _mantraContentTypeIds;
@override@JsonKey() List<String> get mantraContentTypeIds {
  if (_mantraContentTypeIds is EqualUnmodifiableListView) return _mantraContentTypeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mantraContentTypeIds);
}

 final  List<God> _gods;
@override@JsonKey() List<God> get gods {
  if (_gods is EqualUnmodifiableListView) return _gods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gods);
}


/// Create a copy of NaamJaapNewGodListData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NaamJaapNewGodListDataCopyWith<_NaamJaapNewGodListData> get copyWith => __$NaamJaapNewGodListDataCopyWithImpl<_NaamJaapNewGodListData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NaamJaapNewGodListDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NaamJaapNewGodListData&&const DeepCollectionEquality().equals(other._mantraContentTypeIds, _mantraContentTypeIds)&&const DeepCollectionEquality().equals(other._gods, _gods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_mantraContentTypeIds),const DeepCollectionEquality().hash(_gods));

@override
String toString() {
  return 'NaamJaapNewGodListData(mantraContentTypeIds: $mantraContentTypeIds, gods: $gods)';
}


}

/// @nodoc
abstract mixin class _$NaamJaapNewGodListDataCopyWith<$Res> implements $NaamJaapNewGodListDataCopyWith<$Res> {
  factory _$NaamJaapNewGodListDataCopyWith(_NaamJaapNewGodListData value, $Res Function(_NaamJaapNewGodListData) _then) = __$NaamJaapNewGodListDataCopyWithImpl;
@override @useResult
$Res call({
 List<String> mantraContentTypeIds, List<God> gods
});




}
/// @nodoc
class __$NaamJaapNewGodListDataCopyWithImpl<$Res>
    implements _$NaamJaapNewGodListDataCopyWith<$Res> {
  __$NaamJaapNewGodListDataCopyWithImpl(this._self, this._then);

  final _NaamJaapNewGodListData _self;
  final $Res Function(_NaamJaapNewGodListData) _then;

/// Create a copy of NaamJaapNewGodListData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mantraContentTypeIds = null,Object? gods = null,}) {
  return _then(_NaamJaapNewGodListData(
mantraContentTypeIds: null == mantraContentTypeIds ? _self._mantraContentTypeIds : mantraContentTypeIds // ignore: cast_nullable_to_non_nullable
as List<String>,gods: null == gods ? _self._gods : gods // ignore: cast_nullable_to_non_nullable
as List<God>,
  ));
}


}


/// @nodoc
mixin _$God {

@JsonKey(name: '_id') String get id; String get name; NameLocalized get nameLocalized; String get thumbnailUrl; String get slug;
/// Create a copy of God
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodCopyWith<God> get copyWith => _$GodCopyWithImpl<God>(this as God, _$identity);

  /// Serializes this God to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is God&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameLocalized, nameLocalized) || other.nameLocalized == nameLocalized)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameLocalized,thumbnailUrl,slug);

@override
String toString() {
  return 'God(id: $id, name: $name, nameLocalized: $nameLocalized, thumbnailUrl: $thumbnailUrl, slug: $slug)';
}


}

/// @nodoc
abstract mixin class $GodCopyWith<$Res>  {
  factory $GodCopyWith(God value, $Res Function(God) _then) = _$GodCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, NameLocalized nameLocalized, String thumbnailUrl, String slug
});


$NameLocalizedCopyWith<$Res> get nameLocalized;

}
/// @nodoc
class _$GodCopyWithImpl<$Res>
    implements $GodCopyWith<$Res> {
  _$GodCopyWithImpl(this._self, this._then);

  final God _self;
  final $Res Function(God) _then;

/// Create a copy of God
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameLocalized = null,Object? thumbnailUrl = null,Object? slug = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameLocalized: null == nameLocalized ? _self.nameLocalized : nameLocalized // ignore: cast_nullable_to_non_nullable
as NameLocalized,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of God
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameLocalizedCopyWith<$Res> get nameLocalized {
  
  return $NameLocalizedCopyWith<$Res>(_self.nameLocalized, (value) {
    return _then(_self.copyWith(nameLocalized: value));
  });
}
}


/// Adds pattern-matching-related methods to [God].
extension GodPatterns on God {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _God value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _God() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _God value)  $default,){
final _that = this;
switch (_that) {
case _God():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _God value)?  $default,){
final _that = this;
switch (_that) {
case _God() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  NameLocalized nameLocalized,  String thumbnailUrl,  String slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _God() when $default != null:
return $default(_that.id,_that.name,_that.nameLocalized,_that.thumbnailUrl,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  NameLocalized nameLocalized,  String thumbnailUrl,  String slug)  $default,) {final _that = this;
switch (_that) {
case _God():
return $default(_that.id,_that.name,_that.nameLocalized,_that.thumbnailUrl,_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String name,  NameLocalized nameLocalized,  String thumbnailUrl,  String slug)?  $default,) {final _that = this;
switch (_that) {
case _God() when $default != null:
return $default(_that.id,_that.name,_that.nameLocalized,_that.thumbnailUrl,_that.slug);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _God implements God {
  const _God({@JsonKey(name: '_id') this.id = '', this.name = '', this.nameLocalized = const NameLocalized(), this.thumbnailUrl = '', this.slug = ''});
  factory _God.fromJson(Map<String, dynamic> json) => _$GodFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  NameLocalized nameLocalized;
@override@JsonKey() final  String thumbnailUrl;
@override@JsonKey() final  String slug;

/// Create a copy of God
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodCopyWith<_God> get copyWith => __$GodCopyWithImpl<_God>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _God&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameLocalized, nameLocalized) || other.nameLocalized == nameLocalized)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameLocalized,thumbnailUrl,slug);

@override
String toString() {
  return 'God(id: $id, name: $name, nameLocalized: $nameLocalized, thumbnailUrl: $thumbnailUrl, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$GodCopyWith<$Res> implements $GodCopyWith<$Res> {
  factory _$GodCopyWith(_God value, $Res Function(_God) _then) = __$GodCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, NameLocalized nameLocalized, String thumbnailUrl, String slug
});


@override $NameLocalizedCopyWith<$Res> get nameLocalized;

}
/// @nodoc
class __$GodCopyWithImpl<$Res>
    implements _$GodCopyWith<$Res> {
  __$GodCopyWithImpl(this._self, this._then);

  final _God _self;
  final $Res Function(_God) _then;

/// Create a copy of God
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameLocalized = null,Object? thumbnailUrl = null,Object? slug = null,}) {
  return _then(_God(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameLocalized: null == nameLocalized ? _self.nameLocalized : nameLocalized // ignore: cast_nullable_to_non_nullable
as NameLocalized,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of God
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameLocalizedCopyWith<$Res> get nameLocalized {
  
  return $NameLocalizedCopyWith<$Res>(_self.nameLocalized, (value) {
    return _then(_self.copyWith(nameLocalized: value));
  });
}
}


/// @nodoc
mixin _$NameLocalized {

 String get en; String get hi;
/// Create a copy of NameLocalized
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameLocalizedCopyWith<NameLocalized> get copyWith => _$NameLocalizedCopyWithImpl<NameLocalized>(this as NameLocalized, _$identity);

  /// Serializes this NameLocalized to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameLocalized&&(identical(other.en, en) || other.en == en)&&(identical(other.hi, hi) || other.hi == hi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,hi);

@override
String toString() {
  return 'NameLocalized(en: $en, hi: $hi)';
}


}

/// @nodoc
abstract mixin class $NameLocalizedCopyWith<$Res>  {
  factory $NameLocalizedCopyWith(NameLocalized value, $Res Function(NameLocalized) _then) = _$NameLocalizedCopyWithImpl;
@useResult
$Res call({
 String en, String hi
});




}
/// @nodoc
class _$NameLocalizedCopyWithImpl<$Res>
    implements $NameLocalizedCopyWith<$Res> {
  _$NameLocalizedCopyWithImpl(this._self, this._then);

  final NameLocalized _self;
  final $Res Function(NameLocalized) _then;

/// Create a copy of NameLocalized
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? en = null,Object? hi = null,}) {
  return _then(_self.copyWith(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,hi: null == hi ? _self.hi : hi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NameLocalized].
extension NameLocalizedPatterns on NameLocalized {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NameLocalized value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameLocalized() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NameLocalized value)  $default,){
final _that = this;
switch (_that) {
case _NameLocalized():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NameLocalized value)?  $default,){
final _that = this;
switch (_that) {
case _NameLocalized() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String en,  String hi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameLocalized() when $default != null:
return $default(_that.en,_that.hi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String en,  String hi)  $default,) {final _that = this;
switch (_that) {
case _NameLocalized():
return $default(_that.en,_that.hi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String en,  String hi)?  $default,) {final _that = this;
switch (_that) {
case _NameLocalized() when $default != null:
return $default(_that.en,_that.hi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NameLocalized implements NameLocalized {
  const _NameLocalized({this.en = '', this.hi = ''});
  factory _NameLocalized.fromJson(Map<String, dynamic> json) => _$NameLocalizedFromJson(json);

@override@JsonKey() final  String en;
@override@JsonKey() final  String hi;

/// Create a copy of NameLocalized
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameLocalizedCopyWith<_NameLocalized> get copyWith => __$NameLocalizedCopyWithImpl<_NameLocalized>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameLocalizedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameLocalized&&(identical(other.en, en) || other.en == en)&&(identical(other.hi, hi) || other.hi == hi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,hi);

@override
String toString() {
  return 'NameLocalized(en: $en, hi: $hi)';
}


}

/// @nodoc
abstract mixin class _$NameLocalizedCopyWith<$Res> implements $NameLocalizedCopyWith<$Res> {
  factory _$NameLocalizedCopyWith(_NameLocalized value, $Res Function(_NameLocalized) _then) = __$NameLocalizedCopyWithImpl;
@override @useResult
$Res call({
 String en, String hi
});




}
/// @nodoc
class __$NameLocalizedCopyWithImpl<$Res>
    implements _$NameLocalizedCopyWith<$Res> {
  __$NameLocalizedCopyWithImpl(this._self, this._then);

  final _NameLocalized _self;
  final $Res Function(_NameLocalized) _then;

/// Create a copy of NameLocalized
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? en = null,Object? hi = null,}) {
  return _then(_NameLocalized(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,hi: null == hi ? _self.hi : hi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
