// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'festival_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FestivalListResponse {

 bool get success; String get lang; int get count; List<FestivalItem> get data;
/// Create a copy of FestivalListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FestivalListResponseCopyWith<FestivalListResponse> get copyWith => _$FestivalListResponseCopyWithImpl<FestivalListResponse>(this as FestivalListResponse, _$identity);

  /// Serializes this FestivalListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FestivalListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,count,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FestivalListResponse(success: $success, lang: $lang, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class $FestivalListResponseCopyWith<$Res>  {
  factory $FestivalListResponseCopyWith(FestivalListResponse value, $Res Function(FestivalListResponse) _then) = _$FestivalListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String lang, int count, List<FestivalItem> data
});




}
/// @nodoc
class _$FestivalListResponseCopyWithImpl<$Res>
    implements $FestivalListResponseCopyWith<$Res> {
  _$FestivalListResponseCopyWithImpl(this._self, this._then);

  final FestivalListResponse _self;
  final $Res Function(FestivalListResponse) _then;

/// Create a copy of FestivalListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? lang = null,Object? count = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<FestivalItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [FestivalListResponse].
extension FestivalListResponsePatterns on FestivalListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FestivalListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FestivalListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FestivalListResponse value)  $default,){
final _that = this;
switch (_that) {
case _FestivalListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FestivalListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FestivalListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String lang,  int count,  List<FestivalItem> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FestivalListResponse() when $default != null:
return $default(_that.success,_that.lang,_that.count,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String lang,  int count,  List<FestivalItem> data)  $default,) {final _that = this;
switch (_that) {
case _FestivalListResponse():
return $default(_that.success,_that.lang,_that.count,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String lang,  int count,  List<FestivalItem> data)?  $default,) {final _that = this;
switch (_that) {
case _FestivalListResponse() when $default != null:
return $default(_that.success,_that.lang,_that.count,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FestivalListResponse implements FestivalListResponse {
  const _FestivalListResponse({this.success = false, this.lang = '', this.count = 0, final  List<FestivalItem> data = const <FestivalItem>[]}): _data = data;
  factory _FestivalListResponse.fromJson(Map<String, dynamic> json) => _$FestivalListResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String lang;
@override@JsonKey() final  int count;
 final  List<FestivalItem> _data;
@override@JsonKey() List<FestivalItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of FestivalListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FestivalListResponseCopyWith<_FestivalListResponse> get copyWith => __$FestivalListResponseCopyWithImpl<_FestivalListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FestivalListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FestivalListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,count,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'FestivalListResponse(success: $success, lang: $lang, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FestivalListResponseCopyWith<$Res> implements $FestivalListResponseCopyWith<$Res> {
  factory _$FestivalListResponseCopyWith(_FestivalListResponse value, $Res Function(_FestivalListResponse) _then) = __$FestivalListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String lang, int count, List<FestivalItem> data
});




}
/// @nodoc
class __$FestivalListResponseCopyWithImpl<$Res>
    implements _$FestivalListResponseCopyWith<$Res> {
  __$FestivalListResponseCopyWithImpl(this._self, this._then);

  final _FestivalListResponse _self;
  final $Res Function(_FestivalListResponse) _then;

/// Create a copy of FestivalListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? lang = null,Object? count = null,Object? data = null,}) {
  return _then(_FestivalListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<FestivalItem>,
  ));
}


}


/// @nodoc
mixin _$FestivalItem {

 String get title; String get slug;// API key changed: related_god -> relatedGods
@JsonKey(name: 'relatedGods') List<RelatedGod> get relatedGod;
/// Create a copy of FestivalItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FestivalItemCopyWith<FestivalItem> get copyWith => _$FestivalItemCopyWithImpl<FestivalItem>(this as FestivalItem, _$identity);

  /// Serializes this FestivalItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FestivalItem&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.relatedGod, relatedGod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,slug,const DeepCollectionEquality().hash(relatedGod));

@override
String toString() {
  return 'FestivalItem(title: $title, slug: $slug, relatedGod: $relatedGod)';
}


}

/// @nodoc
abstract mixin class $FestivalItemCopyWith<$Res>  {
  factory $FestivalItemCopyWith(FestivalItem value, $Res Function(FestivalItem) _then) = _$FestivalItemCopyWithImpl;
@useResult
$Res call({
 String title, String slug,@JsonKey(name: 'relatedGods') List<RelatedGod> relatedGod
});




}
/// @nodoc
class _$FestivalItemCopyWithImpl<$Res>
    implements $FestivalItemCopyWith<$Res> {
  _$FestivalItemCopyWithImpl(this._self, this._then);

  final FestivalItem _self;
  final $Res Function(FestivalItem) _then;

/// Create a copy of FestivalItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? slug = null,Object? relatedGod = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,relatedGod: null == relatedGod ? _self.relatedGod : relatedGod // ignore: cast_nullable_to_non_nullable
as List<RelatedGod>,
  ));
}

}


