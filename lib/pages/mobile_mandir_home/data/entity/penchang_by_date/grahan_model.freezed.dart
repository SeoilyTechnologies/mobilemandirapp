// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grahan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GrahanModel {

@JsonKey(name: "title_hi") String get titleHi;@JsonKey(name: "title_en") String get titleEn;@JsonKey(name: "related_god_hi") String get relatedGodHi;@JsonKey(name: "related_god_en") String get relatedGodEn;@JsonKey(name: "type") String get type;
/// Create a copy of GrahanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrahanModelCopyWith<GrahanModel> get copyWith => _$GrahanModelCopyWithImpl<GrahanModel>(this as GrahanModel, _$identity);

  /// Serializes this GrahanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrahanModel&&(identical(other.titleHi, titleHi) || other.titleHi == titleHi)&&(identical(other.titleEn, titleEn) || other.titleEn == titleEn)&&(identical(other.relatedGodHi, relatedGodHi) || other.relatedGodHi == relatedGodHi)&&(identical(other.relatedGodEn, relatedGodEn) || other.relatedGodEn == relatedGodEn)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,titleHi,titleEn,relatedGodHi,relatedGodEn,type);

@override
String toString() {
  return 'GrahanModel(titleHi: $titleHi, titleEn: $titleEn, relatedGodHi: $relatedGodHi, relatedGodEn: $relatedGodEn, type: $type)';
}


}

/// @nodoc
abstract mixin class $GrahanModelCopyWith<$Res>  {
  factory $GrahanModelCopyWith(GrahanModel value, $Res Function(GrahanModel) _then) = _$GrahanModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "title_hi") String titleHi,@JsonKey(name: "title_en") String titleEn,@JsonKey(name: "related_god_hi") String relatedGodHi,@JsonKey(name: "related_god_en") String relatedGodEn,@JsonKey(name: "type") String type
});




}
/// @nodoc
class _$GrahanModelCopyWithImpl<$Res>
    implements $GrahanModelCopyWith<$Res> {
  _$GrahanModelCopyWithImpl(this._self, this._then);

  final GrahanModel _self;
  final $Res Function(GrahanModel) _then;

/// Create a copy of GrahanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? titleHi = null,Object? titleEn = null,Object? relatedGodHi = null,Object? relatedGodEn = null,Object? type = null,}) {
  return _then(_self.copyWith(
titleHi: null == titleHi ? _self.titleHi : titleHi // ignore: cast_nullable_to_non_nullable
as String,titleEn: null == titleEn ? _self.titleEn : titleEn // ignore: cast_nullable_to_non_nullable
as String,relatedGodHi: null == relatedGodHi ? _self.relatedGodHi : relatedGodHi // ignore: cast_nullable_to_non_nullable
as String,relatedGodEn: null == relatedGodEn ? _self.relatedGodEn : relatedGodEn // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GrahanModel].
extension GrahanModelPatterns on GrahanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrahanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrahanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrahanModel value)  $default,){
final _that = this;
switch (_that) {
case _GrahanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrahanModel value)?  $default,){
final _that = this;
switch (_that) {
case _GrahanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "title_hi")  String titleHi, @JsonKey(name: "title_en")  String titleEn, @JsonKey(name: "related_god_hi")  String relatedGodHi, @JsonKey(name: "related_god_en")  String relatedGodEn, @JsonKey(name: "type")  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrahanModel() when $default != null:
return $default(_that.titleHi,_that.titleEn,_that.relatedGodHi,_that.relatedGodEn,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "title_hi")  String titleHi, @JsonKey(name: "title_en")  String titleEn, @JsonKey(name: "related_god_hi")  String relatedGodHi, @JsonKey(name: "related_god_en")  String relatedGodEn, @JsonKey(name: "type")  String type)  $default,) {final _that = this;
switch (_that) {
case _GrahanModel():
return $default(_that.titleHi,_that.titleEn,_that.relatedGodHi,_that.relatedGodEn,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "title_hi")  String titleHi, @JsonKey(name: "title_en")  String titleEn, @JsonKey(name: "related_god_hi")  String relatedGodHi, @JsonKey(name: "related_god_en")  String relatedGodEn, @JsonKey(name: "type")  String type)?  $default,) {final _that = this;
switch (_that) {
case _GrahanModel() when $default != null:
return $default(_that.titleHi,_that.titleEn,_that.relatedGodHi,_that.relatedGodEn,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrahanModel implements GrahanModel {
  const _GrahanModel({@JsonKey(name: "title_hi") this.titleHi = "", @JsonKey(name: "title_en") this.titleEn = "", @JsonKey(name: "related_god_hi") this.relatedGodHi = "", @JsonKey(name: "related_god_en") this.relatedGodEn = "", @JsonKey(name: "type") this.type = ""});
  factory _GrahanModel.fromJson(Map<String, dynamic> json) => _$GrahanModelFromJson(json);

@override@JsonKey(name: "title_hi") final  String titleHi;
@override@JsonKey(name: "title_en") final  String titleEn;
@override@JsonKey(name: "related_god_hi") final  String relatedGodHi;
@override@JsonKey(name: "related_god_en") final  String relatedGodEn;
@override@JsonKey(name: "type") final  String type;

/// Create a copy of GrahanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrahanModelCopyWith<_GrahanModel> get copyWith => __$GrahanModelCopyWithImpl<_GrahanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrahanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrahanModel&&(identical(other.titleHi, titleHi) || other.titleHi == titleHi)&&(identical(other.titleEn, titleEn) || other.titleEn == titleEn)&&(identical(other.relatedGodHi, relatedGodHi) || other.relatedGodHi == relatedGodHi)&&(identical(other.relatedGodEn, relatedGodEn) || other.relatedGodEn == relatedGodEn)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,titleHi,titleEn,relatedGodHi,relatedGodEn,type);

@override
String toString() {
  return 'GrahanModel(titleHi: $titleHi, titleEn: $titleEn, relatedGodHi: $relatedGodHi, relatedGodEn: $relatedGodEn, type: $type)';
}


}

/// @nodoc
abstract mixin class _$GrahanModelCopyWith<$Res> implements $GrahanModelCopyWith<$Res> {
  factory _$GrahanModelCopyWith(_GrahanModel value, $Res Function(_GrahanModel) _then) = __$GrahanModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "title_hi") String titleHi,@JsonKey(name: "title_en") String titleEn,@JsonKey(name: "related_god_hi") String relatedGodHi,@JsonKey(name: "related_god_en") String relatedGodEn,@JsonKey(name: "type") String type
});




}
/// @nodoc
class __$GrahanModelCopyWithImpl<$Res>
    implements _$GrahanModelCopyWith<$Res> {
  __$GrahanModelCopyWithImpl(this._self, this._then);

  final _GrahanModel _self;
  final $Res Function(_GrahanModel) _then;

/// Create a copy of GrahanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? titleHi = null,Object? titleEn = null,Object? relatedGodHi = null,Object? relatedGodEn = null,Object? type = null,}) {
  return _then(_GrahanModel(
titleHi: null == titleHi ? _self.titleHi : titleHi // ignore: cast_nullable_to_non_nullable
as String,titleEn: null == titleEn ? _self.titleEn : titleEn // ignore: cast_nullable_to_non_nullable
as String,relatedGodHi: null == relatedGodHi ? _self.relatedGodHi : relatedGodHi // ignore: cast_nullable_to_non_nullable
as String,relatedGodEn: null == relatedGodEn ? _self.relatedGodEn : relatedGodEn // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
