// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temple_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TempleModel {

@JsonKey(name: "temple_name") String get templeName;@JsonKey(name: "temple_location") String get templeLocation;@JsonKey(name: "district") String get district;@JsonKey(name: "state") String get state;@JsonKey(name: "country") String get country;@JsonKey(name: "address") String get address;@JsonKey(name: "temple_description") String get templeDescription;@JsonKey(name: "architecture") String get architecture;@JsonKey(name: "temple_image") String get templeImage;
/// Create a copy of TempleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleModelCopyWith<TempleModel> get copyWith => _$TempleModelCopyWithImpl<TempleModel>(this as TempleModel, _$identity);

  /// Serializes this TempleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TempleModel&&(identical(other.templeName, templeName) || other.templeName == templeName)&&(identical(other.templeLocation, templeLocation) || other.templeLocation == templeLocation)&&(identical(other.district, district) || other.district == district)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.address, address) || other.address == address)&&(identical(other.templeDescription, templeDescription) || other.templeDescription == templeDescription)&&(identical(other.architecture, architecture) || other.architecture == architecture)&&(identical(other.templeImage, templeImage) || other.templeImage == templeImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,templeName,templeLocation,district,state,country,address,templeDescription,architecture,templeImage);

@override
String toString() {
  return 'TempleModel(templeName: $templeName, templeLocation: $templeLocation, district: $district, state: $state, country: $country, address: $address, templeDescription: $templeDescription, architecture: $architecture, templeImage: $templeImage)';
}


}