/// Adds pattern-matching-related methods to [FestivalItem].
extension FestivalItemPatterns on FestivalItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FestivalItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FestivalItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FestivalItem value)  $default,){
final _that = this;
switch (_that) {
case _FestivalItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FestivalItem value)?  $default,){
final _that = this;
switch (_that) {
case _FestivalItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String slug, @JsonKey(name: 'relatedGods')  List<RelatedGod> relatedGod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FestivalItem() when $default != null:
return $default(_that.title,_that.slug,_that.relatedGod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String slug, @JsonKey(name: 'relatedGods')  List<RelatedGod> relatedGod)  $default,) {final _that = this;
switch (_that) {
case _FestivalItem():
return $default(_that.title,_that.slug,_that.relatedGod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String slug, @JsonKey(name: 'relatedGods')  List<RelatedGod> relatedGod)?  $default,) {final _that = this;
switch (_that) {
case _FestivalItem() when $default != null:
return $default(_that.title,_that.slug,_that.relatedGod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FestivalItem implements FestivalItem {
  const _FestivalItem({this.title = '', this.slug = '', @JsonKey(name: 'relatedGods') final  List<RelatedGod> relatedGod = const <RelatedGod>[]}): _relatedGod = relatedGod;
  factory _FestivalItem.fromJson(Map<String, dynamic> json) => _$FestivalItemFromJson(json);

@override@JsonKey() final  String title;
@override@JsonKey() final  String slug;
// API key changed: related_god -> relatedGods
 final  List<RelatedGod> _relatedGod;
// API key changed: related_god -> relatedGods
@override@JsonKey(name: 'relatedGods') List<RelatedGod> get relatedGod {
  if (_relatedGod is EqualUnmodifiableListView) return _relatedGod;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedGod);
}


/// Create a copy of FestivalItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FestivalItemCopyWith<_FestivalItem> get copyWith => __$FestivalItemCopyWithImpl<_FestivalItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FestivalItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FestivalItem&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other._relatedGod, _relatedGod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,slug,const DeepCollectionEquality().hash(_relatedGod));

@override
String toString() {
  return 'FestivalItem(title: $title, slug: $slug, relatedGod: $relatedGod)';
}


}

/// @nodoc
abstract mixin class _$FestivalItemCopyWith<$Res> implements $FestivalItemCopyWith<$Res> {
  factory _$FestivalItemCopyWith(_FestivalItem value, $Res Function(_FestivalItem) _then) = __$FestivalItemCopyWithImpl;
@override @useResult
$Res call({
 String title, String slug,@JsonKey(name: 'relatedGods') List<RelatedGod> relatedGod
});




}
/// @nodoc
class __$FestivalItemCopyWithImpl<$Res>
    implements _$FestivalItemCopyWith<$Res> {
  __$FestivalItemCopyWithImpl(this._self, this._then);

  final _FestivalItem _self;
  final $Res Function(_FestivalItem) _then;

/// Create a copy of FestivalItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? slug = null,Object? relatedGod = null,}) {
  return _then(_FestivalItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,relatedGod: null == relatedGod ? _self._relatedGod : relatedGod // ignore: cast_nullable_to_non_nullable
as List<RelatedGod>,
  ));
}


}


/// @nodoc
mixin _$RelatedGod {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'image') String get image;@JsonKey(name: 'birthPlace') String get birthPlace;@JsonKey(name: 'category') String get category;
/// Create a copy of RelatedGod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelatedGodCopyWith<RelatedGod> get copyWith => _$RelatedGodCopyWithImpl<RelatedGod>(this as RelatedGod, _$identity);

  /// Serializes this RelatedGod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelatedGod&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,image,birthPlace,category);

@override
String toString() {
  return 'RelatedGod(name: $name, image: $image, birthPlace: $birthPlace, category: $category)';
}


}

/// @nodoc
abstract mixin class $RelatedGodCopyWith<$Res>  {
  factory $RelatedGodCopyWith(RelatedGod value, $Res Function(RelatedGod) _then) = _$RelatedGodCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'image') String image,@JsonKey(name: 'birthPlace') String birthPlace,@JsonKey(name: 'category') String category
});




}
/// @nodoc
class _$RelatedGodCopyWithImpl<$Res>
    implements $RelatedGodCopyWith<$Res> {
  _$RelatedGodCopyWithImpl(this._self, this._then);

  final RelatedGod _self;
  final $Res Function(RelatedGod) _then;

/// Create a copy of RelatedGod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? image = null,Object? birthPlace = null,Object? category = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RelatedGod].
extension RelatedGodPatterns on RelatedGod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelatedGod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelatedGod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelatedGod value)  $default,){
final _that = this;
switch (_that) {
case _RelatedGod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelatedGod value)?  $default,){
final _that = this;
switch (_that) {
case _RelatedGod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'image')  String image, @JsonKey(name: 'birthPlace')  String birthPlace, @JsonKey(name: 'category')  String category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelatedGod() when $default != null:
return $default(_that.name,_that.image,_that.birthPlace,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'image')  String image, @JsonKey(name: 'birthPlace')  String birthPlace, @JsonKey(name: 'category')  String category)  $default,) {final _that = this;
switch (_that) {
case _RelatedGod():
return $default(_that.name,_that.image,_that.birthPlace,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'image')  String image, @JsonKey(name: 'birthPlace')  String birthPlace, @JsonKey(name: 'category')  String category)?  $default,) {final _that = this;
switch (_that) {
case _RelatedGod() when $default != null:
return $default(_that.name,_that.image,_that.birthPlace,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RelatedGod implements RelatedGod {
  const _RelatedGod({@JsonKey(name: 'name') this.name = '', @JsonKey(name: 'image') this.image = '', @JsonKey(name: 'birthPlace') this.birthPlace = '', @JsonKey(name: 'category') this.category = ''});
  factory _RelatedGod.fromJson(Map<String, dynamic> json) => _$RelatedGodFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'image') final  String image;
@override@JsonKey(name: 'birthPlace') final  String birthPlace;
@override@JsonKey(name: 'category') final  String category;

/// Create a copy of RelatedGod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelatedGodCopyWith<_RelatedGod> get copyWith => __$RelatedGodCopyWithImpl<_RelatedGod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelatedGodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelatedGod&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,image,birthPlace,category);

@override
String toString() {
  return 'RelatedGod(name: $name, image: $image, birthPlace: $birthPlace, category: $category)';
}


}

/// @nodoc
abstract mixin class _$RelatedGodCopyWith<$Res> implements $RelatedGodCopyWith<$Res> {
  factory _$RelatedGodCopyWith(_RelatedGod value, $Res Function(_RelatedGod) _then) = __$RelatedGodCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'image') String image,@JsonKey(name: 'birthPlace') String birthPlace,@JsonKey(name: 'category') String category
});




}
/// @nodoc
class __$RelatedGodCopyWithImpl<$Res>
    implements _$RelatedGodCopyWith<$Res> {
  __$RelatedGodCopyWithImpl(this._self, this._then);

  final _RelatedGod _self;
  final $Res Function(_RelatedGod) _then;

/// Create a copy of RelatedGod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? image = null,Object? birthPlace = null,Object? category = null,}) {
  return _then(_RelatedGod(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
