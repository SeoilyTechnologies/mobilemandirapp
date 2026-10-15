// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'god_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GodApiResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'lang') String get lang;@JsonKey(name: 'total') int get total;@JsonKey(name: 'data') List<GodData> get data;
/// Create a copy of GodApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodApiResponseCopyWith<GodApiResponse> get copyWith => _$GodApiResponseCopyWithImpl<GodApiResponse>(this as GodApiResponse, _$identity);

  /// Serializes this GodApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,total,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GodApiResponse(success: $success, lang: $lang, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class $GodApiResponseCopyWith<$Res>  {
  factory $GodApiResponseCopyWith(GodApiResponse value, $Res Function(GodApiResponse) _then) = _$GodApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'lang') String lang,@JsonKey(name: 'total') int total,@JsonKey(name: 'data') List<GodData> data
});




}
/// @nodoc
class _$GodApiResponseCopyWithImpl<$Res>
    implements $GodApiResponseCopyWith<$Res> {
  _$GodApiResponseCopyWithImpl(this._self, this._then);

  final GodApiResponse _self;
  final $Res Function(GodApiResponse) _then;

/// Create a copy of GodApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? lang = null,Object? total = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<GodData>,
  ));
}

}


/// Adds pattern-matching-related methods to [GodApiResponse].
extension GodApiResponsePatterns on GodApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GodApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GodApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GodApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _GodApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GodApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GodApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'lang')  String lang, @JsonKey(name: 'total')  int total, @JsonKey(name: 'data')  List<GodData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodApiResponse() when $default != null:
return $default(_that.success,_that.lang,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'lang')  String lang, @JsonKey(name: 'total')  int total, @JsonKey(name: 'data')  List<GodData> data)  $default,) {final _that = this;
switch (_that) {
case _GodApiResponse():
return $default(_that.success,_that.lang,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'lang')  String lang, @JsonKey(name: 'total')  int total, @JsonKey(name: 'data')  List<GodData> data)?  $default,) {final _that = this;
switch (_that) {
case _GodApiResponse() when $default != null:
return $default(_that.success,_that.lang,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GodApiResponse implements GodApiResponse {
  const _GodApiResponse({@JsonKey(name: 'success') this.success = false, @JsonKey(name: 'lang') this.lang = '', @JsonKey(name: 'total') this.total = 0, @JsonKey(name: 'data') final  List<GodData> data = const <GodData>[]}): _data = data;
  factory _GodApiResponse.fromJson(Map<String, dynamic> json) => _$GodApiResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'lang') final  String lang;
@override@JsonKey(name: 'total') final  int total;
 final  List<GodData> _data;
@override@JsonKey(name: 'data') List<GodData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GodApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodApiResponseCopyWith<_GodApiResponse> get copyWith => __$GodApiResponseCopyWithImpl<_GodApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,total,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GodApiResponse(success: $success, lang: $lang, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GodApiResponseCopyWith<$Res> implements $GodApiResponseCopyWith<$Res> {
  factory _$GodApiResponseCopyWith(_GodApiResponse value, $Res Function(_GodApiResponse) _then) = __$GodApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'lang') String lang,@JsonKey(name: 'total') int total,@JsonKey(name: 'data') List<GodData> data
});




}
/// @nodoc
class __$GodApiResponseCopyWithImpl<$Res>
    implements _$GodApiResponseCopyWith<$Res> {
  __$GodApiResponseCopyWithImpl(this._self, this._then);

  final _GodApiResponse _self;
  final $Res Function(_GodApiResponse) _then;

/// Create a copy of GodApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? lang = null,Object? total = null,Object? data = null,}) {
  return _then(_GodApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<GodData>,
  ));
}


}


