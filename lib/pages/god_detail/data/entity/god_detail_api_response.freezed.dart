// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'god_detail_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GodDetailApiResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'message') String get message;@JsonKey(name: 'data') GodDetailData get data;@JsonKey(name: 'errors') dynamic get errors;
/// Create a copy of GodDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodDetailApiResponseCopyWith<GodDetailApiResponse> get copyWith => _$GodDetailApiResponseCopyWithImpl<GodDetailApiResponse>(this as GodDetailApiResponse, _$identity);

  /// Serializes this GodDetailApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodDetailApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'GodDetailApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $GodDetailApiResponseCopyWith<$Res>  {
  factory $GodDetailApiResponseCopyWith(GodDetailApiResponse value, $Res Function(GodDetailApiResponse) _then) = _$GodDetailApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') GodDetailData data,@JsonKey(name: 'errors') dynamic errors
});


$GodDetailDataCopyWith<$Res> get data;

}
/// @nodoc
class _$GodDetailApiResponseCopyWithImpl<$Res>
    implements $GodDetailApiResponseCopyWith<$Res> {
  _$GodDetailApiResponseCopyWithImpl(this._self, this._then);

  final GodDetailApiResponse _self;
  final $Res Function(GodDetailApiResponse) _then;

/// Create a copy of GodDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GodDetailData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of GodDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodDetailDataCopyWith<$Res> get data {
  
  return $GodDetailDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GodDetailApiResponse].
extension GodDetailApiResponsePatterns on GodDetailApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GodDetailApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GodDetailApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GodDetailApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _GodDetailApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GodDetailApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GodDetailApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  GodDetailData data, @JsonKey(name: 'errors')  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodDetailApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  GodDetailData data, @JsonKey(name: 'errors')  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _GodDetailApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  GodDetailData data, @JsonKey(name: 'errors')  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _GodDetailApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GodDetailApiResponse implements GodDetailApiResponse {
  const _GodDetailApiResponse({@JsonKey(name: 'success') this.success = false, @JsonKey(name: 'message') this.message = '', @JsonKey(name: 'data') this.data = const GodDetailData(), @JsonKey(name: 'errors') this.errors});
  factory _GodDetailApiResponse.fromJson(Map<String, dynamic> json) => _$GodDetailApiResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'message') final  String message;
@override@JsonKey(name: 'data') final  GodDetailData data;
@override@JsonKey(name: 'errors') final  dynamic errors;

/// Create a copy of GodDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodDetailApiResponseCopyWith<_GodDetailApiResponse> get copyWith => __$GodDetailApiResponseCopyWithImpl<_GodDetailApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodDetailApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodDetailApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'GodDetailApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$GodDetailApiResponseCopyWith<$Res> implements $GodDetailApiResponseCopyWith<$Res> {
  factory _$GodDetailApiResponseCopyWith(_GodDetailApiResponse value, $Res Function(_GodDetailApiResponse) _then) = __$GodDetailApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') GodDetailData data,@JsonKey(name: 'errors') dynamic errors
});


@override $GodDetailDataCopyWith<$Res> get data;

}
/// @nodoc
class __$GodDetailApiResponseCopyWithImpl<$Res>
    implements _$GodDetailApiResponseCopyWith<$Res> {
  __$GodDetailApiResponseCopyWithImpl(this._self, this._then);

  final _GodDetailApiResponse _self;
  final $Res Function(_GodDetailApiResponse) _then;

/// Create a copy of GodDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_GodDetailApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GodDetailData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of GodDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodDetailDataCopyWith<$Res> get data {
  
  return $GodDetailDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GodDetailData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'slug') String get slug;@JsonKey(name: 'testLyrics_hi') String get testLyrics_hi;@JsonKey(name: 'testLyrics_en') String get testLyrics_en;@JsonKey(name: 'image') String get image;@JsonKey(name: 'isWishlist') bool get isWishlist;@JsonKey(name: 'isPopular') bool get isPopular;@JsonKey(name: 'popularity') int get popularity;@JsonKey(name: 'category') String get category;@JsonKey(name: 'birthPlace') String get birthPlace;@JsonKey(name: 'gender') String get gender;@JsonKey(name: 'shortDescription') String get shortDescription;@JsonKey(name: 'detail') String get detail;@JsonKey(name: 'avatarOf') String get avatarOf;@JsonKey(name: 'weapons') String get weapons;@JsonKey(name: 'vahans') String get vahans;@JsonKey(name: 'alternateNames') String get alternateNames;@JsonKey(name: 'favoriteFoods') String get favoriteFoods;@JsonKey(name: 'favoriteColors') String get favoriteColors;@JsonKey(name: 'tithis') String get tithis;@JsonKey(name: 'days') List<String> get days;@JsonKey(name: 'festivals') List<FestivalModel> get festivals;@JsonKey(name: 'familyMembers') List<FamilyMember> get familyMembers;@JsonKey(name: 'avatarsAndForms') List<GodReference> get avatarsAndForms;@JsonKey(name: 'relatedGods') List<GodReference> get relatedGods;@JsonKey(name: 'suggestedSevas') List<SuggestedSeva> get suggestedSevas;@JsonKey(name: 'temple') List<TempleModel> get temples;@JsonKey(name: 'devotional') List<DevotionalItem> get devotional;@JsonKey(name: 'vendorSeva') List<VendorSeva> get vendorSeva;
/// Create a copy of GodDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodDetailDataCopyWith<GodDetailData> get copyWith => _$GodDetailDataCopyWithImpl<GodDetailData>(this as GodDetailData, _$identity);

  /// Serializes this GodDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodDetailData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.testLyrics_hi, testLyrics_hi) || other.testLyrics_hi == testLyrics_hi)&&(identical(other.testLyrics_en, testLyrics_en) || other.testLyrics_en == testLyrics_en)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.category, category) || other.category == category)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.avatarOf, avatarOf) || other.avatarOf == avatarOf)&&(identical(other.weapons, weapons) || other.weapons == weapons)&&(identical(other.vahans, vahans) || other.vahans == vahans)&&(identical(other.alternateNames, alternateNames) || other.alternateNames == alternateNames)&&(identical(other.favoriteFoods, favoriteFoods) || other.favoriteFoods == favoriteFoods)&&(identical(other.favoriteColors, favoriteColors) || other.favoriteColors == favoriteColors)&&(identical(other.tithis, tithis) || other.tithis == tithis)&&const DeepCollectionEquality().equals(other.days, days)&&const DeepCollectionEquality().equals(other.festivals, festivals)&&const DeepCollectionEquality().equals(other.familyMembers, familyMembers)&&const DeepCollectionEquality().equals(other.avatarsAndForms, avatarsAndForms)&&const DeepCollectionEquality().equals(other.relatedGods, relatedGods)&&const DeepCollectionEquality().equals(other.suggestedSevas, suggestedSevas)&&const DeepCollectionEquality().equals(other.temples, temples)&&const DeepCollectionEquality().equals(other.devotional, devotional)&&const DeepCollectionEquality().equals(other.vendorSeva, vendorSeva));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,slug,testLyrics_hi,testLyrics_en,image,isWishlist,isPopular,popularity,category,birthPlace,gender,shortDescription,detail,avatarOf,weapons,vahans,alternateNames,favoriteFoods,favoriteColors,tithis,const DeepCollectionEquality().hash(days),const DeepCollectionEquality().hash(festivals),const DeepCollectionEquality().hash(familyMembers),const DeepCollectionEquality().hash(avatarsAndForms),const DeepCollectionEquality().hash(relatedGods),const DeepCollectionEquality().hash(suggestedSevas),const DeepCollectionEquality().hash(temples),const DeepCollectionEquality().hash(devotional),const DeepCollectionEquality().hash(vendorSeva)]);

@override
String toString() {
  return 'GodDetailData(id: $id, name: $name, slug: $slug, testLyrics_hi: $testLyrics_hi, testLyrics_en: $testLyrics_en, image: $image, isWishlist: $isWishlist, isPopular: $isPopular, popularity: $popularity, category: $category, birthPlace: $birthPlace, gender: $gender, shortDescription: $shortDescription, detail: $detail, avatarOf: $avatarOf, weapons: $weapons, vahans: $vahans, alternateNames: $alternateNames, favoriteFoods: $favoriteFoods, favoriteColors: $favoriteColors, tithis: $tithis, days: $days, festivals: $festivals, familyMembers: $familyMembers, avatarsAndForms: $avatarsAndForms, relatedGods: $relatedGods, suggestedSevas: $suggestedSevas, temples: $temples, devotional: $devotional, vendorSeva: $vendorSeva)';
}


}

/// @nodoc
abstract mixin class $GodDetailDataCopyWith<$Res>  {
  factory $GodDetailDataCopyWith(GodDetailData value, $Res Function(GodDetailData) _then) = _$GodDetailDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'testLyrics_hi') String testLyrics_hi,@JsonKey(name: 'testLyrics_en') String testLyrics_en,@JsonKey(name: 'image') String image,@JsonKey(name: 'isWishlist') bool isWishlist,@JsonKey(name: 'isPopular') bool isPopular,@JsonKey(name: 'popularity') int popularity,@JsonKey(name: 'category') String category,@JsonKey(name: 'birthPlace') String birthPlace,@JsonKey(name: 'gender') String gender,@JsonKey(name: 'shortDescription') String shortDescription,@JsonKey(name: 'detail') String detail,@JsonKey(name: 'avatarOf') String avatarOf,@JsonKey(name: 'weapons') String weapons,@JsonKey(name: 'vahans') String vahans,@JsonKey(name: 'alternateNames') String alternateNames,@JsonKey(name: 'favoriteFoods') String favoriteFoods,@JsonKey(name: 'favoriteColors') String favoriteColors,@JsonKey(name: 'tithis') String tithis,@JsonKey(name: 'days') List<String> days,@JsonKey(name: 'festivals') List<FestivalModel> festivals,@JsonKey(name: 'familyMembers') List<FamilyMember> familyMembers,@JsonKey(name: 'avatarsAndForms') List<GodReference> avatarsAndForms,@JsonKey(name: 'relatedGods') List<GodReference> relatedGods,@JsonKey(name: 'suggestedSevas') List<SuggestedSeva> suggestedSevas,@JsonKey(name: 'temple') List<TempleModel> temples,@JsonKey(name: 'devotional') List<DevotionalItem> devotional,@JsonKey(name: 'vendorSeva') List<VendorSeva> vendorSeva
});




}
/// @nodoc
class _$GodDetailDataCopyWithImpl<$Res>
    implements $GodDetailDataCopyWith<$Res> {
  _$GodDetailDataCopyWithImpl(this._self, this._then);

  final GodDetailData _self;
  final $Res Function(GodDetailData) _then;

/// Create a copy of GodDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? testLyrics_hi = null,Object? testLyrics_en = null,Object? image = null,Object? isWishlist = null,Object? isPopular = null,Object? popularity = null,Object? category = null,Object? birthPlace = null,Object? gender = null,Object? shortDescription = null,Object? detail = null,Object? avatarOf = null,Object? weapons = null,Object? vahans = null,Object? alternateNames = null,Object? favoriteFoods = null,Object? favoriteColors = null,Object? tithis = null,Object? days = null,Object? festivals = null,Object? familyMembers = null,Object? avatarsAndForms = null,Object? relatedGods = null,Object? suggestedSevas = null,Object? temples = null,Object? devotional = null,Object? vendorSeva = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,testLyrics_hi: null == testLyrics_hi ? _self.testLyrics_hi : testLyrics_hi // ignore: cast_nullable_to_non_nullable
as String,testLyrics_en: null == testLyrics_en ? _self.testLyrics_en : testLyrics_en // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,shortDescription: null == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,avatarOf: null == avatarOf ? _self.avatarOf : avatarOf // ignore: cast_nullable_to_non_nullable
as String,weapons: null == weapons ? _self.weapons : weapons // ignore: cast_nullable_to_non_nullable
as String,vahans: null == vahans ? _self.vahans : vahans // ignore: cast_nullable_to_non_nullable
as String,alternateNames: null == alternateNames ? _self.alternateNames : alternateNames // ignore: cast_nullable_to_non_nullable
as String,favoriteFoods: null == favoriteFoods ? _self.favoriteFoods : favoriteFoods // ignore: cast_nullable_to_non_nullable
as String,favoriteColors: null == favoriteColors ? _self.favoriteColors : favoriteColors // ignore: cast_nullable_to_non_nullable
as String,tithis: null == tithis ? _self.tithis : tithis // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<String>,festivals: null == festivals ? _self.festivals : festivals // ignore: cast_nullable_to_non_nullable
as List<FestivalModel>,familyMembers: null == familyMembers ? _self.familyMembers : familyMembers // ignore: cast_nullable_to_non_nullable
as List<FamilyMember>,avatarsAndForms: null == avatarsAndForms ? _self.avatarsAndForms : avatarsAndForms // ignore: cast_nullable_to_non_nullable
as List<GodReference>,relatedGods: null == relatedGods ? _self.relatedGods : relatedGods // ignore: cast_nullable_to_non_nullable
as List<GodReference>,suggestedSevas: null == suggestedSevas ? _self.suggestedSevas : suggestedSevas // ignore: cast_nullable_to_non_nullable
as List<SuggestedSeva>,temples: null == temples ? _self.temples : temples // ignore: cast_nullable_to_non_nullable
as List<TempleModel>,devotional: null == devotional ? _self.devotional : devotional // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,vendorSeva: null == vendorSeva ? _self.vendorSeva : vendorSeva // ignore: cast_nullable_to_non_nullable
as List<VendorSeva>,
  ));
}

}


