// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sant_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SantListResponse {

@JsonKey(name: "success") bool get success;@JsonKey(name: "total") int get total;@JsonKey(name: "data") List<Sant> get data;
/// Create a copy of SantListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SantListResponseCopyWith<SantListResponse> get copyWith => _$SantListResponseCopyWithImpl<SantListResponse>(this as SantListResponse, _$identity);

  /// Serializes this SantListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SantListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,total,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SantListResponse(success: $success, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class $SantListResponseCopyWith<$Res>  {
  factory $SantListResponseCopyWith(SantListResponse value, $Res Function(SantListResponse) _then) = _$SantListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "total") int total,@JsonKey(name: "data") List<Sant> data
});




}
/// @nodoc
class _$SantListResponseCopyWithImpl<$Res>
    implements $SantListResponseCopyWith<$Res> {
  _$SantListResponseCopyWithImpl(this._self, this._then);

  final SantListResponse _self;
  final $Res Function(SantListResponse) _then;

/// Create a copy of SantListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? total = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Sant>,
  ));
}

}


/// Adds pattern-matching-related methods to [SantListResponse].
extension SantListResponsePatterns on SantListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SantListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SantListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SantListResponse value)  $default,){
final _that = this;
switch (_that) {
case _SantListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SantListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SantListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<Sant> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SantListResponse() when $default != null:
return $default(_that.success,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<Sant> data)  $default,) {final _that = this;
switch (_that) {
case _SantListResponse():
return $default(_that.success,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<Sant> data)?  $default,) {final _that = this;
switch (_that) {
case _SantListResponse() when $default != null:
return $default(_that.success,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SantListResponse implements SantListResponse {
  const _SantListResponse({@JsonKey(name: "success") this.success = false, @JsonKey(name: "total") this.total = 0, @JsonKey(name: "data") final  List<Sant> data = const <Sant>[]}): _data = data;
  factory _SantListResponse.fromJson(Map<String, dynamic> json) => _$SantListResponseFromJson(json);

@override@JsonKey(name: "success") final  bool success;
@override@JsonKey(name: "total") final  int total;
 final  List<Sant> _data;
@override@JsonKey(name: "data") List<Sant> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of SantListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SantListResponseCopyWith<_SantListResponse> get copyWith => __$SantListResponseCopyWithImpl<_SantListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SantListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SantListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,total,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'SantListResponse(success: $success, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SantListResponseCopyWith<$Res> implements $SantListResponseCopyWith<$Res> {
  factory _$SantListResponseCopyWith(_SantListResponse value, $Res Function(_SantListResponse) _then) = __$SantListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "total") int total,@JsonKey(name: "data") List<Sant> data
});




}
/// @nodoc
class __$SantListResponseCopyWithImpl<$Res>
    implements _$SantListResponseCopyWith<$Res> {
  __$SantListResponseCopyWithImpl(this._self, this._then);

  final _SantListResponse _self;
  final $Res Function(_SantListResponse) _then;

/// Create a copy of SantListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? total = null,Object? data = null,}) {
  return _then(_SantListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Sant>,
  ));
}


}