/// @nodoc
mixin _$GodData {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'god_name') String get godName;@JsonKey(name: 'birth_place') String get birthPlace;@JsonKey(name: 'father_name') String get fatherName;@JsonKey(name: 'mother_name') String get motherName;@JsonKey(name: 'wife') List<String> get wife;@JsonKey(name: 'fav_food') List<String> get favFood;@JsonKey(name: 'fav_color') List<String> get favColor;@JsonKey(name: 'thumbnail') String get thumbnail;@JsonKey(name: 'main_temples') List<MainTemple> get mainTemples;@JsonKey(name: 'related_month') List<String> get relatedMonth;@JsonKey(name: 'related_god') List<String> get relatedGod;@JsonKey(name: 'related_tithi') List<String> get relatedTithi;@JsonKey(name: 'related_days') List<String> get relatedDays;@JsonKey(name: 'related_festival') List<String> get relatedFestival;@JsonKey(name: 'detail') String get detail;@JsonKey(name: 'godimage') List<String> get godImage;@JsonKey(name: 'createdAt') String get createdAt;@JsonKey(name: 'updatedAt') String get updatedAt;
/// Create a copy of GodData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodDataCopyWith<GodData> get copyWith => _$GodDataCopyWithImpl<GodData>(this as GodData, _$identity);

  /// Serializes this GodData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodData&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&const DeepCollectionEquality().equals(other.wife, wife)&&const DeepCollectionEquality().equals(other.favFood, favFood)&&const DeepCollectionEquality().equals(other.favColor, favColor)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other.mainTemples, mainTemples)&&const DeepCollectionEquality().equals(other.relatedMonth, relatedMonth)&&const DeepCollectionEquality().equals(other.relatedGod, relatedGod)&&const DeepCollectionEquality().equals(other.relatedTithi, relatedTithi)&&const DeepCollectionEquality().equals(other.relatedDays, relatedDays)&&const DeepCollectionEquality().equals(other.relatedFestival, relatedFestival)&&(identical(other.detail, detail) || other.detail == detail)&&const DeepCollectionEquality().equals(other.godImage, godImage)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,godName,birthPlace,fatherName,motherName,const DeepCollectionEquality().hash(wife),const DeepCollectionEquality().hash(favFood),const DeepCollectionEquality().hash(favColor),thumbnail,const DeepCollectionEquality().hash(mainTemples),const DeepCollectionEquality().hash(relatedMonth),const DeepCollectionEquality().hash(relatedGod),const DeepCollectionEquality().hash(relatedTithi),const DeepCollectionEquality().hash(relatedDays),const DeepCollectionEquality().hash(relatedFestival),detail,const DeepCollectionEquality().hash(godImage),createdAt,updatedAt]);