/// Adds pattern-matching-related methods to [GodDetailData].
extension GodDetailDataPatterns on GodDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GodDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GodDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GodDetailData value)  $default,){
final _that = this;
switch (_that) {
case _GodDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GodDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _GodDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'testLyrics_hi')  String testLyrics_hi, @JsonKey(name: 'testLyrics_en')  String testLyrics_en, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isWishlist')  bool isWishlist, @JsonKey(name: 'isPopular')  bool isPopular, @JsonKey(name: 'popularity')  int popularity, @JsonKey(name: 'category')  String category, @JsonKey(name: 'birthPlace')  String birthPlace, @JsonKey(name: 'gender')  String gender, @JsonKey(name: 'shortDescription')  String shortDescription, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'avatarOf')  String avatarOf, @JsonKey(name: 'weapons')  String weapons, @JsonKey(name: 'vahans')  String vahans, @JsonKey(name: 'alternateNames')  String alternateNames, @JsonKey(name: 'favoriteFoods')  String favoriteFoods, @JsonKey(name: 'favoriteColors')  String favoriteColors, @JsonKey(name: 'tithis')  String tithis, @JsonKey(name: 'days')  List<String> days, @JsonKey(name: 'festivals')  List<FestivalModel> festivals, @JsonKey(name: 'familyMembers')  List<FamilyMember> familyMembers, @JsonKey(name: 'avatarsAndForms')  List<GodReference> avatarsAndForms, @JsonKey(name: 'relatedGods')  List<GodReference> relatedGods, @JsonKey(name: 'suggestedSevas')  List<SuggestedSeva> suggestedSevas, @JsonKey(name: 'temple')  List<TempleModel> temples, @JsonKey(name: 'devotional')  List<DevotionalItem> devotional, @JsonKey(name: 'vendorSeva')  List<VendorSeva> vendorSeva)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodDetailData() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.testLyrics_hi,_that.testLyrics_en,_that.image,_that.isWishlist,_that.isPopular,_that.popularity,_that.category,_that.birthPlace,_that.gender,_that.shortDescription,_that.detail,_that.avatarOf,_that.weapons,_that.vahans,_that.alternateNames,_that.favoriteFoods,_that.favoriteColors,_that.tithis,_that.days,_that.festivals,_that.familyMembers,_that.avatarsAndForms,_that.relatedGods,_that.suggestedSevas,_that.temples,_that.devotional,_that.vendorSeva);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'testLyrics_hi')  String testLyrics_hi, @JsonKey(name: 'testLyrics_en')  String testLyrics_en, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isWishlist')  bool isWishlist, @JsonKey(name: 'isPopular')  bool isPopular, @JsonKey(name: 'popularity')  int popularity, @JsonKey(name: 'category')  String category, @JsonKey(name: 'birthPlace')  String birthPlace, @JsonKey(name: 'gender')  String gender, @JsonKey(name: 'shortDescription')  String shortDescription, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'avatarOf')  String avatarOf, @JsonKey(name: 'weapons')  String weapons, @JsonKey(name: 'vahans')  String vahans, @JsonKey(name: 'alternateNames')  String alternateNames, @JsonKey(name: 'favoriteFoods')  String favoriteFoods, @JsonKey(name: 'favoriteColors')  String favoriteColors, @JsonKey(name: 'tithis')  String tithis, @JsonKey(name: 'days')  List<String> days, @JsonKey(name: 'festivals')  List<FestivalModel> festivals, @JsonKey(name: 'familyMembers')  List<FamilyMember> familyMembers, @JsonKey(name: 'avatarsAndForms')  List<GodReference> avatarsAndForms, @JsonKey(name: 'relatedGods')  List<GodReference> relatedGods, @JsonKey(name: 'suggestedSevas')  List<SuggestedSeva> suggestedSevas, @JsonKey(name: 'temple')  List<TempleModel> temples, @JsonKey(name: 'devotional')  List<DevotionalItem> devotional, @JsonKey(name: 'vendorSeva')  List<VendorSeva> vendorSeva)  $default,) {final _that = this;
switch (_that) {
case _GodDetailData():
return $default(_that.id,_that.name,_that.slug,_that.testLyrics_hi,_that.testLyrics_en,_that.image,_that.isWishlist,_that.isPopular,_that.popularity,_that.category,_that.birthPlace,_that.gender,_that.shortDescription,_that.detail,_that.avatarOf,_that.weapons,_that.vahans,_that.alternateNames,_that.favoriteFoods,_that.favoriteColors,_that.tithis,_that.days,_that.festivals,_that.familyMembers,_that.avatarsAndForms,_that.relatedGods,_that.suggestedSevas,_that.temples,_that.devotional,_that.vendorSeva);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'testLyrics_hi')  String testLyrics_hi, @JsonKey(name: 'testLyrics_en')  String testLyrics_en, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isWishlist')  bool isWishlist, @JsonKey(name: 'isPopular')  bool isPopular, @JsonKey(name: 'popularity')  int popularity, @JsonKey(name: 'category')  String category, @JsonKey(name: 'birthPlace')  String birthPlace, @JsonKey(name: 'gender')  String gender, @JsonKey(name: 'shortDescription')  String shortDescription, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'avatarOf')  String avatarOf, @JsonKey(name: 'weapons')  String weapons, @JsonKey(name: 'vahans')  String vahans, @JsonKey(name: 'alternateNames')  String alternateNames, @JsonKey(name: 'favoriteFoods')  String favoriteFoods, @JsonKey(name: 'favoriteColors')  String favoriteColors, @JsonKey(name: 'tithis')  String tithis, @JsonKey(name: 'days')  List<String> days, @JsonKey(name: 'festivals')  List<FestivalModel> festivals, @JsonKey(name: 'familyMembers')  List<FamilyMember> familyMembers, @JsonKey(name: 'avatarsAndForms')  List<GodReference> avatarsAndForms, @JsonKey(name: 'relatedGods')  List<GodReference> relatedGods, @JsonKey(name: 'suggestedSevas')  List<SuggestedSeva> suggestedSevas, @JsonKey(name: 'temple')  List<TempleModel> temples, @JsonKey(name: 'devotional')  List<DevotionalItem> devotional, @JsonKey(name: 'vendorSeva')  List<VendorSeva> vendorSeva)?  $default,) {final _that = this;
switch (_that) {
case _GodDetailData() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.testLyrics_hi,_that.testLyrics_en,_that.image,_that.isWishlist,_that.isPopular,_that.popularity,_that.category,_that.birthPlace,_that.gender,_that.shortDescription,_that.detail,_that.avatarOf,_that.weapons,_that.vahans,_that.alternateNames,_that.favoriteFoods,_that.favoriteColors,_that.tithis,_that.days,_that.festivals,_that.familyMembers,_that.avatarsAndForms,_that.relatedGods,_that.suggestedSevas,_that.temples,_that.devotional,_that.vendorSeva);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GodDetailData implements GodDetailData {
  const _GodDetailData({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'slug') this.slug = '', @JsonKey(name: 'testLyrics_hi') this.testLyrics_hi = '', @JsonKey(name: 'testLyrics_en') this.testLyrics_en = '', @JsonKey(name: 'image') this.image = '', @JsonKey(name: 'isWishlist') this.isWishlist = false, @JsonKey(name: 'isPopular') this.isPopular = false, @JsonKey(name: 'popularity') this.popularity = 0, @JsonKey(name: 'category') this.category = '', @JsonKey(name: 'birthPlace') this.birthPlace = '', @JsonKey(name: 'gender') this.gender = '', @JsonKey(name: 'shortDescription') this.shortDescription = '', @JsonKey(name: 'detail') this.detail = '', @JsonKey(name: 'avatarOf') this.avatarOf = '', @JsonKey(name: 'weapons') this.weapons = '', @JsonKey(name: 'vahans') this.vahans = '', @JsonKey(name: 'alternateNames') this.alternateNames = '', @JsonKey(name: 'favoriteFoods') this.favoriteFoods = '', @JsonKey(name: 'favoriteColors') this.favoriteColors = '', @JsonKey(name: 'tithis') this.tithis = '', @JsonKey(name: 'days') final  List<String> days = const <String>[], @JsonKey(name: 'festivals') final  List<FestivalModel> festivals = const <FestivalModel>[], @JsonKey(name: 'familyMembers') final  List<FamilyMember> familyMembers = const <FamilyMember>[], @JsonKey(name: 'avatarsAndForms') final  List<GodReference> avatarsAndForms = const <GodReference>[], @JsonKey(name: 'relatedGods') final  List<GodReference> relatedGods = const <GodReference>[], @JsonKey(name: 'suggestedSevas') final  List<SuggestedSeva> suggestedSevas = const <SuggestedSeva>[], @JsonKey(name: 'temple') final  List<TempleModel> temples = const <TempleModel>[], @JsonKey(name: 'devotional') final  List<DevotionalItem> devotional = const <DevotionalItem>[], @JsonKey(name: 'vendorSeva') final  List<VendorSeva> vendorSeva = const <VendorSeva>[]}): _days = days,_festivals = festivals,_familyMembers = familyMembers,_avatarsAndForms = avatarsAndForms,_relatedGods = relatedGods,_suggestedSevas = suggestedSevas,_temples = temples,_devotional = devotional,_vendorSeva = vendorSeva;
  factory _GodDetailData.fromJson(Map<String, dynamic> json) => _$GodDetailDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'slug') final  String slug;
@override@JsonKey(name: 'testLyrics_hi') final  String testLyrics_hi;
@override@JsonKey(name: 'testLyrics_en') final  String testLyrics_en;
@override@JsonKey(name: 'image') final  String image;
@override@JsonKey(name: 'isWishlist') final  bool isWishlist;
@override@JsonKey(name: 'isPopular') final  bool isPopular;
@override@JsonKey(name: 'popularity') final  int popularity;
@override@JsonKey(name: 'category') final  String category;
@override@JsonKey(name: 'birthPlace') final  String birthPlace;
@override@JsonKey(name: 'gender') final  String gender;
@override@JsonKey(name: 'shortDescription') final  String shortDescription;
@override@JsonKey(name: 'detail') final  String detail;
@override@JsonKey(name: 'avatarOf') final  String avatarOf;
@override@JsonKey(name: 'weapons') final  String weapons;
@override@JsonKey(name: 'vahans') final  String vahans;
@override@JsonKey(name: 'alternateNames') final  String alternateNames;
@override@JsonKey(name: 'favoriteFoods') final  String favoriteFoods;
@override@JsonKey(name: 'favoriteColors') final  String favoriteColors;
@override@JsonKey(name: 'tithis') final  String tithis;
 final  List<String> _days;
@override@JsonKey(name: 'days') List<String> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

 final  List<FestivalModel> _festivals;
@override@JsonKey(name: 'festivals') List<FestivalModel> get festivals {
  if (_festivals is EqualUnmodifiableListView) return _festivals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_festivals);
}

 final  List<FamilyMember> _familyMembers;
@override@JsonKey(name: 'familyMembers') List<FamilyMember> get familyMembers {
  if (_familyMembers is EqualUnmodifiableListView) return _familyMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_familyMembers);
}

 final  List<GodReference> _avatarsAndForms;
@override@JsonKey(name: 'avatarsAndForms') List<GodReference> get avatarsAndForms {
  if (_avatarsAndForms is EqualUnmodifiableListView) return _avatarsAndForms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_avatarsAndForms);
}

 final  List<GodReference> _relatedGods;
@override@JsonKey(name: 'relatedGods') List<GodReference> get relatedGods {
  if (_relatedGods is EqualUnmodifiableListView) return _relatedGods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedGods);
}

 final  List<SuggestedSeva> _suggestedSevas;
@override@JsonKey(name: 'suggestedSevas') List<SuggestedSeva> get suggestedSevas {
  if (_suggestedSevas is EqualUnmodifiableListView) return _suggestedSevas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestedSevas);
}

 final  List<TempleModel> _temples;
@override@JsonKey(name: 'temple') List<TempleModel> get temples {
  if (_temples is EqualUnmodifiableListView) return _temples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temples);
}

 final  List<DevotionalItem> _devotional;
@override@JsonKey(name: 'devotional') List<DevotionalItem> get devotional {
  if (_devotional is EqualUnmodifiableListView) return _devotional;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_devotional);
}

 final  List<VendorSeva> _vendorSeva;
@override@JsonKey(name: 'vendorSeva') List<VendorSeva> get vendorSeva {
  if (_vendorSeva is EqualUnmodifiableListView) return _vendorSeva;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vendorSeva);
}


