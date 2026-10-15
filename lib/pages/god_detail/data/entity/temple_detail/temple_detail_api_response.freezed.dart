// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temple_detail_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TempleDetailApiResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'message') String get message;@JsonKey(name: 'data') TempleDetailData get data;@JsonKey(name: 'errors') dynamic get errors;
/// Create a copy of TempleDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleDetailApiResponseCopyWith<TempleDetailApiResponse> get copyWith => _$TempleDetailApiResponseCopyWithImpl<TempleDetailApiResponse>(this as TempleDetailApiResponse, _$identity);

  /// Serializes this TempleDetailApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TempleDetailApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'TempleDetailApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $TempleDetailApiResponseCopyWith<$Res>  {
  factory $TempleDetailApiResponseCopyWith(TempleDetailApiResponse value, $Res Function(TempleDetailApiResponse) _then) = _$TempleDetailApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') TempleDetailData data,@JsonKey(name: 'errors') dynamic errors
});


$TempleDetailDataCopyWith<$Res> get data;

}
/// @nodoc
class _$TempleDetailApiResponseCopyWithImpl<$Res>
    implements $TempleDetailApiResponseCopyWith<$Res> {
  _$TempleDetailApiResponseCopyWithImpl(this._self, this._then);

  final TempleDetailApiResponse _self;
  final $Res Function(TempleDetailApiResponse) _then;

/// Create a copy of TempleDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TempleDetailData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of TempleDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TempleDetailDataCopyWith<$Res> get data {
  
  return $TempleDetailDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TempleDetailApiResponse].
extension TempleDetailApiResponsePatterns on TempleDetailApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TempleDetailApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TempleDetailApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TempleDetailApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _TempleDetailApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TempleDetailApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TempleDetailApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  TempleDetailData data, @JsonKey(name: 'errors')  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TempleDetailApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  TempleDetailData data, @JsonKey(name: 'errors')  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _TempleDetailApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  TempleDetailData data, @JsonKey(name: 'errors')  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _TempleDetailApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TempleDetailApiResponse implements TempleDetailApiResponse {
  const _TempleDetailApiResponse({@JsonKey(name: 'success') this.success = false, @JsonKey(name: 'message') this.message = '', @JsonKey(name: 'data') this.data = const TempleDetailData(), @JsonKey(name: 'errors') this.errors});
  factory _TempleDetailApiResponse.fromJson(Map<String, dynamic> json) => _$TempleDetailApiResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'message') final  String message;
@override@JsonKey(name: 'data') final  TempleDetailData data;
@override@JsonKey(name: 'errors') final  dynamic errors;

/// Create a copy of TempleDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TempleDetailApiResponseCopyWith<_TempleDetailApiResponse> get copyWith => __$TempleDetailApiResponseCopyWithImpl<_TempleDetailApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TempleDetailApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TempleDetailApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'TempleDetailApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$TempleDetailApiResponseCopyWith<$Res> implements $TempleDetailApiResponseCopyWith<$Res> {
  factory _$TempleDetailApiResponseCopyWith(_TempleDetailApiResponse value, $Res Function(_TempleDetailApiResponse) _then) = __$TempleDetailApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') TempleDetailData data,@JsonKey(name: 'errors') dynamic errors
});


@override $TempleDetailDataCopyWith<$Res> get data;

}
/// @nodoc
class __$TempleDetailApiResponseCopyWithImpl<$Res>
    implements _$TempleDetailApiResponseCopyWith<$Res> {
  __$TempleDetailApiResponseCopyWithImpl(this._self, this._then);

  final _TempleDetailApiResponse _self;
  final $Res Function(_TempleDetailApiResponse) _then;

/// Create a copy of TempleDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_TempleDetailApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TempleDetailData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of TempleDetailApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TempleDetailDataCopyWith<$Res> get data {
  
  return $TempleDetailDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$TempleDetailData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'slug') String get slug;@JsonKey(name: 'image') String get image;@JsonKey(name: 'isWishlist') bool get isWishlist;@JsonKey(name: 'isPopular') bool get isPopular;@JsonKey(name: 'location') String get location;@JsonKey(name: 'district') String get district;@JsonKey(name: 'state') String get state;@JsonKey(name: 'country') String get country;@JsonKey(name: 'address') String get address;@JsonKey(name: 'architecture') String get architecture;@JsonKey(name: 'lat') double get lat;@JsonKey(name: 'lng') double get lng;@JsonKey(name: 'description') String get description;@JsonKey(name: 'about') String get about;@JsonKey(name: 'deities') List<TempleDeity> get deities;@JsonKey(name: 'relatedTemples') List<RelatedTemple> get relatedTemples;@JsonKey(name: 'gallery') List<String> get gallery;@JsonKey(name: 'servicesFacilities') List<String> get servicesFacilities;@JsonKey(name: 'aartiAndTempleTiming') List<AartiAndTempleTiming> get aartiAndTempleTiming;@JsonKey(name: 'exploreNearby') List<ExploreNearby> get exploreNearby;@JsonKey(name: 'planYourRoute') List<PlanYourRoute> get planYourRoute;
/// Create a copy of TempleDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleDetailDataCopyWith<TempleDetailData> get copyWith => _$TempleDetailDataCopyWithImpl<TempleDetailData>(this as TempleDetailData, _$identity);

  /// Serializes this TempleDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TempleDetailData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.location, location) || other.location == location)&&(identical(other.district, district) || other.district == district)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.address, address) || other.address == address)&&(identical(other.architecture, architecture) || other.architecture == architecture)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.description, description) || other.description == description)&&(identical(other.about, about) || other.about == about)&&const DeepCollectionEquality().equals(other.deities, deities)&&const DeepCollectionEquality().equals(other.relatedTemples, relatedTemples)&&const DeepCollectionEquality().equals(other.gallery, gallery)&&const DeepCollectionEquality().equals(other.servicesFacilities, servicesFacilities)&&const DeepCollectionEquality().equals(other.aartiAndTempleTiming, aartiAndTempleTiming)&&const DeepCollectionEquality().equals(other.exploreNearby, exploreNearby)&&const DeepCollectionEquality().equals(other.planYourRoute, planYourRoute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,slug,image,isWishlist,isPopular,location,district,state,country,address,architecture,lat,lng,description,about,const DeepCollectionEquality().hash(deities),const DeepCollectionEquality().hash(relatedTemples),const DeepCollectionEquality().hash(gallery),const DeepCollectionEquality().hash(servicesFacilities),const DeepCollectionEquality().hash(aartiAndTempleTiming),const DeepCollectionEquality().hash(exploreNearby),const DeepCollectionEquality().hash(planYourRoute)]);

