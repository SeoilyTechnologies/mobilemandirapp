// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_tax_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceTaxApiResponse {

 bool get success; String get message; PriceTaxData get data; dynamic get errors;
/// Create a copy of PriceTaxApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceTaxApiResponseCopyWith<PriceTaxApiResponse> get copyWith => _$PriceTaxApiResponseCopyWithImpl<PriceTaxApiResponse>(this as PriceTaxApiResponse, _$identity);

  /// Serializes this PriceTaxApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceTaxApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'PriceTaxApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $PriceTaxApiResponseCopyWith<$Res>  {
  factory $PriceTaxApiResponseCopyWith(PriceTaxApiResponse value, $Res Function(PriceTaxApiResponse) _then) = _$PriceTaxApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, PriceTaxData data, dynamic errors
});


$PriceTaxDataCopyWith<$Res> get data;

}
/// @nodoc
class _$PriceTaxApiResponseCopyWithImpl<$Res>
    implements $PriceTaxApiResponseCopyWith<$Res> {
  _$PriceTaxApiResponseCopyWithImpl(this._self, this._then);

  final PriceTaxApiResponse _self;
  final $Res Function(PriceTaxApiResponse) _then;

/// Create a copy of PriceTaxApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PriceTaxData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of PriceTaxApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceTaxDataCopyWith<$Res> get data {
  
  return $PriceTaxDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PriceTaxApiResponse].
extension PriceTaxApiResponsePatterns on PriceTaxApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceTaxApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceTaxApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceTaxApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _PriceTaxApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceTaxApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PriceTaxApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  PriceTaxData data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceTaxApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  PriceTaxData data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _PriceTaxApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  PriceTaxData data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _PriceTaxApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceTaxApiResponse implements PriceTaxApiResponse {
  const _PriceTaxApiResponse({this.success = false, this.message = '', this.data = const PriceTaxData(), this.errors});
  factory _PriceTaxApiResponse.fromJson(Map<String, dynamic> json) => _$PriceTaxApiResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override@JsonKey() final  PriceTaxData data;
@override final  dynamic errors;

/// Create a copy of PriceTaxApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceTaxApiResponseCopyWith<_PriceTaxApiResponse> get copyWith => __$PriceTaxApiResponseCopyWithImpl<_PriceTaxApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceTaxApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceTaxApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'PriceTaxApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$PriceTaxApiResponseCopyWith<$Res> implements $PriceTaxApiResponseCopyWith<$Res> {
  factory _$PriceTaxApiResponseCopyWith(_PriceTaxApiResponse value, $Res Function(_PriceTaxApiResponse) _then) = __$PriceTaxApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, PriceTaxData data, dynamic errors
});