@override
String toString() {
  return 'GodData(id: $id, godName: $godName, birthPlace: $birthPlace, fatherName: $fatherName, motherName: $motherName, wife: $wife, favFood: $favFood, favColor: $favColor, thumbnail: $thumbnail, mainTemples: $mainTemples, relatedMonth: $relatedMonth, relatedGod: $relatedGod, relatedTithi: $relatedTithi, relatedDays: $relatedDays, relatedFestival: $relatedFestival, detail: $detail, godImage: $godImage, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GodDataCopyWith<$Res>  {
  factory $GodDataCopyWith(GodData value, $Res Function(GodData) _then) = _$GodDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String godName,@JsonKey(name: 'birth_place') String birthPlace,@JsonKey(name: 'father_name') String fatherName,@JsonKey(name: 'mother_name') String motherName,@JsonKey(name: 'wife') List<String> wife,@JsonKey(name: 'fav_food') List<String> favFood,@JsonKey(name: 'fav_color') List<String> favColor,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'main_temples') List<MainTemple> mainTemples,@JsonKey(name: 'related_month') List<String> relatedMonth,@JsonKey(name: 'related_god') List<String> relatedGod,@JsonKey(name: 'related_tithi') List<String> relatedTithi,@JsonKey(name: 'related_days') List<String> relatedDays,@JsonKey(name: 'related_festival') List<String> relatedFestival,@JsonKey(name: 'detail') String detail,@JsonKey(name: 'godimage') List<String> godImage,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: 'updatedAt') String updatedAt
});




}
/// @nodoc
class _$GodDataCopyWithImpl<$Res>
    implements $GodDataCopyWith<$Res> {
  _$GodDataCopyWithImpl(this._self, this._then);

  final GodData _self;
  final $Res Function(GodData) _then;

/// Create a copy of GodData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? godName = null,Object? birthPlace = null,Object? fatherName = null,Object? motherName = null,Object? wife = null,Object? favFood = null,Object? favColor = null,Object? thumbnail = null,Object? mainTemples = null,Object? relatedMonth = null,Object? relatedGod = null,Object? relatedTithi = null,Object? relatedDays = null,Object? relatedFestival = null,Object? detail = null,Object? godImage = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,godName: null == godName ? _self.godName : godName // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,fatherName: null == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String,motherName: null == motherName ? _self.motherName : motherName // ignore: cast_nullable_to_non_nullable
as String,wife: null == wife ? _self.wife : wife // ignore: cast_nullable_to_non_nullable
as List<String>,favFood: null == favFood ? _self.favFood : favFood // ignore: cast_nullable_to_non_nullable
as List<String>,favColor: null == favColor ? _self.favColor : favColor // ignore: cast_nullable_to_non_nullable
as List<String>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,mainTemples: null == mainTemples ? _self.mainTemples : mainTemples // ignore: cast_nullable_to_non_nullable
as List<MainTemple>,relatedMonth: null == relatedMonth ? _self.relatedMonth : relatedMonth // ignore: cast_nullable_to_non_nullable
as List<String>,relatedGod: null == relatedGod ? _self.relatedGod : relatedGod // ignore: cast_nullable_to_non_nullable
as List<String>,relatedTithi: null == relatedTithi ? _self.relatedTithi : relatedTithi // ignore: cast_nullable_to_non_nullable
as List<String>,relatedDays: null == relatedDays ? _self.relatedDays : relatedDays // ignore: cast_nullable_to_non_nullable
as List<String>,relatedFestival: null == relatedFestival ? _self.relatedFestival : relatedFestival // ignore: cast_nullable_to_non_nullable
as List<String>,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,godImage: null == godImage ? _self.godImage : godImage // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GodData].
extension GodDataPatterns on GodData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GodData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GodData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GodData value)  $default,){
final _that = this;
switch (_that) {
case _GodData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GodData value)?  $default,){
final _that = this;
switch (_that) {
case _GodData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'birth_place')  String birthPlace, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName, @JsonKey(name: 'wife')  List<String> wife, @JsonKey(name: 'fav_food')  List<String> favFood, @JsonKey(name: 'fav_color')  List<String> favColor, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'main_temples')  List<MainTemple> mainTemples, @JsonKey(name: 'related_month')  List<String> relatedMonth, @JsonKey(name: 'related_god')  List<String> relatedGod, @JsonKey(name: 'related_tithi')  List<String> relatedTithi, @JsonKey(name: 'related_days')  List<String> relatedDays, @JsonKey(name: 'related_festival')  List<String> relatedFestival, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'godimage')  List<String> godImage, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodData() when $default != null:
return $default(_that.id,_that.godName,_that.birthPlace,_that.fatherName,_that.motherName,_that.wife,_that.favFood,_that.favColor,_that.thumbnail,_that.mainTemples,_that.relatedMonth,_that.relatedGod,_that.relatedTithi,_that.relatedDays,_that.relatedFestival,_that.detail,_that.godImage,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'birth_place')  String birthPlace, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName, @JsonKey(name: 'wife')  List<String> wife, @JsonKey(name: 'fav_food')  List<String> favFood, @JsonKey(name: 'fav_color')  List<String> favColor, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'main_temples')  List<MainTemple> mainTemples, @JsonKey(name: 'related_month')  List<String> relatedMonth, @JsonKey(name: 'related_god')  List<String> relatedGod, @JsonKey(name: 'related_tithi')  List<String> relatedTithi, @JsonKey(name: 'related_days')  List<String> relatedDays, @JsonKey(name: 'related_festival')  List<String> relatedFestival, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'godimage')  List<String> godImage, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _GodData():
return $default(_that.id,_that.godName,_that.birthPlace,_that.fatherName,_that.motherName,_that.wife,_that.favFood,_that.favColor,_that.thumbnail,_that.mainTemples,_that.relatedMonth,_that.relatedGod,_that.relatedTithi,_that.relatedDays,_that.relatedFestival,_that.detail,_that.godImage,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'birth_place')  String birthPlace, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName, @JsonKey(name: 'wife')  List<String> wife, @JsonKey(name: 'fav_food')  List<String> favFood, @JsonKey(name: 'fav_color')  List<String> favColor, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'main_temples')  List<MainTemple> mainTemples, @JsonKey(name: 'related_month')  List<String> relatedMonth, @JsonKey(name: 'related_god')  List<String> relatedGod, @JsonKey(name: 'related_tithi')  List<String> relatedTithi, @JsonKey(name: 'related_days')  List<String> relatedDays, @JsonKey(name: 'related_festival')  List<String> relatedFestival, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'godimage')  List<String> godImage, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _GodData() when $default != null:
return $default(_that.id,_that.godName,_that.birthPlace,_that.fatherName,_that.motherName,_that.wife,_that.favFood,_that.favColor,_that.thumbnail,_that.mainTemples,_that.relatedMonth,_that.relatedGod,_that.relatedTithi,_that.relatedDays,_that.relatedFestival,_that.detail,_that.godImage,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GodData implements GodData {
  const _GodData({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'god_name') this.godName = '', @JsonKey(name: 'birth_place') this.birthPlace = '', @JsonKey(name: 'father_name') this.fatherName = '', @JsonKey(name: 'mother_name') this.motherName = '', @JsonKey(name: 'wife') final  List<String> wife = const <String>[], @JsonKey(name: 'fav_food') final  List<String> favFood = const <String>[], @JsonKey(name: 'fav_color') final  List<String> favColor = const <String>[], @JsonKey(name: 'thumbnail') this.thumbnail = '', @JsonKey(name: 'main_temples') final  List<MainTemple> mainTemples = const <MainTemple>[], @JsonKey(name: 'related_month') final  List<String> relatedMonth = const <String>[], @JsonKey(name: 'related_god') final  List<String> relatedGod = const <String>[], @JsonKey(name: 'related_tithi') final  List<String> relatedTithi = const <String>[], @JsonKey(name: 'related_days') final  List<String> relatedDays = const <String>[], @JsonKey(name: 'related_festival') final  List<String> relatedFestival = const <String>[], @JsonKey(name: 'detail') this.detail = '', @JsonKey(name: 'godimage') final  List<String> godImage = const <String>[], @JsonKey(name: 'createdAt') this.createdAt = '', @JsonKey(name: 'updatedAt') this.updatedAt = ''}): _wife = wife,_favFood = favFood,_favColor = favColor,_mainTemples = mainTemples,_relatedMonth = relatedMonth,_relatedGod = relatedGod,_relatedTithi = relatedTithi,_relatedDays = relatedDays,_relatedFestival = relatedFestival,_godImage = godImage;
  factory _GodData.fromJson(Map<String, dynamic> json) => _$GodDataFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'god_name') final  String godName;
