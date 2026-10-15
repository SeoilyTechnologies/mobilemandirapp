// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'god_data_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GodDataListResponse {

 bool get success;// Old API compatibility
 String get lang; int get total; List<GodData> get data;
/// Create a copy of GodDataListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodDataListResponseCopyWith<GodDataListResponse> get copyWith => _$GodDataListResponseCopyWithImpl<GodDataListResponse>(this as GodDataListResponse, _$identity);

  /// Serializes this GodDataListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodDataListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,total,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GodDataListResponse(success: $success, lang: $lang, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class $GodDataListResponseCopyWith<$Res>  {
  factory $GodDataListResponseCopyWith(GodDataListResponse value, $Res Function(GodDataListResponse) _then) = _$GodDataListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String lang, int total, List<GodData> data
});




}
/// @nodoc
class _$GodDataListResponseCopyWithImpl<$Res>
    implements $GodDataListResponseCopyWith<$Res> {
  _$GodDataListResponseCopyWithImpl(this._self, this._then);

  final GodDataListResponse _self;
  final $Res Function(GodDataListResponse) _then;

/// Create a copy of GodDataListResponse
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


/// Adds pattern-matching-related methods to [GodDataListResponse].
extension GodDataListResponsePatterns on GodDataListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GodDataListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GodDataListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GodDataListResponse value)  $default,){
final _that = this;
switch (_that) {
case _GodDataListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GodDataListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GodDataListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String lang,  int total,  List<GodData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodDataListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String lang,  int total,  List<GodData> data)  $default,) {final _that = this;
switch (_that) {
case _GodDataListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String lang,  int total,  List<GodData> data)?  $default,) {final _that = this;
switch (_that) {
case _GodDataListResponse() when $default != null:
return $default(_that.success,_that.lang,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GodDataListResponse implements GodDataListResponse {
  const _GodDataListResponse({this.success = false, this.lang = '', this.total = 0, final  List<GodData> data = const <GodData>[]}): _data = data;
  factory _GodDataListResponse.fromJson(Map<String, dynamic> json) => _$GodDataListResponseFromJson(json);

@override@JsonKey() final  bool success;
// Old API compatibility
@override@JsonKey() final  String lang;
@override@JsonKey() final  int total;
 final  List<GodData> _data;
@override@JsonKey() List<GodData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GodDataListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodDataListResponseCopyWith<_GodDataListResponse> get copyWith => __$GodDataListResponseCopyWithImpl<_GodDataListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodDataListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodDataListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,total,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GodDataListResponse(success: $success, lang: $lang, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GodDataListResponseCopyWith<$Res> implements $GodDataListResponseCopyWith<$Res> {
  factory _$GodDataListResponseCopyWith(_GodDataListResponse value, $Res Function(_GodDataListResponse) _then) = __$GodDataListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String lang, int total, List<GodData> data
});




}
/// @nodoc
class __$GodDataListResponseCopyWithImpl<$Res>
    implements _$GodDataListResponseCopyWith<$Res> {
  __$GodDataListResponseCopyWithImpl(this._self, this._then);

  final _GodDataListResponse _self;
  final $Res Function(_GodDataListResponse) _then;

/// Create a copy of GodDataListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? lang = null,Object? total = null,Object? data = null,}) {
  return _then(_GodDataListResponse(
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

@JsonKey(name: '_id') String get id;@JsonKey(name: 'god_name') String get god_name;@JsonKey(name: 'birth_place') String get birth_place;@JsonKey(name: 'father_name') String get father_name;@JsonKey(name: 'mother_name') String get mother_name;@JsonKey(name: 'wife') List<String> get wife;@JsonKey(name: 'fav_food') List<String> get fav_food;@JsonKey(name: 'fav_color') List<String> get fav_color;@JsonKey(name: 'thumbnail') String get thumbnail;/// API key = temple
/// Variable name remains same
@JsonKey(name: 'temple') List<Temple> get main_temples;@JsonKey(name: 'related_month') List<String> get related_month;@JsonKey(name: 'related_god') List<String> get related_god;@JsonKey(name: 'related_tithi') List<String> get related_tithi;@JsonKey(name: 'related_days') List<String> get related_days;@JsonKey(name: 'related_festival') List<RelatedFestival> get related_festival;@JsonKey(name: 'detail') String get detail;// Old API compatibility
@JsonKey(name: 'godimage') List<String> get godimage;@JsonKey(name: 'familyMembers') List<FamilyMember> get familyMembers;// Old API compatibility
@JsonKey(name: 'createdAt') String get createdAt;@JsonKey(name: 'updatedAt') String get updatedAt;
/// Create a copy of GodData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodDataCopyWith<GodData> get copyWith => _$GodDataCopyWithImpl<GodData>(this as GodData, _$identity);

  /// Serializes this GodData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodData&&(identical(other.id, id) || other.id == id)&&(identical(other.god_name, god_name) || other.god_name == god_name)&&(identical(other.birth_place, birth_place) || other.birth_place == birth_place)&&(identical(other.father_name, father_name) || other.father_name == father_name)&&(identical(other.mother_name, mother_name) || other.mother_name == mother_name)&&const DeepCollectionEquality().equals(other.wife, wife)&&const DeepCollectionEquality().equals(other.fav_food, fav_food)&&const DeepCollectionEquality().equals(other.fav_color, fav_color)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other.main_temples, main_temples)&&const DeepCollectionEquality().equals(other.related_month, related_month)&&const DeepCollectionEquality().equals(other.related_god, related_god)&&const DeepCollectionEquality().equals(other.related_tithi, related_tithi)&&const DeepCollectionEquality().equals(other.related_days, related_days)&&const DeepCollectionEquality().equals(other.related_festival, related_festival)&&(identical(other.detail, detail) || other.detail == detail)&&const DeepCollectionEquality().equals(other.godimage, godimage)&&const DeepCollectionEquality().equals(other.familyMembers, familyMembers)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,god_name,birth_place,father_name,mother_name,const DeepCollectionEquality().hash(wife),const DeepCollectionEquality().hash(fav_food),const DeepCollectionEquality().hash(fav_color),thumbnail,const DeepCollectionEquality().hash(main_temples),const DeepCollectionEquality().hash(related_month),const DeepCollectionEquality().hash(related_god),const DeepCollectionEquality().hash(related_tithi),const DeepCollectionEquality().hash(related_days),const DeepCollectionEquality().hash(related_festival),detail,const DeepCollectionEquality().hash(godimage),const DeepCollectionEquality().hash(familyMembers),createdAt,updatedAt]);

@override
String toString() {
  return 'GodData(id: $id, god_name: $god_name, birth_place: $birth_place, father_name: $father_name, mother_name: $mother_name, wife: $wife, fav_food: $fav_food, fav_color: $fav_color, thumbnail: $thumbnail, main_temples: $main_temples, related_month: $related_month, related_god: $related_god, related_tithi: $related_tithi, related_days: $related_days, related_festival: $related_festival, detail: $detail, godimage: $godimage, familyMembers: $familyMembers, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GodDataCopyWith<$Res>  {
  factory $GodDataCopyWith(GodData value, $Res Function(GodData) _then) = _$GodDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String god_name,@JsonKey(name: 'birth_place') String birth_place,@JsonKey(name: 'father_name') String father_name,@JsonKey(name: 'mother_name') String mother_name,@JsonKey(name: 'wife') List<String> wife,@JsonKey(name: 'fav_food') List<String> fav_food,@JsonKey(name: 'fav_color') List<String> fav_color,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'temple') List<Temple> main_temples,@JsonKey(name: 'related_month') List<String> related_month,@JsonKey(name: 'related_god') List<String> related_god,@JsonKey(name: 'related_tithi') List<String> related_tithi,@JsonKey(name: 'related_days') List<String> related_days,@JsonKey(name: 'related_festival') List<RelatedFestival> related_festival,@JsonKey(name: 'detail') String detail,@JsonKey(name: 'godimage') List<String> godimage,@JsonKey(name: 'familyMembers') List<FamilyMember> familyMembers,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: 'updatedAt') String updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? god_name = null,Object? birth_place = null,Object? father_name = null,Object? mother_name = null,Object? wife = null,Object? fav_food = null,Object? fav_color = null,Object? thumbnail = null,Object? main_temples = null,Object? related_month = null,Object? related_god = null,Object? related_tithi = null,Object? related_days = null,Object? related_festival = null,Object? detail = null,Object? godimage = null,Object? familyMembers = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,god_name: null == god_name ? _self.god_name : god_name // ignore: cast_nullable_to_non_nullable
as String,birth_place: null == birth_place ? _self.birth_place : birth_place // ignore: cast_nullable_to_non_nullable
as String,father_name: null == father_name ? _self.father_name : father_name // ignore: cast_nullable_to_non_nullable
as String,mother_name: null == mother_name ? _self.mother_name : mother_name // ignore: cast_nullable_to_non_nullable
as String,wife: null == wife ? _self.wife : wife // ignore: cast_nullable_to_non_nullable
as List<String>,fav_food: null == fav_food ? _self.fav_food : fav_food // ignore: cast_nullable_to_non_nullable
as List<String>,fav_color: null == fav_color ? _self.fav_color : fav_color // ignore: cast_nullable_to_non_nullable
as List<String>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,main_temples: null == main_temples ? _self.main_temples : main_temples // ignore: cast_nullable_to_non_nullable
as List<Temple>,related_month: null == related_month ? _self.related_month : related_month // ignore: cast_nullable_to_non_nullable
as List<String>,related_god: null == related_god ? _self.related_god : related_god // ignore: cast_nullable_to_non_nullable
as List<String>,related_tithi: null == related_tithi ? _self.related_tithi : related_tithi // ignore: cast_nullable_to_non_nullable
as List<String>,related_days: null == related_days ? _self.related_days : related_days // ignore: cast_nullable_to_non_nullable
as List<String>,related_festival: null == related_festival ? _self.related_festival : related_festival // ignore: cast_nullable_to_non_nullable
as List<RelatedFestival>,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,godimage: null == godimage ? _self.godimage : godimage // ignore: cast_nullable_to_non_nullable
as List<String>,familyMembers: null == familyMembers ? _self.familyMembers : familyMembers // ignore: cast_nullable_to_non_nullable
as List<FamilyMember>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String god_name, @JsonKey(name: 'birth_place')  String birth_place, @JsonKey(name: 'father_name')  String father_name, @JsonKey(name: 'mother_name')  String mother_name, @JsonKey(name: 'wife')  List<String> wife, @JsonKey(name: 'fav_food')  List<String> fav_food, @JsonKey(name: 'fav_color')  List<String> fav_color, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'temple')  List<Temple> main_temples, @JsonKey(name: 'related_month')  List<String> related_month, @JsonKey(name: 'related_god')  List<String> related_god, @JsonKey(name: 'related_tithi')  List<String> related_tithi, @JsonKey(name: 'related_days')  List<String> related_days, @JsonKey(name: 'related_festival')  List<RelatedFestival> related_festival, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'godimage')  List<String> godimage, @JsonKey(name: 'familyMembers')  List<FamilyMember> familyMembers, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodData() when $default != null:
return $default(_that.id,_that.god_name,_that.birth_place,_that.father_name,_that.mother_name,_that.wife,_that.fav_food,_that.fav_color,_that.thumbnail,_that.main_temples,_that.related_month,_that.related_god,_that.related_tithi,_that.related_days,_that.related_festival,_that.detail,_that.godimage,_that.familyMembers,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String god_name, @JsonKey(name: 'birth_place')  String birth_place, @JsonKey(name: 'father_name')  String father_name, @JsonKey(name: 'mother_name')  String mother_name, @JsonKey(name: 'wife')  List<String> wife, @JsonKey(name: 'fav_food')  List<String> fav_food, @JsonKey(name: 'fav_color')  List<String> fav_color, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'temple')  List<Temple> main_temples, @JsonKey(name: 'related_month')  List<String> related_month, @JsonKey(name: 'related_god')  List<String> related_god, @JsonKey(name: 'related_tithi')  List<String> related_tithi, @JsonKey(name: 'related_days')  List<String> related_days, @JsonKey(name: 'related_festival')  List<RelatedFestival> related_festival, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'godimage')  List<String> godimage, @JsonKey(name: 'familyMembers')  List<FamilyMember> familyMembers, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _GodData():
return $default(_that.id,_that.god_name,_that.birth_place,_that.father_name,_that.mother_name,_that.wife,_that.fav_food,_that.fav_color,_that.thumbnail,_that.main_temples,_that.related_month,_that.related_god,_that.related_tithi,_that.related_days,_that.related_festival,_that.detail,_that.godimage,_that.familyMembers,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String god_name, @JsonKey(name: 'birth_place')  String birth_place, @JsonKey(name: 'father_name')  String father_name, @JsonKey(name: 'mother_name')  String mother_name, @JsonKey(name: 'wife')  List<String> wife, @JsonKey(name: 'fav_food')  List<String> fav_food, @JsonKey(name: 'fav_color')  List<String> fav_color, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'temple')  List<Temple> main_temples, @JsonKey(name: 'related_month')  List<String> related_month, @JsonKey(name: 'related_god')  List<String> related_god, @JsonKey(name: 'related_tithi')  List<String> related_tithi, @JsonKey(name: 'related_days')  List<String> related_days, @JsonKey(name: 'related_festival')  List<RelatedFestival> related_festival, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'godimage')  List<String> godimage, @JsonKey(name: 'familyMembers')  List<FamilyMember> familyMembers, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _GodData() when $default != null:
return $default(_that.id,_that.god_name,_that.birth_place,_that.father_name,_that.mother_name,_that.wife,_that.fav_food,_that.fav_color,_that.thumbnail,_that.main_temples,_that.related_month,_that.related_god,_that.related_tithi,_that.related_days,_that.related_festival,_that.detail,_that.godimage,_that.familyMembers,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GodData implements GodData {
  const _GodData({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'god_name') this.god_name = '', @JsonKey(name: 'birth_place') this.birth_place = '', @JsonKey(name: 'father_name') this.father_name = '', @JsonKey(name: 'mother_name') this.mother_name = '', @JsonKey(name: 'wife') final  List<String> wife = const <String>[], @JsonKey(name: 'fav_food') final  List<String> fav_food = const <String>[], @JsonKey(name: 'fav_color') final  List<String> fav_color = const <String>[], @JsonKey(name: 'thumbnail') this.thumbnail = '', @JsonKey(name: 'temple') final  List<Temple> main_temples = const <Temple>[], @JsonKey(name: 'related_month') final  List<String> related_month = const <String>[], @JsonKey(name: 'related_god') final  List<String> related_god = const <String>[], @JsonKey(name: 'related_tithi') final  List<String> related_tithi = const <String>[], @JsonKey(name: 'related_days') final  List<String> related_days = const <String>[], @JsonKey(name: 'related_festival') final  List<RelatedFestival> related_festival = const <RelatedFestival>[], @JsonKey(name: 'detail') this.detail = '', @JsonKey(name: 'godimage') final  List<String> godimage = const <String>[], @JsonKey(name: 'familyMembers') final  List<FamilyMember> familyMembers = const <FamilyMember>[], @JsonKey(name: 'createdAt') this.createdAt = '', @JsonKey(name: 'updatedAt') this.updatedAt = ''}): _wife = wife,_fav_food = fav_food,_fav_color = fav_color,_main_temples = main_temples,_related_month = related_month,_related_god = related_god,_related_tithi = related_tithi,_related_days = related_days,_related_festival = related_festival,_godimage = godimage,_familyMembers = familyMembers;
  factory _GodData.fromJson(Map<String, dynamic> json) => _$GodDataFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'god_name') final  String god_name;
@override@JsonKey(name: 'birth_place') final  String birth_place;
@override@JsonKey(name: 'father_name') final  String father_name;
@override@JsonKey(name: 'mother_name') final  String mother_name;
 final  List<String> _wife;
@override@JsonKey(name: 'wife') List<String> get wife {
  if (_wife is EqualUnmodifiableListView) return _wife;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wife);
}

 final  List<String> _fav_food;