@override
String toString() {
  return 'TempleDetailData(id: $id, title: $title, slug: $slug, image: $image, isWishlist: $isWishlist, isPopular: $isPopular, location: $location, district: $district, state: $state, country: $country, address: $address, architecture: $architecture, lat: $lat, lng: $lng, description: $description, about: $about, deities: $deities, relatedTemples: $relatedTemples, gallery: $gallery, servicesFacilities: $servicesFacilities, aartiAndTempleTiming: $aartiAndTempleTiming, exploreNearby: $exploreNearby, planYourRoute: $planYourRoute)';
}


}

/// @nodoc
abstract mixin class $TempleDetailDataCopyWith<$Res>  {
  factory $TempleDetailDataCopyWith(TempleDetailData value, $Res Function(TempleDetailData) _then) = _$TempleDetailDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'image') String image,@JsonKey(name: 'isWishlist') bool isWishlist,@JsonKey(name: 'isPopular') bool isPopular,@JsonKey(name: 'location') String location,@JsonKey(name: 'district') String district,@JsonKey(name: 'state') String state,@JsonKey(name: 'country') String country,@JsonKey(name: 'address') String address,@JsonKey(name: 'architecture') String architecture,@JsonKey(name: 'lat') double lat,@JsonKey(name: 'lng') double lng,@JsonKey(name: 'description') String description,@JsonKey(name: 'about') String about,@JsonKey(name: 'deities') List<TempleDeity> deities,@JsonKey(name: 'relatedTemples') List<RelatedTemple> relatedTemples,@JsonKey(name: 'gallery') List<String> gallery,@JsonKey(name: 'servicesFacilities') List<String> servicesFacilities,@JsonKey(name: 'aartiAndTempleTiming') List<AartiAndTempleTiming> aartiAndTempleTiming,@JsonKey(name: 'exploreNearby') List<ExploreNearby> exploreNearby,@JsonKey(name: 'planYourRoute') List<PlanYourRoute> planYourRoute
});




}
/// @nodoc
class _$TempleDetailDataCopyWithImpl<$Res>
    implements $TempleDetailDataCopyWith<$Res> {
  _$TempleDetailDataCopyWithImpl(this._self, this._then);

  final TempleDetailData _self;
  final $Res Function(TempleDetailData) _then;

/// Create a copy of TempleDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? image = null,Object? isWishlist = null,Object? isPopular = null,Object? location = null,Object? district = null,Object? state = null,Object? country = null,Object? address = null,Object? architecture = null,Object? lat = null,Object? lng = null,Object? description = null,Object? about = null,Object? deities = null,Object? relatedTemples = null,Object? gallery = null,Object? servicesFacilities = null,Object? aartiAndTempleTiming = null,Object? exploreNearby = null,Object? planYourRoute = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,architecture: null == architecture ? _self.architecture : architecture // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,deities: null == deities ? _self.deities : deities // ignore: cast_nullable_to_non_nullable
as List<TempleDeity>,relatedTemples: null == relatedTemples ? _self.relatedTemples : relatedTemples // ignore: cast_nullable_to_non_nullable
as List<RelatedTemple>,gallery: null == gallery ? _self.gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>,servicesFacilities: null == servicesFacilities ? _self.servicesFacilities : servicesFacilities // ignore: cast_nullable_to_non_nullable
as List<String>,aartiAndTempleTiming: null == aartiAndTempleTiming ? _self.aartiAndTempleTiming : aartiAndTempleTiming // ignore: cast_nullable_to_non_nullable
as List<AartiAndTempleTiming>,exploreNearby: null == exploreNearby ? _self.exploreNearby : exploreNearby // ignore: cast_nullable_to_non_nullable
as List<ExploreNearby>,planYourRoute: null == planYourRoute ? _self.planYourRoute : planYourRoute // ignore: cast_nullable_to_non_nullable
as List<PlanYourRoute>,
  ));
}

}


