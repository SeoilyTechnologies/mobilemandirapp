// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sant_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SantDetailResponse {

@JsonKey(name: "success") bool get success;@JsonKey(name: "data") SantDetail get data;
/// Create a copy of SantDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SantDetailResponseCopyWith<SantDetailResponse> get copyWith => _$SantDetailResponseCopyWithImpl<SantDetailResponse>(this as SantDetailResponse, _$identity);

  /// Serializes this SantDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SantDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SantDetailResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $SantDetailResponseCopyWith<$Res>  {
  factory $SantDetailResponseCopyWith(SantDetailResponse value, $Res Function(SantDetailResponse) _then) = _$SantDetailResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "data") SantDetail data
});


$SantDetailCopyWith<$Res> get data;

}
/// @nodoc
class _$SantDetailResponseCopyWithImpl<$Res>
    implements $SantDetailResponseCopyWith<$Res> {
  _$SantDetailResponseCopyWithImpl(this._self, this._then);

  final SantDetailResponse _self;
  final $Res Function(SantDetailResponse) _then;

/// Create a copy of SantDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SantDetail,
  ));
}
/// Create a copy of SantDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SantDetailCopyWith<$Res> get data {
  
  return $SantDetailCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SantDetailResponse].
extension SantDetailResponsePatterns on SantDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SantDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SantDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SantDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _SantDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SantDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SantDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "data")  SantDetail data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SantDetailResponse() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "data")  SantDetail data)  $default,) {final _that = this;
switch (_that) {
case _SantDetailResponse():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "data")  SantDetail data)?  $default,) {final _that = this;
switch (_that) {
case _SantDetailResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SantDetailResponse implements SantDetailResponse {
  const _SantDetailResponse({@JsonKey(name: "success") this.success = false, @JsonKey(name: "data") this.data = const SantDetail()});
  factory _SantDetailResponse.fromJson(Map<String, dynamic> json) => _$SantDetailResponseFromJson(json);

@override@JsonKey(name: "success") final  bool success;
@override@JsonKey(name: "data") final  SantDetail data;

/// Create a copy of SantDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SantDetailResponseCopyWith<_SantDetailResponse> get copyWith => __$SantDetailResponseCopyWithImpl<_SantDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SantDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SantDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SantDetailResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SantDetailResponseCopyWith<$Res> implements $SantDetailResponseCopyWith<$Res> {
  factory _$SantDetailResponseCopyWith(_SantDetailResponse value, $Res Function(_SantDetailResponse) _then) = __$SantDetailResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "data") SantDetail data
});


@override $SantDetailCopyWith<$Res> get data;

}
/// @nodoc
class __$SantDetailResponseCopyWithImpl<$Res>
    implements _$SantDetailResponseCopyWith<$Res> {
  __$SantDetailResponseCopyWithImpl(this._self, this._then);

  final _SantDetailResponse _self;
  final $Res Function(_SantDetailResponse) _then;

/// Create a copy of SantDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_SantDetailResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SantDetail,
  ));
}

/// Create a copy of SantDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SantDetailCopyWith<$Res> get data {
  
  return $SantDetailCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SantDetail {

@JsonKey(name: "_id") String get id;@JsonKey(name: "name") String get name;@JsonKey(name: "dob") String get dob;@JsonKey(name: "dob_place") String get dobPlace;@JsonKey(name: "guru") String get guru;@JsonKey(name: "about") String get about;@JsonKey(name: "designation") String get designation;@JsonKey(name: "education") String get education;@JsonKey(name: "aashram") String get aashram;@JsonKey(name: "specialist") String get specialist;@JsonKey(name: "experience_years") num get experienceYears;@JsonKey(name: "followers_count") num get followersCount;@JsonKey(name: "location") String get location;@JsonKey(name: "mobile") String get mobile;@JsonKey(name: "email") String get email;@JsonKey(name: "website") String get website;@JsonKey(name: "social_links") SocialLinks get socialLinks;@JsonKey(name: "image") String get image;@JsonKey(name: "status") String get status;
/// Create a copy of SantDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SantDetailCopyWith<SantDetail> get copyWith => _$SantDetailCopyWithImpl<SantDetail>(this as SantDetail, _$identity);

  /// Serializes this SantDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SantDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.dobPlace, dobPlace) || other.dobPlace == dobPlace)&&(identical(other.guru, guru) || other.guru == guru)&&(identical(other.about, about) || other.about == about)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.education, education) || other.education == education)&&(identical(other.aashram, aashram) || other.aashram == aashram)&&(identical(other.specialist, specialist) || other.specialist == specialist)&&(identical(other.experienceYears, experienceYears) || other.experienceYears == experienceYears)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount)&&(identical(other.location, location) || other.location == location)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.email, email) || other.email == email)&&(identical(other.website, website) || other.website == website)&&(identical(other.socialLinks, socialLinks) || other.socialLinks == socialLinks)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,dob,dobPlace,guru,about,designation,education,aashram,specialist,experienceYears,followersCount,location,mobile,email,website,socialLinks,image,status]);

@override
String toString() {
  return 'SantDetail(id: $id, name: $name, dob: $dob, dobPlace: $dobPlace, guru: $guru, about: $about, designation: $designation, education: $education, aashram: $aashram, specialist: $specialist, experienceYears: $experienceYears, followersCount: $followersCount, location: $location, mobile: $mobile, email: $email, website: $website, socialLinks: $socialLinks, image: $image, status: $status)';
}


}