@override@JsonKey(name: 'fav_food') List<String> get fav_food {
  if (_fav_food is EqualUnmodifiableListView) return _fav_food;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fav_food);
}

 final  List<String> _fav_color;
@override@JsonKey(name: 'fav_color') List<String> get fav_color {
  if (_fav_color is EqualUnmodifiableListView) return _fav_color;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fav_color);
}

@override@JsonKey(name: 'thumbnail') final  String thumbnail;
/// API key = temple
/// Variable name remains same
 final  List<Temple> _main_temples;
/// API key = temple
/// Variable name remains same
@override@JsonKey(name: 'temple') List<Temple> get main_temples {
  if (_main_temples is EqualUnmodifiableListView) return _main_temples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_main_temples);
}

 final  List<String> _related_month;
@override@JsonKey(name: 'related_month') List<String> get related_month {
  if (_related_month is EqualUnmodifiableListView) return _related_month;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_related_month);
}

 final  List<String> _related_god;
@override@JsonKey(name: 'related_god') List<String> get related_god {
  if (_related_god is EqualUnmodifiableListView) return _related_god;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_related_god);
}

 final  List<String> _related_tithi;
@override@JsonKey(name: 'related_tithi') List<String> get related_tithi {
  if (_related_tithi is EqualUnmodifiableListView) return _related_tithi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_related_tithi);
}

 final  List<String> _related_days;