/// Create a copy of GodDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodDetailDataCopyWith<_GodDetailData> get copyWith => __$GodDetailDataCopyWithImpl<_GodDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodDetailData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.testLyrics_hi, testLyrics_hi) || other.testLyrics_hi == testLyrics_hi)&&(identical(other.testLyrics_en, testLyrics_en) || other.testLyrics_en == testLyrics_en)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.category, category) || other.category == category)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.avatarOf, avatarOf) || other.avatarOf == avatarOf)&&(identical(other.weapons, weapons) || other.weapons == weapons)&&(identical(other.vahans, vahans) || other.vahans == vahans)&&(identical(other.alternateNames, alternateNames) || other.alternateNames == alternateNames)&&(identical(other.favoriteFoods, favoriteFoods) || other.favoriteFoods == favoriteFoods)&&(identical(other.favoriteColors, favoriteColors) || other.favoriteColors == favoriteColors)&&(identical(other.tithis, tithis) || other.tithis == tithis)&&const DeepCollectionEquality().equals(other._days, _days)&&const DeepCollectionEquality().equals(other._festivals, _festivals)&&const DeepCollectionEquality().equals(other._familyMembers, _familyMembers)&&const DeepCollectionEquality().equals(other._avatarsAndForms, _avatarsAndForms)&&const DeepCollectionEquality().equals(other._relatedGods, _relatedGods)&&const DeepCollectionEquality().equals(other._suggestedSevas, _suggestedSevas)&&const DeepCollectionEquality().equals(other._temples, _temples)&&const DeepCollectionEquality().equals(other._devotional, _devotional)&&const DeepCollectionEquality().equals(other._vendorSeva, _vendorSeva));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,slug,testLyrics_hi,testLyrics_en,image,isWishlist,isPopular,popularity,category,birthPlace,gender,shortDescription,detail,avatarOf,weapons,vahans,alternateNames,favoriteFoods,favoriteColors,tithis,const DeepCollectionEquality().hash(_days),const DeepCollectionEquality().hash(_festivals),const DeepCollectionEquality().hash(_familyMembers),const DeepCollectionEquality().hash(_avatarsAndForms),const DeepCollectionEquality().hash(_relatedGods),const DeepCollectionEquality().hash(_suggestedSevas),const DeepCollectionEquality().hash(_temples),const DeepCollectionEquality().hash(_devotional),const DeepCollectionEquality().hash(_vendorSeva)]);

@override
String toString() {
  return 'GodDetailData(id: $id, name: $name, slug: $slug, testLyrics_hi: $testLyrics_hi, testLyrics_en: $testLyrics_en, image: $image, isWishlist: $isWishlist, isPopular: $isPopular, popularity: $popularity, category: $category, birthPlace: $birthPlace, gender: $gender, shortDescription: $shortDescription, detail: $detail, avatarOf: $avatarOf, weapons: $weapons, vahans: $vahans, alternateNames: $alternateNames, favoriteFoods: $favoriteFoods, favoriteColors: $favoriteColors, tithis: $tithis, days: $days, festivals: $festivals, familyMembers: $familyMembers, avatarsAndForms: $avatarsAndForms, relatedGods: $relatedGods, suggestedSevas: $suggestedSevas, temples: $temples, devotional: $devotional, vendorSeva: $vendorSeva)';
}


}

/// @nodoc
abstract mixin class _$GodDetailDataCopyWith<$Res> implements $GodDetailDataCopyWith<$Res> {
  factory _$GodDetailDataCopyWith(_GodDetailData value, $Res Function(_GodDetailData) _then) = __$GodDetailDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'testLyrics_hi') String testLyrics_hi,@JsonKey(name: 'testLyrics_en') String testLyrics_en,@JsonKey(name: 'image') String image,@JsonKey(name: 'isWishlist') bool isWishlist,@JsonKey(name: 'isPopular') bool isPopular,@JsonKey(name: 'popularity') int popularity,@JsonKey(name: 'category') String category,@JsonKey(name: 'birthPlace') String birthPlace,@JsonKey(name: 'gender') String gender,@JsonKey(name: 'shortDescription') String shortDescription,@JsonKey(name: 'detail') String detail,@JsonKey(name: 'avatarOf') String avatarOf,@JsonKey(name: 'weapons') String weapons,@JsonKey(name: 'vahans') String vahans,@JsonKey(name: 'alternateNames') String alternateNames,@JsonKey(name: 'favoriteFoods') String favoriteFoods,@JsonKey(name: 'favoriteColors') String favoriteColors,@JsonKey(name: 'tithis') String tithis,@JsonKey(name: 'days') List<String> days,@JsonKey(name: 'festivals') List<FestivalModel> festivals,@JsonKey(name: 'familyMembers') List<FamilyMember> familyMembers,@JsonKey(name: 'avatarsAndForms') List<GodReference> avatarsAndForms,@JsonKey(name: 'relatedGods') List<GodReference> relatedGods,@JsonKey(name: 'suggestedSevas') List<SuggestedSeva> suggestedSevas,@JsonKey(name: 'temple') List<TempleModel> temples,@JsonKey(name: 'devotional') List<DevotionalItem> devotional,@JsonKey(name: 'vendorSeva') List<VendorSeva> vendorSeva
});




}
/// @nodoc
class __$GodDetailDataCopyWithImpl<$Res>
    implements _$GodDetailDataCopyWith<$Res> {
  __$GodDetailDataCopyWithImpl(this._self, this._then);

  final _GodDetailData _self;
  final $Res Function(_GodDetailData) _then;

/// Create a copy of GodDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? testLyrics_hi = null,Object? testLyrics_en = null,Object? image = null,Object? isWishlist = null,Object? isPopular = null,Object? popularity = null,Object? category = null,Object? birthPlace = null,Object? gender = null,Object? shortDescription = null,Object? detail = null,Object? avatarOf = null,Object? weapons = null,Object? vahans = null,Object? alternateNames = null,Object? favoriteFoods = null,Object? favoriteColors = null,Object? tithis = null,Object? days = null,Object? festivals = null,Object? familyMembers = null,Object? avatarsAndForms = null,Object? relatedGods = null,Object? suggestedSevas = null,Object? temples = null,Object? devotional = null,Object? vendorSeva = null,}) {
  return _then(_GodDetailData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,testLyrics_hi: null == testLyrics_hi ? _self.testLyrics_hi : testLyrics_hi // ignore: cast_nullable_to_non_nullable
as String,testLyrics_en: null == testLyrics_en ? _self.testLyrics_en : testLyrics_en // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,shortDescription: null == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,avatarOf: null == avatarOf ? _self.avatarOf : avatarOf // ignore: cast_nullable_to_non_nullable
as String,weapons: null == weapons ? _self.weapons : weapons // ignore: cast_nullable_to_non_nullable
as String,vahans: null == vahans ? _self.vahans : vahans // ignore: cast_nullable_to_non_nullable
as String,alternateNames: null == alternateNames ? _self.alternateNames : alternateNames // ignore: cast_nullable_to_non_nullable
as String,favoriteFoods: null == favoriteFoods ? _self.favoriteFoods : favoriteFoods // ignore: cast_nullable_to_non_nullable
as String,favoriteColors: null == favoriteColors ? _self.favoriteColors : favoriteColors // ignore: cast_nullable_to_non_nullable
as String,tithis: null == tithis ? _self.tithis : tithis // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<String>,festivals: null == festivals ? _self._festivals : festivals // ignore: cast_nullable_to_non_nullable
as List<FestivalModel>,familyMembers: null == familyMembers ? _self._familyMembers : familyMembers // ignore: cast_nullable_to_non_nullable
as List<FamilyMember>,avatarsAndForms: null == avatarsAndForms ? _self._avatarsAndForms : avatarsAndForms // ignore: cast_nullable_to_non_nullable
as List<GodReference>,relatedGods: null == relatedGods ? _self._relatedGods : relatedGods // ignore: cast_nullable_to_non_nullable
as List<GodReference>,suggestedSevas: null == suggestedSevas ? _self._suggestedSevas : suggestedSevas // ignore: cast_nullable_to_non_nullable
as List<SuggestedSeva>,temples: null == temples ? _self._temples : temples // ignore: cast_nullable_to_non_nullable
as List<TempleModel>,devotional: null == devotional ? _self._devotional : devotional // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,vendorSeva: null == vendorSeva ? _self._vendorSeva : vendorSeva // ignore: cast_nullable_to_non_nullable
as List<VendorSeva>,
  ));
}


}


/// @nodoc
mixin _$DevotionalItem {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'slug') String get slug;@JsonKey(name: 'testLyrics_hi') String get testLyrics_hi;@JsonKey(name: 'testLyrics_en') String get testLyrics_en;@JsonKey(name: 'type') String get type;@JsonKey(name: 'title') String get title;@JsonKey(name: 'audioAsset') String get audioAsset;@JsonKey(name: 'audio_duration') String get audioDuration;@JsonKey(name: 'thumbnail') String get thumbnail;@JsonKey(name: 'main_banner') String get mainBanner;@JsonKey(name: 'lyric_banner_image') String get lyricBannerImage;@JsonKey(name: 'lyrics') List<dynamic> get lyrics;@JsonKey(name: 'testLyrics') String get testLyrics;@JsonKey(name: 'youtubeLink') String get youtubeLink;@JsonKey(name: 'god') GodModel get god;@JsonKey(name: 'isAddedInWishlist') bool get isAddedInWishlist;@JsonKey(name: 'sewa') List<SuggestedSeva> get sewa;@JsonKey(name: 'vendorSeva') List<VendorSeva> get vendorSeva;@JsonKey(name: 'contentType') ContentTypeModel get contentType;@JsonKey(name: 'audioFile') MediaFile? get audioFile;@JsonKey(name: 'smallThumbnail') MediaFile? get smallThumbnail;@JsonKey(name: 'thumbnailImage') MediaFile? get thumbnailImage;@JsonKey(name: 'pdfImage') MediaFile? get pdfImage;@JsonKey(name: 'videoLink') String get videoLink;@JsonKey(name: 'createdAt') String get createdAt;@JsonKey(name: 'updatedAt') String get updatedAt;
/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DevotionalItemCopyWith<DevotionalItem> get copyWith => _$DevotionalItemCopyWithImpl<DevotionalItem>(this as DevotionalItem, _$identity);

  /// Serializes this DevotionalItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevotionalItem&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.testLyrics_hi, testLyrics_hi) || other.testLyrics_hi == testLyrics_hi)&&(identical(other.testLyrics_en, testLyrics_en) || other.testLyrics_en == testLyrics_en)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.audioAsset, audioAsset) || other.audioAsset == audioAsset)&&(identical(other.audioDuration, audioDuration) || other.audioDuration == audioDuration)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.mainBanner, mainBanner) || other.mainBanner == mainBanner)&&(identical(other.lyricBannerImage, lyricBannerImage) || other.lyricBannerImage == lyricBannerImage)&&const DeepCollectionEquality().equals(other.lyrics, lyrics)&&(identical(other.testLyrics, testLyrics) || other.testLyrics == testLyrics)&&(identical(other.youtubeLink, youtubeLink) || other.youtubeLink == youtubeLink)&&(identical(other.god, god) || other.god == god)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist)&&const DeepCollectionEquality().equals(other.sewa, sewa)&&const DeepCollectionEquality().equals(other.vendorSeva, vendorSeva)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.audioFile, audioFile) || other.audioFile == audioFile)&&(identical(other.smallThumbnail, smallThumbnail) || other.smallThumbnail == smallThumbnail)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&(identical(other.pdfImage, pdfImage) || other.pdfImage == pdfImage)&&(identical(other.videoLink, videoLink) || other.videoLink == videoLink)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,slug,testLyrics_hi,testLyrics_en,type,title,audioAsset,audioDuration,thumbnail,mainBanner,lyricBannerImage,const DeepCollectionEquality().hash(lyrics),testLyrics,youtubeLink,god,isAddedInWishlist,const DeepCollectionEquality().hash(sewa),const DeepCollectionEquality().hash(vendorSeva),contentType,audioFile,smallThumbnail,thumbnailImage,pdfImage,videoLink,createdAt,updatedAt]);

@override
String toString() {
  return 'DevotionalItem(id: $id, slug: $slug, testLyrics_hi: $testLyrics_hi, testLyrics_en: $testLyrics_en, type: $type, title: $title, audioAsset: $audioAsset, audioDuration: $audioDuration, thumbnail: $thumbnail, mainBanner: $mainBanner, lyricBannerImage: $lyricBannerImage, lyrics: $lyrics, testLyrics: $testLyrics, youtubeLink: $youtubeLink, god: $god, isAddedInWishlist: $isAddedInWishlist, sewa: $sewa, vendorSeva: $vendorSeva, contentType: $contentType, audioFile: $audioFile, smallThumbnail: $smallThumbnail, thumbnailImage: $thumbnailImage, pdfImage: $pdfImage, videoLink: $videoLink, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DevotionalItemCopyWith<$Res>  {
  factory $DevotionalItemCopyWith(DevotionalItem value, $Res Function(DevotionalItem) _then) = _$DevotionalItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'testLyrics_hi') String testLyrics_hi,@JsonKey(name: 'testLyrics_en') String testLyrics_en,@JsonKey(name: 'type') String type,@JsonKey(name: 'title') String title,@JsonKey(name: 'audioAsset') String audioAsset,@JsonKey(name: 'audio_duration') String audioDuration,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'main_banner') String mainBanner,@JsonKey(name: 'lyric_banner_image') String lyricBannerImage,@JsonKey(name: 'lyrics') List<dynamic> lyrics,@JsonKey(name: 'testLyrics') String testLyrics,@JsonKey(name: 'youtubeLink') String youtubeLink,@JsonKey(name: 'god') GodModel god,@JsonKey(name: 'isAddedInWishlist') bool isAddedInWishlist,@JsonKey(name: 'sewa') List<SuggestedSeva> sewa,@JsonKey(name: 'vendorSeva') List<VendorSeva> vendorSeva,@JsonKey(name: 'contentType') ContentTypeModel contentType,@JsonKey(name: 'audioFile') MediaFile? audioFile,@JsonKey(name: 'smallThumbnail') MediaFile? smallThumbnail,@JsonKey(name: 'thumbnailImage') MediaFile? thumbnailImage,@JsonKey(name: 'pdfImage') MediaFile? pdfImage,@JsonKey(name: 'videoLink') String videoLink,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: 'updatedAt') String updatedAt
});