@override $PriceTaxDataCopyWith<$Res> get data;

}
/// @nodoc
class __$PriceTaxApiResponseCopyWithImpl<$Res>
    implements _$PriceTaxApiResponseCopyWith<$Res> {
  __$PriceTaxApiResponseCopyWithImpl(this._self, this._then);

  final _PriceTaxApiResponse _self;
  final $Res Function(_PriceTaxApiResponse) _then;

/// Create a copy of PriceTaxApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_PriceTaxApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PriceTaxData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of PriceTaxApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceTaxDataCopyWith<$Res> get data {
  
  return $PriceTaxDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PriceTaxData {

 int get vendorAmount; int get platformFee; int get gstAmount; int get grossAmount; String get formattedVendorAmount; String get formattedPlatformFee; String get formattedGstAmount; String get formattedGrossAmount;
/// Create a copy of PriceTaxData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceTaxDataCopyWith<PriceTaxData> get copyWith => _$PriceTaxDataCopyWithImpl<PriceTaxData>(this as PriceTaxData, _$identity);

  /// Serializes this PriceTaxData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceTaxData&&(identical(other.vendorAmount, vendorAmount) || other.vendorAmount == vendorAmount)&&(identical(other.platformFee, platformFee) || other.platformFee == platformFee)&&(identical(other.gstAmount, gstAmount) || other.gstAmount == gstAmount)&&(identical(other.grossAmount, grossAmount) || other.grossAmount == grossAmount)&&(identical(other.formattedVendorAmount, formattedVendorAmount) || other.formattedVendorAmount == formattedVendorAmount)&&(identical(other.formattedPlatformFee, formattedPlatformFee) || other.formattedPlatformFee == formattedPlatformFee)&&(identical(other.formattedGstAmount, formattedGstAmount) || other.formattedGstAmount == formattedGstAmount)&&(identical(other.formattedGrossAmount, formattedGrossAmount) || other.formattedGrossAmount == formattedGrossAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,vendorAmount,platformFee,gstAmount,grossAmount,formattedVendorAmount,formattedPlatformFee,formattedGstAmount,formattedGrossAmount);

@override
String toString() {
  return 'PriceTaxData(vendorAmount: $vendorAmount, platformFee: $platformFee, gstAmount: $gstAmount, grossAmount: $grossAmount, formattedVendorAmount: $formattedVendorAmount, formattedPlatformFee: $formattedPlatformFee, formattedGstAmount: $formattedGstAmount, formattedGrossAmount: $formattedGrossAmount)';
}


}

/// @nodoc
abstract mixin class $PriceTaxDataCopyWith<$Res>  {
  factory $PriceTaxDataCopyWith(PriceTaxData value, $Res Function(PriceTaxData) _then) = _$PriceTaxDataCopyWithImpl;
@useResult
$Res call({
 int vendorAmount, int platformFee, int gstAmount, int grossAmount, String formattedVendorAmount, String formattedPlatformFee, String formattedGstAmount, String formattedGrossAmount
});




}
/// @nodoc
class _$PriceTaxDataCopyWithImpl<$Res>
    implements $PriceTaxDataCopyWith<$Res> {
  _$PriceTaxDataCopyWithImpl(this._self, this._then);

  final PriceTaxData _self;
  final $Res Function(PriceTaxData) _then;

/// Create a copy of PriceTaxData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vendorAmount = null,Object? platformFee = null,Object? gstAmount = null,Object? grossAmount = null,Object? formattedVendorAmount = null,Object? formattedPlatformFee = null,Object? formattedGstAmount = null,Object? formattedGrossAmount = null,}) {
  return _then(_self.copyWith(
vendorAmount: null == vendorAmount ? _self.vendorAmount : vendorAmount // ignore: cast_nullable_to_non_nullable
as int,platformFee: null == platformFee ? _self.platformFee : platformFee // ignore: cast_nullable_to_non_nullable
as int,gstAmount: null == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as int,grossAmount: null == grossAmount ? _self.grossAmount : grossAmount // ignore: cast_nullable_to_non_nullable
as int,formattedVendorAmount: null == formattedVendorAmount ? _self.formattedVendorAmount : formattedVendorAmount // ignore: cast_nullable_to_non_nullable
as String,formattedPlatformFee: null == formattedPlatformFee ? _self.formattedPlatformFee : formattedPlatformFee // ignore: cast_nullable_to_non_nullable
as String,formattedGstAmount: null == formattedGstAmount ? _self.formattedGstAmount : formattedGstAmount // ignore: cast_nullable_to_non_nullable
as String,formattedGrossAmount: null == formattedGrossAmount ? _self.formattedGrossAmount : formattedGrossAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceTaxData].
extension PriceTaxDataPatterns on PriceTaxData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceTaxData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceTaxData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceTaxData value)  $default,){
final _that = this;
switch (_that) {
case _PriceTaxData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceTaxData value)?  $default,){
final _that = this;
switch (_that) {
case _PriceTaxData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int vendorAmount,  int platformFee,  int gstAmount,  int grossAmount,  String formattedVendorAmount,  String formattedPlatformFee,  String formattedGstAmount,  String formattedGrossAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceTaxData() when $default != null:
return $default(_that.vendorAmount,_that.platformFee,_that.gstAmount,_that.grossAmount,_that.formattedVendorAmount,_that.formattedPlatformFee,_that.formattedGstAmount,_that.formattedGrossAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int vendorAmount,  int platformFee,  int gstAmount,  int grossAmount,  String formattedVendorAmount,  String formattedPlatformFee,  String formattedGstAmount,  String formattedGrossAmount)  $default,) {final _that = this;
switch (_that) {
case _PriceTaxData():
return $default(_that.vendorAmount,_that.platformFee,_that.gstAmount,_that.grossAmount,_that.formattedVendorAmount,_that.formattedPlatformFee,_that.formattedGstAmount,_that.formattedGrossAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int vendorAmount,  int platformFee,  int gstAmount,  int grossAmount,  String formattedVendorAmount,  String formattedPlatformFee,  String formattedGstAmount,  String formattedGrossAmount)?  $default,) {final _that = this;
switch (_that) {
case _PriceTaxData() when $default != null:
return $default(_that.vendorAmount,_that.platformFee,_that.gstAmount,_that.grossAmount,_that.formattedVendorAmount,_that.formattedPlatformFee,_that.formattedGstAmount,_that.formattedGrossAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceTaxData implements PriceTaxData {
  const _PriceTaxData({this.vendorAmount = 0, this.platformFee = 0, this.gstAmount = 0, this.grossAmount = 0, this.formattedVendorAmount = '', this.formattedPlatformFee = '', this.formattedGstAmount = '', this.formattedGrossAmount = ''});
  factory _PriceTaxData.fromJson(Map<String, dynamic> json) => _$PriceTaxDataFromJson(json);

@override@JsonKey() final  int vendorAmount;
@override@JsonKey() final  int platformFee;
@override@JsonKey() final  int gstAmount;
@override@JsonKey() final  int grossAmount;
@override@JsonKey() final  String formattedVendorAmount;
@override@JsonKey() final  String formattedPlatformFee;
@override@JsonKey() final  String formattedGstAmount;
@override@JsonKey() final  String formattedGrossAmount;

/// Create a copy of PriceTaxData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceTaxDataCopyWith<_PriceTaxData> get copyWith => __$PriceTaxDataCopyWithImpl<_PriceTaxData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceTaxDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceTaxData&&(identical(other.vendorAmount, vendorAmount) || other.vendorAmount == vendorAmount)&&(identical(other.platformFee, platformFee) || other.platformFee == platformFee)&&(identical(other.gstAmount, gstAmount) || other.gstAmount == gstAmount)&&(identical(other.grossAmount, grossAmount) || other.grossAmount == grossAmount)&&(identical(other.formattedVendorAmount, formattedVendorAmount) || other.formattedVendorAmount == formattedVendorAmount)&&(identical(other.formattedPlatformFee, formattedPlatformFee) || other.formattedPlatformFee == formattedPlatformFee)&&(identical(other.formattedGstAmount, formattedGstAmount) || other.formattedGstAmount == formattedGstAmount)&&(identical(other.formattedGrossAmount, formattedGrossAmount) || other.formattedGrossAmount == formattedGrossAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,vendorAmount,platformFee,gstAmount,grossAmount,formattedVendorAmount,formattedPlatformFee,formattedGstAmount,formattedGrossAmount);

@override
String toString() {
  return 'PriceTaxData(vendorAmount: $vendorAmount, platformFee: $platformFee, gstAmount: $gstAmount, grossAmount: $grossAmount, formattedVendorAmount: $formattedVendorAmount, formattedPlatformFee: $formattedPlatformFee, formattedGstAmount: $formattedGstAmount, formattedGrossAmount: $formattedGrossAmount)';
}


}

/// @nodoc
abstract mixin class _$PriceTaxDataCopyWith<$Res> implements $PriceTaxDataCopyWith<$Res> {
  factory _$PriceTaxDataCopyWith(_PriceTaxData value, $Res Function(_PriceTaxData) _then) = __$PriceTaxDataCopyWithImpl;
@override @useResult
$Res call({
 int vendorAmount, int platformFee, int gstAmount, int grossAmount, String formattedVendorAmount, String formattedPlatformFee, String formattedGstAmount, String formattedGrossAmount
});




}
/// @nodoc
class __$PriceTaxDataCopyWithImpl<$Res>
    implements _$PriceTaxDataCopyWith<$Res> {
  __$PriceTaxDataCopyWithImpl(this._self, this._then);

  final _PriceTaxData _self;
  final $Res Function(_PriceTaxData) _then;

/// Create a copy of PriceTaxData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vendorAmount = null,Object? platformFee = null,Object? gstAmount = null,Object? grossAmount = null,Object? formattedVendorAmount = null,Object? formattedPlatformFee = null,Object? formattedGstAmount = null,Object? formattedGrossAmount = null,}) {
  return _then(_PriceTaxData(
vendorAmount: null == vendorAmount ? _self.vendorAmount : vendorAmount // ignore: cast_nullable_to_non_nullable
as int,platformFee: null == platformFee ? _self.platformFee : platformFee // ignore: cast_nullable_to_non_nullable
as int,gstAmount: null == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as int,grossAmount: null == grossAmount ? _self.grossAmount : grossAmount // ignore: cast_nullable_to_non_nullable
as int,formattedVendorAmount: null == formattedVendorAmount ? _self.formattedVendorAmount : formattedVendorAmount // ignore: cast_nullable_to_non_nullable
as String,formattedPlatformFee: null == formattedPlatformFee ? _self.formattedPlatformFee : formattedPlatformFee // ignore: cast_nullable_to_non_nullable
as String,formattedGstAmount: null == formattedGstAmount ? _self.formattedGstAmount : formattedGstAmount // ignore: cast_nullable_to_non_nullable
as String,formattedGrossAmount: null == formattedGrossAmount ? _self.formattedGrossAmount : formattedGrossAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