/// @nodoc
abstract mixin class $SantDetailCopyWith<$Res>  {
  factory $SantDetailCopyWith(SantDetail value, $Res Function(SantDetail) _then) = _$SantDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "dob") String dob,@JsonKey(name: "dob_place") String dobPlace,@JsonKey(name: "guru") String guru,@JsonKey(name: "about") String about,@JsonKey(name: "designation") String designation,@JsonKey(name: "education") String education,@JsonKey(name: "aashram") String aashram,@JsonKey(name: "specialist") String specialist,@JsonKey(name: "experience_years") num experienceYears,@JsonKey(name: "followers_count") num followersCount,@JsonKey(name: "location") String location,@JsonKey(name: "mobile") String mobile,@JsonKey(name: "email") String email,@JsonKey(name: "website") String website,@JsonKey(name: "social_links") SocialLinks socialLinks,@JsonKey(name: "image") String image,@JsonKey(name: "status") String status
});


$SocialLinksCopyWith<$Res> get socialLinks;

}
/// @nodoc
class _$SantDetailCopyWithImpl<$Res>
    implements $SantDetailCopyWith<$Res> {
  _$SantDetailCopyWithImpl(this._self, this._then);

  final SantDetail _self;
  final $Res Function(SantDetail) _then;

/// Create a copy of SantDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? dob = null,Object? dobPlace = null,Object? guru = null,Object? about = null,Object? designation = null,Object? education = null,Object? aashram = null,Object? specialist = null,Object? experienceYears = null,Object? followersCount = null,Object? location = null,Object? mobile = null,Object? email = null,Object? website = null,Object? socialLinks = null,Object? image = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,dobPlace: null == dobPlace ? _self.dobPlace : dobPlace // ignore: cast_nullable_to_non_nullable
as String,guru: null == guru ? _self.guru : guru // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,designation: null == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String,aashram: null == aashram ? _self.aashram : aashram // ignore: cast_nullable_to_non_nullable
as String,specialist: null == specialist ? _self.specialist : specialist // ignore: cast_nullable_to_non_nullable
as String,experienceYears: null == experienceYears ? _self.experienceYears : experienceYears // ignore: cast_nullable_to_non_nullable
as num,followersCount: null == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as num,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,website: null == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String,socialLinks: null == socialLinks ? _self.socialLinks : socialLinks // ignore: cast_nullable_to_non_nullable
as SocialLinks,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SantDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialLinksCopyWith<$Res> get socialLinks {
  
  return $SocialLinksCopyWith<$Res>(_self.socialLinks, (value) {
    return _then(_self.copyWith(socialLinks: value));
  });
}
}