/// Adds pattern-matching-related methods to [TempleDetailData].
extension TempleDetailDataPatterns on TempleDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TempleDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TempleDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TempleDetailData value)  $default,){
final _that = this;
switch (_that) {
case _TempleDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TempleDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _TempleDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isWishlist')  bool isWishlist, @JsonKey(name: 'isPopular')  bool isPopular, @JsonKey(name: 'location')  String location, @JsonKey(name: 'district')  String district, @JsonKey(name: 'state')  String state, @JsonKey(name: 'country')  String country, @JsonKey(name: 'address')  String address, @JsonKey(name: 'architecture')  String architecture, @JsonKey(name: 'lat')  double lat, @JsonKey(name: 'lng')  double lng, @JsonKey(name: 'description')  String description, @JsonKey(name: 'about')  String about, @JsonKey(name: 'deities')  List<TempleDeity> deities, @JsonKey(name: 'relatedTemples')  List<RelatedTemple> relatedTemples, @JsonKey(name: 'gallery')  List<String> gallery, @JsonKey(name: 'servicesFacilities')  List<String> servicesFacilities, @JsonKey(name: 'aartiAndTempleTiming')  List<AartiAndTempleTiming> aartiAndTempleTiming, @JsonKey(name: 'exploreNearby')  List<ExploreNearby> exploreNearby, @JsonKey(name: 'planYourRoute')  List<PlanYourRoute> planYourRoute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TempleDetailData() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.image,_that.isWishlist,_that.isPopular,_that.location,_that.district,_that.state,_that.country,_that.address,_that.architecture,_that.lat,_that.lng,_that.description,_that.about,_that.deities,_that.relatedTemples,_that.gallery,_that.servicesFacilities,_that.aartiAndTempleTiming,_that.exploreNearby,_that.planYourRoute);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isWishlist')  bool isWishlist, @JsonKey(name: 'isPopular')  bool isPopular, @JsonKey(name: 'location')  String location, @JsonKey(name: 'district')  String district, @JsonKey(name: 'state')  String state, @JsonKey(name: 'country')  String country, @JsonKey(name: 'address')  String address, @JsonKey(name: 'architecture')  String architecture, @JsonKey(name: 'lat')  double lat, @JsonKey(name: 'lng')  double lng, @JsonKey(name: 'description')  String description, @JsonKey(name: 'about')  String about, @JsonKey(name: 'deities')  List<TempleDeity> deities, @JsonKey(name: 'relatedTemples')  List<RelatedTemple> relatedTemples, @JsonKey(name: 'gallery')  List<String> gallery, @JsonKey(name: 'servicesFacilities')  List<String> servicesFacilities, @JsonKey(name: 'aartiAndTempleTiming')  List<AartiAndTempleTiming> aartiAndTempleTiming, @JsonKey(name: 'exploreNearby')  List<ExploreNearby> exploreNearby, @JsonKey(name: 'planYourRoute')  List<PlanYourRoute> planYourRoute)  $default,) {final _that = this;
switch (_that) {
case _TempleDetailData():
return $default(_that.id,_that.title,_that.slug,_that.image,_that.isWishlist,_that.isPopular,_that.location,_that.district,_that.state,_that.country,_that.address,_that.architecture,_that.lat,_that.lng,_that.description,_that.about,_that.deities,_that.relatedTemples,_that.gallery,_that.servicesFacilities,_that.aartiAndTempleTiming,_that.exploreNearby,_that.planYourRoute);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isWishlist')  bool isWishlist, @JsonKey(name: 'isPopular')  bool isPopular, @JsonKey(name: 'location')  String location, @JsonKey(name: 'district')  String district, @JsonKey(name: 'state')  String state, @JsonKey(name: 'country')  String country, @JsonKey(name: 'address')  String address, @JsonKey(name: 'architecture')  String architecture, @JsonKey(name: 'lat')  double lat, @JsonKey(name: 'lng')  double lng, @JsonKey(name: 'description')  String description, @JsonKey(name: 'about')  String about, @JsonKey(name: 'deities')  List<TempleDeity> deities, @JsonKey(name: 'relatedTemples')  List<RelatedTemple> relatedTemples, @JsonKey(name: 'gallery')  List<String> gallery, @JsonKey(name: 'servicesFacilities')  List<String> servicesFacilities, @JsonKey(name: 'aartiAndTempleTiming')  List<AartiAndTempleTiming> aartiAndTempleTiming, @JsonKey(name: 'exploreNearby')  List<ExploreNearby> exploreNearby, @JsonKey(name: 'planYourRoute')  List<PlanYourRoute> planYourRoute)?  $default,) {final _that = this;
switch (_that) {
case _TempleDetailData() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.image,_that.isWishlist,_that.isPopular,_that.location,_that.district,_that.state,_that.country,_that.address,_that.architecture,_that.lat,_that.lng,_that.description,_that.about,_that.deities,_that.relatedTemples,_that.gallery,_that.servicesFacilities,_that.aartiAndTempleTiming,_that.exploreNearby,_that.planYourRoute);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TempleDetailData implements TempleDetailData {
  const _TempleDetailData({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'slug') this.slug = '', @JsonKey(name: 'image') this.image = '', @JsonKey(name: 'isWishlist') this.isWishlist = false, @JsonKey(name: 'isPopular') this.isPopular = false, @JsonKey(name: 'location') this.location = '', @JsonKey(name: 'district') this.district = '', @JsonKey(name: 'state') this.state = '', @JsonKey(name: 'country') this.country = '', @JsonKey(name: 'address') this.address = '', @JsonKey(name: 'architecture') this.architecture = '', @JsonKey(name: 'lat') this.lat = 0.0, @JsonKey(name: 'lng') this.lng = 0.0, @JsonKey(name: 'description') this.description = '', @JsonKey(name: 'about') this.about = '', @JsonKey(name: 'deities') final  List<TempleDeity> deities = const [], @JsonKey(name: 'relatedTemples') final  List<RelatedTemple> relatedTemples = const [], @JsonKey(name: 'gallery') final  List<String> gallery = const [], @JsonKey(name: 'servicesFacilities') final  List<String> servicesFacilities = const [], @JsonKey(name: 'aartiAndTempleTiming') final  List<AartiAndTempleTiming> aartiAndTempleTiming = const [], @JsonKey(name: 'exploreNearby') final  List<ExploreNearby> exploreNearby = const [], @JsonKey(name: 'planYourRoute') final  List<PlanYourRoute> planYourRoute = const []}): _deities = deities,_relatedTemples = relatedTemples,_gallery = gallery,_servicesFacilities = servicesFacilities,_aartiAndTempleTiming = aartiAndTempleTiming,_exploreNearby = exploreNearby,_planYourRoute = planYourRoute;
  factory _TempleDetailData.fromJson(Map<String, dynamic> json) => _$TempleDetailDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'slug') final  String slug;
@override@JsonKey(name: 'image') final  String image;
@override@JsonKey(name: 'isWishlist') final  bool isWishlist;
@override@JsonKey(name: 'isPopular') final  bool isPopular;
@override@JsonKey(name: 'location') final  String location;
@override@JsonKey(name: 'district') final  String district;
@override@JsonKey(name: 'state') final  String state;
@override@JsonKey(name: 'country') final  String country;
@override@JsonKey(name: 'address') final  String address;
@override@JsonKey(name: 'architecture') final  String architecture;
@override@JsonKey(name: 'lat') final  double lat;
@override@JsonKey(name: 'lng') final  double lng;
@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'about') final  String about;
 final  List<TempleDeity> _deities;