@override@JsonKey(name: 'related_days') List<String> get related_days {
  if (_related_days is EqualUnmodifiableListView) return _related_days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_related_days);
}

 final  List<RelatedFestival> _related_festival;
@override@JsonKey(name: 'related_festival') List<RelatedFestival> get related_festival {
  if (_related_festival is EqualUnmodifiableListView) return _related_festival;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_related_festival);
}

@override@JsonKey(name: 'detail') final  String detail;
// Old API compatibility
 final  List<String> _godimage;
// Old API compatibility
@override@JsonKey(name: 'godimage') List<String> get godimage {
  if (_godimage is EqualUnmodifiableListView) return _godimage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_godimage);
}

 final  List<FamilyMember> _familyMembers;
@override@JsonKey(name: 'familyMembers') List<FamilyMember> get familyMembers {
  if (_familyMembers is EqualUnmodifiableListView) return _familyMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_familyMembers);
}

// Old API compatibility
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodData&&(identical(other.id, id) || other.id == id)&&(identical(other.god_name, god_name) || other.god_name == god_name)&&(identical(other.birth_place, birth_place) || other.birth_place == birth_place)&&(identical(other.father_name, father_name) || other.father_name == father_name)&&(identical(other.mother_name, mother_name) || other.mother_name == mother_name)&&const DeepCollectionEquality().equals(other._wife, _wife)&&const DeepCollectionEquality().equals(other._fav_food, _fav_food)&&const DeepCollectionEquality().equals(other._fav_color, _fav_color)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other._main_temples, _main_temples)&&const DeepCollectionEquality().equals(other._related_month, _related_month)&&const DeepCollectionEquality().equals(other._related_god, _related_god)&&const DeepCollectionEquality().equals(other._related_tithi, _related_tithi)&&const DeepCollectionEquality().equals(other._related_days, _related_days)&&const DeepCollectionEquality().equals(other._related_festival, _related_festival)&&(identical(other.detail, detail) || other.detail == detail)&&const DeepCollectionEquality().equals(other._godimage, _godimage)&&const DeepCollectionEquality().equals(other._familyMembers, _familyMembers)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,god_name,birth_place,father_name,mother_name,const DeepCollectionEquality().hash(_wife),const DeepCollectionEquality().hash(_fav_food),const DeepCollectionEquality().hash(_fav_color),thumbnail,const DeepCollectionEquality().hash(_main_temples),const DeepCollectionEquality().hash(_related_month),const DeepCollectionEquality().hash(_related_god),const DeepCollectionEquality().hash(_related_tithi),const DeepCollectionEquality().hash(_related_days),const DeepCollectionEquality().hash(_related_festival),detail,const DeepCollectionEquality().hash(_godimage),const DeepCollectionEquality().hash(_familyMembers),createdAt,updatedAt]);