@override@JsonKey(name: 'birth_place') final  String birthPlace;
@override@JsonKey(name: 'father_name') final  String fatherName;
@override@JsonKey(name: 'mother_name') final  String motherName;
 final  List<String> _wife;
@override@JsonKey(name: 'wife') List<String> get wife {
  if (_wife is EqualUnmodifiableListView) return _wife;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wife);
}

 final  List<String> _favFood;
@override@JsonKey(name: 'fav_food') List<String> get favFood {
  if (_favFood is EqualUnmodifiableListView) return _favFood;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favFood);
}

 final  List<String> _favColor;
@override@JsonKey(name: 'fav_color') List<String> get favColor {
  if (_favColor is EqualUnmodifiableListView) return _favColor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favColor);
}

@override@JsonKey(name: 'thumbnail') final  String thumbnail;
 final  List<MainTemple> _mainTemples;
@override@JsonKey(name: 'main_temples') List<MainTemple> get mainTemples {
  if (_mainTemples is EqualUnmodifiableListView) return _mainTemples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mainTemples);
}

 final  List<String> _relatedMonth;
@override@JsonKey(name: 'related_month') List<String> get relatedMonth {
  if (_relatedMonth is EqualUnmodifiableListView) return _relatedMonth;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedMonth);
}

 final  List<String> _relatedGod;