/// @nodoc
mixin _$Sant {

@JsonKey(name: "_id") String get id;@JsonKey(name: "name") String get name;@JsonKey(name: "dob") String get dob;@JsonKey(name: "isAddedInWishlist") bool get isAddedInWishlist;@JsonKey(name: "city") String get city;@JsonKey(name: "state") String get state;@JsonKey(name: "dob_place") String get dobPlace;@JsonKey(name: "birthPlace") String get birthPlace;@JsonKey(name: "guru") String get guru;@JsonKey(name: "about") String get about;@JsonKey(name: "designation") String get designation;@JsonKey(name: "education") String get education;@JsonKey(name: "aashram") String get aashram;@JsonKey(name: "ashram") List<String> get ashram;@JsonKey(name: "specialist") String get specialist;@JsonKey(name: "experience_years") num get experienceYears;@JsonKey(name: "followers_count") num get followersCount;@JsonKey(name: "location") String get location;@JsonKey(name: "mobile") String get mobile;@JsonKey(name: "email") String get email;@JsonKey(name: "website") String get website;@JsonKey(name: "social_links") SocialLinks get socialLinks;@JsonKey(name: "image") String get image;@JsonKey(name: "thumbnailImage") String get thumbnailImage;@JsonKey(name: "images") List<String> get images;@JsonKey(name: "videoLink") String get videoLink;@JsonKey(name: "relatedGods") List<String> get relatedGods;@JsonKey(name: "relatedTeachings") List<String> get relatedTeachings;@JsonKey(name: "status") String get status;@JsonKey(name: "createdAt") String get createdAt;@JsonKey(name: "updatedAt") String get updatedAt;
/// Create a copy of Sant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SantCopyWith<Sant> get copyWith => _$SantCopyWithImpl<Sant>(this as Sant, _$identity);

  /// Serializes this Sant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.dobPlace, dobPlace) || other.dobPlace == dobPlace)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.guru, guru) || other.guru == guru)&&(identical(other.about, about) || other.about == about)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.education, education) || other.education == education)&&(identical(other.aashram, aashram) || other.aashram == aashram)&&const DeepCollectionEquality().equals(other.ashram, ashram)&&(identical(other.specialist, specialist) || other.specialist == specialist)&&(identical(other.experienceYears, experienceYears) || other.experienceYears == experienceYears)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount)&&(identical(other.location, location) || other.location == location)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.email, email) || other.email == email)&&(identical(other.website, website) || other.website == website)&&(identical(other.socialLinks, socialLinks) || other.socialLinks == socialLinks)&&(identical(other.image, image) || other.image == image)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.videoLink, videoLink) || other.videoLink == videoLink)&&const DeepCollectionEquality().equals(other.relatedGods, relatedGods)&&const DeepCollectionEquality().equals(other.relatedTeachings, relatedTeachings)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,dob,isAddedInWishlist,city,state,dobPlace,birthPlace,guru,about,designation,education,aashram,const DeepCollectionEquality().hash(ashram),specialist,experienceYears,followersCount,location,mobile,email,website,socialLinks,image,thumbnailImage,const DeepCollectionEquality().hash(images),videoLink,const DeepCollectionEquality().hash(relatedGods),const DeepCollectionEquality().hash(relatedTeachings),status,createdAt,updatedAt]);

@override
String toString() {
  return 'Sant(id: $id, name: $name, dob: $dob, isAddedInWishlist: $isAddedInWishlist, city: $city, state: $state, dobPlace: $dobPlace, birthPlace: $birthPlace, guru: $guru, about: $about, designation: $designation, education: $education, aashram: $aashram, ashram: $ashram, specialist: $specialist, experienceYears: $experienceYears, followersCount: $followersCount, location: $location, mobile: $mobile, email: $email, website: $website, socialLinks: $socialLinks, image: $image, thumbnailImage: $thumbnailImage, images: $images, videoLink: $videoLink, relatedGods: $relatedGods, relatedTeachings: $relatedTeachings, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SantCopyWith<$Res>  {
  factory $SantCopyWith(Sant value, $Res Function(Sant) _then) = _$SantCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "dob") String dob,@JsonKey(name: "isAddedInWishlist") bool isAddedInWishlist,@JsonKey(name: "city") String city,@JsonKey(name: "state") String state,@JsonKey(name: "dob_place") String dobPlace,@JsonKey(name: "birthPlace") String birthPlace,@JsonKey(name: "guru") String guru,@JsonKey(name: "about") String about,@JsonKey(name: "designation") String designation,@JsonKey(name: "education") String education,@JsonKey(name: "aashram") String aashram,@JsonKey(name: "ashram") List<String> ashram,@JsonKey(name: "specialist") String specialist,@JsonKey(name: "experience_years") num experienceYears,@JsonKey(name: "followers_count") num followersCount,@JsonKey(name: "location") String location,@JsonKey(name: "mobile") String mobile,@JsonKey(name: "email") String email,@JsonKey(name: "website") String website,@JsonKey(name: "social_links") SocialLinks socialLinks,@JsonKey(name: "image") String image,@JsonKey(name: "thumbnailImage") String thumbnailImage,@JsonKey(name: "images") List<String> images,@JsonKey(name: "videoLink") String videoLink,@JsonKey(name: "relatedGods") List<String> relatedGods,@JsonKey(name: "relatedTeachings") List<String> relatedTeachings,@JsonKey(name: "status") String status,@JsonKey(name: "createdAt") String createdAt,@JsonKey(name: "updatedAt") String updatedAt
});