$GodModelCopyWith<$Res> get god;$ContentTypeModelCopyWith<$Res> get contentType;$MediaFileCopyWith<$Res>? get audioFile;$MediaFileCopyWith<$Res>? get smallThumbnail;$MediaFileCopyWith<$Res>? get thumbnailImage;$MediaFileCopyWith<$Res>? get pdfImage;

}
/// @nodoc
class _$DevotionalItemCopyWithImpl<$Res>
    implements $DevotionalItemCopyWith<$Res> {
  _$DevotionalItemCopyWithImpl(this._self, this._then);

  final DevotionalItem _self;
  final $Res Function(DevotionalItem) _then;

/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? slug = null,Object? testLyrics_hi = null,Object? testLyrics_en = null,Object? type = null,Object? title = null,Object? audioAsset = null,Object? audioDuration = null,Object? thumbnail = null,Object? mainBanner = null,Object? lyricBannerImage = null,Object? lyrics = null,Object? testLyrics = null,Object? youtubeLink = null,Object? god = null,Object? isAddedInWishlist = null,Object? sewa = null,Object? vendorSeva = null,Object? contentType = null,Object? audioFile = freezed,Object? smallThumbnail = freezed,Object? thumbnailImage = freezed,Object? pdfImage = freezed,Object? videoLink = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,testLyrics_hi: null == testLyrics_hi ? _self.testLyrics_hi : testLyrics_hi // ignore: cast_nullable_to_non_nullable
as String,testLyrics_en: null == testLyrics_en ? _self.testLyrics_en : testLyrics_en // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,audioAsset: null == audioAsset ? _self.audioAsset : audioAsset // ignore: cast_nullable_to_non_nullable
as String,audioDuration: null == audioDuration ? _self.audioDuration : audioDuration // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,mainBanner: null == mainBanner ? _self.mainBanner : mainBanner // ignore: cast_nullable_to_non_nullable
as String,lyricBannerImage: null == lyricBannerImage ? _self.lyricBannerImage : lyricBannerImage // ignore: cast_nullable_to_non_nullable
as String,lyrics: null == lyrics ? _self.lyrics : lyrics // ignore: cast_nullable_to_non_nullable
as List<dynamic>,testLyrics: null == testLyrics ? _self.testLyrics : testLyrics // ignore: cast_nullable_to_non_nullable
as String,youtubeLink: null == youtubeLink ? _self.youtubeLink : youtubeLink // ignore: cast_nullable_to_non_nullable
as String,god: null == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as GodModel,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,sewa: null == sewa ? _self.sewa : sewa // ignore: cast_nullable_to_non_nullable
as List<SuggestedSeva>,vendorSeva: null == vendorSeva ? _self.vendorSeva : vendorSeva // ignore: cast_nullable_to_non_nullable
as List<VendorSeva>,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as ContentTypeModel,audioFile: freezed == audioFile ? _self.audioFile : audioFile // ignore: cast_nullable_to_non_nullable
as MediaFile?,smallThumbnail: freezed == smallThumbnail ? _self.smallThumbnail : smallThumbnail // ignore: cast_nullable_to_non_nullable
as MediaFile?,thumbnailImage: freezed == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as MediaFile?,pdfImage: freezed == pdfImage ? _self.pdfImage : pdfImage // ignore: cast_nullable_to_non_nullable
as MediaFile?,videoLink: null == videoLink ? _self.videoLink : videoLink // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodModelCopyWith<$Res> get god {
  
  return $GodModelCopyWith<$Res>(_self.god, (value) {
    return _then(_self.copyWith(god: value));
  });
}/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentTypeModelCopyWith<$Res> get contentType {
  
  return $ContentTypeModelCopyWith<$Res>(_self.contentType, (value) {
    return _then(_self.copyWith(contentType: value));
  });
}/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaFileCopyWith<$Res>? get audioFile {
    if (_self.audioFile == null) {
    return null;
  }

  return $MediaFileCopyWith<$Res>(_self.audioFile!, (value) {
    return _then(_self.copyWith(audioFile: value));
  });
}/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaFileCopyWith<$Res>? get smallThumbnail {
    if (_self.smallThumbnail == null) {
    return null;
  }

  return $MediaFileCopyWith<$Res>(_self.smallThumbnail!, (value) {
    return _then(_self.copyWith(smallThumbnail: value));
  });
}/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaFileCopyWith<$Res>? get thumbnailImage {
    if (_self.thumbnailImage == null) {
    return null;
  }

  return $MediaFileCopyWith<$Res>(_self.thumbnailImage!, (value) {
    return _then(_self.copyWith(thumbnailImage: value));
  });
}/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaFileCopyWith<$Res>? get pdfImage {
    if (_self.pdfImage == null) {
    return null;
  }

  return $MediaFileCopyWith<$Res>(_self.pdfImage!, (value) {
    return _then(_self.copyWith(pdfImage: value));
  });
}
}


/// Adds pattern-matching-related methods to [DevotionalItem].
extension DevotionalItemPatterns on DevotionalItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DevotionalItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DevotionalItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DevotionalItem value)  $default,){
final _that = this;
switch (_that) {
case _DevotionalItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DevotionalItem value)?  $default,){
final _that = this;
switch (_that) {
case _DevotionalItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'testLyrics_hi')  String testLyrics_hi, @JsonKey(name: 'testLyrics_en')  String testLyrics_en, @JsonKey(name: 'type')  String type, @JsonKey(name: 'title')  String title, @JsonKey(name: 'audioAsset')  String audioAsset, @JsonKey(name: 'audio_duration')  String audioDuration, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'main_banner')  String mainBanner, @JsonKey(name: 'lyric_banner_image')  String lyricBannerImage, @JsonKey(name: 'lyrics')  List<dynamic> lyrics, @JsonKey(name: 'testLyrics')  String testLyrics, @JsonKey(name: 'youtubeLink')  String youtubeLink, @JsonKey(name: 'god')  GodModel god, @JsonKey(name: 'isAddedInWishlist')  bool isAddedInWishlist, @JsonKey(name: 'sewa')  List<SuggestedSeva> sewa, @JsonKey(name: 'vendorSeva')  List<VendorSeva> vendorSeva, @JsonKey(name: 'contentType')  ContentTypeModel contentType, @JsonKey(name: 'audioFile')  MediaFile? audioFile, @JsonKey(name: 'smallThumbnail')  MediaFile? smallThumbnail, @JsonKey(name: 'thumbnailImage')  MediaFile? thumbnailImage, @JsonKey(name: 'pdfImage')  MediaFile? pdfImage, @JsonKey(name: 'videoLink')  String videoLink, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DevotionalItem() when $default != null:
return $default(_that.id,_that.slug,_that.testLyrics_hi,_that.testLyrics_en,_that.type,_that.title,_that.audioAsset,_that.audioDuration,_that.thumbnail,_that.mainBanner,_that.lyricBannerImage,_that.lyrics,_that.testLyrics,_that.youtubeLink,_that.god,_that.isAddedInWishlist,_that.sewa,_that.vendorSeva,_that.contentType,_that.audioFile,_that.smallThumbnail,_that.thumbnailImage,_that.pdfImage,_that.videoLink,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'testLyrics_hi')  String testLyrics_hi, @JsonKey(name: 'testLyrics_en')  String testLyrics_en, @JsonKey(name: 'type')  String type, @JsonKey(name: 'title')  String title, @JsonKey(name: 'audioAsset')  String audioAsset, @JsonKey(name: 'audio_duration')  String audioDuration, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'main_banner')  String mainBanner, @JsonKey(name: 'lyric_banner_image')  String lyricBannerImage, @JsonKey(name: 'lyrics')  List<dynamic> lyrics, @JsonKey(name: 'testLyrics')  String testLyrics, @JsonKey(name: 'youtubeLink')  String youtubeLink, @JsonKey(name: 'god')  GodModel god, @JsonKey(name: 'isAddedInWishlist')  bool isAddedInWishlist, @JsonKey(name: 'sewa')  List<SuggestedSeva> sewa, @JsonKey(name: 'vendorSeva')  List<VendorSeva> vendorSeva, @JsonKey(name: 'contentType')  ContentTypeModel contentType, @JsonKey(name: 'audioFile')  MediaFile? audioFile, @JsonKey(name: 'smallThumbnail')  MediaFile? smallThumbnail, @JsonKey(name: 'thumbnailImage')  MediaFile? thumbnailImage, @JsonKey(name: 'pdfImage')  MediaFile? pdfImage, @JsonKey(name: 'videoLink')  String videoLink, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DevotionalItem():
return $default(_that.id,_that.slug,_that.testLyrics_hi,_that.testLyrics_en,_that.type,_that.title,_that.audioAsset,_that.audioDuration,_that.thumbnail,_that.mainBanner,_that.lyricBannerImage,_that.lyrics,_that.testLyrics,_that.youtubeLink,_that.god,_that.isAddedInWishlist,_that.sewa,_that.vendorSeva,_that.contentType,_that.audioFile,_that.smallThumbnail,_that.thumbnailImage,_that.pdfImage,_that.videoLink,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'testLyrics_hi')  String testLyrics_hi, @JsonKey(name: 'testLyrics_en')  String testLyrics_en, @JsonKey(name: 'type')  String type, @JsonKey(name: 'title')  String title, @JsonKey(name: 'audioAsset')  String audioAsset, @JsonKey(name: 'audio_duration')  String audioDuration, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'main_banner')  String mainBanner, @JsonKey(name: 'lyric_banner_image')  String lyricBannerImage, @JsonKey(name: 'lyrics')  List<dynamic> lyrics, @JsonKey(name: 'testLyrics')  String testLyrics, @JsonKey(name: 'youtubeLink')  String youtubeLink, @JsonKey(name: 'god')  GodModel god, @JsonKey(name: 'isAddedInWishlist')  bool isAddedInWishlist, @JsonKey(name: 'sewa')  List<SuggestedSeva> sewa, @JsonKey(name: 'vendorSeva')  List<VendorSeva> vendorSeva, @JsonKey(name: 'contentType')  ContentTypeModel contentType, @JsonKey(name: 'audioFile')  MediaFile? audioFile, @JsonKey(name: 'smallThumbnail')  MediaFile? smallThumbnail, @JsonKey(name: 'thumbnailImage')  MediaFile? thumbnailImage, @JsonKey(name: 'pdfImage')  MediaFile? pdfImage, @JsonKey(name: 'videoLink')  String videoLink, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DevotionalItem() when $default != null:
return $default(_that.id,_that.slug,_that.testLyrics_hi,_that.testLyrics_en,_that.type,_that.title,_that.audioAsset,_that.audioDuration,_that.thumbnail,_that.mainBanner,_that.lyricBannerImage,_that.lyrics,_that.testLyrics,_that.youtubeLink,_that.god,_that.isAddedInWishlist,_that.sewa,_that.vendorSeva,_that.contentType,_that.audioFile,_that.smallThumbnail,_that.thumbnailImage,_that.pdfImage,_that.videoLink,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DevotionalItem implements DevotionalItem {
  const _DevotionalItem({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'slug') this.slug = '', @JsonKey(name: 'testLyrics_hi') this.testLyrics_hi = '', @JsonKey(name: 'testLyrics_en') this.testLyrics_en = '', @JsonKey(name: 'type') this.type = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'audioAsset') this.audioAsset = '', @JsonKey(name: 'audio_duration') this.audioDuration = '', @JsonKey(name: 'thumbnail') this.thumbnail = '', @JsonKey(name: 'main_banner') this.mainBanner = '', @JsonKey(name: 'lyric_banner_image') this.lyricBannerImage = '', @JsonKey(name: 'lyrics') final  List<dynamic> lyrics = const [], @JsonKey(name: 'testLyrics') this.testLyrics = '', @JsonKey(name: 'youtubeLink') this.youtubeLink = '', @JsonKey(name: 'god') this.god = const GodModel(), @JsonKey(name: 'isAddedInWishlist') this.isAddedInWishlist = false, @JsonKey(name: 'sewa') final  List<SuggestedSeva> sewa = const <SuggestedSeva>[], @JsonKey(name: 'vendorSeva') final  List<VendorSeva> vendorSeva = const <VendorSeva>[], @JsonKey(name: 'contentType') this.contentType = const ContentTypeModel(), @JsonKey(name: 'audioFile') this.audioFile, @JsonKey(name: 'smallThumbnail') this.smallThumbnail, @JsonKey(name: 'thumbnailImage') this.thumbnailImage, @JsonKey(name: 'pdfImage') this.pdfImage, @JsonKey(name: 'videoLink') this.videoLink = '', @JsonKey(name: 'createdAt') this.createdAt = '', @JsonKey(name: 'updatedAt') this.updatedAt = ''}): _lyrics = lyrics,_sewa = sewa,_vendorSeva = vendorSeva;
  factory _DevotionalItem.fromJson(Map<String, dynamic> json) => _$DevotionalItemFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'slug') final  String slug;
@override@JsonKey(name: 'testLyrics_hi') final  String testLyrics_hi;
@override@JsonKey(name: 'testLyrics_en') final  String testLyrics_en;
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'audioAsset') final  String audioAsset;
@override@JsonKey(name: 'audio_duration') final  String audioDuration;
@override@JsonKey(name: 'thumbnail') final  String thumbnail;
@override@JsonKey(name: 'main_banner') final  String mainBanner;
@override@JsonKey(name: 'lyric_banner_image') final  String lyricBannerImage;
 final  List<dynamic> _lyrics;