@override@JsonKey(name: 'related_god') List<String> get relatedGod {
  if (_relatedGod is EqualUnmodifiableListView) return _relatedGod;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedGod);
}

 final  List<String> _relatedTithi;
@override@JsonKey(name: 'related_tithi') List<String> get relatedTithi {
  if (_relatedTithi is EqualUnmodifiableListView) return _relatedTithi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedTithi);
}

 final  List<String> _relatedDays;
@override@JsonKey(name: 'related_days') List<String> get relatedDays {
  if (_relatedDays is EqualUnmodifiableListView) return _relatedDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedDays);
}

 final  List<String> _relatedFestival;
@override@JsonKey(name: 'related_festival') List<String> get relatedFestival {
  if (_relatedFestival is EqualUnmodifiableListView) return _relatedFestival;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedFestival);
}

@override@JsonKey(name: 'detail') final  String detail;
 final  List<String> _godImage;
@override@JsonKey(name: 'godimage') List<String> get godImage {
  if (_godImage is EqualUnmodifiableListView) return _godImage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_godImage);
}

@override@JsonKey(name: 'createdAt') final  String createdAt;
@override@JsonKey(name: 'updatedAt') final  String updatedAt;

/// Create a copy of GodData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodDataCopyWith<_GodData> get copyWith => __$GodDataCopyWithImpl<_GodData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodData&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&const DeepCollectionEquality().equals(other._wife, _wife)&&const DeepCollectionEquality().equals(other._favFood, _favFood)&&const DeepCollectionEquality().equals(other._favColor, _favColor)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other._mainTemples, _mainTemples)&&const DeepCollectionEquality().equals(other._relatedMonth, _relatedMonth)&&const DeepCollectionEquality().equals(other._relatedGod, _relatedGod)&&const DeepCollectionEquality().equals(other._relatedTithi, _relatedTithi)&&const DeepCollectionEquality().equals(other._relatedDays, _relatedDays)&&const DeepCollectionEquality().equals(other._relatedFestival, _relatedFestival)&&(identical(other.detail, detail) || other.detail == detail)&&const DeepCollectionEquality().equals(other._godImage, _godImage)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,godName,birthPlace,fatherName,motherName,const DeepCollectionEquality().hash(_wife),const DeepCollectionEquality().hash(_favFood),const DeepCollectionEquality().hash(_favColor),thumbnail,const DeepCollectionEquality().hash(_mainTemples),const DeepCollectionEquality().hash(_relatedMonth),const DeepCollectionEquality().hash(_relatedGod),const DeepCollectionEquality().hash(_relatedTithi),const DeepCollectionEquality().hash(_relatedDays),const DeepCollectionEquality().hash(_relatedFestival),detail,const DeepCollectionEquality().hash(_godImage),createdAt,updatedAt]);