@override
String toString() {
  return 'GodData(id: $id, god_name: $god_name, birth_place: $birth_place, father_name: $father_name, mother_name: $mother_name, wife: $wife, fav_food: $fav_food, fav_color: $fav_color, thumbnail: $thumbnail, main_temples: $main_temples, related_month: $related_month, related_god: $related_god, related_tithi: $related_tithi, related_days: $related_days, related_festival: $related_festival, detail: $detail, godimage: $godimage, familyMembers: $familyMembers, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$GodDataCopyWith<$Res> implements $GodDataCopyWith<$Res> {
  factory _$GodDataCopyWith(_GodData value, $Res Function(_GodData) _then) = __$GodDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String god_name,@JsonKey(name: 'birth_place') String birth_place,@JsonKey(name: 'father_name') String father_name,@JsonKey(name: 'mother_name') String mother_name,@JsonKey(name: 'wife') List<String> wife,@JsonKey(name: 'fav_food') List<String> fav_food,@JsonKey(name: 'fav_color') List<String> fav_color,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'temple') List<Temple> main_temples,@JsonKey(name: 'related_month') List<String> related_month,@JsonKey(name: 'related_god') List<String> related_god,@JsonKey(name: 'related_tithi') List<String> related_tithi,@JsonKey(name: 'related_days') List<String> related_days,@JsonKey(name: 'related_festival') List<RelatedFestival> related_festival,@JsonKey(name: 'detail') String detail,@JsonKey(name: 'godimage') List<String> godimage,@JsonKey(name: 'familyMembers') List<FamilyMember> familyMembers,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: 'updatedAt') String updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? god_name = null,Object? birth_place = null,Object? father_name = null,Object? mother_name = null,Object? wife = null,Object? fav_food = null,Object? fav_color = null,Object? thumbnail = null,Object? main_temples = null,Object? related_month = null,Object? related_god = null,Object? related_tithi = null,Object? related_days = null,Object? related_festival = null,Object? detail = null,Object? godimage = null,Object? familyMembers = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_GodData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,god_name: null == god_name ? _self.god_name : god_name // ignore: cast_nullable_to_non_nullable