@override@JsonKey(name: 'lyrics') List<dynamic> get lyrics {
  if (_lyrics is EqualUnmodifiableListView) return _lyrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lyrics);
}

@override@JsonKey(name: 'testLyrics') final  String testLyrics;
@override@JsonKey(name: 'youtubeLink') final  String youtubeLink;
@override@JsonKey(name: 'god') final  GodModel god;
@override@JsonKey(name: 'isAddedInWishlist') final  bool isAddedInWishlist;
 final  List<SuggestedSeva> _sewa;
@override@JsonKey(name: 'sewa') List<SuggestedSeva> get sewa {
  if (_sewa is EqualUnmodifiableListView) return _sewa;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sewa);
}

 final  List<VendorSeva> _vendorSeva;
@override@JsonKey(name: 'vendorSeva') List<VendorSeva> get vendorSeva {
  if (_vendorSeva is EqualUnmodifiableListView) return _vendorSeva;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vendorSeva);
}

@override@JsonKey(name: 'contentType') final  ContentTypeModel contentType;
@override@JsonKey(name: 'audioFile') final  MediaFile? audioFile;
@override@JsonKey(name: 'smallThumbnail') final  MediaFile? smallThumbnail;
@override@JsonKey(name: 'thumbnailImage') final  MediaFile? thumbnailImage;
@override@JsonKey(name: 'pdfImage') final  MediaFile? pdfImage;
@override@JsonKey(name: 'videoLink') final  String videoLink;
@override@JsonKey(name: 'createdAt') final  String createdAt;
@override@JsonKey(name: 'updatedAt') final  String updatedAt;

/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DevotionalItemCopyWith<_DevotionalItem> get copyWith => __$DevotionalItemCopyWithImpl<_DevotionalItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DevotionalItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevotionalItem&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.testLyrics_hi, testLyrics_hi) || other.testLyrics_hi == testLyrics_hi)&&(identical(other.testLyrics_en, testLyrics_en) || other.testLyrics_en == testLyrics_en)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.audioAsset, audioAsset) || other.audioAsset == audioAsset)&&(identical(other.audioDuration, audioDuration) || other.audioDuration == audioDuration)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.mainBanner, mainBanner) || other.mainBanner == mainBanner)&&(identical(other.lyricBannerImage, lyricBannerImage) || other.lyricBannerImage == lyricBannerImage)&&const DeepCollectionEquality().equals(other._lyrics, _lyrics)&&(identical(other.testLyrics, testLyrics) || other.testLyrics == testLyrics)&&(identical(other.youtubeLink, youtubeLink) || other.youtubeLink == youtubeLink)&&(identical(other.god, god) || other.god == god)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist)&&const DeepCollectionEquality().equals(other._sewa, _sewa)&&const DeepCollectionEquality().equals(other._vendorSeva, _vendorSeva)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.audioFile, audioFile) || other.audioFile == audioFile)&&(identical(other.smallThumbnail, smallThumbnail) || other.smallThumbnail == smallThumbnail)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&(identical(other.pdfImage, pdfImage) || other.pdfImage == pdfImage)&&(identical(other.videoLink, videoLink) || other.videoLink == videoLink)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,slug,testLyrics_hi,testLyrics_en,type,title,audioAsset,audioDuration,thumbnail,mainBanner,lyricBannerImage,const DeepCollectionEquality().hash(_lyrics),testLyrics,youtubeLink,god,isAddedInWishlist,const DeepCollectionEquality().hash(_sewa),const DeepCollectionEquality().hash(_vendorSeva),contentType,audioFile,smallThumbnail,thumbnailImage,pdfImage,videoLink,createdAt,updatedAt]);

@override
String toString() {
  return 'DevotionalItem(id: $id, slug: $slug, testLyrics_hi: $testLyrics_hi, testLyrics_en: $testLyrics_en, type: $type, title: $title, audioAsset: $audioAsset, audioDuration: $audioDuration, thumbnail: $thumbnail, mainBanner: $mainBanner, lyricBannerImage: $lyricBannerImage, lyrics: $lyrics, testLyrics: $testLyrics, youtubeLink: $youtubeLink, god: $god, isAddedInWishlist: $isAddedInWishlist, sewa: $sewa, vendorSeva: $vendorSeva, contentType: $contentType, audioFile: $audioFile, smallThumbnail: $smallThumbnail, thumbnailImage: $thumbnailImage, pdfImage: $pdfImage, videoLink: $videoLink, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DevotionalItemCopyWith<$Res> implements $DevotionalItemCopyWith<$Res> {
  factory _$DevotionalItemCopyWith(_DevotionalItem value, $Res Function(_DevotionalItem) _then) = __$DevotionalItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'testLyrics_hi') String testLyrics_hi,@JsonKey(name: 'testLyrics_en') String testLyrics_en,@JsonKey(name: 'type') String type,@JsonKey(name: 'title') String title,@JsonKey(name: 'audioAsset') String audioAsset,@JsonKey(name: 'audio_duration') String audioDuration,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'main_banner') String mainBanner,@JsonKey(name: 'lyric_banner_image') String lyricBannerImage,@JsonKey(name: 'lyrics') List<dynamic> lyrics,@JsonKey(name: 'testLyrics') String testLyrics,@JsonKey(name: 'youtubeLink') String youtubeLink,@JsonKey(name: 'god') GodModel god,@JsonKey(name: 'isAddedInWishlist') bool isAddedInWishlist,@JsonKey(name: 'sewa') List<SuggestedSeva> sewa,@JsonKey(name: 'vendorSeva') List<VendorSeva> vendorSeva,@JsonKey(name: 'contentType') ContentTypeModel contentType,@JsonKey(name: 'audioFile') MediaFile? audioFile,@JsonKey(name: 'smallThumbnail') MediaFile? smallThumbnail,@JsonKey(name: 'thumbnailImage') MediaFile? thumbnailImage,@JsonKey(name: 'pdfImage') MediaFile? pdfImage,@JsonKey(name: 'videoLink') String videoLink,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: 'updatedAt') String updatedAt
});


@override $GodModelCopyWith<$Res> get god;@override $ContentTypeModelCopyWith<$Res> get contentType;@override $MediaFileCopyWith<$Res>? get audioFile;@override $MediaFileCopyWith<$Res>? get smallThumbnail;@override $MediaFileCopyWith<$Res>? get thumbnailImage;@override $MediaFileCopyWith<$Res>? get pdfImage;

}
/// @nodoc
class __$DevotionalItemCopyWithImpl<$Res>
    implements _$DevotionalItemCopyWith<$Res> {
  __$DevotionalItemCopyWithImpl(this._self, this._then);

  final _DevotionalItem _self;
  final $Res Function(_DevotionalItem) _then;

/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? slug = null,Object? testLyrics_hi = null,Object? testLyrics_en = null,Object? type = null,Object? title = null,Object? audioAsset = null,Object? audioDuration = null,Object? thumbnail = null,Object? mainBanner = null,Object? lyricBannerImage = null,Object? lyrics = null,Object? testLyrics = null,Object? youtubeLink = null,Object? god = null,Object? isAddedInWishlist = null,Object? sewa = null,Object? vendorSeva = null,Object? contentType = null,Object? audioFile = freezed,Object? smallThumbnail = freezed,Object? thumbnailImage = freezed,Object? pdfImage = freezed,Object? videoLink = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DevotionalItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,testLyrics_hi: null == testLyrics_hi ? _self.testLyrics_hi : testLyrics_hi // ignore: cast_nullable_to_non_nullable
as String,testLyrics_en: null == testLyrics_en ? _self.testLyrics_en : testLyrics_en // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,audioAsset: null == audioAsset ? _self.audioAsset : audioAsset // ignore: cast_nullable_to_non_nullable
as String,audioDuration: null == audioDuration ? _self.audioDuration : audioDuration // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,mainBanner: null == mainBanner ? _self.mainBanner : mainBanner // ignore: cast_nullable_to_non_nullable
as String,lyricBannerImage: null == lyricBannerImage ? _self.lyricBannerImage : lyricBannerImage // ignore: cast_nullable_to_non_nullable
as String,lyrics: null == lyrics ? _self._lyrics : lyrics // ignore: cast_nullable_to_non_nullable
as List<dynamic>,testLyrics: null == testLyrics ? _self.testLyrics : testLyrics // ignore: cast_nullable_to_non_nullable
as String,youtubeLink: null == youtubeLink ? _self.youtubeLink : youtubeLink // ignore: cast_nullable_to_non_nullable
as String,god: null == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as GodModel,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,sewa: null == sewa ? _self._sewa : sewa // ignore: cast_nullable_to_non_nullable
as List<SuggestedSeva>,vendorSeva: null == vendorSeva ? _self._vendorSeva : vendorSeva // ignore: cast_nullable_to_non_nullable
as List<VendorSeva>,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as ContentTypeModel,audioFile: freezed == audioFile ? _self.audioFile : audioFile // ignore: cast_nullable_to_non_nullable
as MediaFile?,smallThumbnail: freezed == smallThumbnail ? _self.smallThumbnail : smallThumbnail // ignore: cast_nullable_to_non_nullable
as MediaFile?,thumbnailImage: freezed == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as MediaFile?,pdfImage: freezed == pdfImage ? _self.pdfImage : pdfImage // ignore: cast_nullable_to_non_nullable
as MediaFile?,videoLink: null == videoLink ? _self.videoLink : videoLink // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodModelCopyWith<$Res> get god {
  
  return $GodModelCopyWith<$Res>(_self.god, (value) {
    return _then(_self.copyWith(god: value));
  });
}/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentTypeModelCopyWith<$Res> get contentType {
  
  return $ContentTypeModelCopyWith<$Res>(_self.contentType, (value) {
    return _then(_self.copyWith(contentType: value));
  });
}/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaFileCopyWith<$Res>? get audioFile {
    if (_self.audioFile == null) {
    return null;
  }

  return $MediaFileCopyWith<$Res>(_self.audioFile!, (value) {
    return _then(_self.copyWith(audioFile: value));
  });
}/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaFileCopyWith<$Res>? get smallThumbnail {
    if (_self.smallThumbnail == null) {
    return null;
  }

  return $MediaFileCopyWith<$Res>(_self.smallThumbnail!, (value) {
    return _then(_self.copyWith(smallThumbnail: value));
  });
}/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaFileCopyWith<$Res>? get thumbnailImage {
    if (_self.thumbnailImage == null) {
    return null;
  }

  return $MediaFileCopyWith<$Res>(_self.thumbnailImage!, (value) {
    return _then(_self.copyWith(thumbnailImage: value));
  });
}/// Create a copy of DevotionalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaFileCopyWith<$Res>? get pdfImage {
    if (_self.pdfImage == null) {
    return null;
  }

  return $MediaFileCopyWith<$Res>(_self.pdfImage!, (value) {
    return _then(_self.copyWith(pdfImage: value));
  });
}
}


/// @nodoc
mixin _$DevotionalGod {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'god_name') String get godName;@JsonKey(name: 'thumbnail') String get thumbnail;
/// Create a copy of DevotionalGod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DevotionalGodCopyWith<DevotionalGod> get copyWith => _$DevotionalGodCopyWithImpl<DevotionalGod>(this as DevotionalGod, _$identity);

  /// Serializes this DevotionalGod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevotionalGod&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,godName,thumbnail);