$SocialLinksCopyWith<$Res> get socialLinks;

}
/// @nodoc
class _$SantCopyWithImpl<$Res>
    implements $SantCopyWith<$Res> {
  _$SantCopyWithImpl(this._self, this._then);

  final Sant _self;
  final $Res Function(Sant) _then;

/// Create a copy of Sant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? dob = null,Object? isAddedInWishlist = null,Object? city = null,Object? state = null,Object? dobPlace = null,Object? birthPlace = null,Object? guru = null,Object? about = null,Object? designation = null,Object? education = null,Object? aashram = null,Object? ashram = null,Object? specialist = null,Object? experienceYears = null,Object? followersCount = null,Object? location = null,Object? mobile = null,Object? email = null,Object? website = null,Object? socialLinks = null,Object? image = null,Object? thumbnailImage = null,Object? images = null,Object? videoLink = null,Object? relatedGods = null,Object? relatedTeachings = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,dobPlace: null == dobPlace ? _self.dobPlace : dobPlace // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,guru: null == guru ? _self.guru : guru // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,designation: null == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String,aashram: null == aashram ? _self.aashram : aashram // ignore: cast_nullable_to_non_nullable
as String,ashram: null == ashram ? _self.ashram : ashram // ignore: cast_nullable_to_non_nullable
as List<String>,specialist: null == specialist ? _self.specialist : specialist // ignore: cast_nullable_to_non_nullable
as String,experienceYears: null == experienceYears ? _self.experienceYears : experienceYears // ignore: cast_nullable_to_non_nullable
as num,followersCount: null == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as num,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,website: null == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String,socialLinks: null == socialLinks ? _self.socialLinks : socialLinks // ignore: cast_nullable_to_non_nullable
as SocialLinks,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,thumbnailImage: null == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,videoLink: null == videoLink ? _self.videoLink : videoLink // ignore: cast_nullable_to_non_nullable
as String,relatedGods: null == relatedGods ? _self.relatedGods : relatedGods // ignore: cast_nullable_to_non_nullable
as List<String>,relatedTeachings: null == relatedTeachings ? _self.relatedTeachings : relatedTeachings // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Sant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialLinksCopyWith<$Res> get socialLinks {
  
  return $SocialLinksCopyWith<$Res>(_self.socialLinks, (value) {
    return _then(_self.copyWith(socialLinks: value));
  });
}
}