as String,birth_place: null == birth_place ? _self.birth_place : birth_place // ignore: cast_nullable_to_non_nullable
as String,father_name: null == father_name ? _self.father_name : father_name // ignore: cast_nullable_to_non_nullable
as String,mother_name: null == mother_name ? _self.mother_name : mother_name // ignore: cast_nullable_to_non_nullable
as String,wife: null == wife ? _self._wife : wife // ignore: cast_nullable_to_non_nullable
as List<String>,fav_food: null == fav_food ? _self._fav_food : fav_food // ignore: cast_nullable_to_non_nullable
as List<String>,fav_color: null == fav_color ? _self._fav_color : fav_color // ignore: cast_nullable_to_non_nullable
as List<String>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,main_temples: null == main_temples ? _self._main_temples : main_temples // ignore: cast_nullable_to_non_nullable
as List<Temple>,related_month: null == related_month ? _self._related_month : related_month // ignore: cast_nullable_to_non_nullable
as List<String>,related_god: null == related_god ? _self._related_god : related_god // ignore: cast_nullable_to_non_nullable
as List<String>,related_tithi: null == related_tithi ? _self._related_tithi : related_tithi // ignore: cast_nullable_to_non_nullable
as List<String>,related_days: null == related_days ? _self._related_days : related_days // ignore: cast_nullable_to_non_nullable
as List<String>,related_festival: null == related_festival ? _self._related_festival : related_festival // ignore: cast_nullable_to_non_nullable
as List<RelatedFestival>,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,godimage: null == godimage ? _self._godimage : godimage // ignore: cast_nullable_to_non_nullable
as List<String>,familyMembers: null == familyMembers ? _self._familyMembers : familyMembers // ignore: cast_nullable_to_non_nullable
as List<FamilyMember>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Temple {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'name') String get temple_name;@JsonKey(name: 'location') String get location;@JsonKey(name: 'imageUrl') String get image;@JsonKey(name: 'slug') String get slug;
/// Create a copy of Temple
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleCopyWith<Temple> get copyWith => _$TempleCopyWithImpl<Temple>(this as Temple, _$identity);

  /// Serializes this Temple to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Temple&&(identical(other.id, id) || other.id == id)&&(identical(other.temple_name, temple_name) || other.temple_name == temple_name)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,temple_name,location,image,slug);