@override@JsonKey(name: 'deities') List<TempleDeity> get deities {
  if (_deities is EqualUnmodifiableListView) return _deities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deities);
}

 final  List<RelatedTemple> _relatedTemples;
@override@JsonKey(name: 'relatedTemples') List<RelatedTemple> get relatedTemples {
  if (_relatedTemples is EqualUnmodifiableListView) return _relatedTemples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedTemples);
}

 final  List<String> _gallery;
@override@JsonKey(name: 'gallery') List<String> get gallery {
  if (_gallery is EqualUnmodifiableListView) return _gallery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gallery);
}

 final  List<String> _servicesFacilities;
@override@JsonKey(name: 'servicesFacilities') List<String> get servicesFacilities {
  if (_servicesFacilities is EqualUnmodifiableListView) return _servicesFacilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_servicesFacilities);
}

 final  List<AartiAndTempleTiming> _aartiAndTempleTiming;
@override@JsonKey(name: 'aartiAndTempleTiming') List<AartiAndTempleTiming> get aartiAndTempleTiming {
  if (_aartiAndTempleTiming is EqualUnmodifiableListView) return _aartiAndTempleTiming;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_aartiAndTempleTiming);
}

 final  List<ExploreNearby> _exploreNearby;
@override@JsonKey(name: 'exploreNearby') List<ExploreNearby> get exploreNearby {
  if (_exploreNearby is EqualUnmodifiableListView) return _exploreNearby;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exploreNearby);
}

 final  List<PlanYourRoute> _planYourRoute;
@override@JsonKey(name: 'planYourRoute') List<PlanYourRoute> get planYourRoute {
  if (_planYourRoute is EqualUnmodifiableListView) return _planYourRoute;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_planYourRoute);
}


/// Create a copy of TempleDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TempleDetailDataCopyWith<_TempleDetailData> get copyWith => __$TempleDetailDataCopyWithImpl<_TempleDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TempleDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TempleDetailData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.location, location) || other.location == location)&&(identical(other.district, district) || other.district == district)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.address, address) || other.address == address)&&(identical(other.architecture, architecture) || other.architecture == architecture)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.description, description) || other.description == description)&&(identical(other.about, about) || other.about == about)&&const DeepCollectionEquality().equals(other._deities, _deities)&&const DeepCollectionEquality().equals(other._relatedTemples, _relatedTemples)&&const DeepCollectionEquality().equals(other._gallery, _gallery)&&const DeepCollectionEquality().equals(other._servicesFacilities, _servicesFacilities)&&const DeepCollectionEquality().equals(other._aartiAndTempleTiming, _aartiAndTempleTiming)&&const DeepCollectionEquality().equals(other._exploreNearby, _exploreNearby)&&const DeepCollectionEquality().equals(other._planYourRoute, _planYourRoute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,slug,image,isWishlist,isPopular,location,district,state,country,address,architecture,lat,lng,description,about,const DeepCollectionEquality().hash(_deities),const DeepCollectionEquality().hash(_relatedTemples),const DeepCollectionEquality().hash(_gallery),const DeepCollectionEquality().hash(_servicesFacilities),const DeepCollectionEquality().hash(_aartiAndTempleTiming),const DeepCollectionEquality().hash(_exploreNearby),const DeepCollectionEquality().hash(_planYourRoute)]);

@override
String toString() {
  return 'TempleDetailData(id: $id, title: $title, slug: $slug, image: $image, isWishlist: $isWishlist, isPopular: $isPopular, location: $location, district: $district, state: $state, country: $country, address: $address, architecture: $architecture, lat: $lat, lng: $lng, description: $description, about: $about, deities: $deities, relatedTemples: $relatedTemples, gallery: $gallery, servicesFacilities: $servicesFacilities, aartiAndTempleTiming: $aartiAndTempleTiming, exploreNearby: $exploreNearby, planYourRoute: $planYourRoute)';
}


}

/// @nodoc
abstract mixin class _$TempleDetailDataCopyWith<$Res> implements $TempleDetailDataCopyWith<$Res> {
  factory _$TempleDetailDataCopyWith(_TempleDetailData value, $Res Function(_TempleDetailData) _then) = __$TempleDetailDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'image') String image,@JsonKey(name: 'isWishlist') bool isWishlist,@JsonKey(name: 'isPopular') bool isPopular,@JsonKey(name: 'location') String location,@JsonKey(name: 'district') String district,@JsonKey(name: 'state') String state,@JsonKey(name: 'country') String country,@JsonKey(name: 'address') String address,@JsonKey(name: 'architecture') String architecture,@JsonKey(name: 'lat') double lat,@JsonKey(name: 'lng') double lng,@JsonKey(name: 'description') String description,@JsonKey(name: 'about') String about,@JsonKey(name: 'deities') List<TempleDeity> deities,@JsonKey(name: 'relatedTemples') List<RelatedTemple> relatedTemples,@JsonKey(name: 'gallery') List<String> gallery,@JsonKey(name: 'servicesFacilities') List<String> servicesFacilities,@JsonKey(name: 'aartiAndTempleTiming') List<AartiAndTempleTiming> aartiAndTempleTiming,@JsonKey(name: 'exploreNearby') List<ExploreNearby> exploreNearby,@JsonKey(name: 'planYourRoute') List<PlanYourRoute> planYourRoute
});




}
/// @nodoc
class __$TempleDetailDataCopyWithImpl<$Res>
    implements _$TempleDetailDataCopyWith<$Res> {
  __$TempleDetailDataCopyWithImpl(this._self, this._then);

  final _TempleDetailData _self;
  final $Res Function(_TempleDetailData) _then;

/// Create a copy of TempleDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? image = null,Object? isWishlist = null,Object? isPopular = null,Object? location = null,Object? district = null,Object? state = null,Object? country = null,Object? address = null,Object? architecture = null,Object? lat = null,Object? lng = null,Object? description = null,Object? about = null,Object? deities = null,Object? relatedTemples = null,Object? gallery = null,Object? servicesFacilities = null,Object? aartiAndTempleTiming = null,Object? exploreNearby = null,Object? planYourRoute = null,}) {
  return _then(_TempleDetailData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,architecture: null == architecture ? _self.architecture : architecture // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,deities: null == deities ? _self._deities : deities // ignore: cast_nullable_to_non_nullable
as List<TempleDeity>,relatedTemples: null == relatedTemples ? _self._relatedTemples : relatedTemples // ignore: cast_nullable_to_non_nullable
as List<RelatedTemple>,gallery: null == gallery ? _self._gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>,servicesFacilities: null == servicesFacilities ? _self._servicesFacilities : servicesFacilities // ignore: cast_nullable_to_non_nullable
as List<String>,aartiAndTempleTiming: null == aartiAndTempleTiming ? _self._aartiAndTempleTiming : aartiAndTempleTiming // ignore: cast_nullable_to_non_nullable
as List<AartiAndTempleTiming>,exploreNearby: null == exploreNearby ? _self._exploreNearby : exploreNearby // ignore: cast_nullable_to_non_nullable
as List<ExploreNearby>,planYourRoute: null == planYourRoute ? _self._planYourRoute : planYourRoute // ignore: cast_nullable_to_non_nullable
as List<PlanYourRoute>,
  ));
}


}