/// Adds pattern-matching-related methods to [Sant].
extension SantPatterns on Sant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sant value)  $default,){
final _that = this;
switch (_that) {
case _Sant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sant value)?  $default,){
final _that = this;
switch (_that) {
case _Sant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "dob")  String dob, @JsonKey(name: "isAddedInWishlist")  bool isAddedInWishlist, @JsonKey(name: "city")  String city, @JsonKey(name: "state")  String state, @JsonKey(name: "dob_place")  String dobPlace, @JsonKey(name: "birthPlace")  String birthPlace, @JsonKey(name: "guru")  String guru, @JsonKey(name: "about")  String about, @JsonKey(name: "designation")  String designation, @JsonKey(name: "education")  String education, @JsonKey(name: "aashram")  String aashram, @JsonKey(name: "ashram")  List<String> ashram, @JsonKey(name: "specialist")  String specialist, @JsonKey(name: "experience_years")  num experienceYears, @JsonKey(name: "followers_count")  num followersCount, @JsonKey(name: "location")  String location, @JsonKey(name: "mobile")  String mobile, @JsonKey(name: "email")  String email, @JsonKey(name: "website")  String website, @JsonKey(name: "social_links")  SocialLinks socialLinks, @JsonKey(name: "image")  String image, @JsonKey(name: "thumbnailImage")  String thumbnailImage, @JsonKey(name: "images")  List<String> images, @JsonKey(name: "videoLink")  String videoLink, @JsonKey(name: "relatedGods")  List<String> relatedGods, @JsonKey(name: "relatedTeachings")  List<String> relatedTeachings, @JsonKey(name: "status")  String status, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "updatedAt")  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sant() when $default != null:
return $default(_that.id,_that.name,_that.dob,_that.isAddedInWishlist,_that.city,_that.state,_that.dobPlace,_that.birthPlace,_that.guru,_that.about,_that.designation,_that.education,_that.aashram,_that.ashram,_that.specialist,_that.experienceYears,_that.followersCount,_that.location,_that.mobile,_that.email,_that.website,_that.socialLinks,_that.image,_that.thumbnailImage,_that.images,_that.videoLink,_that.relatedGods,_that.relatedTeachings,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "dob")  String dob, @JsonKey(name: "isAddedInWishlist")  bool isAddedInWishlist, @JsonKey(name: "city")  String city, @JsonKey(name: "state")  String state, @JsonKey(name: "dob_place")  String dobPlace, @JsonKey(name: "birthPlace")  String birthPlace, @JsonKey(name: "guru")  String guru, @JsonKey(name: "about")  String about, @JsonKey(name: "designation")  String designation, @JsonKey(name: "education")  String education, @JsonKey(name: "aashram")  String aashram, @JsonKey(name: "ashram")  List<String> ashram, @JsonKey(name: "specialist")  String specialist, @JsonKey(name: "experience_years")  num experienceYears, @JsonKey(name: "followers_count")  num followersCount, @JsonKey(name: "location")  String location, @JsonKey(name: "mobile")  String mobile, @JsonKey(name: "email")  String email, @JsonKey(name: "website")  String website, @JsonKey(name: "social_links")  SocialLinks socialLinks, @JsonKey(name: "image")  String image, @JsonKey(name: "thumbnailImage")  String thumbnailImage, @JsonKey(name: "images")  List<String> images, @JsonKey(name: "videoLink")  String videoLink, @JsonKey(name: "relatedGods")  List<String> relatedGods, @JsonKey(name: "relatedTeachings")  List<String> relatedTeachings, @JsonKey(name: "status")  String status, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "updatedAt")  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Sant():
return $default(_that.id,_that.name,_that.dob,_that.isAddedInWishlist,_that.city,_that.state,_that.dobPlace,_that.birthPlace,_that.guru,_that.about,_that.designation,_that.education,_that.aashram,_that.ashram,_that.specialist,_that.experienceYears,_that.followersCount,_that.location,_that.mobile,_that.email,_that.website,_that.socialLinks,_that.image,_that.thumbnailImage,_that.images,_that.videoLink,_that.relatedGods,_that.relatedTeachings,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "dob")  String dob, @JsonKey(name: "isAddedInWishlist")  bool isAddedInWishlist, @JsonKey(name: "city")  String city, @JsonKey(name: "state")  String state, @JsonKey(name: "dob_place")  String dobPlace, @JsonKey(name: "birthPlace")  String birthPlace, @JsonKey(name: "guru")  String guru, @JsonKey(name: "about")  String about, @JsonKey(name: "designation")  String designation, @JsonKey(name: "education")  String education, @JsonKey(name: "aashram")  String aashram, @JsonKey(name: "ashram")  List<String> ashram, @JsonKey(name: "specialist")  String specialist, @JsonKey(name: "experience_years")  num experienceYears, @JsonKey(name: "followers_count")  num followersCount, @JsonKey(name: "location")  String location, @JsonKey(name: "mobile")  String mobile, @JsonKey(name: "email")  String email, @JsonKey(name: "website")  String website, @JsonKey(name: "social_links")  SocialLinks socialLinks, @JsonKey(name: "image")  String image, @JsonKey(name: "thumbnailImage")  String thumbnailImage, @JsonKey(name: "images")  List<String> images, @JsonKey(name: "videoLink")  String videoLink, @JsonKey(name: "relatedGods")  List<String> relatedGods, @JsonKey(name: "relatedTeachings")  List<String> relatedTeachings, @JsonKey(name: "status")  String status, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "updatedAt")  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Sant() when $default != null:
return $default(_that.id,_that.name,_that.dob,_that.isAddedInWishlist,_that.city,_that.state,_that.dobPlace,_that.birthPlace,_that.guru,_that.about,_that.designation,_that.education,_that.aashram,_that.ashram,_that.specialist,_that.experienceYears,_that.followersCount,_that.location,_that.mobile,_that.email,_that.website,_that.socialLinks,_that.image,_that.thumbnailImage,_that.images,_that.videoLink,_that.relatedGods,_that.relatedTeachings,_that.status,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sant implements Sant {
  const _Sant({@JsonKey(name: "_id") this.id = "", @JsonKey(name: "name") this.name = "", @JsonKey(name: "dob") this.dob = "", @JsonKey(name: "isAddedInWishlist") this.isAddedInWishlist = false, @JsonKey(name: "city") this.city = "", @JsonKey(name: "state") this.state = "", @JsonKey(name: "dob_place") this.dobPlace = "", @JsonKey(name: "birthPlace") this.birthPlace = "", @JsonKey(name: "guru") this.guru = "", @JsonKey(name: "about") this.about = "", @JsonKey(name: "designation") this.designation = "", @JsonKey(name: "education") this.education = "", @JsonKey(name: "aashram") this.aashram = "", @JsonKey(name: "ashram") final  List<String> ashram = const <String>[], @JsonKey(name: "specialist") this.specialist = "", @JsonKey(name: "experience_years") this.experienceYears = 0, @JsonKey(name: "followers_count") this.followersCount = 0, @JsonKey(name: "location") this.location = "", @JsonKey(name: "mobile") this.mobile = "", @JsonKey(name: "email") this.email = "", @JsonKey(name: "website") this.website = "", @JsonKey(name: "social_links") this.socialLinks = const SocialLinks(), @JsonKey(name: "image") this.image = "", @JsonKey(name: "thumbnailImage") this.thumbnailImage = "", @JsonKey(name: "images") final  List<String> images = const <String>[], @JsonKey(name: "videoLink") this.videoLink = "", @JsonKey(name: "relatedGods") final  List<String> relatedGods = const <String>[], @JsonKey(name: "relatedTeachings") final  List<String> relatedTeachings = const <String>[], @JsonKey(name: "status") this.status = "", @JsonKey(name: "createdAt") this.createdAt = "", @JsonKey(name: "updatedAt") this.updatedAt = ""}): _ashram = ashram,_images = images,_relatedGods = relatedGods,_relatedTeachings = relatedTeachings;
  factory _Sant.fromJson(Map<String, dynamic> json) => _$SantFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "dob") final  String dob;
@override@JsonKey(name: "isAddedInWishlist") final  bool isAddedInWishlist;
@override@JsonKey(name: "city") final  String city;
@override@JsonKey(name: "state") final  String state;
@override@JsonKey(name: "dob_place") final  String dobPlace;
@override@JsonKey(name: "birthPlace") final  String birthPlace;
@override@JsonKey(name: "guru") final  String guru;
@override@JsonKey(name: "about") final  String about;
@override@JsonKey(name: "designation") final  String designation;
@override@JsonKey(name: "education") final  String education;
@override@JsonKey(name: "aashram") final  String aashram;
 final  List<String> _ashram;
@override@JsonKey(name: "ashram") List<String> get ashram {
  if (_ashram is EqualUnmodifiableListView) return _ashram;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ashram);
}