@override
String toString() {
  return 'GodData(id: $id, godName: $godName, birthPlace: $birthPlace, fatherName: $fatherName, motherName: $motherName, wife: $wife, favFood: $favFood, favColor: $favColor, thumbnail: $thumbnail, mainTemples: $mainTemples, relatedMonth: $relatedMonth, relatedGod: $relatedGod, relatedTithi: $relatedTithi, relatedDays: $relatedDays, relatedFestival: $relatedFestival, detail: $detail, godImage: $godImage, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$GodDataCopyWith<$Res> implements $GodDataCopyWith<$Res> {
  factory _$GodDataCopyWith(_GodData value, $Res Function(_GodData) _then) = __$GodDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String godName,@JsonKey(name: 'birth_place') String birthPlace,@JsonKey(name: 'father_name') String fatherName,@JsonKey(name: 'mother_name') String motherName,@JsonKey(name: 'wife') List<String> wife,@JsonKey(name: 'fav_food') List<String> favFood,@JsonKey(name: 'fav_color') List<String> favColor,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'main_temples') List<MainTemple> mainTemples,@JsonKey(name: 'related_month') List<String> relatedMonth,@JsonKey(name: 'related_god') List<String> relatedGod,@JsonKey(name: 'related_tithi') List<String> relatedTithi,@JsonKey(name: 'related_days') List<String> relatedDays,@JsonKey(name: 'related_festival') List<String> relatedFestival,@JsonKey(name: 'detail') String detail,@JsonKey(name: 'godimage') List<String> godImage,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: 'updatedAt') String updatedAt
});




}
/// @nodoc
class __$GodDataCopyWithImpl<$Res>
    implements _$GodDataCopyWith<$Res> {
  __$GodDataCopyWithImpl(this._self, this._then);

  final _GodData _self;
  final $Res Function(_GodData) _then;

/// Create a copy of GodData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? godName = null,Object? birthPlace = null,Object? fatherName = null,Object? motherName = null,Object? wife = null,Object? favFood = null,Object? favColor = null,Object? thumbnail = null,Object? mainTemples = null,Object? relatedMonth = null,Object? relatedGod = null,Object? relatedTithi = null,Object? relatedDays = null,Object? relatedFestival = null,Object? detail = null,Object? godImage = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_GodData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,godName: null == godName ? _self.godName : godName // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,fatherName: null == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String,motherName: null == motherName ? _self.motherName : motherName // ignore: cast_nullable_to_non_nullable
as String,wife: null == wife ? _self._wife : wife // ignore: cast_nullable_to_non_nullable
as List<String>,favFood: null == favFood ? _self._favFood : favFood // ignore: cast_nullable_to_non_nullable
as List<String>,favColor: null == favColor ? _self._favColor : favColor // ignore: cast_nullable_to_non_nullable
as List<String>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,mainTemples: null == mainTemples ? _self._mainTemples : mainTemples // ignore: cast_nullable_to_non_nullable
as List<MainTemple>,relatedMonth: null == relatedMonth ? _self._relatedMonth : relatedMonth // ignore: cast_nullable_to_non_nullable
as List<String>,relatedGod: null == relatedGod ? _self._relatedGod : relatedGod // ignore: cast_nullable_to_non_nullable
as List<String>,relatedTithi: null == relatedTithi ? _self._relatedTithi : relatedTithi // ignore: cast_nullable_to_non_nullable
as List<String>,relatedDays: null == relatedDays ? _self._relatedDays : relatedDays // ignore: cast_nullable_to_non_nullable
as List<String>,relatedFestival: null == relatedFestival ? _self._relatedFestival : relatedFestival // ignore: cast_nullable_to_non_nullable
as List<String>,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,godImage: null == godImage ? _self._godImage : godImage // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MainTemple {

@JsonKey(name: 'temple_name') String get templeName;@JsonKey(name: 'location') String get location;@JsonKey(name: 'image') String get image;
/// Create a copy of MainTemple
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainTempleCopyWith<MainTemple> get copyWith => _$MainTempleCopyWithImpl<MainTemple>(this as MainTemple, _$identity);

  /// Serializes this MainTemple to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainTemple&&(identical(other.templeName, templeName) || other.templeName == templeName)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,templeName,location,image);

@override
String toString() {
  return 'MainTemple(templeName: $templeName, location: $location, image: $image)';
}


}