@override
String toString() {
  return 'Temple(id: $id, temple_name: $temple_name, location: $location, image: $image, slug: $slug)';
}


}

/// @nodoc
abstract mixin class $TempleCopyWith<$Res>  {
  factory $TempleCopyWith(Temple value, $Res Function(Temple) _then) = _$TempleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'name') String temple_name,@JsonKey(name: 'location') String location,@JsonKey(name: 'imageUrl') String image,@JsonKey(name: 'slug') String slug
});




}
/// @nodoc
class _$TempleCopyWithImpl<$Res>
    implements $TempleCopyWith<$Res> {
  _$TempleCopyWithImpl(this._self, this._then);

  final Temple _self;
  final $Res Function(Temple) _then;

/// Create a copy of Temple
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? temple_name = null,Object? location = null,Object? image = null,Object? slug = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,temple_name: null == temple_name ? _self.temple_name : temple_name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Temple].
extension TemplePatterns on Temple {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Temple value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Temple() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Temple value)  $default,){
final _that = this;
switch (_that) {
case _Temple():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Temple value)?  $default,){
final _that = this;
switch (_that) {
case _Temple() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'name')  String temple_name, @JsonKey(name: 'location')  String location, @JsonKey(name: 'imageUrl')  String image, @JsonKey(name: 'slug')  String slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Temple() when $default != null:
return $default(_that.id,_that.temple_name,_that.location,_that.image,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'name')  String temple_name, @JsonKey(name: 'location')  String location, @JsonKey(name: 'imageUrl')  String image, @JsonKey(name: 'slug')  String slug)  $default,) {final _that = this;
switch (_that) {
case _Temple():
return $default(_that.id,_that.temple_name,_that.location,_that.image,_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'name')  String temple_name, @JsonKey(name: 'location')  String location, @JsonKey(name: 'imageUrl')  String image, @JsonKey(name: 'slug')  String slug)?  $default,) {final _that = this;
switch (_that) {
case _Temple() when $default != null:
return $default(_that.id,_that.temple_name,_that.location,_that.image,_that.slug);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Temple implements Temple {
  const _Temple({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'name') this.temple_name = '', @JsonKey(name: 'location') this.location = '', @JsonKey(name: 'imageUrl') this.image = '', @JsonKey(name: 'slug') this.slug = ''});
  factory _Temple.fromJson(Map<String, dynamic> json) => _$TempleFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'name') final  String temple_name;
@override@JsonKey(name: 'location') final  String location;
@override@JsonKey(name: 'imageUrl') final  String image;
@override@JsonKey(name: 'slug') final  String slug;

/// Create a copy of Temple
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TempleCopyWith<_Temple> get copyWith => __$TempleCopyWithImpl<_Temple>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TempleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Temple&&(identical(other.id, id) || other.id == id)&&(identical(other.temple_name, temple_name) || other.temple_name == temple_name)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,temple_name,location,image,slug);