@override@JsonKey(name: "specialist") final  String specialist;
@override@JsonKey(name: "experience_years") final  num experienceYears;
@override@JsonKey(name: "followers_count") final  num followersCount;
@override@JsonKey(name: "location") final  String location;
@override@JsonKey(name: "mobile") final  String mobile;
@override@JsonKey(name: "email") final  String email;
@override@JsonKey(name: "website") final  String website;
@override@JsonKey(name: "social_links") final  SocialLinks socialLinks;
@override@JsonKey(name: "image") final  String image;
@override@JsonKey(name: "thumbnailImage") final  String thumbnailImage;
 final  List<String> _images;
@override@JsonKey(name: "images") List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey(name: "videoLink") final  String videoLink;
 final  List<String> _relatedGods;
@override@JsonKey(name: "relatedGods") List<String> get relatedGods {
  if (_relatedGods is EqualUnmodifiableListView) return _relatedGods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedGods);
}

 final  List<String> _relatedTeachings;
@override@JsonKey(name: "relatedTeachings") List<String> get relatedTeachings {
  if (_relatedTeachings is EqualUnmodifiableListView) return _relatedTeachings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedTeachings);
}

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "createdAt") final  String createdAt;
@override@JsonKey(name: "updatedAt") final  String updatedAt;