/// Adds pattern-matching-related methods to [SantDetail].
extension SantDetailPatterns on SantDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SantDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SantDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SantDetail value)  $default,){
final _that = this;
switch (_that) {
case _SantDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SantDetail value)?  $default,){
final _that = this;
switch (_that) {
case _SantDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "dob")  String dob, @JsonKey(name: "dob_place")  String dobPlace, @JsonKey(name: "guru")  String guru, @JsonKey(name: "about")  String about, @JsonKey(name: "designation")  String designation, @JsonKey(name: "education")  String education, @JsonKey(name: "aashram")  String aashram, @JsonKey(name: "specialist")  String specialist, @JsonKey(name: "experience_years")  num experienceYears, @JsonKey(name: "followers_count")  num followersCount, @JsonKey(name: "location")  String location, @JsonKey(name: "mobile")  String mobile, @JsonKey(name: "email")  String email, @JsonKey(name: "website")  String website, @JsonKey(name: "social_links")  SocialLinks socialLinks, @JsonKey(name: "image")  String image, @JsonKey(name: "status")  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SantDetail() when $default != null:
return $default(_that.id,_that.name,_that.dob,_that.dobPlace,_that.guru,_that.about,_that.designation,_that.education,_that.aashram,_that.specialist,_that.experienceYears,_that.followersCount,_that.location,_that.mobile,_that.email,_that.website,_that.socialLinks,_that.image,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "dob")  String dob, @JsonKey(name: "dob_place")  String dobPlace, @JsonKey(name: "guru")  String guru, @JsonKey(name: "about")  String about, @JsonKey(name: "designation")  String designation, @JsonKey(name: "education")  String education, @JsonKey(name: "aashram")  String aashram, @JsonKey(name: "specialist")  String specialist, @JsonKey(name: "experience_years")  num experienceYears, @JsonKey(name: "followers_count")  num followersCount, @JsonKey(name: "location")  String location, @JsonKey(name: "mobile")  String mobile, @JsonKey(name: "email")  String email, @JsonKey(name: "website")  String website, @JsonKey(name: "social_links")  SocialLinks socialLinks, @JsonKey(name: "image")  String image, @JsonKey(name: "status")  String status)  $default,) {final _that = this;
switch (_that) {
case _SantDetail():
return $default(_that.id,_that.name,_that.dob,_that.dobPlace,_that.guru,_that.about,_that.designation,_that.education,_that.aashram,_that.specialist,_that.experienceYears,_that.followersCount,_that.location,_that.mobile,_that.email,_that.website,_that.socialLinks,_that.image,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "dob")  String dob, @JsonKey(name: "dob_place")  String dobPlace, @JsonKey(name: "guru")  String guru, @JsonKey(name: "about")  String about, @JsonKey(name: "designation")  String designation, @JsonKey(name: "education")  String education, @JsonKey(name: "aashram")  String aashram, @JsonKey(name: "specialist")  String specialist, @JsonKey(name: "experience_years")  num experienceYears, @JsonKey(name: "followers_count")  num followersCount, @JsonKey(name: "location")  String location, @JsonKey(name: "mobile")  String mobile, @JsonKey(name: "email")  String email, @JsonKey(name: "website")  String website, @JsonKey(name: "social_links")  SocialLinks socialLinks, @JsonKey(name: "image")  String image, @JsonKey(name: "status")  String status)?  $default,) {final _that = this;
switch (_that) {
case _SantDetail() when $default != null:
return $default(_that.id,_that.name,_that.dob,_that.dobPlace,_that.guru,_that.about,_that.designation,_that.education,_that.aashram,_that.specialist,_that.experienceYears,_that.followersCount,_that.location,_that.mobile,_that.email,_that.website,_that.socialLinks,_that.image,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SantDetail implements SantDetail {
  const _SantDetail({@JsonKey(name: "_id") this.id = "", @JsonKey(name: "name") this.name = "", @JsonKey(name: "dob") this.dob = "", @JsonKey(name: "dob_place") this.dobPlace = "", @JsonKey(name: "guru") this.guru = "", @JsonKey(name: "about") this.about = "", @JsonKey(name: "designation") this.designation = "", @JsonKey(name: "education") this.education = "", @JsonKey(name: "aashram") this.aashram = "", @JsonKey(name: "specialist") this.specialist = "", @JsonKey(name: "experience_years") this.experienceYears = 0, @JsonKey(name: "followers_count") this.followersCount = 0, @JsonKey(name: "location") this.location = "", @JsonKey(name: "mobile") this.mobile = "", @JsonKey(name: "email") this.email = "", @JsonKey(name: "website") this.website = "", @JsonKey(name: "social_links") this.socialLinks = const SocialLinks(), @JsonKey(name: "image") this.image = "", @JsonKey(name: "status") this.status = ""});
  factory _SantDetail.fromJson(Map<String, dynamic> json) => _$SantDetailFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "dob") final  String dob;
@override@JsonKey(name: "dob_place") final  String dobPlace;
@override@JsonKey(name: "guru") final  String guru;
@override@JsonKey(name: "about") final  String about;
@override@JsonKey(name: "designation") final  String designation;
@override@JsonKey(name: "education") final  String education;
@override@JsonKey(name: "aashram") final  String aashram;
@override@JsonKey(name: "specialist") final  String specialist;
@override@JsonKey(name: "experience_years") final  num experienceYears;
@override@JsonKey(name: "followers_count") final  num followersCount;
@override@JsonKey(name: "location") final  String location;
@override@JsonKey(name: "mobile") final  String mobile;
@override@JsonKey(name: "email") final  String email;
@override@JsonKey(name: "website") final  String website;
@override@JsonKey(name: "social_links") final  SocialLinks socialLinks;
@override@JsonKey(name: "image") final  String image;
@override@JsonKey(name: "status") final  String status;

/// Create a copy of SantDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SantDetailCopyWith<_SantDetail> get copyWith => __$SantDetailCopyWithImpl<_SantDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SantDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SantDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.dobPlace, dobPlace) || other.dobPlace == dobPlace)&&(identical(other.guru, guru) || other.guru == guru)&&(identical(other.about, about) || other.about == about)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.education, education) || other.education == education)&&(identical(other.aashram, aashram) || other.aashram == aashram)&&(identical(other.specialist, specialist) || other.specialist == specialist)&&(identical(other.experienceYears, experienceYears) || other.experienceYears == experienceYears)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount)&&(identical(other.location, location) || other.location == location)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.email, email) || other.email == email)&&(identical(other.website, website) || other.website == website)&&(identical(other.socialLinks, socialLinks) || other.socialLinks == socialLinks)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,dob,dobPlace,guru,about,designation,education,aashram,specialist,experienceYears,followersCount,location,mobile,email,website,socialLinks,image,status]);

@override
String toString() {
  return 'SantDetail(id: $id, name: $name, dob: $dob, dobPlace: $dobPlace, guru: $guru, about: $about, designation: $designation, education: $education, aashram: $aashram, specialist: $specialist, experienceYears: $experienceYears, followersCount: $followersCount, location: $location, mobile: $mobile, email: $email, website: $website, socialLinks: $socialLinks, image: $image, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SantDetailCopyWith<$Res> implements $SantDetailCopyWith<$Res> {
  factory _$SantDetailCopyWith(_SantDetail value, $Res Function(_SantDetail) _then) = __$SantDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "dob") String dob,@JsonKey(name: "dob_place") String dobPlace,@JsonKey(name: "guru") String guru,@JsonKey(name: "about") String about,@JsonKey(name: "designation") String designation,@JsonKey(name: "education") String education,@JsonKey(name: "aashram") String aashram,@JsonKey(name: "specialist") String specialist,@JsonKey(name: "experience_years") num experienceYears,@JsonKey(name: "followers_count") num followersCount,@JsonKey(name: "location") String location,@JsonKey(name: "mobile") String mobile,@JsonKey(name: "email") String email,@JsonKey(name: "website") String website,@JsonKey(name: "social_links") SocialLinks socialLinks,@JsonKey(name: "image") String image,@JsonKey(name: "status") String status
});


@override $SocialLinksCopyWith<$Res> get socialLinks;

}
/// @nodoc
class __$SantDetailCopyWithImpl<$Res>
    implements _$SantDetailCopyWith<$Res> {
  __$SantDetailCopyWithImpl(this._self, this._then);

  final _SantDetail _self;
  final $Res Function(_SantDetail) _then;

/// Create a copy of SantDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? dob = null,Object? dobPlace = null,Object? guru = null,Object? about = null,Object? designation = null,Object? education = null,Object? aashram = null,Object? specialist = null,Object? experienceYears = null,Object? followersCount = null,Object? location = null,Object? mobile = null,Object? email = null,Object? website = null,Object? socialLinks = null,Object? image = null,Object? status = null,}) {
  return _then(_SantDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,dobPlace: null == dobPlace ? _self.dobPlace : dobPlace // ignore: cast_nullable_to_non_nullable
as String,guru: null == guru ? _self.guru : guru // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,designation: null == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String,aashram: null == aashram ? _self.aashram : aashram // ignore: cast_nullable_to_non_nullable
as String,specialist: null == specialist ? _self.specialist : specialist // ignore: cast_nullable_to_non_nullable
as String,experienceYears: null == experienceYears ? _self.experienceYears : experienceYears // ignore: cast_nullable_to_non_nullable
as num,followersCount: null == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as num,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,website: null == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String,socialLinks: null == socialLinks ? _self.socialLinks : socialLinks // ignore: cast_nullable_to_non_nullable
as SocialLinks,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SantDetail
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