@override
String toString() {
  return 'Temple(id: $id, temple_name: $temple_name, location: $location, image: $image, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$TempleCopyWith<$Res> implements $TempleCopyWith<$Res> {
  factory _$TempleCopyWith(_Temple value, $Res Function(_Temple) _then) = __$TempleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'name') String temple_name,@JsonKey(name: 'location') String location,@JsonKey(name: 'imageUrl') String image,@JsonKey(name: 'slug') String slug
});




}
/// @nodoc
class __$TempleCopyWithImpl<$Res>
    implements _$TempleCopyWith<$Res> {
  __$TempleCopyWithImpl(this._self, this._then);

  final _Temple _self;
  final $Res Function(_Temple) _then;

/// Create a copy of Temple
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? temple_name = null,Object? location = null,Object? image = null,Object? slug = null,}) {
  return _then(_Temple(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,temple_name: null == temple_name ? _self.temple_name : temple_name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RelatedFestival {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'slug') String get slug;@JsonKey(name: 'when') String get when;
/// Create a copy of RelatedFestival
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelatedFestivalCopyWith<RelatedFestival> get copyWith => _$RelatedFestivalCopyWithImpl<RelatedFestival>(this as RelatedFestival, _$identity);

  /// Serializes this RelatedFestival to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelatedFestival&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.when, when) || other.when == when));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,when);

@override
String toString() {
  return 'RelatedFestival(name: $name, slug: $slug, when: $when)';
}


}

/// @nodoc
abstract mixin class $RelatedFestivalCopyWith<$Res>  {
  factory $RelatedFestivalCopyWith(RelatedFestival value, $Res Function(RelatedFestival) _then) = _$RelatedFestivalCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'when') String when
});




}
/// @nodoc
class _$RelatedFestivalCopyWithImpl<$Res>
    implements $RelatedFestivalCopyWith<$Res> {
  _$RelatedFestivalCopyWithImpl(this._self, this._then);

  final RelatedFestival _self;
  final $Res Function(RelatedFestival) _then;

/// Create a copy of RelatedFestival
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? slug = null,Object? when = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,when: null == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RelatedFestival].
extension RelatedFestivalPatterns on RelatedFestival {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelatedFestival value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelatedFestival() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelatedFestival value)  $default,){
final _that = this;
switch (_that) {
case _RelatedFestival():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelatedFestival value)?  $default,){
final _that = this;
switch (_that) {
case _RelatedFestival() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'when')  String when)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelatedFestival() when $default != null:
return $default(_that.name,_that.slug,_that.when);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'when')  String when)  $default,) {final _that = this;
switch (_that) {
case _RelatedFestival():
return $default(_that.name,_that.slug,_that.when);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'when')  String when)?  $default,) {final _that = this;
switch (_that) {
case _RelatedFestival() when $default != null:
return $default(_that.name,_that.slug,_that.when);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RelatedFestival implements RelatedFestival {
  const _RelatedFestival({@JsonKey(name: 'name') this.name = '', @JsonKey(name: 'slug') this.slug = '', @JsonKey(name: 'when') this.when = ''});
  factory _RelatedFestival.fromJson(Map<String, dynamic> json) => _$RelatedFestivalFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'slug') final  String slug;
@override@JsonKey(name: 'when') final  String when;

/// Create a copy of RelatedFestival
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelatedFestivalCopyWith<_RelatedFestival> get copyWith => __$RelatedFestivalCopyWithImpl<_RelatedFestival>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelatedFestivalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelatedFestival&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.when, when) || other.when == when));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,when);

@override
String toString() {
  return 'RelatedFestival(name: $name, slug: $slug, when: $when)';
}


}