/// Create a copy of Sant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SantCopyWith<_Sant> get copyWith => __$SantCopyWithImpl<_Sant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.dobPlace, dobPlace) || other.dobPlace == dobPlace)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.guru, guru) || other.guru == guru)&&(identical(other.about, about) || other.about == about)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.education, education) || other.education == education)&&(identical(other.aashram, aashram) || other.aashram == aashram)&&const DeepCollectionEquality().equals(other._ashram, _ashram)&&(identical(other.specialist, specialist) || other.specialist == specialist)&&(identical(other.experienceYears, experienceYears) || other.experienceYears == experienceYears)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount)&&(identical(other.location, location) || other.location == location)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.email, email) || other.email == email)&&(identical(other.website, website) || other.website == website)&&(identical(other.socialLinks, socialLinks) || other.socialLinks == socialLinks)&&(identical(other.image, image) || other.image == image)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.videoLink, videoLink) || other.videoLink == videoLink)&&const DeepCollectionEquality().equals(other._relatedGods, _relatedGods)&&const DeepCollectionEquality().equals(other._relatedTeachings, _relatedTeachings)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,dob,isAddedInWishlist,city,state,dobPlace,birthPlace,guru,about,designation,education,aashram,const DeepCollectionEquality().hash(_ashram),specialist,experienceYears,followersCount,location,mobile,email,website,socialLinks,image,thumbnailImage,const DeepCollectionEquality().hash(_images),videoLink,const DeepCollectionEquality().hash(_relatedGods),const DeepCollectionEquality().hash(_relatedTeachings),status,createdAt,updatedAt]);

@override
String toString() {
  return 'Sant(id: $id, name: $name, dob: $dob, isAddedInWishlist: $isAddedInWishlist, city: $city, state: $state, dobPlace: $dobPlace, birthPlace: $birthPlace, guru: $guru, about: $about, designation: $designation, education: $education, aashram: $aashram, ashram: $ashram, specialist: $specialist, experienceYears: $experienceYears, followersCount: $followersCount, location: $location, mobile: $mobile, email: $email, website: $website, socialLinks: $socialLinks, image: $image, thumbnailImage: $thumbnailImage, images: $images, videoLink: $videoLink, relatedGods: $relatedGods, relatedTeachings: $relatedTeachings, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SantCopyWith<$Res> implements $SantCopyWith<$Res> {
  factory _$SantCopyWith(_Sant value, $Res Function(_Sant) _then) = __$SantCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "dob") String dob,@JsonKey(name: "isAddedInWishlist") bool isAddedInWishlist,@JsonKey(name: "city") String city,@JsonKey(name: "state") String state,@JsonKey(name: "dob_place") String dobPlace,@JsonKey(name: "birthPlace") String birthPlace,@JsonKey(name: "guru") String guru,@JsonKey(name: "about") String about,@JsonKey(name: "designation") String designation,@JsonKey(name: "education") String education,@JsonKey(name: "aashram") String aashram,@JsonKey(name: "ashram") List<String> ashram,@JsonKey(name: "specialist") String specialist,@JsonKey(name: "experience_years") num experienceYears,@JsonKey(name: "followers_count") num followersCount,@JsonKey(name: "location") String location,@JsonKey(name: "mobile") String mobile,@JsonKey(name: "email") String email,@JsonKey(name: "website") String website,@JsonKey(name: "social_links") SocialLinks socialLinks,@JsonKey(name: "image") String image,@JsonKey(name: "thumbnailImage") String thumbnailImage,@JsonKey(name: "images") List<String> images,@JsonKey(name: "videoLink") String videoLink,@JsonKey(name: "relatedGods") List<String> relatedGods,@JsonKey(name: "relatedTeachings") List<String> relatedTeachings,@JsonKey(name: "status") String status,@JsonKey(name: "createdAt") String createdAt,@JsonKey(name: "updatedAt") String updatedAt
});


