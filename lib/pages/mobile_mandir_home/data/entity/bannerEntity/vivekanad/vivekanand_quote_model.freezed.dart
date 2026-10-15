// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vivekanand_quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VivekanandQuoteModel {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'quotes_hindi') String get quotesHindi;@JsonKey(name: 'quotes_english') String get quotesEnglish;@JsonKey(name: 'createdAt') String get createdAt;@JsonKey(name: '__v') int get v;
/// Create a copy of VivekanandQuoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VivekanandQuoteModelCopyWith<VivekanandQuoteModel> get copyWith => _$VivekanandQuoteModelCopyWithImpl<VivekanandQuoteModel>(this as VivekanandQuoteModel, _$identity);

  /// Serializes this VivekanandQuoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VivekanandQuoteModel&&(identical(other.id, id) || other.id == id)&&(identical(other.quotesHindi, quotesHindi) || other.quotesHindi == quotesHindi)&&(identical(other.quotesEnglish, quotesEnglish) || other.quotesEnglish == quotesEnglish)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,quotesHindi,quotesEnglish,createdAt,v);

@override
String toString() {
  return 'VivekanandQuoteModel(id: $id, quotesHindi: $quotesHindi, quotesEnglish: $quotesEnglish, createdAt: $createdAt, v: $v)';
}


}

/// @nodoc
abstract mixin class $VivekanandQuoteModelCopyWith<$Res>  {
  factory $VivekanandQuoteModelCopyWith(VivekanandQuoteModel value, $Res Function(VivekanandQuoteModel) _then) = _$VivekanandQuoteModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'quotes_hindi') String quotesHindi,@JsonKey(name: 'quotes_english') String quotesEnglish,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class _$VivekanandQuoteModelCopyWithImpl<$Res>
    implements $VivekanandQuoteModelCopyWith<$Res> {
  _$VivekanandQuoteModelCopyWithImpl(this._self, this._then);

  final VivekanandQuoteModel _self;
  final $Res Function(VivekanandQuoteModel) _then;

/// Create a copy of VivekanandQuoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? quotesHindi = null,Object? quotesEnglish = null,Object? createdAt = null,Object? v = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quotesHindi: null == quotesHindi ? _self.quotesHindi : quotesHindi // ignore: cast_nullable_to_non_nullable
as String,quotesEnglish: null == quotesEnglish ? _self.quotesEnglish : quotesEnglish // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VivekanandQuoteModel].
extension VivekanandQuoteModelPatterns on VivekanandQuoteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VivekanandQuoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VivekanandQuoteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VivekanandQuoteModel value)  $default,){
final _that = this;
switch (_that) {
case _VivekanandQuoteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VivekanandQuoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _VivekanandQuoteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'quotes_hindi')  String quotesHindi, @JsonKey(name: 'quotes_english')  String quotesEnglish, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: '__v')  int v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VivekanandQuoteModel() when $default != null:
return $default(_that.id,_that.quotesHindi,_that.quotesEnglish,_that.createdAt,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'quotes_hindi')  String quotesHindi, @JsonKey(name: 'quotes_english')  String quotesEnglish, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: '__v')  int v)  $default,) {final _that = this;
switch (_that) {
case _VivekanandQuoteModel():
return $default(_that.id,_that.quotesHindi,_that.quotesEnglish,_that.createdAt,_that.v);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'quotes_hindi')  String quotesHindi, @JsonKey(name: 'quotes_english')  String quotesEnglish, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: '__v')  int v)?  $default,) {final _that = this;
switch (_that) {
case _VivekanandQuoteModel() when $default != null:
return $default(_that.id,_that.quotesHindi,_that.quotesEnglish,_that.createdAt,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VivekanandQuoteModel implements VivekanandQuoteModel {
  const _VivekanandQuoteModel({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'quotes_hindi') this.quotesHindi = '', @JsonKey(name: 'quotes_english') this.quotesEnglish = '', @JsonKey(name: 'createdAt') this.createdAt = '', @JsonKey(name: '__v') this.v = 0});
  factory _VivekanandQuoteModel.fromJson(Map<String, dynamic> json) => _$VivekanandQuoteModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'quotes_hindi') final  String quotesHindi;
@override@JsonKey(name: 'quotes_english') final  String quotesEnglish;
@override@JsonKey(name: 'createdAt') final  String createdAt;
@override@JsonKey(name: '__v') final  int v;

/// Create a copy of VivekanandQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VivekanandQuoteModelCopyWith<_VivekanandQuoteModel> get copyWith => __$VivekanandQuoteModelCopyWithImpl<_VivekanandQuoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VivekanandQuoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VivekanandQuoteModel&&(identical(other.id, id) || other.id == id)&&(identical(other.quotesHindi, quotesHindi) || other.quotesHindi == quotesHindi)&&(identical(other.quotesEnglish, quotesEnglish) || other.quotesEnglish == quotesEnglish)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,quotesHindi,quotesEnglish,createdAt,v);

@override
String toString() {
  return 'VivekanandQuoteModel(id: $id, quotesHindi: $quotesHindi, quotesEnglish: $quotesEnglish, createdAt: $createdAt, v: $v)';
}


}

/// @nodoc
abstract mixin class _$VivekanandQuoteModelCopyWith<$Res> implements $VivekanandQuoteModelCopyWith<$Res> {
  factory _$VivekanandQuoteModelCopyWith(_VivekanandQuoteModel value, $Res Function(_VivekanandQuoteModel) _then) = __$VivekanandQuoteModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'quotes_hindi') String quotesHindi,@JsonKey(name: 'quotes_english') String quotesEnglish,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class __$VivekanandQuoteModelCopyWithImpl<$Res>
    implements _$VivekanandQuoteModelCopyWith<$Res> {
  __$VivekanandQuoteModelCopyWithImpl(this._self, this._then);

  final _VivekanandQuoteModel _self;
  final $Res Function(_VivekanandQuoteModel) _then;

/// Create a copy of VivekanandQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? quotesHindi = null,Object? quotesEnglish = null,Object? createdAt = null,Object? v = null,}) {
  return _then(_VivekanandQuoteModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quotesHindi: null == quotesHindi ? _self.quotesHindi : quotesHindi // ignore: cast_nullable_to_non_nullable
as String,quotesEnglish: null == quotesEnglish ? _self.quotesEnglish : quotesEnglish // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