@override
String toString() {
  return 'DevotionalGod(id: $id, godName: $godName, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $DevotionalGodCopyWith<$Res>  {
  factory $DevotionalGodCopyWith(DevotionalGod value, $Res Function(DevotionalGod) _then) = _$DevotionalGodCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String godName,@JsonKey(name: 'thumbnail') String thumbnail
});




}
/// @nodoc
class _$DevotionalGodCopyWithImpl<$Res>
    implements $DevotionalGodCopyWith<$Res> {
  _$DevotionalGodCopyWithImpl(this._self, this._then);

  final DevotionalGod _self;
  final $Res Function(DevotionalGod) _then;

/// Create a copy of DevotionalGod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? godName = null,Object? thumbnail = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,godName: null == godName ? _self.godName : godName // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DevotionalGod].
extension DevotionalGodPatterns on DevotionalGod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DevotionalGod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DevotionalGod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DevotionalGod value)  $default,){
final _that = this;
switch (_that) {
case _DevotionalGod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DevotionalGod value)?  $default,){
final _that = this;
switch (_that) {
case _DevotionalGod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'thumbnail')  String thumbnail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DevotionalGod() when $default != null:
return $default(_that.id,_that.godName,_that.thumbnail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'thumbnail')  String thumbnail)  $default,) {final _that = this;
switch (_that) {
case _DevotionalGod():
return $default(_that.id,_that.godName,_that.thumbnail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'thumbnail')  String thumbnail)?  $default,) {final _that = this;
switch (_that) {
case _DevotionalGod() when $default != null:
return $default(_that.id,_that.godName,_that.thumbnail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DevotionalGod implements DevotionalGod {
  const _DevotionalGod({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'god_name') this.godName = '', @JsonKey(name: 'thumbnail') this.thumbnail = ''});
  factory _DevotionalGod.fromJson(Map<String, dynamic> json) => _$DevotionalGodFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'god_name') final  String godName;
@override@JsonKey(name: 'thumbnail') final  String thumbnail;

/// Create a copy of DevotionalGod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DevotionalGodCopyWith<_DevotionalGod> get copyWith => __$DevotionalGodCopyWithImpl<_DevotionalGod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DevotionalGodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevotionalGod&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,godName,thumbnail);

@override
String toString() {
  return 'DevotionalGod(id: $id, godName: $godName, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$DevotionalGodCopyWith<$Res> implements $DevotionalGodCopyWith<$Res> {
  factory _$DevotionalGodCopyWith(_DevotionalGod value, $Res Function(_DevotionalGod) _then) = __$DevotionalGodCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String godName,@JsonKey(name: 'thumbnail') String thumbnail
});




}
/// @nodoc
class __$DevotionalGodCopyWithImpl<$Res>
    implements _$DevotionalGodCopyWith<$Res> {
  __$DevotionalGodCopyWithImpl(this._self, this._then);

  final _DevotionalGod _self;
  final $Res Function(_DevotionalGod) _then;

/// Create a copy of DevotionalGod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? godName = null,Object? thumbnail = null,}) {
  return _then(_DevotionalGod(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,godName: null == godName ? _self.godName : godName // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ContentTypeModel {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'slug') String get slug;
/// Create a copy of ContentTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentTypeModelCopyWith<ContentTypeModel> get copyWith => _$ContentTypeModelCopyWithImpl<ContentTypeModel>(this as ContentTypeModel, _$identity);

  /// Serializes this ContentTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'ContentTypeModel(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class $ContentTypeModelCopyWith<$Res>  {
  factory $ContentTypeModelCopyWith(ContentTypeModel value, $Res Function(ContentTypeModel) _then) = _$ContentTypeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug
});




}
/// @nodoc
class _$ContentTypeModelCopyWithImpl<$Res>
    implements $ContentTypeModelCopyWith<$Res> {
  _$ContentTypeModelCopyWithImpl(this._self, this._then);

  final ContentTypeModel _self;
  final $Res Function(ContentTypeModel) _then;

/// Create a copy of ContentTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ContentTypeModel].
extension ContentTypeModelPatterns on ContentTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContentTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContentTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContentTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _ContentTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContentTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContentTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContentTypeModel() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug)  $default,) {final _that = this;
switch (_that) {
case _ContentTypeModel():
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug)?  $default,) {final _that = this;
switch (_that) {
case _ContentTypeModel() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContentTypeModel implements ContentTypeModel {
  const _ContentTypeModel({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'slug') this.slug = ''});
  factory _ContentTypeModel.fromJson(Map<String, dynamic> json) => _$ContentTypeModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'slug') final  String slug;

/// Create a copy of ContentTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentTypeModelCopyWith<_ContentTypeModel> get copyWith => __$ContentTypeModelCopyWithImpl<_ContentTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'ContentTypeModel(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$ContentTypeModelCopyWith<$Res> implements $ContentTypeModelCopyWith<$Res> {
  factory _$ContentTypeModelCopyWith(_ContentTypeModel value, $Res Function(_ContentTypeModel) _then) = __$ContentTypeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug
});




}
/// @nodoc
class __$ContentTypeModelCopyWithImpl<$Res>
    implements _$ContentTypeModelCopyWith<$Res> {
  __$ContentTypeModelCopyWithImpl(this._self, this._then);

  final _ContentTypeModel _self;
  final $Res Function(_ContentTypeModel) _then;

/// Create a copy of ContentTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,}) {
  return _then(_ContentTypeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MediaFile {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'url') String get url;@JsonKey(name: 'type') String get type;
/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaFileCopyWith<MediaFile> get copyWith => _$MediaFileCopyWithImpl<MediaFile>(this as MediaFile, _$identity);

  /// Serializes this MediaFile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaFile&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,type);

@override
String toString() {
  return 'MediaFile(id: $id, url: $url, type: $type)';
}


}

/// @nodoc
abstract mixin class $MediaFileCopyWith<$Res>  {
  factory $MediaFileCopyWith(MediaFile value, $Res Function(MediaFile) _then) = _$MediaFileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'url') String url,@JsonKey(name: 'type') String type
});




}
/// @nodoc
class _$MediaFileCopyWithImpl<$Res>
    implements $MediaFileCopyWith<$Res> {
  _$MediaFileCopyWithImpl(this._self, this._then);

  final MediaFile _self;
  final $Res Function(MediaFile) _then;

/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaFile].
extension MediaFilePatterns on MediaFile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaFile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaFile value)  $default,){
final _that = this;
switch (_that) {
case _MediaFile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaFile value)?  $default,){
final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'url')  String url, @JsonKey(name: 'type')  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
return $default(_that.id,_that.url,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'url')  String url, @JsonKey(name: 'type')  String type)  $default,) {final _that = this;
switch (_that) {
case _MediaFile():
return $default(_that.id,_that.url,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'url')  String url, @JsonKey(name: 'type')  String type)?  $default,) {final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
return $default(_that.id,_that.url,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaFile implements MediaFile {
  const _MediaFile({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'url') this.url = '', @JsonKey(name: 'type') this.type = ''});
  factory _MediaFile.fromJson(Map<String, dynamic> json) => _$MediaFileFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'url') final  String url;
@override@JsonKey(name: 'type') final  String type;

/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaFileCopyWith<_MediaFile> get copyWith => __$MediaFileCopyWithImpl<_MediaFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaFileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaFile&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,type);

@override
String toString() {
  return 'MediaFile(id: $id, url: $url, type: $type)';
}


}

/// @nodoc
abstract mixin class _$MediaFileCopyWith<$Res> implements $MediaFileCopyWith<$Res> {
  factory _$MediaFileCopyWith(_MediaFile value, $Res Function(_MediaFile) _then) = __$MediaFileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'url') String url,@JsonKey(name: 'type') String type
});




}
/// @nodoc
class __$MediaFileCopyWithImpl<$Res>
    implements _$MediaFileCopyWith<$Res> {
  __$MediaFileCopyWithImpl(this._self, this._then);

  final _MediaFile _self;
  final $Res Function(_MediaFile) _then;

/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? type = null,}) {
  return _then(_MediaFile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FestivalModel {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'slug') String get slug;@JsonKey(name: 'when') String get when;
/// Create a copy of FestivalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FestivalModelCopyWith<FestivalModel> get copyWith => _$FestivalModelCopyWithImpl<FestivalModel>(this as FestivalModel, _$identity);

  /// Serializes this FestivalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FestivalModel&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.when, when) || other.when == when));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,when);

@override
String toString() {
  return 'FestivalModel(name: $name, slug: $slug, when: $when)';
}


}

/// @nodoc
abstract mixin class $FestivalModelCopyWith<$Res>  {
  factory $FestivalModelCopyWith(FestivalModel value, $Res Function(FestivalModel) _then) = _$FestivalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'when') String when
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? slug = null,Object? when = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,when: null == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'when')  String when)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FestivalModel() when $default != null:
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
case _FestivalModel():
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
case _FestivalModel() when $default != null:
return $default(_that.name,_that.slug,_that.when);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FestivalModel implements FestivalModel {
  const _FestivalModel({@JsonKey(name: 'name') this.name = '', @JsonKey(name: 'slug') this.slug = '', @JsonKey(name: 'when') this.when = ''});
  factory _FestivalModel.fromJson(Map<String, dynamic> json) => _$FestivalModelFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'slug') final  String slug;
@override@JsonKey(name: 'when') final  String when;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FestivalModel&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.when, when) || other.when == when));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,when);

@override
String toString() {
  return 'FestivalModel(name: $name, slug: $slug, when: $when)';
}


}

/// @nodoc
abstract mixin class _$FestivalModelCopyWith<$Res> implements $FestivalModelCopyWith<$Res> {
  factory _$FestivalModelCopyWith(_FestivalModel value, $Res Function(_FestivalModel) _then) = __$FestivalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'when') String when
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? slug = null,Object? when = null,}) {
  return _then(_FestivalModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,when: null == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FamilyMember {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'relation') String get relation;@JsonKey(name: 'name') String get name;@JsonKey(name: 'isClick') bool get isClick;@JsonKey(name: 'image') String get image;
/// Create a copy of FamilyMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyMemberCopyWith<FamilyMember> get copyWith => _$FamilyMemberCopyWithImpl<FamilyMember>(this as FamilyMember, _$identity);

  /// Serializes this FamilyMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyMember&&(identical(other.id, id) || other.id == id)&&(identical(other.relation, relation) || other.relation == relation)&&(identical(other.name, name) || other.name == name)&&(identical(other.isClick, isClick) || other.isClick == isClick)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,relation,name,isClick,image);

@override
String toString() {
  return 'FamilyMember(id: $id, relation: $relation, name: $name, isClick: $isClick, image: $image)';
}


}

/// @nodoc
abstract mixin class $FamilyMemberCopyWith<$Res>  {
  factory $FamilyMemberCopyWith(FamilyMember value, $Res Function(FamilyMember) _then) = _$FamilyMemberCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'relation') String relation,@JsonKey(name: 'name') String name,@JsonKey(name: 'isClick') bool isClick,@JsonKey(name: 'image') String image
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? relation = null,Object? name = null,Object? isClick = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,relation: null == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isClick: null == isClick ? _self.isClick : isClick // ignore: cast_nullable_to_non_nullable
as bool,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'relation')  String relation, @JsonKey(name: 'name')  String name, @JsonKey(name: 'isClick')  bool isClick, @JsonKey(name: 'image')  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FamilyMember() when $default != null:
return $default(_that.id,_that.relation,_that.name,_that.isClick,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'relation')  String relation, @JsonKey(name: 'name')  String name, @JsonKey(name: 'isClick')  bool isClick, @JsonKey(name: 'image')  String image)  $default,) {final _that = this;
switch (_that) {
case _FamilyMember():
return $default(_that.id,_that.relation,_that.name,_that.isClick,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'relation')  String relation, @JsonKey(name: 'name')  String name, @JsonKey(name: 'isClick')  bool isClick, @JsonKey(name: 'image')  String image)?  $default,) {final _that = this;
switch (_that) {
case _FamilyMember() when $default != null:
return $default(_that.id,_that.relation,_that.name,_that.isClick,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FamilyMember implements FamilyMember {
  const _FamilyMember({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'relation') this.relation = '', @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'isClick') this.isClick = false, @JsonKey(name: 'image') this.image = ''});
  factory _FamilyMember.fromJson(Map<String, dynamic> json) => _$FamilyMemberFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'relation') final  String relation;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'isClick') final  bool isClick;
@override@JsonKey(name: 'image') final  String image;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FamilyMember&&(identical(other.id, id) || other.id == id)&&(identical(other.relation, relation) || other.relation == relation)&&(identical(other.name, name) || other.name == name)&&(identical(other.isClick, isClick) || other.isClick == isClick)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,relation,name,isClick,image);

@override
String toString() {
  return 'FamilyMember(id: $id, relation: $relation, name: $name, isClick: $isClick, image: $image)';
}


}

/// @nodoc
abstract mixin class _$FamilyMemberCopyWith<$Res> implements $FamilyMemberCopyWith<$Res> {
  factory _$FamilyMemberCopyWith(_FamilyMember value, $Res Function(_FamilyMember) _then) = __$FamilyMemberCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'relation') String relation,@JsonKey(name: 'name') String name,@JsonKey(name: 'isClick') bool isClick,@JsonKey(name: 'image') String image
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? relation = null,Object? name = null,Object? isClick = null,Object? image = null,}) {
  return _then(_FamilyMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,relation: null == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isClick: null == isClick ? _self.isClick : isClick // ignore: cast_nullable_to_non_nullable
as bool,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GodReference {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'slug') String get slug;@JsonKey(name: 'image') String get image;@JsonKey(name: 'category') String get category;@JsonKey(name: 'location') String get location;
/// Create a copy of GodReference
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodReferenceCopyWith<GodReference> get copyWith => _$GodReferenceCopyWithImpl<GodReference>(this as GodReference, _$identity);

  /// Serializes this GodReference to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodReference&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.image, image) || other.image == image)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,image,category,location);

@override
String toString() {
  return 'GodReference(id: $id, name: $name, slug: $slug, image: $image, category: $category, location: $location)';
}


}

/// @nodoc
abstract mixin class $GodReferenceCopyWith<$Res>  {
  factory $GodReferenceCopyWith(GodReference value, $Res Function(GodReference) _then) = _$GodReferenceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'image') String image,@JsonKey(name: 'category') String category,@JsonKey(name: 'location') String location
});




}
/// @nodoc
class _$GodReferenceCopyWithImpl<$Res>
    implements $GodReferenceCopyWith<$Res> {
  _$GodReferenceCopyWithImpl(this._self, this._then);

  final GodReference _self;
  final $Res Function(GodReference) _then;

/// Create a copy of GodReference
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? image = null,Object? category = null,Object? location = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GodReference].
extension GodReferencePatterns on GodReference {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GodReference value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GodReference() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GodReference value)  $default,){
final _that = this;
switch (_that) {
case _GodReference():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GodReference value)?  $default,){
final _that = this;
switch (_that) {
case _GodReference() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'image')  String image, @JsonKey(name: 'category')  String category, @JsonKey(name: 'location')  String location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodReference() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.image,_that.category,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'image')  String image, @JsonKey(name: 'category')  String category, @JsonKey(name: 'location')  String location)  $default,) {final _that = this;
switch (_that) {
case _GodReference():
return $default(_that.id,_that.name,_that.slug,_that.image,_that.category,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'image')  String image, @JsonKey(name: 'category')  String category, @JsonKey(name: 'location')  String location)?  $default,) {final _that = this;
switch (_that) {
case _GodReference() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.image,_that.category,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GodReference implements GodReference {
  const _GodReference({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'slug') this.slug = '', @JsonKey(name: 'image') this.image = '', @JsonKey(name: 'category') this.category = '', @JsonKey(name: 'location') this.location = ''});
  factory _GodReference.fromJson(Map<String, dynamic> json) => _$GodReferenceFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'slug') final  String slug;
@override@JsonKey(name: 'image') final  String image;
@override@JsonKey(name: 'category') final  String category;
@override@JsonKey(name: 'location') final  String location;

/// Create a copy of GodReference
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodReferenceCopyWith<_GodReference> get copyWith => __$GodReferenceCopyWithImpl<_GodReference>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodReferenceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodReference&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.image, image) || other.image == image)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,image,category,location);