@override $SocialLinksCopyWith<$Res> get socialLinks;

}
/// @nodoc
class __$SantCopyWithImpl<$Res>
    implements _$SantCopyWith<$Res> {
  __$SantCopyWithImpl(this._self, this._then);

  final _Sant _self;
  final $Res Function(_Sant) _then;

/// Create a copy of Sant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? dob = null,Object? isAddedInWishlist = null,Object? city = null,Object? state = null,Object? dobPlace = null,Object? birthPlace = null,Object? guru = null,Object? about = null,Object? designation = null,Object? education = null,Object? aashram = null,Object? ashram = null,Object? specialist = null,Object? experienceYears = null,Object? followersCount = null,Object? location = null,Object? mobile = null,Object? email = null,Object? website = null,Object? socialLinks = null,Object? image = null,Object? thumbnailImage = null,Object? images = null,Object? videoLink = null,Object? relatedGods = null,Object? relatedTeachings = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Sant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,dobPlace: null == dobPlace ? _self.dobPlace : dobPlace // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,guru: null == guru ? _self.guru : guru // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,designation: null == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String,aashram: null == aashram ? _self.aashram : aashram // ignore: cast_nullable_to_non_nullable
as String,ashram: null == ashram ? _self._ashram : ashram // ignore: cast_nullable_to_non_nullable
as List<String>,specialist: null == specialist ? _self.specialist : specialist // ignore: cast_nullable_to_non_nullable
as String,experienceYears: null == experienceYears ? _self.experienceYears : experienceYears // ignore: cast_nullable_to_non_nullable
as num,followersCount: null == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as num,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,website: null == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String,socialLinks: null == socialLinks ? _self.socialLinks : socialLinks // ignore: cast_nullable_to_non_nullable
as SocialLinks,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,thumbnailImage: null == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,videoLink: null == videoLink ? _self.videoLink : videoLink // ignore: cast_nullable_to_non_nullable
as String,relatedGods: null == relatedGods ? _self._relatedGods : relatedGods // ignore: cast_nullable_to_non_nullable
as List<String>,relatedTeachings: null == relatedTeachings ? _self._relatedTeachings : relatedTeachings // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Sant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialLinksCopyWith<$Res> get socialLinks {
  
  return $SocialLinksCopyWith<$Res>(_self.socialLinks, (value) {
    return _then(_self.copyWith(socialLinks: value));
  });
}
}


/// @nodoc
mixin _$SocialLinks {

@JsonKey(name: "facebook") String get facebook;@JsonKey(name: "instagram") String get instagram;@JsonKey(name: "x_twitter") String get xTwitter;@JsonKey(name: "youtube") String get youtube;
/// Create a copy of SocialLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialLinksCopyWith<SocialLinks> get copyWith => _$SocialLinksCopyWithImpl<SocialLinks>(this as SocialLinks, _$identity);

  /// Serializes this SocialLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialLinks&&(identical(other.facebook, facebook) || other.facebook == facebook)&&(identical(other.instagram, instagram) || other.instagram == instagram)&&(identical(other.xTwitter, xTwitter) || other.xTwitter == xTwitter)&&(identical(other.youtube, youtube) || other.youtube == youtube));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,facebook,instagram,xTwitter,youtube);

@override
String toString() {
  return 'SocialLinks(facebook: $facebook, instagram: $instagram, xTwitter: $xTwitter, youtube: $youtube)';
}


}