/// @nodoc
mixin _$TempleDeity {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'image') String get image;
/// Create a copy of TempleDeity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleDeityCopyWith<TempleDeity> get copyWith => _$TempleDeityCopyWithImpl<TempleDeity>(this as TempleDeity, _$identity);

  /// Serializes this TempleDeity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TempleDeity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,image);

@override
String toString() {
  return 'TempleDeity(id: $id, title: $title, image: $image)';
}


}

/// @nodoc
abstract mixin class $TempleDeityCopyWith<$Res>  {
  factory $TempleDeityCopyWith(TempleDeity value, $Res Function(TempleDeity) _then) = _$TempleDeityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'image') String image
});




}
/// @nodoc
class _$TempleDeityCopyWithImpl<$Res>
    implements $TempleDeityCopyWith<$Res> {
  _$TempleDeityCopyWithImpl(this._self, this._then);

  final TempleDeity _self;
  final $Res Function(TempleDeity) _then;

/// Create a copy of TempleDeity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TempleDeity].
extension TempleDeityPatterns on TempleDeity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TempleDeity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TempleDeity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TempleDeity value)  $default,){
final _that = this;
switch (_that) {
case _TempleDeity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TempleDeity value)?  $default,){
final _that = this;
switch (_that) {
case _TempleDeity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'image')  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TempleDeity() when $default != null:
return $default(_that.id,_that.title,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'image')  String image)  $default,) {final _that = this;
switch (_that) {
case _TempleDeity():
return $default(_that.id,_that.title,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'image')  String image)?  $default,) {final _that = this;
switch (_that) {
case _TempleDeity() when $default != null:
return $default(_that.id,_that.title,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TempleDeity implements TempleDeity {
  const _TempleDeity({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'image') this.image = ''});
  factory _TempleDeity.fromJson(Map<String, dynamic> json) => _$TempleDeityFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'image') final  String image;

/// Create a copy of TempleDeity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TempleDeityCopyWith<_TempleDeity> get copyWith => __$TempleDeityCopyWithImpl<_TempleDeity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TempleDeityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TempleDeity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,image);

@override
String toString() {
  return 'TempleDeity(id: $id, title: $title, image: $image)';
}


}

/// @nodoc
abstract mixin class _$TempleDeityCopyWith<$Res> implements $TempleDeityCopyWith<$Res> {
  factory _$TempleDeityCopyWith(_TempleDeity value, $Res Function(_TempleDeity) _then) = __$TempleDeityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'image') String image
});




}
/// @nodoc
class __$TempleDeityCopyWithImpl<$Res>
    implements _$TempleDeityCopyWith<$Res> {
  __$TempleDeityCopyWithImpl(this._self, this._then);

  final _TempleDeity _self;
  final $Res Function(_TempleDeity) _then;

/// Create a copy of TempleDeity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? image = null,}) {
  return _then(_TempleDeity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RelatedTemple {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'slug') String get slug;@JsonKey(name: 'location') String get location;@JsonKey(name: 'lat') double? get lat;@JsonKey(name: 'lng') double? get lng;@JsonKey(name: 'image') String get image;@JsonKey(name: 'isWishlist') bool get isWishlist;
/// Create a copy of RelatedTemple
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelatedTempleCopyWith<RelatedTemple> get copyWith => _$RelatedTempleCopyWithImpl<RelatedTemple>(this as RelatedTemple, _$identity);

  /// Serializes this RelatedTemple to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelatedTemple&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.location, location) || other.location == location)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,location,lat,lng,image,isWishlist);

@override
String toString() {
  return 'RelatedTemple(id: $id, title: $title, slug: $slug, location: $location, lat: $lat, lng: $lng, image: $image, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class $RelatedTempleCopyWith<$Res>  {
  factory $RelatedTempleCopyWith(RelatedTemple value, $Res Function(RelatedTemple) _then) = _$RelatedTempleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'location') String location,@JsonKey(name: 'lat') double? lat,@JsonKey(name: 'lng') double? lng,@JsonKey(name: 'image') String image,@JsonKey(name: 'isWishlist') bool isWishlist
});




}
/// @nodoc
class _$RelatedTempleCopyWithImpl<$Res>
    implements $RelatedTempleCopyWith<$Res> {
  _$RelatedTempleCopyWithImpl(this._self, this._then);

  final RelatedTemple _self;
  final $Res Function(RelatedTemple) _then;

/// Create a copy of RelatedTemple
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? location = null,Object? lat = freezed,Object? lng = freezed,Object? image = null,Object? isWishlist = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RelatedTemple].
extension RelatedTemplePatterns on RelatedTemple {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelatedTemple value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelatedTemple() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelatedTemple value)  $default,){
final _that = this;
switch (_that) {
case _RelatedTemple():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelatedTemple value)?  $default,){
final _that = this;
switch (_that) {
case _RelatedTemple() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'location')  String location, @JsonKey(name: 'lat')  double? lat, @JsonKey(name: 'lng')  double? lng, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isWishlist')  bool isWishlist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelatedTemple() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.location,_that.lat,_that.lng,_that.image,_that.isWishlist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'location')  String location, @JsonKey(name: 'lat')  double? lat, @JsonKey(name: 'lng')  double? lng, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isWishlist')  bool isWishlist)  $default,) {final _that = this;
switch (_that) {
case _RelatedTemple():
return $default(_that.id,_that.title,_that.slug,_that.location,_that.lat,_that.lng,_that.image,_that.isWishlist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'location')  String location, @JsonKey(name: 'lat')  double? lat, @JsonKey(name: 'lng')  double? lng, @JsonKey(name: 'image')  String image, @JsonKey(name: 'isWishlist')  bool isWishlist)?  $default,) {final _that = this;
switch (_that) {
case _RelatedTemple() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.location,_that.lat,_that.lng,_that.image,_that.isWishlist);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RelatedTemple implements RelatedTemple {
  const _RelatedTemple({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'slug') this.slug = '', @JsonKey(name: 'location') this.location = '', @JsonKey(name: 'lat') this.lat, @JsonKey(name: 'lng') this.lng, @JsonKey(name: 'image') this.image = '', @JsonKey(name: 'isWishlist') this.isWishlist = false});
  factory _RelatedTemple.fromJson(Map<String, dynamic> json) => _$RelatedTempleFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'slug') final  String slug;