@override
String toString() {
  return 'GodReference(id: $id, name: $name, slug: $slug, image: $image, category: $category, location: $location)';
}


}

/// @nodoc
abstract mixin class _$GodReferenceCopyWith<$Res> implements $GodReferenceCopyWith<$Res> {
  factory _$GodReferenceCopyWith(_GodReference value, $Res Function(_GodReference) _then) = __$GodReferenceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'image') String image,@JsonKey(name: 'category') String category,@JsonKey(name: 'location') String location
});




}
/// @nodoc
class __$GodReferenceCopyWithImpl<$Res>
    implements _$GodReferenceCopyWith<$Res> {
  __$GodReferenceCopyWithImpl(this._self, this._then);

  final _GodReference _self;
  final $Res Function(_GodReference) _then;

/// Create a copy of GodReference
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? image = null,Object? category = null,Object? location = null,}) {
  return _then(_GodReference(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SuggestedSeva {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'description') String get description;@JsonKey(name: 'thumbnail') String get thumbnail;@JsonKey(name: 'price') int get price;
/// Create a copy of SuggestedSeva
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestedSevaCopyWith<SuggestedSeva> get copyWith => _$SuggestedSevaCopyWithImpl<SuggestedSeva>(this as SuggestedSeva, _$identity);

  /// Serializes this SuggestedSeva to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestedSeva&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,thumbnail,price);

@override
String toString() {
  return 'SuggestedSeva(id: $id, title: $title, description: $description, thumbnail: $thumbnail, price: $price)';
}


}

/// @nodoc
abstract mixin class $SuggestedSevaCopyWith<$Res>  {
  factory $SuggestedSevaCopyWith(SuggestedSeva value, $Res Function(SuggestedSeva) _then) = _$SuggestedSevaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'price') int price
});




}
/// @nodoc
class _$SuggestedSevaCopyWithImpl<$Res>
    implements $SuggestedSevaCopyWith<$Res> {
  _$SuggestedSevaCopyWithImpl(this._self, this._then);

  final SuggestedSeva _self;
  final $Res Function(SuggestedSeva) _then;

/// Create a copy of SuggestedSeva
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? thumbnail = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SuggestedSeva].
extension SuggestedSevaPatterns on SuggestedSeva {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuggestedSeva value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuggestedSeva() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuggestedSeva value)  $default,){
final _that = this;
switch (_that) {
case _SuggestedSeva():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuggestedSeva value)?  $default,){
final _that = this;
switch (_that) {
case _SuggestedSeva() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'price')  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuggestedSeva() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.thumbnail,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'price')  int price)  $default,) {final _that = this;
switch (_that) {
case _SuggestedSeva():
return $default(_that.id,_that.title,_that.description,_that.thumbnail,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'price')  int price)?  $default,) {final _that = this;
switch (_that) {
case _SuggestedSeva() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.thumbnail,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SuggestedSeva implements SuggestedSeva {
  const _SuggestedSeva({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'description') this.description = '', @JsonKey(name: 'thumbnail') this.thumbnail = '', @JsonKey(name: 'price') this.price = 0});
  factory _SuggestedSeva.fromJson(Map<String, dynamic> json) => _$SuggestedSevaFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'thumbnail') final  String thumbnail;
@override@JsonKey(name: 'price') final  int price;

/// Create a copy of SuggestedSeva
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestedSevaCopyWith<_SuggestedSeva> get copyWith => __$SuggestedSevaCopyWithImpl<_SuggestedSeva>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuggestedSevaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestedSeva&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,thumbnail,price);

@override
String toString() {
  return 'SuggestedSeva(id: $id, title: $title, description: $description, thumbnail: $thumbnail, price: $price)';
}


}

/// @nodoc
abstract mixin class _$SuggestedSevaCopyWith<$Res> implements $SuggestedSevaCopyWith<$Res> {
  factory _$SuggestedSevaCopyWith(_SuggestedSeva value, $Res Function(_SuggestedSeva) _then) = __$SuggestedSevaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'price') int price
});




}
/// @nodoc
class __$SuggestedSevaCopyWithImpl<$Res>
    implements _$SuggestedSevaCopyWith<$Res> {
  __$SuggestedSevaCopyWithImpl(this._self, this._then);

  final _SuggestedSeva _self;
  final $Res Function(_SuggestedSeva) _then;

/// Create a copy of SuggestedSeva
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? thumbnail = null,Object? price = null,}) {
  return _then(_SuggestedSeva(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TempleModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'location') String get location;@JsonKey(name: 'image') String get image;
/// Create a copy of TempleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleModelCopyWith<TempleModel> get copyWith => _$TempleModelCopyWithImpl<TempleModel>(this as TempleModel, _$identity);

  /// Serializes this TempleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TempleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location,image);

@override
String toString() {
  return 'TempleModel(id: $id, name: $name, location: $location, image: $image)';
}


}

/// @nodoc
abstract mixin class $TempleModelCopyWith<$Res>  {
  factory $TempleModelCopyWith(TempleModel value, $Res Function(TempleModel) _then) = _$TempleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'location') String location,@JsonKey(name: 'image') String image
});




}
/// @nodoc
class _$TempleModelCopyWithImpl<$Res>
    implements $TempleModelCopyWith<$Res> {
  _$TempleModelCopyWithImpl(this._self, this._then);

  final TempleModel _self;
  final $Res Function(TempleModel) _then;

/// Create a copy of TempleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? location = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TempleModel].
extension TempleModelPatterns on TempleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TempleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TempleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TempleModel value)  $default,){
final _that = this;
switch (_that) {
case _TempleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TempleModel value)?  $default,){
final _that = this;
switch (_that) {
case _TempleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'location')  String location, @JsonKey(name: 'image')  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TempleModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'location')  String location, @JsonKey(name: 'image')  String image)  $default,) {final _that = this;
switch (_that) {
case _TempleModel():
return $default(_that.id,_that.name,_that.location,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'location')  String location, @JsonKey(name: 'image')  String image)?  $default,) {final _that = this;
switch (_that) {
case _TempleModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TempleModel implements TempleModel {
  const _TempleModel({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'location') this.location = '', @JsonKey(name: 'image') this.image = ''});
  factory _TempleModel.fromJson(Map<String, dynamic> json) => _$TempleModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'location') final  String location;
@override@JsonKey(name: 'image') final  String image;

/// Create a copy of TempleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TempleModelCopyWith<_TempleModel> get copyWith => __$TempleModelCopyWithImpl<_TempleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TempleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TempleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location,image);

@override
String toString() {
  return 'TempleModel(id: $id, name: $name, location: $location, image: $image)';
}


}

/// @nodoc
abstract mixin class _$TempleModelCopyWith<$Res> implements $TempleModelCopyWith<$Res> {
  factory _$TempleModelCopyWith(_TempleModel value, $Res Function(_TempleModel) _then) = __$TempleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'location') String location,@JsonKey(name: 'image') String image
});




}
/// @nodoc
class __$TempleModelCopyWithImpl<$Res>
    implements _$TempleModelCopyWith<$Res> {
  __$TempleModelCopyWithImpl(this._self, this._then);

  final _TempleModel _self;
  final $Res Function(_TempleModel) _then;

/// Create a copy of TempleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? location = null,Object? image = null,}) {
  return _then(_TempleModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DevotionalData {

@JsonKey(name: 'aarti') List<DevotionalItem> get aarti;@JsonKey(name: 'chalisa') List<DevotionalItem> get chalisa;@JsonKey(name: 'mantra') List<DevotionalItem> get mantra;@JsonKey(name: 'bhajan') List<DevotionalItem> get bhajan;@JsonKey(name: 'stuti') List<DevotionalItem> get stuti;@JsonKey(name: 'katha') List<DevotionalItem> get katha;@JsonKey(name: 'other') List<DevotionalItem> get other;
/// Create a copy of DevotionalData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DevotionalDataCopyWith<DevotionalData> get copyWith => _$DevotionalDataCopyWithImpl<DevotionalData>(this as DevotionalData, _$identity);

  /// Serializes this DevotionalData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevotionalData&&const DeepCollectionEquality().equals(other.aarti, aarti)&&const DeepCollectionEquality().equals(other.chalisa, chalisa)&&const DeepCollectionEquality().equals(other.mantra, mantra)&&const DeepCollectionEquality().equals(other.bhajan, bhajan)&&const DeepCollectionEquality().equals(other.stuti, stuti)&&const DeepCollectionEquality().equals(other.katha, katha)&&const DeepCollectionEquality().equals(other.other, this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(aarti),const DeepCollectionEquality().hash(chalisa),const DeepCollectionEquality().hash(mantra),const DeepCollectionEquality().hash(bhajan),const DeepCollectionEquality().hash(stuti),const DeepCollectionEquality().hash(katha),const DeepCollectionEquality().hash(other));

@override
String toString() {
  return 'DevotionalData(aarti: $aarti, chalisa: $chalisa, mantra: $mantra, bhajan: $bhajan, stuti: $stuti, katha: $katha, other: $other)';
}


}

/// @nodoc
abstract mixin class $DevotionalDataCopyWith<$Res>  {
  factory $DevotionalDataCopyWith(DevotionalData value, $Res Function(DevotionalData) _then) = _$DevotionalDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'aarti') List<DevotionalItem> aarti,@JsonKey(name: 'chalisa') List<DevotionalItem> chalisa,@JsonKey(name: 'mantra') List<DevotionalItem> mantra,@JsonKey(name: 'bhajan') List<DevotionalItem> bhajan,@JsonKey(name: 'stuti') List<DevotionalItem> stuti,@JsonKey(name: 'katha') List<DevotionalItem> katha,@JsonKey(name: 'other') List<DevotionalItem> other
});




}
/// @nodoc
class _$DevotionalDataCopyWithImpl<$Res>
    implements $DevotionalDataCopyWith<$Res> {
  _$DevotionalDataCopyWithImpl(this._self, this._then);

  final DevotionalData _self;
  final $Res Function(DevotionalData) _then;

/// Create a copy of DevotionalData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? aarti = null,Object? chalisa = null,Object? mantra = null,Object? bhajan = null,Object? stuti = null,Object? katha = null,Object? other = null,}) {
  return _then(_self.copyWith(
aarti: null == aarti ? _self.aarti : aarti // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,chalisa: null == chalisa ? _self.chalisa : chalisa // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,mantra: null == mantra ? _self.mantra : mantra // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,bhajan: null == bhajan ? _self.bhajan : bhajan // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,stuti: null == stuti ? _self.stuti : stuti // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,katha: null == katha ? _self.katha : katha // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [DevotionalData].
extension DevotionalDataPatterns on DevotionalData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DevotionalData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DevotionalData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DevotionalData value)  $default,){
final _that = this;
switch (_that) {
case _DevotionalData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DevotionalData value)?  $default,){
final _that = this;
switch (_that) {
case _DevotionalData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'aarti')  List<DevotionalItem> aarti, @JsonKey(name: 'chalisa')  List<DevotionalItem> chalisa, @JsonKey(name: 'mantra')  List<DevotionalItem> mantra, @JsonKey(name: 'bhajan')  List<DevotionalItem> bhajan, @JsonKey(name: 'stuti')  List<DevotionalItem> stuti, @JsonKey(name: 'katha')  List<DevotionalItem> katha, @JsonKey(name: 'other')  List<DevotionalItem> other)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DevotionalData() when $default != null:
return $default(_that.aarti,_that.chalisa,_that.mantra,_that.bhajan,_that.stuti,_that.katha,_that.other);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'aarti')  List<DevotionalItem> aarti, @JsonKey(name: 'chalisa')  List<DevotionalItem> chalisa, @JsonKey(name: 'mantra')  List<DevotionalItem> mantra, @JsonKey(name: 'bhajan')  List<DevotionalItem> bhajan, @JsonKey(name: 'stuti')  List<DevotionalItem> stuti, @JsonKey(name: 'katha')  List<DevotionalItem> katha, @JsonKey(name: 'other')  List<DevotionalItem> other)  $default,) {final _that = this;
switch (_that) {
case _DevotionalData():
return $default(_that.aarti,_that.chalisa,_that.mantra,_that.bhajan,_that.stuti,_that.katha,_that.other);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'aarti')  List<DevotionalItem> aarti, @JsonKey(name: 'chalisa')  List<DevotionalItem> chalisa, @JsonKey(name: 'mantra')  List<DevotionalItem> mantra, @JsonKey(name: 'bhajan')  List<DevotionalItem> bhajan, @JsonKey(name: 'stuti')  List<DevotionalItem> stuti, @JsonKey(name: 'katha')  List<DevotionalItem> katha, @JsonKey(name: 'other')  List<DevotionalItem> other)?  $default,) {final _that = this;
switch (_that) {
case _DevotionalData() when $default != null:
return $default(_that.aarti,_that.chalisa,_that.mantra,_that.bhajan,_that.stuti,_that.katha,_that.other);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DevotionalData implements DevotionalData {
  const _DevotionalData({@JsonKey(name: 'aarti') final  List<DevotionalItem> aarti = const <DevotionalItem>[], @JsonKey(name: 'chalisa') final  List<DevotionalItem> chalisa = const <DevotionalItem>[], @JsonKey(name: 'mantra') final  List<DevotionalItem> mantra = const <DevotionalItem>[], @JsonKey(name: 'bhajan') final  List<DevotionalItem> bhajan = const <DevotionalItem>[], @JsonKey(name: 'stuti') final  List<DevotionalItem> stuti = const <DevotionalItem>[], @JsonKey(name: 'katha') final  List<DevotionalItem> katha = const <DevotionalItem>[], @JsonKey(name: 'other') final  List<DevotionalItem> other = const <DevotionalItem>[]}): _aarti = aarti,_chalisa = chalisa,_mantra = mantra,_bhajan = bhajan,_stuti = stuti,_katha = katha,_other = other;
  factory _DevotionalData.fromJson(Map<String, dynamic> json) => _$DevotionalDataFromJson(json);

 final  List<DevotionalItem> _aarti;
@override@JsonKey(name: 'aarti') List<DevotionalItem> get aarti {
  if (_aarti is EqualUnmodifiableListView) return _aarti;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_aarti);
}

 final  List<DevotionalItem> _chalisa;
@override@JsonKey(name: 'chalisa') List<DevotionalItem> get chalisa {
  if (_chalisa is EqualUnmodifiableListView) return _chalisa;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chalisa);
}

 final  List<DevotionalItem> _mantra;
@override@JsonKey(name: 'mantra') List<DevotionalItem> get mantra {
  if (_mantra is EqualUnmodifiableListView) return _mantra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mantra);
}

 final  List<DevotionalItem> _bhajan;