/// @nodoc
abstract mixin class $MainTempleCopyWith<$Res>  {
  factory $MainTempleCopyWith(MainTemple value, $Res Function(MainTemple) _then) = _$MainTempleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'temple_name') String templeName,@JsonKey(name: 'location') String location,@JsonKey(name: 'image') String image
});




}
/// @nodoc
class _$MainTempleCopyWithImpl<$Res>
    implements $MainTempleCopyWith<$Res> {
  _$MainTempleCopyWithImpl(this._self, this._then);

  final MainTemple _self;
  final $Res Function(MainTemple) _then;

/// Create a copy of MainTemple
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? templeName = null,Object? location = null,Object? image = null,}) {
  return _then(_self.copyWith(
templeName: null == templeName ? _self.templeName : templeName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MainTemple].
extension MainTemplePatterns on MainTemple {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainTemple value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainTemple() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainTemple value)  $default,){
final _that = this;
switch (_that) {
case _MainTemple():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainTemple value)?  $default,){
final _that = this;
switch (_that) {
case _MainTemple() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'temple_name')  String templeName, @JsonKey(name: 'location')  String location, @JsonKey(name: 'image')  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainTemple() when $default != null:
return $default(_that.templeName,_that.location,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'temple_name')  String templeName, @JsonKey(name: 'location')  String location, @JsonKey(name: 'image')  String image)  $default,) {final _that = this;
switch (_that) {
case _MainTemple():
return $default(_that.templeName,_that.location,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'temple_name')  String templeName, @JsonKey(name: 'location')  String location, @JsonKey(name: 'image')  String image)?  $default,) {final _that = this;
switch (_that) {
case _MainTemple() when $default != null:
return $default(_that.templeName,_that.location,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MainTemple implements MainTemple {
  const _MainTemple({@JsonKey(name: 'temple_name') this.templeName = '', @JsonKey(name: 'location') this.location = '', @JsonKey(name: 'image') this.image = ''});
  factory _MainTemple.fromJson(Map<String, dynamic> json) => _$MainTempleFromJson(json);

@override@JsonKey(name: 'temple_name') final  String templeName;
@override@JsonKey(name: 'location') final  String location;
@override@JsonKey(name: 'image') final  String image;

/// Create a copy of MainTemple
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainTempleCopyWith<_MainTemple> get copyWith => __$MainTempleCopyWithImpl<_MainTemple>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainTempleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainTemple&&(identical(other.templeName, templeName) || other.templeName == templeName)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,templeName,location,image);

@override
String toString() {
  return 'MainTemple(templeName: $templeName, location: $location, image: $image)';
}


}

/// @nodoc
abstract mixin class _$MainTempleCopyWith<$Res> implements $MainTempleCopyWith<$Res> {
  factory _$MainTempleCopyWith(_MainTemple value, $Res Function(_MainTemple) _then) = __$MainTempleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'temple_name') String templeName,@JsonKey(name: 'location') String location,@JsonKey(name: 'image') String image
});




}
/// @nodoc
class __$MainTempleCopyWithImpl<$Res>
    implements _$MainTempleCopyWith<$Res> {
  __$MainTempleCopyWithImpl(this._self, this._then);

  final _MainTemple _self;
  final $Res Function(_MainTemple) _then;

/// Create a copy of MainTemple
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? templeName = null,Object? location = null,Object? image = null,}) {
  return _then(_MainTemple(
templeName: null == templeName ? _self.templeName : templeName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