/// @nodoc
abstract mixin class $SocialLinksCopyWith<$Res>  {
  factory $SocialLinksCopyWith(SocialLinks value, $Res Function(SocialLinks) _then) = _$SocialLinksCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "facebook") String facebook,@JsonKey(name: "instagram") String instagram,@JsonKey(name: "x_twitter") String xTwitter,@JsonKey(name: "youtube") String youtube
});




}
/// @nodoc
class _$SocialLinksCopyWithImpl<$Res>
    implements $SocialLinksCopyWith<$Res> {
  _$SocialLinksCopyWithImpl(this._self, this._then);

  final SocialLinks _self;
  final $Res Function(SocialLinks) _then;

/// Create a copy of SocialLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? facebook = null,Object? instagram = null,Object? xTwitter = null,Object? youtube = null,}) {
  return _then(_self.copyWith(
facebook: null == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String,instagram: null == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String,xTwitter: null == xTwitter ? _self.xTwitter : xTwitter // ignore: cast_nullable_to_non_nullable
as String,youtube: null == youtube ? _self.youtube : youtube // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialLinks].
extension SocialLinksPatterns on SocialLinks {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialLinks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialLinks() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialLinks value)  $default,){
final _that = this;
switch (_that) {
case _SocialLinks():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialLinks value)?  $default,){
final _that = this;
switch (_that) {
case _SocialLinks() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "facebook")  String facebook, @JsonKey(name: "instagram")  String instagram, @JsonKey(name: "x_twitter")  String xTwitter, @JsonKey(name: "youtube")  String youtube)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialLinks() when $default != null:
return $default(_that.facebook,_that.instagram,_that.xTwitter,_that.youtube);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "facebook")  String facebook, @JsonKey(name: "instagram")  String instagram, @JsonKey(name: "x_twitter")  String xTwitter, @JsonKey(name: "youtube")  String youtube)  $default,) {final _that = this;
switch (_that) {
case _SocialLinks():
return $default(_that.facebook,_that.instagram,_that.xTwitter,_that.youtube);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "facebook")  String facebook, @JsonKey(name: "instagram")  String instagram, @JsonKey(name: "x_twitter")  String xTwitter, @JsonKey(name: "youtube")  String youtube)?  $default,) {final _that = this;
switch (_that) {
case _SocialLinks() when $default != null:
return $default(_that.facebook,_that.instagram,_that.xTwitter,_that.youtube);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialLinks implements SocialLinks {
  const _SocialLinks({@JsonKey(name: "facebook") this.facebook = "", @JsonKey(name: "instagram") this.instagram = "", @JsonKey(name: "x_twitter") this.xTwitter = "", @JsonKey(name: "youtube") this.youtube = ""});
  factory _SocialLinks.fromJson(Map<String, dynamic> json) => _$SocialLinksFromJson(json);

@override@JsonKey(name: "facebook") final  String facebook;
@override@JsonKey(name: "instagram") final  String instagram;
@override@JsonKey(name: "x_twitter") final  String xTwitter;
@override@JsonKey(name: "youtube") final  String youtube;

/// Create a copy of SocialLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialLinksCopyWith<_SocialLinks> get copyWith => __$SocialLinksCopyWithImpl<_SocialLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialLinks&&(identical(other.facebook, facebook) || other.facebook == facebook)&&(identical(other.instagram, instagram) || other.instagram == instagram)&&(identical(other.xTwitter, xTwitter) || other.xTwitter == xTwitter)&&(identical(other.youtube, youtube) || other.youtube == youtube));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,facebook,instagram,xTwitter,youtube);

@override
String toString() {
  return 'SocialLinks(facebook: $facebook, instagram: $instagram, xTwitter: $xTwitter, youtube: $youtube)';
}


}

/// @nodoc
abstract mixin class _$SocialLinksCopyWith<$Res> implements $SocialLinksCopyWith<$Res> {
  factory _$SocialLinksCopyWith(_SocialLinks value, $Res Function(_SocialLinks) _then) = __$SocialLinksCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "facebook") String facebook,@JsonKey(name: "instagram") String instagram,@JsonKey(name: "x_twitter") String xTwitter,@JsonKey(name: "youtube") String youtube
});




}
/// @nodoc
class __$SocialLinksCopyWithImpl<$Res>
    implements _$SocialLinksCopyWith<$Res> {
  __$SocialLinksCopyWithImpl(this._self, this._then);

  final _SocialLinks _self;
  final $Res Function(_SocialLinks) _then;

/// Create a copy of SocialLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? facebook = null,Object? instagram = null,Object? xTwitter = null,Object? youtube = null,}) {
  return _then(_SocialLinks(
facebook: null == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String,instagram: null == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String,xTwitter: null == xTwitter ? _self.xTwitter : xTwitter // ignore: cast_nullable_to_non_nullable
as String,youtube: null == youtube ? _self.youtube : youtube // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