/// @nodoc
abstract mixin class $TempleModelCopyWith<$Res>  {
  factory $TempleModelCopyWith(TempleModel value, $Res Function(TempleModel) _then) = _$TempleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "temple_name") String templeName,@JsonKey(name: "temple_location") String templeLocation,@JsonKey(name: "district") String district,@JsonKey(name: "state") String state,@JsonKey(name: "country") String country,@JsonKey(name: "address") String address,@JsonKey(name: "temple_description") String templeDescription,@JsonKey(name: "architecture") String architecture,@JsonKey(name: "temple_image") String templeImage
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
@pragma('vm:prefer-inline') @override $Res call({Object? templeName = null,Object? templeLocation = null,Object? district = null,Object? state = null,Object? country = null,Object? address = null,Object? templeDescription = null,Object? architecture = null,Object? templeImage = null,}) {
  return _then(_self.copyWith(
templeName: null == templeName ? _self.templeName : templeName // ignore: cast_nullable_to_non_nullable
as String,templeLocation: null == templeLocation ? _self.templeLocation : templeLocation // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,templeDescription: null == templeDescription ? _self.templeDescription : templeDescription // ignore: cast_nullable_to_non_nullable
as String,architecture: null == architecture ? _self.architecture : architecture // ignore: cast_nullable_to_non_nullable
as String,templeImage: null == templeImage ? _self.templeImage : templeImage // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "temple_name")  String templeName, @JsonKey(name: "temple_location")  String templeLocation, @JsonKey(name: "district")  String district, @JsonKey(name: "state")  String state, @JsonKey(name: "country")  String country, @JsonKey(name: "address")  String address, @JsonKey(name: "temple_description")  String templeDescription, @JsonKey(name: "architecture")  String architecture, @JsonKey(name: "temple_image")  String templeImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TempleModel() when $default != null:
return $default(_that.templeName,_that.templeLocation,_that.district,_that.state,_that.country,_that.address,_that.templeDescription,_that.architecture,_that.templeImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "temple_name")  String templeName, @JsonKey(name: "temple_location")  String templeLocation, @JsonKey(name: "district")  String district, @JsonKey(name: "state")  String state, @JsonKey(name: "country")  String country, @JsonKey(name: "address")  String address, @JsonKey(name: "temple_description")  String templeDescription, @JsonKey(name: "architecture")  String architecture, @JsonKey(name: "temple_image")  String templeImage)  $default,) {final _that = this;
switch (_that) {
case _TempleModel():
return $default(_that.templeName,_that.templeLocation,_that.district,_that.state,_that.country,_that.address,_that.templeDescription,_that.architecture,_that.templeImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "temple_name")  String templeName, @JsonKey(name: "temple_location")  String templeLocation, @JsonKey(name: "district")  String district, @JsonKey(name: "state")  String state, @JsonKey(name: "country")  String country, @JsonKey(name: "address")  String address, @JsonKey(name: "temple_description")  String templeDescription, @JsonKey(name: "architecture")  String architecture, @JsonKey(name: "temple_image")  String templeImage)?  $default,) {final _that = this;
switch (_that) {
case _TempleModel() when $default != null:
return $default(_that.templeName,_that.templeLocation,_that.district,_that.state,_that.country,_that.address,_that.templeDescription,_that.architecture,_that.templeImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TempleModel implements TempleModel {
  const _TempleModel({@JsonKey(name: "temple_name") this.templeName = "", @JsonKey(name: "temple_location") this.templeLocation = "", @JsonKey(name: "district") this.district = "", @JsonKey(name: "state") this.state = "", @JsonKey(name: "country") this.country = "", @JsonKey(name: "address") this.address = "", @JsonKey(name: "temple_description") this.templeDescription = "", @JsonKey(name: "architecture") this.architecture = "", @JsonKey(name: "temple_image") this.templeImage = ""});
  factory _TempleModel.fromJson(Map<String, dynamic> json) => _$TempleModelFromJson(json);

@override@JsonKey(name: "temple_name") final  String templeName;
@override@JsonKey(name: "temple_location") final  String templeLocation;
@override@JsonKey(name: "district") final  String district;
@override@JsonKey(name: "state") final  String state;
@override@JsonKey(name: "country") final  String country;
@override@JsonKey(name: "address") final  String address;
@override@JsonKey(name: "temple_description") final  String templeDescription;
@override@JsonKey(name: "architecture") final  String architecture;
@override@JsonKey(name: "temple_image") final  String templeImage;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TempleModel&&(identical(other.templeName, templeName) || other.templeName == templeName)&&(identical(other.templeLocation, templeLocation) || other.templeLocation == templeLocation)&&(identical(other.district, district) || other.district == district)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.address, address) || other.address == address)&&(identical(other.templeDescription, templeDescription) || other.templeDescription == templeDescription)&&(identical(other.architecture, architecture) || other.architecture == architecture)&&(identical(other.templeImage, templeImage) || other.templeImage == templeImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,templeName,templeLocation,district,state,country,address,templeDescription,architecture,templeImage);

@override
String toString() {
  return 'TempleModel(templeName: $templeName, templeLocation: $templeLocation, district: $district, state: $state, country: $country, address: $address, templeDescription: $templeDescription, architecture: $architecture, templeImage: $templeImage)';
}


}

/// @nodoc
abstract mixin class _$TempleModelCopyWith<$Res> implements $TempleModelCopyWith<$Res> {
  factory _$TempleModelCopyWith(_TempleModel value, $Res Function(_TempleModel) _then) = __$TempleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "temple_name") String templeName,@JsonKey(name: "temple_location") String templeLocation,@JsonKey(name: "district") String district,@JsonKey(name: "state") String state,@JsonKey(name: "country") String country,@JsonKey(name: "address") String address,@JsonKey(name: "temple_description") String templeDescription,@JsonKey(name: "architecture") String architecture,@JsonKey(name: "temple_image") String templeImage
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
@override @pragma('vm:prefer-inline') $Res call({Object? templeName = null,Object? templeLocation = null,Object? district = null,Object? state = null,Object? country = null,Object? address = null,Object? templeDescription = null,Object? architecture = null,Object? templeImage = null,}) {
  return _then(_TempleModel(
templeName: null == templeName ? _self.templeName : templeName // ignore: cast_nullable_to_non_nullable
as String,templeLocation: null == templeLocation ? _self.templeLocation : templeLocation // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,templeDescription: null == templeDescription ? _self.templeDescription : templeDescription // ignore: cast_nullable_to_non_nullable
as String,architecture: null == architecture ? _self.architecture : architecture // ignore: cast_nullable_to_non_nullable
as String,templeImage: null == templeImage ? _self.templeImage : templeImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