/// @nodoc
abstract mixin class _$RelatedFestivalCopyWith<$Res> implements $RelatedFestivalCopyWith<$Res> {
  factory _$RelatedFestivalCopyWith(_RelatedFestival value, $Res Function(_RelatedFestival) _then) = __$RelatedFestivalCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'when') String when
});




}
/// @nodoc
class __$RelatedFestivalCopyWithImpl<$Res>
    implements _$RelatedFestivalCopyWith<$Res> {
  __$RelatedFestivalCopyWithImpl(this._self, this._then);

  final _RelatedFestival _self;
  final $Res Function(_RelatedFestival) _then;

/// Create a copy of RelatedFestival
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? slug = null,Object? when = null,}) {
  return _then(_RelatedFestival(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,when: null == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FamilyMember {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'relation') String get relation;@JsonKey(name: 'name') String get name;@JsonKey(name: 'image') String get image;@JsonKey(name: 'isClick') bool get isClick;
/// Create a copy of FamilyMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyMemberCopyWith<FamilyMember> get copyWith => _$FamilyMemberCopyWithImpl<FamilyMember>(this as FamilyMember, _$identity);

  /// Serializes this FamilyMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyMember&&(identical(other.id, id) || other.id == id)&&(identical(other.relation, relation) || other.relation == relation)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.isClick, isClick) || other.isClick == isClick));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,relation,name,image,isClick);

@override
String toString() {
  return 'FamilyMember(id: $id, relation: $relation, name: $name, image: $image, isClick: $isClick)';
}


}

/// @nodoc
abstract mixin class $FamilyMemberCopyWith<$Res>  {
  factory $FamilyMemberCopyWith(FamilyMember value, $Res Function(FamilyMember) _then) = _$FamilyMemberCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'relation') String relation,@JsonKey(name: 'name') String name,@JsonKey(name: 'image') String image,@JsonKey(name: 'isClick') bool isClick
});




}
/// @nodoc
class _$FamilyMemberCopyWithImpl<$Res>
    implements $FamilyMemberCopyWith<$Res> {
  _$FamilyMemberCopyWithImpl(this._self, this._then);

  final FamilyMember _self;
  final $Res Function(FamilyMember) _then;

/// Create a copy of FamilyMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? relation = null,Object? name = null,Object? image = null,Object? isClick = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,relation: null == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isClick: null == isClick ? _self.isClick : isClick // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FamilyMember].
extension FamilyMemberPatterns on FamilyMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FamilyMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FamilyMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FamilyMember value)  $default,){
final _that = this;
switch (_that) {
case _FamilyMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FamilyMember value)?  $default,){
final _that = this;
switch (_that) {
case _FamilyMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'relation')  String relation, @JsonKey(name: 'name')  String name, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isClick')  bool isClick)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FamilyMember() when $default != null:
return $default(_that.id,_that.relation,_that.name,_that.image,_that.isClick);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'relation')  String relation, @JsonKey(name: 'name')  String name, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isClick')  bool isClick)  $default,) {final _that = this;
switch (_that) {
case _FamilyMember():
return $default(_that.id,_that.relation,_that.name,_that.image,_that.isClick);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'relation')  String relation, @JsonKey(name: 'name')  String name, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isClick')  bool isClick)?  $default,) {final _that = this;
switch (_that) {
case _FamilyMember() when $default != null:
return $default(_that.id,_that.relation,_that.name,_that.image,_that.isClick);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FamilyMember implements FamilyMember {
  const _FamilyMember({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'relation') this.relation = '', @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'image') this.image = '', @JsonKey(name: 'isClick') this.isClick = false});
  factory _FamilyMember.fromJson(Map<String, dynamic> json) => _$FamilyMemberFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'relation') final  String relation;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'image') final  String image;
@override@JsonKey(name: 'isClick') final  bool isClick;

/// Create a copy of FamilyMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FamilyMemberCopyWith<_FamilyMember> get copyWith => __$FamilyMemberCopyWithImpl<_FamilyMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FamilyMember&&(identical(other.id, id) || other.id == id)&&(identical(other.relation, relation) || other.relation == relation)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.isClick, isClick) || other.isClick == isClick));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,relation,name,image,isClick);

@override
String toString() {
  return 'FamilyMember(id: $id, relation: $relation, name: $name, image: $image, isClick: $isClick)';
}


}

/// @nodoc
abstract mixin class _$FamilyMemberCopyWith<$Res> implements $FamilyMemberCopyWith<$Res> {
  factory _$FamilyMemberCopyWith(_FamilyMember value, $Res Function(_FamilyMember) _then) = __$FamilyMemberCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'relation') String relation,@JsonKey(name: 'name') String name,@JsonKey(name: 'image') String image,@JsonKey(name: 'isClick') bool isClick
});




}
/// @nodoc
class __$FamilyMemberCopyWithImpl<$Res>
    implements _$FamilyMemberCopyWith<$Res> {
  __$FamilyMemberCopyWithImpl(this._self, this._then);

  final _FamilyMember _self;
  final $Res Function(_FamilyMember) _then;

/// Create a copy of FamilyMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? relation = null,Object? name = null,Object? image = null,Object? isClick = null,}) {
  return _then(_FamilyMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,relation: null == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isClick: null == isClick ? _self.isClick : isClick // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