@override@JsonKey(name: 'location') final  String location;
@override@JsonKey(name: 'lat') final  double? lat;
@override@JsonKey(name: 'lng') final  double? lng;
@override@JsonKey(name: 'image') final  String image;
@override@JsonKey(name: 'isWishlist') final  bool isWishlist;

/// Create a copy of RelatedTemple
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelatedTempleCopyWith<_RelatedTemple> get copyWith => __$RelatedTempleCopyWithImpl<_RelatedTemple>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelatedTempleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelatedTemple&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.location, location) || other.location == location)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,location,lat,lng,image,isWishlist);

@override
String toString() {
  return 'RelatedTemple(id: $id, title: $title, slug: $slug, location: $location, lat: $lat, lng: $lng, image: $image, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class _$RelatedTempleCopyWith<$Res> implements $RelatedTempleCopyWith<$Res> {
  factory _$RelatedTempleCopyWith(_RelatedTemple value, $Res Function(_RelatedTemple) _then) = __$RelatedTempleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'location') String location,@JsonKey(name: 'lat') double? lat,@JsonKey(name: 'lng') double? lng,@JsonKey(name: 'image') String image,@JsonKey(name: 'isWishlist') bool isWishlist
});




}
/// @nodoc
class __$RelatedTempleCopyWithImpl<$Res>
    implements _$RelatedTempleCopyWith<$Res> {
  __$RelatedTempleCopyWithImpl(this._self, this._then);

  final _RelatedTemple _self;
  final $Res Function(_RelatedTemple) _then;

/// Create a copy of RelatedTemple
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? location = null,Object? lat = freezed,Object? lng = freezed,Object? image = null,Object? isWishlist = null,}) {
  return _then(_RelatedTemple(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AartiAndTempleTiming {

@JsonKey(name: 'title') String get title;@JsonKey(name: 'rows') List<AartiTimingRow> get rows;
/// Create a copy of AartiAndTempleTiming
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AartiAndTempleTimingCopyWith<AartiAndTempleTiming> get copyWith => _$AartiAndTempleTimingCopyWithImpl<AartiAndTempleTiming>(this as AartiAndTempleTiming, _$identity);

  /// Serializes this AartiAndTempleTiming to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AartiAndTempleTiming&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.rows, rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(rows));

@override
String toString() {
  return 'AartiAndTempleTiming(title: $title, rows: $rows)';
}


}

/// @nodoc
abstract mixin class $AartiAndTempleTimingCopyWith<$Res>  {
  factory $AartiAndTempleTimingCopyWith(AartiAndTempleTiming value, $Res Function(AartiAndTempleTiming) _then) = _$AartiAndTempleTimingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'rows') List<AartiTimingRow> rows
});




}
/// @nodoc
class _$AartiAndTempleTimingCopyWithImpl<$Res>
    implements $AartiAndTempleTimingCopyWith<$Res> {
  _$AartiAndTempleTimingCopyWithImpl(this._self, this._then);

  final AartiAndTempleTiming _self;
  final $Res Function(AartiAndTempleTiming) _then;

/// Create a copy of AartiAndTempleTiming
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? rows = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<AartiTimingRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [AartiAndTempleTiming].
extension AartiAndTempleTimingPatterns on AartiAndTempleTiming {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AartiAndTempleTiming value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AartiAndTempleTiming() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AartiAndTempleTiming value)  $default,){
final _that = this;
switch (_that) {
case _AartiAndTempleTiming():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AartiAndTempleTiming value)?  $default,){
final _that = this;
switch (_that) {
case _AartiAndTempleTiming() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'rows')  List<AartiTimingRow> rows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AartiAndTempleTiming() when $default != null:
return $default(_that.title,_that.rows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'rows')  List<AartiTimingRow> rows)  $default,) {final _that = this;
switch (_that) {
case _AartiAndTempleTiming():
return $default(_that.title,_that.rows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'rows')  List<AartiTimingRow> rows)?  $default,) {final _that = this;
switch (_that) {
case _AartiAndTempleTiming() when $default != null:
return $default(_that.title,_that.rows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AartiAndTempleTiming implements AartiAndTempleTiming {
  const _AartiAndTempleTiming({@JsonKey(name: 'title') this.title = '', @JsonKey(name: 'rows') final  List<AartiTimingRow> rows = const []}): _rows = rows;
  factory _AartiAndTempleTiming.fromJson(Map<String, dynamic> json) => _$AartiAndTempleTimingFromJson(json);

@override@JsonKey(name: 'title') final  String title;
 final  List<AartiTimingRow> _rows;
@override@JsonKey(name: 'rows') List<AartiTimingRow> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}


/// Create a copy of AartiAndTempleTiming
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AartiAndTempleTimingCopyWith<_AartiAndTempleTiming> get copyWith => __$AartiAndTempleTimingCopyWithImpl<_AartiAndTempleTiming>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AartiAndTempleTimingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AartiAndTempleTiming&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._rows, _rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_rows));

@override
String toString() {
  return 'AartiAndTempleTiming(title: $title, rows: $rows)';
}


}

