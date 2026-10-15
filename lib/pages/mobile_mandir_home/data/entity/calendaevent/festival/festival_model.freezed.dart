// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'festival_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FestivalModel {

@JsonKey(name: "_id") String get id;@JsonKey(name: "title_hi") String get titleHi;@JsonKey(name: "tag") String get tag;@JsonKey(name: "title_en") String get titleEn;@JsonKey(name: "related_god_hi") String get relatedGodHi;@JsonKey(name: "related_god_en") String get relatedGodEn;@JsonKey(name: "about_hi") String get aboutHi;@JsonKey(name: "about_en") String get aboutEn;@JsonKey(name: "puja_vidhi_hi") String get pujaVidhiHi;@JsonKey(name: "puja_vidhi_en") String get pujaVidhiEn;
/// Create a copy of FestivalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FestivalModelCopyWith<FestivalModel> get copyWith => _$FestivalModelCopyWithImpl<FestivalModel>(this as FestivalModel, _$identity);

  /// Serializes this FestivalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FestivalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.titleHi, titleHi) || other.titleHi == titleHi)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.titleEn, titleEn) || other.titleEn == titleEn)&&(identical(other.relatedGodHi, relatedGodHi) || other.relatedGodHi == relatedGodHi)&&(identical(other.relatedGodEn, relatedGodEn) || other.relatedGodEn == relatedGodEn)&&(identical(other.aboutHi, aboutHi) || other.aboutHi == aboutHi)&&(identical(other.aboutEn, aboutEn) || other.aboutEn == aboutEn)&&(identical(other.pujaVidhiHi, pujaVidhiHi) || other.pujaVidhiHi == pujaVidhiHi)&&(identical(other.pujaVidhiEn, pujaVidhiEn) || other.pujaVidhiEn == pujaVidhiEn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,titleHi,tag,titleEn,relatedGodHi,relatedGodEn,aboutHi,aboutEn,pujaVidhiHi,pujaVidhiEn);

@override
String toString() {
  return 'FestivalModel(id: $id, titleHi: $titleHi, tag: $tag, titleEn: $titleEn, relatedGodHi: $relatedGodHi, relatedGodEn: $relatedGodEn, aboutHi: $aboutHi, aboutEn: $aboutEn, pujaVidhiHi: $pujaVidhiHi, pujaVidhiEn: $pujaVidhiEn)';
}


}