@override@JsonKey(name: 'bhajan') List<DevotionalItem> get bhajan {
  if (_bhajan is EqualUnmodifiableListView) return _bhajan;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bhajan);
}

 final  List<DevotionalItem> _stuti;
@override@JsonKey(name: 'stuti') List<DevotionalItem> get stuti {
  if (_stuti is EqualUnmodifiableListView) return _stuti;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stuti);
}

 final  List<DevotionalItem> _katha;
@override@JsonKey(name: 'katha') List<DevotionalItem> get katha {
  if (_katha is EqualUnmodifiableListView) return _katha;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_katha);
}

 final  List<DevotionalItem> _other;
@override@JsonKey(name: 'other') List<DevotionalItem> get other {
  if (_other is EqualUnmodifiableListView) return _other;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_other);
}


/// Create a copy of DevotionalData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DevotionalDataCopyWith<_DevotionalData> get copyWith => __$DevotionalDataCopyWithImpl<_DevotionalData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DevotionalDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevotionalData&&const DeepCollectionEquality().equals(other._aarti, _aarti)&&const DeepCollectionEquality().equals(other._chalisa, _chalisa)&&const DeepCollectionEquality().equals(other._mantra, _mantra)&&const DeepCollectionEquality().equals(other._bhajan, _bhajan)&&const DeepCollectionEquality().equals(other._stuti, _stuti)&&const DeepCollectionEquality().equals(other._katha, _katha)&&const DeepCollectionEquality().equals(other._other, this._other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_aarti),const DeepCollectionEquality().hash(_chalisa),const DeepCollectionEquality().hash(_mantra),const DeepCollectionEquality().hash(_bhajan),const DeepCollectionEquality().hash(_stuti),const DeepCollectionEquality().hash(_katha),const DeepCollectionEquality().hash(_other));

@override
String toString() {
  return 'DevotionalData(aarti: $aarti, chalisa: $chalisa, mantra: $mantra, bhajan: $bhajan, stuti: $stuti, katha: $katha, other: $other)';
}


}

/// @nodoc
abstract mixin class _$DevotionalDataCopyWith<$Res> implements $DevotionalDataCopyWith<$Res> {
  factory _$DevotionalDataCopyWith(_DevotionalData value, $Res Function(_DevotionalData) _then) = __$DevotionalDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'aarti') List<DevotionalItem> aarti,@JsonKey(name: 'chalisa') List<DevotionalItem> chalisa,@JsonKey(name: 'mantra') List<DevotionalItem> mantra,@JsonKey(name: 'bhajan') List<DevotionalItem> bhajan,@JsonKey(name: 'stuti') List<DevotionalItem> stuti,@JsonKey(name: 'katha') List<DevotionalItem> katha,@JsonKey(name: 'other') List<DevotionalItem> other
});




}
/// @nodoc
class __$DevotionalDataCopyWithImpl<$Res>
    implements _$DevotionalDataCopyWith<$Res> {
  __$DevotionalDataCopyWithImpl(this._self, this._then);

  final _DevotionalData _self;
  final $Res Function(_DevotionalData) _then;

/// Create a copy of DevotionalData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? aarti = null,Object? chalisa = null,Object? mantra = null,Object? bhajan = null,Object? stuti = null,Object? katha = null,Object? other = null,}) {
  return _then(_DevotionalData(
aarti: null == aarti ? _self._aarti : aarti // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,chalisa: null == chalisa ? _self._chalisa : chalisa // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,mantra: null == mantra ? _self._mantra : mantra // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,bhajan: null == bhajan ? _self._bhajan : bhajan // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,stuti: null == stuti ? _self._stuti : stuti // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,katha: null == katha ? _self._katha : katha // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,other: null == other ? _self._other : other // ignore: cast_nullable_to_non_nullable
as List<DevotionalItem>,
  ));
}


}


/// @nodoc
mixin _$VendorSeva {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'slug') String get slug;@JsonKey(name: 'name') String get name;@JsonKey(name: 'lines') List<String> get lines;@JsonKey(name: 'backgroundColor') String get backgroundColor;@JsonKey(name: 'backgroundColorEnd') String get backgroundColorEnd;@JsonKey(name: 'iconUrl') String get iconUrl;@JsonKey(name: 'iconType') String get iconType;@JsonKey(name: 'order') int get order;
/// Create a copy of VendorSeva
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorSevaCopyWith<VendorSeva> get copyWith => _$VendorSevaCopyWithImpl<VendorSeva>(this as VendorSeva, _$identity);

  /// Serializes this VendorSeva to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorSeva&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.lines, lines)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.backgroundColorEnd, backgroundColorEnd) || other.backgroundColorEnd == backgroundColorEnd)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.iconType, iconType) || other.iconType == iconType)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,name,const DeepCollectionEquality().hash(lines),backgroundColor,backgroundColorEnd,iconUrl,iconType,order);

@override
String toString() {
  return 'VendorSeva(id: $id, slug: $slug, name: $name, lines: $lines, backgroundColor: $backgroundColor, backgroundColorEnd: $backgroundColorEnd, iconUrl: $iconUrl, iconType: $iconType, order: $order)';
}


}

/// @nodoc
abstract mixin class $VendorSevaCopyWith<$Res>  {
  factory $VendorSevaCopyWith(VendorSeva value, $Res Function(VendorSeva) _then) = _$VendorSevaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'name') String name,@JsonKey(name: 'lines') List<String> lines,@JsonKey(name: 'backgroundColor') String backgroundColor,@JsonKey(name: 'backgroundColorEnd') String backgroundColorEnd,@JsonKey(name: 'iconUrl') String iconUrl,@JsonKey(name: 'iconType') String iconType,@JsonKey(name: 'order') int order
});




}
/// @nodoc
class _$VendorSevaCopyWithImpl<$Res>
    implements $VendorSevaCopyWith<$Res> {
  _$VendorSevaCopyWithImpl(this._self, this._then);

  final VendorSeva _self;
  final $Res Function(VendorSeva) _then;

/// Create a copy of VendorSeva
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? lines = null,Object? backgroundColor = null,Object? backgroundColorEnd = null,Object? iconUrl = null,Object? iconType = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<String>,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColorEnd: null == backgroundColorEnd ? _self.backgroundColorEnd : backgroundColorEnd // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,iconType: null == iconType ? _self.iconType : iconType // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorSeva].
extension VendorSevaPatterns on VendorSeva {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorSeva value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorSeva() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorSeva value)  $default,){
final _that = this;
switch (_that) {
case _VendorSeva():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorSeva value)?  $default,){
final _that = this;
switch (_that) {
case _VendorSeva() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'name')  String name, @JsonKey(name: 'lines')  List<String> lines, @JsonKey(name: 'backgroundColor')  String backgroundColor, @JsonKey(name: 'backgroundColorEnd')  String backgroundColorEnd, @JsonKey(name: 'iconUrl')  String iconUrl, @JsonKey(name: 'iconType')  String iconType, @JsonKey(name: 'order')  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorSeva() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.lines,_that.backgroundColor,_that.backgroundColorEnd,_that.iconUrl,_that.iconType,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'name')  String name, @JsonKey(name: 'lines')  List<String> lines, @JsonKey(name: 'backgroundColor')  String backgroundColor, @JsonKey(name: 'backgroundColorEnd')  String backgroundColorEnd, @JsonKey(name: 'iconUrl')  String iconUrl, @JsonKey(name: 'iconType')  String iconType, @JsonKey(name: 'order')  int order)  $default,) {final _that = this;
switch (_that) {
case _VendorSeva():
return $default(_that.id,_that.slug,_that.name,_that.lines,_that.backgroundColor,_that.backgroundColorEnd,_that.iconUrl,_that.iconType,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'name')  String name, @JsonKey(name: 'lines')  List<String> lines, @JsonKey(name: 'backgroundColor')  String backgroundColor, @JsonKey(name: 'backgroundColorEnd')  String backgroundColorEnd, @JsonKey(name: 'iconUrl')  String iconUrl, @JsonKey(name: 'iconType')  String iconType, @JsonKey(name: 'order')  int order)?  $default,) {final _that = this;
switch (_that) {
case _VendorSeva() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.lines,_that.backgroundColor,_that.backgroundColorEnd,_that.iconUrl,_that.iconType,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorSeva implements VendorSeva {
  const _VendorSeva({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'slug') this.slug = '', @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'lines') final  List<String> lines = const <String>[], @JsonKey(name: 'backgroundColor') this.backgroundColor = '', @JsonKey(name: 'backgroundColorEnd') this.backgroundColorEnd = '', @JsonKey(name: 'iconUrl') this.iconUrl = '', @JsonKey(name: 'iconType') this.iconType = '', @JsonKey(name: 'order') this.order = 0}): _lines = lines;
  factory _VendorSeva.fromJson(Map<String, dynamic> json) => _$VendorSevaFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'slug') final  String slug;
@override@JsonKey(name: 'name') final  String name;
 final  List<String> _lines;
@override@JsonKey(name: 'lines') List<String> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey(name: 'backgroundColor') final  String backgroundColor;
@override@JsonKey(name: 'backgroundColorEnd') final  String backgroundColorEnd;
@override@JsonKey(name: 'iconUrl') final  String iconUrl;
@override@JsonKey(name: 'iconType') final  String iconType;
@override@JsonKey(name: 'order') final  int order;

/// Create a copy of VendorSeva
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorSevaCopyWith<_VendorSeva> get copyWith => __$VendorSevaCopyWithImpl<_VendorSeva>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorSevaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorSeva&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.backgroundColorEnd, backgroundColorEnd) || other.backgroundColorEnd == backgroundColorEnd)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.iconType, iconType) || other.iconType == iconType)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,name,const DeepCollectionEquality().hash(_lines),backgroundColor,backgroundColorEnd,iconUrl,iconType,order);

@override
String toString() {
  return 'VendorSeva(id: $id, slug: $slug, name: $name, lines: $lines, backgroundColor: $backgroundColor, backgroundColorEnd: $backgroundColorEnd, iconUrl: $iconUrl, iconType: $iconType, order: $order)';
}


}

/// @nodoc
abstract mixin class _$VendorSevaCopyWith<$Res> implements $VendorSevaCopyWith<$Res> {
  factory _$VendorSevaCopyWith(_VendorSeva value, $Res Function(_VendorSeva) _then) = __$VendorSevaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'name') String name,@JsonKey(name: 'lines') List<String> lines,@JsonKey(name: 'backgroundColor') String backgroundColor,@JsonKey(name: 'backgroundColorEnd') String backgroundColorEnd,@JsonKey(name: 'iconUrl') String iconUrl,@JsonKey(name: 'iconType') String iconType,@JsonKey(name: 'order') int order
});




}
/// @nodoc
class __$VendorSevaCopyWithImpl<$Res>
    implements _$VendorSevaCopyWith<$Res> {
  __$VendorSevaCopyWithImpl(this._self, this._then);

  final _VendorSeva _self;
  final $Res Function(_VendorSeva) _then;

/// Create a copy of VendorSeva
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? lines = null,Object? backgroundColor = null,Object? backgroundColorEnd = null,Object? iconUrl = null,Object? iconType = null,Object? order = null,}) {
  return _then(_VendorSeva(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<String>,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColorEnd: null == backgroundColorEnd ? _self.backgroundColorEnd : backgroundColorEnd // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,iconType: null == iconType ? _self.iconType : iconType // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