/// @nodoc
abstract mixin class _$AartiAndTempleTimingCopyWith<$Res> implements $AartiAndTempleTimingCopyWith<$Res> {
  factory _$AartiAndTempleTimingCopyWith(_AartiAndTempleTiming value, $Res Function(_AartiAndTempleTiming) _then) = __$AartiAndTempleTimingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'rows') List<AartiTimingRow> rows
});




}
/// @nodoc
class __$AartiAndTempleTimingCopyWithImpl<$Res>
    implements _$AartiAndTempleTimingCopyWith<$Res> {
  __$AartiAndTempleTimingCopyWithImpl(this._self, this._then);

  final _AartiAndTempleTiming _self;
  final $Res Function(_AartiAndTempleTiming) _then;

/// Create a copy of AartiAndTempleTiming
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? rows = null,}) {
  return _then(_AartiAndTempleTiming(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<AartiTimingRow>,
  ));
}


}


/// @nodoc
mixin _$AartiTimingRow {

@JsonKey(name: 'title') String get title;@JsonKey(name: 'open') String get open;@JsonKey(name: 'close') String get close;
/// Create a copy of AartiTimingRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AartiTimingRowCopyWith<AartiTimingRow> get copyWith => _$AartiTimingRowCopyWithImpl<AartiTimingRow>(this as AartiTimingRow, _$identity);

  /// Serializes this AartiTimingRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AartiTimingRow&&(identical(other.title, title) || other.title == title)&&(identical(other.open, open) || other.open == open)&&(identical(other.close, close) || other.close == close));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,open,close);

@override
String toString() {
  return 'AartiTimingRow(title: $title, open: $open, close: $close)';
}


}

/// @nodoc
abstract mixin class $AartiTimingRowCopyWith<$Res>  {
  factory $AartiTimingRowCopyWith(AartiTimingRow value, $Res Function(AartiTimingRow) _then) = _$AartiTimingRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'open') String open,@JsonKey(name: 'close') String close
});




}
/// @nodoc
class _$AartiTimingRowCopyWithImpl<$Res>
    implements $AartiTimingRowCopyWith<$Res> {
  _$AartiTimingRowCopyWithImpl(this._self, this._then);

  final AartiTimingRow _self;
  final $Res Function(AartiTimingRow) _then;

/// Create a copy of AartiTimingRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? open = null,Object? close = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as String,close: null == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AartiTimingRow].
extension AartiTimingRowPatterns on AartiTimingRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AartiTimingRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AartiTimingRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AartiTimingRow value)  $default,){
final _that = this;
switch (_that) {
case _AartiTimingRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AartiTimingRow value)?  $default,){
final _that = this;
switch (_that) {
case _AartiTimingRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'open')  String open, @JsonKey(name: 'close')  String close)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AartiTimingRow() when $default != null:
return $default(_that.title,_that.open,_that.close);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'open')  String open, @JsonKey(name: 'close')  String close)  $default,) {final _that = this;
switch (_that) {
case _AartiTimingRow():
return $default(_that.title,_that.open,_that.close);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'open')  String open, @JsonKey(name: 'close')  String close)?  $default,) {final _that = this;
switch (_that) {
case _AartiTimingRow() when $default != null:
return $default(_that.title,_that.open,_that.close);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AartiTimingRow implements AartiTimingRow {
  const _AartiTimingRow({@JsonKey(name: 'title') this.title = '', @JsonKey(name: 'open') this.open = '', @JsonKey(name: 'close') this.close = ''});
  factory _AartiTimingRow.fromJson(Map<String, dynamic> json) => _$AartiTimingRowFromJson(json);

@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'open') final  String open;
@override@JsonKey(name: 'close') final  String close;

/// Create a copy of AartiTimingRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AartiTimingRowCopyWith<_AartiTimingRow> get copyWith => __$AartiTimingRowCopyWithImpl<_AartiTimingRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AartiTimingRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AartiTimingRow&&(identical(other.title, title) || other.title == title)&&(identical(other.open, open) || other.open == open)&&(identical(other.close, close) || other.close == close));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,open,close);

@override
String toString() {
  return 'AartiTimingRow(title: $title, open: $open, close: $close)';
}


}

/// @nodoc
abstract mixin class _$AartiTimingRowCopyWith<$Res> implements $AartiTimingRowCopyWith<$Res> {
  factory _$AartiTimingRowCopyWith(_AartiTimingRow value, $Res Function(_AartiTimingRow) _then) = __$AartiTimingRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'open') String open,@JsonKey(name: 'close') String close
});




}
/// @nodoc
class __$AartiTimingRowCopyWithImpl<$Res>
    implements _$AartiTimingRowCopyWith<$Res> {
  __$AartiTimingRowCopyWithImpl(this._self, this._then);

  final _AartiTimingRow _self;
  final $Res Function(_AartiTimingRow) _then;

/// Create a copy of AartiTimingRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? open = null,Object? close = null,}) {
  return _then(_AartiTimingRow(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as String,close: null == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ExploreNearby {

@JsonKey(name: 'title') String get title;@JsonKey(name: 'points') List<String> get points;
/// Create a copy of ExploreNearby
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExploreNearbyCopyWith<ExploreNearby> get copyWith => _$ExploreNearbyCopyWithImpl<ExploreNearby>(this as ExploreNearby, _$identity);

  /// Serializes this ExploreNearby to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreNearby&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.points, points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(points));

@override
String toString() {
  return 'ExploreNearby(title: $title, points: $points)';
}


}

/// @nodoc
abstract mixin class $ExploreNearbyCopyWith<$Res>  {
  factory $ExploreNearbyCopyWith(ExploreNearby value, $Res Function(ExploreNearby) _then) = _$ExploreNearbyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'points') List<String> points
});




}
/// @nodoc
class _$ExploreNearbyCopyWithImpl<$Res>
    implements $ExploreNearbyCopyWith<$Res> {
  _$ExploreNearbyCopyWithImpl(this._self, this._then);

  final ExploreNearby _self;
  final $Res Function(ExploreNearby) _then;

/// Create a copy of ExploreNearby
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? points = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExploreNearby].
extension ExploreNearbyPatterns on ExploreNearby {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExploreNearby value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExploreNearby() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExploreNearby value)  $default,){
final _that = this;
switch (_that) {
case _ExploreNearby():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExploreNearby value)?  $default,){
final _that = this;
switch (_that) {
case _ExploreNearby() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'points')  List<String> points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExploreNearby() when $default != null:
return $default(_that.title,_that.points);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'points')  List<String> points)  $default,) {final _that = this;
switch (_that) {
case _ExploreNearby():
return $default(_that.title,_that.points);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'points')  List<String> points)?  $default,) {final _that = this;
switch (_that) {
case _ExploreNearby() when $default != null:
return $default(_that.title,_that.points);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExploreNearby implements ExploreNearby {
  const _ExploreNearby({@JsonKey(name: 'title') this.title = '', @JsonKey(name: 'points') final  List<String> points = const []}): _points = points;
  factory _ExploreNearby.fromJson(Map<String, dynamic> json) => _$ExploreNearbyFromJson(json);

@override@JsonKey(name: 'title') final  String title;
 final  List<String> _points;
@override@JsonKey(name: 'points') List<String> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}


/// Create a copy of ExploreNearby
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExploreNearbyCopyWith<_ExploreNearby> get copyWith => __$ExploreNearbyCopyWithImpl<_ExploreNearby>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExploreNearbyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExploreNearby&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._points, _points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_points));