/// @nodoc
abstract mixin class $FestivalModelCopyWith<$Res>  {
  factory $FestivalModelCopyWith(FestivalModel value, $Res Function(FestivalModel) _then) = _$FestivalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "title_hi") String titleHi,@JsonKey(name: "tag") String tag,@JsonKey(name: "title_en") String titleEn,@JsonKey(name: "related_god_hi") String relatedGodHi,@JsonKey(name: "related_god_en") String relatedGodEn,@JsonKey(name: "about_hi") String aboutHi,@JsonKey(name: "about_en") String aboutEn,@JsonKey(name: "puja_vidhi_hi") String pujaVidhiHi,@JsonKey(name: "puja_vidhi_en") String pujaVidhiEn
});




}
/// @nodoc
class _$FestivalModelCopyWithImpl<$Res>
    implements $FestivalModelCopyWith<$Res> {
  _$FestivalModelCopyWithImpl(this._self, this._then);

  final FestivalModel _self;
  final $Res Function(FestivalModel) _then;

/// Create a copy of FestivalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? titleHi = null,Object? tag = null,Object? titleEn = null,Object? relatedGodHi = null,Object? relatedGodEn = null,Object? aboutHi = null,Object? aboutEn = null,Object? pujaVidhiHi = null,Object? pujaVidhiEn = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,titleHi: null == titleHi ? _self.titleHi : titleHi // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,titleEn: null == titleEn ? _self.titleEn : titleEn // ignore: cast_nullable_to_non_nullable
as String,relatedGodHi: null == relatedGodHi ? _self.relatedGodHi : relatedGodHi // ignore: cast_nullable_to_non_nullable
as String,relatedGodEn: null == relatedGodEn ? _self.relatedGodEn : relatedGodEn // ignore: cast_nullable_to_non_nullable
as String,aboutHi: null == aboutHi ? _self.aboutHi : aboutHi // ignore: cast_nullable_to_non_nullable
as String,aboutEn: null == aboutEn ? _self.aboutEn : aboutEn // ignore: cast_nullable_to_non_nullable
as String,pujaVidhiHi: null == pujaVidhiHi ? _self.pujaVidhiHi : pujaVidhiHi // ignore: cast_nullable_to_non_nullable
as String,pujaVidhiEn: null == pujaVidhiEn ? _self.pujaVidhiEn : pujaVidhiEn // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FestivalModel].
extension FestivalModelPatterns on FestivalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FestivalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FestivalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FestivalModel value)  $default,){
final _that = this;
switch (_that) {
case _FestivalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FestivalModel value)?  $default,){
final _that = this;
switch (_that) {
case _FestivalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "title_hi")  String titleHi, @JsonKey(name: "tag")  String tag, @JsonKey(name: "title_en")  String titleEn, @JsonKey(name: "related_god_hi")  String relatedGodHi, @JsonKey(name: "related_god_en")  String relatedGodEn, @JsonKey(name: "about_hi")  String aboutHi, @JsonKey(name: "about_en")  String aboutEn, @JsonKey(name: "puja_vidhi_hi")  String pujaVidhiHi, @JsonKey(name: "puja_vidhi_en")  String pujaVidhiEn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FestivalModel() when $default != null:
return $default(_that.id,_that.titleHi,_that.tag,_that.titleEn,_that.relatedGodHi,_that.relatedGodEn,_that.aboutHi,_that.aboutEn,_that.pujaVidhiHi,_that.pujaVidhiEn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "title_hi")  String titleHi, @JsonKey(name: "tag")  String tag, @JsonKey(name: "title_en")  String titleEn, @JsonKey(name: "related_god_hi")  String relatedGodHi, @JsonKey(name: "related_god_en")  String relatedGodEn, @JsonKey(name: "about_hi")  String aboutHi, @JsonKey(name: "about_en")  String aboutEn, @JsonKey(name: "puja_vidhi_hi")  String pujaVidhiHi, @JsonKey(name: "puja_vidhi_en")  String pujaVidhiEn)  $default,) {final _that = this;
switch (_that) {
case _FestivalModel():
return $default(_that.id,_that.titleHi,_that.tag,_that.titleEn,_that.relatedGodHi,_that.relatedGodEn,_that.aboutHi,_that.aboutEn,_that.pujaVidhiHi,_that.pujaVidhiEn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "title_hi")  String titleHi, @JsonKey(name: "tag")  String tag, @JsonKey(name: "title_en")  String titleEn, @JsonKey(name: "related_god_hi")  String relatedGodHi, @JsonKey(name: "related_god_en")  String relatedGodEn, @JsonKey(name: "about_hi")  String aboutHi, @JsonKey(name: "about_en")  String aboutEn, @JsonKey(name: "puja_vidhi_hi")  String pujaVidhiHi, @JsonKey(name: "puja_vidhi_en")  String pujaVidhiEn)?  $default,) {final _that = this;
switch (_that) {
case _FestivalModel() when $default != null:
return $default(_that.id,_that.titleHi,_that.tag,_that.titleEn,_that.relatedGodHi,_that.relatedGodEn,_that.aboutHi,_that.aboutEn,_that.pujaVidhiHi,_that.pujaVidhiEn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FestivalModel implements FestivalModel {
  const _FestivalModel({@JsonKey(name: "_id") this.id = "", @JsonKey(name: "title_hi") this.titleHi = "", @JsonKey(name: "tag") this.tag = "", @JsonKey(name: "title_en") this.titleEn = "", @JsonKey(name: "related_god_hi") this.relatedGodHi = "", @JsonKey(name: "related_god_en") this.relatedGodEn = "", @JsonKey(name: "about_hi") this.aboutHi = "", @JsonKey(name: "about_en") this.aboutEn = "", @JsonKey(name: "puja_vidhi_hi") this.pujaVidhiHi = "", @JsonKey(name: "puja_vidhi_en") this.pujaVidhiEn = ""});
  factory _FestivalModel.fromJson(Map<String, dynamic> json) => _$FestivalModelFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey(name: "title_hi") final  String titleHi;
@override@JsonKey(name: "tag") final  String tag;
@override@JsonKey(name: "title_en") final  String titleEn;
@override@JsonKey(name: "related_god_hi") final  String relatedGodHi;
@override@JsonKey(name: "related_god_en") final  String relatedGodEn;
@override@JsonKey(name: "about_hi") final  String aboutHi;
@override@JsonKey(name: "about_en") final  String aboutEn;
@override@JsonKey(name: "puja_vidhi_hi") final  String pujaVidhiHi;
@override@JsonKey(name: "puja_vidhi_en") final  String pujaVidhiEn;

/// Create a copy of FestivalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FestivalModelCopyWith<_FestivalModel> get copyWith => __$FestivalModelCopyWithImpl<_FestivalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FestivalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FestivalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.titleHi, titleHi) || other.titleHi == titleHi)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.titleEn, titleEn) || other.titleEn == titleEn)&&(identical(other.relatedGodHi, relatedGodHi) || other.relatedGodHi == relatedGodHi)&&(identical(other.relatedGodEn, relatedGodEn) || other.relatedGodEn == relatedGodEn)&&(identical(other.aboutHi, aboutHi) || other.aboutHi == aboutHi)&&(identical(other.aboutEn, aboutEn) || other.aboutEn == aboutEn)&&(identical(other.pujaVidhiHi, pujaVidhiHi) || other.pujaVidhiHi == pujaVidhiHi)&&(identical(other.pujaVidhiEn, pujaVidhiEn) || other.pujaVidhiEn == pujaVidhiEn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,titleHi,tag,titleEn,relatedGodHi,relatedGodEn,aboutHi,aboutEn,pujaVidhiHi,pujaVidhiEn);

@override
String toString() {
  return 'FestivalModel(id: $id, titleHi: $titleHi, tag: $tag, titleEn: $titleEn, relatedGodHi: $relatedGodHi, relatedGodEn: $relatedGodEn, aboutHi: $aboutHi, aboutEn: $aboutEn, pujaVidhiHi: $pujaVidhiHi, pujaVidhiEn: $pujaVidhiEn)';
}


}

/// @nodoc
abstract mixin class _$FestivalModelCopyWith<$Res> implements $FestivalModelCopyWith<$Res> {
  factory _$FestivalModelCopyWith(_FestivalModel value, $Res Function(_FestivalModel) _then) = __$FestivalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "title_hi") String titleHi,@JsonKey(name: "tag") String tag,@JsonKey(name: "title_en") String titleEn,@JsonKey(name: "related_god_hi") String relatedGodHi,@JsonKey(name: "related_god_en") String relatedGodEn,@JsonKey(name: "about_hi") String aboutHi,@JsonKey(name: "about_en") String aboutEn,@JsonKey(name: "puja_vidhi_hi") String pujaVidhiHi,@JsonKey(name: "puja_vidhi_en") String pujaVidhiEn
});




}
/// @nodoc
class __$FestivalModelCopyWithImpl<$Res>
    implements _$FestivalModelCopyWith<$Res> {
  __$FestivalModelCopyWithImpl(this._self, this._then);

  final _FestivalModel _self;
  final $Res Function(_FestivalModel) _then;

/// Create a copy of FestivalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? titleHi = null,Object? tag = null,Object? titleEn = null,Object? relatedGodHi = null,Object? relatedGodEn = null,Object? aboutHi = null,Object? aboutEn = null,Object? pujaVidhiHi = null,Object? pujaVidhiEn = null,}) {
  return _then(_FestivalModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,titleHi: null == titleHi ? _self.titleHi : titleHi // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,titleEn: null == titleEn ? _self.titleEn : titleEn // ignore: cast_nullable_to_non_nullable
as String,relatedGodHi: null == relatedGodHi ? _self.relatedGodHi : relatedGodHi // ignore: cast_nullable_to_non_nullable
as String,relatedGodEn: null == relatedGodEn ? _self.relatedGodEn : relatedGodEn // ignore: cast_nullable_to_non_nullable
as String,aboutHi: null == aboutHi ? _self.aboutHi : aboutHi // ignore: cast_nullable_to_non_nullable
as String,aboutEn: null == aboutEn ? _self.aboutEn : aboutEn // ignore: cast_nullable_to_non_nullable
as String,pujaVidhiHi: null == pujaVidhiHi ? _self.pujaVidhiHi : pujaVidhiHi // ignore: cast_nullable_to_non_nullable
as String,pujaVidhiEn: null == pujaVidhiEn ? _self.pujaVidhiEn : pujaVidhiEn // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