@override
String toString() {
  return 'ExploreNearby(title: $title, points: $points)';
}


}

/// @nodoc
abstract mixin class _$ExploreNearbyCopyWith<$Res> implements $ExploreNearbyCopyWith<$Res> {
  factory _$ExploreNearbyCopyWith(_ExploreNearby value, $Res Function(_ExploreNearby) _then) = __$ExploreNearbyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'points') List<String> points
});




}
/// @nodoc
class __$ExploreNearbyCopyWithImpl<$Res>
    implements _$ExploreNearbyCopyWith<$Res> {
  __$ExploreNearbyCopyWithImpl(this._self, this._then);

  final _ExploreNearby _self;
  final $Res Function(_ExploreNearby) _then;

/// Create a copy of ExploreNearby
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? points = null,}) {
  return _then(_ExploreNearby(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$PlanYourRoute {

@JsonKey(name: 'title') String get title;@JsonKey(name: 'value') String get value;
/// Create a copy of PlanYourRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanYourRouteCopyWith<PlanYourRoute> get copyWith => _$PlanYourRouteCopyWithImpl<PlanYourRoute>(this as PlanYourRoute, _$identity);

  /// Serializes this PlanYourRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanYourRoute&&(identical(other.title, title) || other.title == title)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,value);

@override
String toString() {
  return 'PlanYourRoute(title: $title, value: $value)';
}


}

/// @nodoc
abstract mixin class $PlanYourRouteCopyWith<$Res>  {
  factory $PlanYourRouteCopyWith(PlanYourRoute value, $Res Function(PlanYourRoute) _then) = _$PlanYourRouteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'value') String value
});




}
/// @nodoc
class _$PlanYourRouteCopyWithImpl<$Res>
    implements $PlanYourRouteCopyWith<$Res> {
  _$PlanYourRouteCopyWithImpl(this._self, this._then);

  final PlanYourRoute _self;
  final $Res Function(PlanYourRoute) _then;

/// Create a copy of PlanYourRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? value = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanYourRoute].
extension PlanYourRoutePatterns on PlanYourRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanYourRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanYourRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanYourRoute value)  $default,){
final _that = this;
switch (_that) {
case _PlanYourRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanYourRoute value)?  $default,){
final _that = this;
switch (_that) {
case _PlanYourRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'value')  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanYourRoute() when $default != null:
return $default(_that.title,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'value')  String value)  $default,) {final _that = this;
switch (_that) {
case _PlanYourRoute():
return $default(_that.title,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'value')  String value)?  $default,) {final _that = this;
switch (_that) {
case _PlanYourRoute() when $default != null:
return $default(_that.title,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlanYourRoute implements PlanYourRoute {
  const _PlanYourRoute({@JsonKey(name: 'title') this.title = '', @JsonKey(name: 'value') this.value = ''});
  factory _PlanYourRoute.fromJson(Map<String, dynamic> json) => _$PlanYourRouteFromJson(json);

@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'value') final  String value;

/// Create a copy of PlanYourRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanYourRouteCopyWith<_PlanYourRoute> get copyWith => __$PlanYourRouteCopyWithImpl<_PlanYourRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanYourRouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanYourRoute&&(identical(other.title, title) || other.title == title)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,value);

@override
String toString() {
  return 'PlanYourRoute(title: $title, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PlanYourRouteCopyWith<$Res> implements $PlanYourRouteCopyWith<$Res> {
  factory _$PlanYourRouteCopyWith(_PlanYourRoute value, $Res Function(_PlanYourRoute) _then) = __$PlanYourRouteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'value') String value
});




}
/// @nodoc
class __$PlanYourRouteCopyWithImpl<$Res>
    implements _$PlanYourRouteCopyWith<$Res> {
  __$PlanYourRouteCopyWithImpl(this._self, this._then);

  final _PlanYourRoute _self;
  final $Res Function(_PlanYourRoute) _then;

/// Create a copy of PlanYourRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? value = null,}) {
  return _then(_PlanYourRoute(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
