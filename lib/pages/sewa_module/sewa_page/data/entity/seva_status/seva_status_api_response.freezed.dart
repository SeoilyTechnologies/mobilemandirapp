// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seva_status_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SevaStatusApiResponse {

@JsonKey(name: "success") bool get success;@JsonKey(name: "message") String get message;@JsonKey(name: "data") SevaStatusData get data;@JsonKey(name: "errors") dynamic get errors;
/// Create a copy of SevaStatusApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaStatusApiResponseCopyWith<SevaStatusApiResponse> get copyWith => _$SevaStatusApiResponseCopyWithImpl<SevaStatusApiResponse>(this as SevaStatusApiResponse, _$identity);

  /// Serializes this SevaStatusApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaStatusApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SevaStatusApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $SevaStatusApiResponseCopyWith<$Res>  {
  factory $SevaStatusApiResponseCopyWith(SevaStatusApiResponse value, $Res Function(SevaStatusApiResponse) _then) = _$SevaStatusApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "message") String message,@JsonKey(name: "data") SevaStatusData data,@JsonKey(name: "errors") dynamic errors
});


$SevaStatusDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SevaStatusApiResponseCopyWithImpl<$Res>
    implements $SevaStatusApiResponseCopyWith<$Res> {
  _$SevaStatusApiResponseCopyWithImpl(this._self, this._then);

  final SevaStatusApiResponse _self;
  final $Res Function(SevaStatusApiResponse) _then;

/// Create a copy of SevaStatusApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SevaStatusData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of SevaStatusApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaStatusDataCopyWith<$Res> get data {
  
  return $SevaStatusDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SevaStatusApiResponse].
extension SevaStatusApiResponsePatterns on SevaStatusApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SevaStatusApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SevaStatusApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SevaStatusApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _SevaStatusApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SevaStatusApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SevaStatusApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "message")  String message, @JsonKey(name: "data")  SevaStatusData data, @JsonKey(name: "errors")  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SevaStatusApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "message")  String message, @JsonKey(name: "data")  SevaStatusData data, @JsonKey(name: "errors")  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _SevaStatusApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "message")  String message, @JsonKey(name: "data")  SevaStatusData data, @JsonKey(name: "errors")  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _SevaStatusApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SevaStatusApiResponse implements SevaStatusApiResponse {
  const _SevaStatusApiResponse({@JsonKey(name: "success") this.success = false, @JsonKey(name: "message") this.message = "", @JsonKey(name: "data") this.data = const SevaStatusData(), @JsonKey(name: "errors") this.errors = null});
  factory _SevaStatusApiResponse.fromJson(Map<String, dynamic> json) => _$SevaStatusApiResponseFromJson(json);

@override@JsonKey(name: "success") final  bool success;
@override@JsonKey(name: "message") final  String message;
@override@JsonKey(name: "data") final  SevaStatusData data;
@override@JsonKey(name: "errors") final  dynamic errors;

/// Create a copy of SevaStatusApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SevaStatusApiResponseCopyWith<_SevaStatusApiResponse> get copyWith => __$SevaStatusApiResponseCopyWithImpl<_SevaStatusApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SevaStatusApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SevaStatusApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SevaStatusApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$SevaStatusApiResponseCopyWith<$Res> implements $SevaStatusApiResponseCopyWith<$Res> {
  factory _$SevaStatusApiResponseCopyWith(_SevaStatusApiResponse value, $Res Function(_SevaStatusApiResponse) _then) = __$SevaStatusApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "message") String message,@JsonKey(name: "data") SevaStatusData data,@JsonKey(name: "errors") dynamic errors
});


@override $SevaStatusDataCopyWith<$Res> get data;

}
/// @nodoc
class __$SevaStatusApiResponseCopyWithImpl<$Res>
    implements _$SevaStatusApiResponseCopyWith<$Res> {
  __$SevaStatusApiResponseCopyWithImpl(this._self, this._then);

  final _SevaStatusApiResponse _self;
  final $Res Function(_SevaStatusApiResponse) _then;

/// Create a copy of SevaStatusApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_SevaStatusApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SevaStatusData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of SevaStatusApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaStatusDataCopyWith<$Res> get data {
  
  return $SevaStatusDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SevaStatusData {

@JsonKey(name: "_id") String get id;@JsonKey(name: "service") ServiceInfo get service;@JsonKey(name: "vendor") VendorInfo get vendor;@JsonKey(name: "donorName") String get donorName;@JsonKey(name: "sevaName") String get sevaName;@JsonKey(name: "vendorAmount") int get vendorAmount;@JsonKey(name: "formattedVendorAmount") String get formattedVendorAmount;@JsonKey(name: "paymentStatus") String get paymentStatus;@JsonKey(name: "paymentStatusLabel") String get paymentStatusLabel;@JsonKey(name: "status") String get status;@JsonKey(name: "statusLabel") String get statusLabel;@JsonKey(name: "requestedAt") String get requestedAt;@JsonKey(name: "proofExpectedBy") String get proofExpectedBy;@JsonKey(name: "liveStatus") List<LiveStatus> get liveStatus;@JsonKey(name: "proof") ProofInfo get proof;@JsonKey(name: "pricing") PricingInfo get pricing;
/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaStatusDataCopyWith<SevaStatusData> get copyWith => _$SevaStatusDataCopyWithImpl<SevaStatusData>(this as SevaStatusData, _$identity);

  /// Serializes this SevaStatusData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaStatusData&&(identical(other.id, id) || other.id == id)&&(identical(other.service, service) || other.service == service)&&(identical(other.vendor, vendor) || other.vendor == vendor)&&(identical(other.donorName, donorName) || other.donorName == donorName)&&(identical(other.sevaName, sevaName) || other.sevaName == sevaName)&&(identical(other.vendorAmount, vendorAmount) || other.vendorAmount == vendorAmount)&&(identical(other.formattedVendorAmount, formattedVendorAmount) || other.formattedVendorAmount == formattedVendorAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentStatusLabel, paymentStatusLabel) || other.paymentStatusLabel == paymentStatusLabel)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.proofExpectedBy, proofExpectedBy) || other.proofExpectedBy == proofExpectedBy)&&const DeepCollectionEquality().equals(other.liveStatus, liveStatus)&&(identical(other.proof, proof) || other.proof == proof)&&(identical(other.pricing, pricing) || other.pricing == pricing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,service,vendor,donorName,sevaName,vendorAmount,formattedVendorAmount,paymentStatus,paymentStatusLabel,status,statusLabel,requestedAt,proofExpectedBy,const DeepCollectionEquality().hash(liveStatus),proof,pricing);

@override
String toString() {
  return 'SevaStatusData(id: $id, service: $service, vendor: $vendor, donorName: $donorName, sevaName: $sevaName, vendorAmount: $vendorAmount, formattedVendorAmount: $formattedVendorAmount, paymentStatus: $paymentStatus, paymentStatusLabel: $paymentStatusLabel, status: $status, statusLabel: $statusLabel, requestedAt: $requestedAt, proofExpectedBy: $proofExpectedBy, liveStatus: $liveStatus, proof: $proof, pricing: $pricing)';
}


}

/// @nodoc
abstract mixin class $SevaStatusDataCopyWith<$Res>  {
  factory $SevaStatusDataCopyWith(SevaStatusData value, $Res Function(SevaStatusData) _then) = _$SevaStatusDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "service") ServiceInfo service,@JsonKey(name: "vendor") VendorInfo vendor,@JsonKey(name: "donorName") String donorName,@JsonKey(name: "sevaName") String sevaName,@JsonKey(name: "vendorAmount") int vendorAmount,@JsonKey(name: "formattedVendorAmount") String formattedVendorAmount,@JsonKey(name: "paymentStatus") String paymentStatus,@JsonKey(name: "paymentStatusLabel") String paymentStatusLabel,@JsonKey(name: "status") String status,@JsonKey(name: "statusLabel") String statusLabel,@JsonKey(name: "requestedAt") String requestedAt,@JsonKey(name: "proofExpectedBy") String proofExpectedBy,@JsonKey(name: "liveStatus") List<LiveStatus> liveStatus,@JsonKey(name: "proof") ProofInfo proof,@JsonKey(name: "pricing") PricingInfo pricing
});


$ServiceInfoCopyWith<$Res> get service;$VendorInfoCopyWith<$Res> get vendor;$ProofInfoCopyWith<$Res> get proof;$PricingInfoCopyWith<$Res> get pricing;

}
/// @nodoc
class _$SevaStatusDataCopyWithImpl<$Res>
    implements $SevaStatusDataCopyWith<$Res> {
  _$SevaStatusDataCopyWithImpl(this._self, this._then);

  final SevaStatusData _self;
  final $Res Function(SevaStatusData) _then;

/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? service = null,Object? vendor = null,Object? donorName = null,Object? sevaName = null,Object? vendorAmount = null,Object? formattedVendorAmount = null,Object? paymentStatus = null,Object? paymentStatusLabel = null,Object? status = null,Object? statusLabel = null,Object? requestedAt = null,Object? proofExpectedBy = null,Object? liveStatus = null,Object? proof = null,Object? pricing = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceInfo,vendor: null == vendor ? _self.vendor : vendor // ignore: cast_nullable_to_non_nullable
as VendorInfo,donorName: null == donorName ? _self.donorName : donorName // ignore: cast_nullable_to_non_nullable
as String,sevaName: null == sevaName ? _self.sevaName : sevaName // ignore: cast_nullable_to_non_nullable
as String,vendorAmount: null == vendorAmount ? _self.vendorAmount : vendorAmount // ignore: cast_nullable_to_non_nullable
as int,formattedVendorAmount: null == formattedVendorAmount ? _self.formattedVendorAmount : formattedVendorAmount // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,paymentStatusLabel: null == paymentStatusLabel ? _self.paymentStatusLabel : paymentStatusLabel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as String,proofExpectedBy: null == proofExpectedBy ? _self.proofExpectedBy : proofExpectedBy // ignore: cast_nullable_to_non_nullable
as String,liveStatus: null == liveStatus ? _self.liveStatus : liveStatus // ignore: cast_nullable_to_non_nullable
as List<LiveStatus>,proof: null == proof ? _self.proof : proof // ignore: cast_nullable_to_non_nullable
as ProofInfo,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as PricingInfo,
  ));
}
/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceInfoCopyWith<$Res> get service {
  
  return $ServiceInfoCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VendorInfoCopyWith<$Res> get vendor {
  
  return $VendorInfoCopyWith<$Res>(_self.vendor, (value) {
    return _then(_self.copyWith(vendor: value));
  });
}/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProofInfoCopyWith<$Res> get proof {
  
  return $ProofInfoCopyWith<$Res>(_self.proof, (value) {
    return _then(_self.copyWith(proof: value));
  });
}/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PricingInfoCopyWith<$Res> get pricing {
  
  return $PricingInfoCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}
}


/// Adds pattern-matching-related methods to [SevaStatusData].
extension SevaStatusDataPatterns on SevaStatusData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SevaStatusData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SevaStatusData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SevaStatusData value)  $default,){
final _that = this;
switch (_that) {
case _SevaStatusData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SevaStatusData value)?  $default,){
final _that = this;
switch (_that) {
case _SevaStatusData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "service")  ServiceInfo service, @JsonKey(name: "vendor")  VendorInfo vendor, @JsonKey(name: "donorName")  String donorName, @JsonKey(name: "sevaName")  String sevaName, @JsonKey(name: "vendorAmount")  int vendorAmount, @JsonKey(name: "formattedVendorAmount")  String formattedVendorAmount, @JsonKey(name: "paymentStatus")  String paymentStatus, @JsonKey(name: "paymentStatusLabel")  String paymentStatusLabel, @JsonKey(name: "status")  String status, @JsonKey(name: "statusLabel")  String statusLabel, @JsonKey(name: "requestedAt")  String requestedAt, @JsonKey(name: "proofExpectedBy")  String proofExpectedBy, @JsonKey(name: "liveStatus")  List<LiveStatus> liveStatus, @JsonKey(name: "proof")  ProofInfo proof, @JsonKey(name: "pricing")  PricingInfo pricing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SevaStatusData() when $default != null:
return $default(_that.id,_that.service,_that.vendor,_that.donorName,_that.sevaName,_that.vendorAmount,_that.formattedVendorAmount,_that.paymentStatus,_that.paymentStatusLabel,_that.status,_that.statusLabel,_that.requestedAt,_that.proofExpectedBy,_that.liveStatus,_that.proof,_that.pricing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "service")  ServiceInfo service, @JsonKey(name: "vendor")  VendorInfo vendor, @JsonKey(name: "donorName")  String donorName, @JsonKey(name: "sevaName")  String sevaName, @JsonKey(name: "vendorAmount")  int vendorAmount, @JsonKey(name: "formattedVendorAmount")  String formattedVendorAmount, @JsonKey(name: "paymentStatus")  String paymentStatus, @JsonKey(name: "paymentStatusLabel")  String paymentStatusLabel, @JsonKey(name: "status")  String status, @JsonKey(name: "statusLabel")  String statusLabel, @JsonKey(name: "requestedAt")  String requestedAt, @JsonKey(name: "proofExpectedBy")  String proofExpectedBy, @JsonKey(name: "liveStatus")  List<LiveStatus> liveStatus, @JsonKey(name: "proof")  ProofInfo proof, @JsonKey(name: "pricing")  PricingInfo pricing)  $default,) {final _that = this;
switch (_that) {
case _SevaStatusData():
return $default(_that.id,_that.service,_that.vendor,_that.donorName,_that.sevaName,_that.vendorAmount,_that.formattedVendorAmount,_that.paymentStatus,_that.paymentStatusLabel,_that.status,_that.statusLabel,_that.requestedAt,_that.proofExpectedBy,_that.liveStatus,_that.proof,_that.pricing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "service")  ServiceInfo service, @JsonKey(name: "vendor")  VendorInfo vendor, @JsonKey(name: "donorName")  String donorName, @JsonKey(name: "sevaName")  String sevaName, @JsonKey(name: "vendorAmount")  int vendorAmount, @JsonKey(name: "formattedVendorAmount")  String formattedVendorAmount, @JsonKey(name: "paymentStatus")  String paymentStatus, @JsonKey(name: "paymentStatusLabel")  String paymentStatusLabel, @JsonKey(name: "status")  String status, @JsonKey(name: "statusLabel")  String statusLabel, @JsonKey(name: "requestedAt")  String requestedAt, @JsonKey(name: "proofExpectedBy")  String proofExpectedBy, @JsonKey(name: "liveStatus")  List<LiveStatus> liveStatus, @JsonKey(name: "proof")  ProofInfo proof, @JsonKey(name: "pricing")  PricingInfo pricing)?  $default,) {final _that = this;
switch (_that) {
case _SevaStatusData() when $default != null:
return $default(_that.id,_that.service,_that.vendor,_that.donorName,_that.sevaName,_that.vendorAmount,_that.formattedVendorAmount,_that.paymentStatus,_that.paymentStatusLabel,_that.status,_that.statusLabel,_that.requestedAt,_that.proofExpectedBy,_that.liveStatus,_that.proof,_that.pricing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SevaStatusData implements SevaStatusData {
  const _SevaStatusData({@JsonKey(name: "_id") this.id = "", @JsonKey(name: "service") this.service = const ServiceInfo(), @JsonKey(name: "vendor") this.vendor = const VendorInfo(), @JsonKey(name: "donorName") this.donorName = "", @JsonKey(name: "sevaName") this.sevaName = "", @JsonKey(name: "vendorAmount") this.vendorAmount = 0, @JsonKey(name: "formattedVendorAmount") this.formattedVendorAmount = "", @JsonKey(name: "paymentStatus") this.paymentStatus = "", @JsonKey(name: "paymentStatusLabel") this.paymentStatusLabel = "", @JsonKey(name: "status") this.status = "", @JsonKey(name: "statusLabel") this.statusLabel = "", @JsonKey(name: "requestedAt") this.requestedAt = "", @JsonKey(name: "proofExpectedBy") this.proofExpectedBy = "", @JsonKey(name: "liveStatus") final  List<LiveStatus> liveStatus = const [], @JsonKey(name: "proof") this.proof = const ProofInfo(), @JsonKey(name: "pricing") this.pricing = const PricingInfo()}): _liveStatus = liveStatus;
  factory _SevaStatusData.fromJson(Map<String, dynamic> json) => _$SevaStatusDataFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey(name: "service") final  ServiceInfo service;
@override@JsonKey(name: "vendor") final  VendorInfo vendor;
@override@JsonKey(name: "donorName") final  String donorName;
@override@JsonKey(name: "sevaName") final  String sevaName;
@override@JsonKey(name: "vendorAmount") final  int vendorAmount;
@override@JsonKey(name: "formattedVendorAmount") final  String formattedVendorAmount;
@override@JsonKey(name: "paymentStatus") final  String paymentStatus;
@override@JsonKey(name: "paymentStatusLabel") final  String paymentStatusLabel;
@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "statusLabel") final  String statusLabel;
@override@JsonKey(name: "requestedAt") final  String requestedAt;
@override@JsonKey(name: "proofExpectedBy") final  String proofExpectedBy;
 final  List<LiveStatus> _liveStatus;
@override@JsonKey(name: "liveStatus") List<LiveStatus> get liveStatus {
  if (_liveStatus is EqualUnmodifiableListView) return _liveStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_liveStatus);
}

@override@JsonKey(name: "proof") final  ProofInfo proof;
@override@JsonKey(name: "pricing") final  PricingInfo pricing;

/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SevaStatusDataCopyWith<_SevaStatusData> get copyWith => __$SevaStatusDataCopyWithImpl<_SevaStatusData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SevaStatusDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SevaStatusData&&(identical(other.id, id) || other.id == id)&&(identical(other.service, service) || other.service == service)&&(identical(other.vendor, vendor) || other.vendor == vendor)&&(identical(other.donorName, donorName) || other.donorName == donorName)&&(identical(other.sevaName, sevaName) || other.sevaName == sevaName)&&(identical(other.vendorAmount, vendorAmount) || other.vendorAmount == vendorAmount)&&(identical(other.formattedVendorAmount, formattedVendorAmount) || other.formattedVendorAmount == formattedVendorAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentStatusLabel, paymentStatusLabel) || other.paymentStatusLabel == paymentStatusLabel)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.proofExpectedBy, proofExpectedBy) || other.proofExpectedBy == proofExpectedBy)&&const DeepCollectionEquality().equals(other._liveStatus, _liveStatus)&&(identical(other.proof, proof) || other.proof == proof)&&(identical(other.pricing, pricing) || other.pricing == pricing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,service,vendor,donorName,sevaName,vendorAmount,formattedVendorAmount,paymentStatus,paymentStatusLabel,status,statusLabel,requestedAt,proofExpectedBy,const DeepCollectionEquality().hash(_liveStatus),proof,pricing);

@override
String toString() {
  return 'SevaStatusData(id: $id, service: $service, vendor: $vendor, donorName: $donorName, sevaName: $sevaName, vendorAmount: $vendorAmount, formattedVendorAmount: $formattedVendorAmount, paymentStatus: $paymentStatus, paymentStatusLabel: $paymentStatusLabel, status: $status, statusLabel: $statusLabel, requestedAt: $requestedAt, proofExpectedBy: $proofExpectedBy, liveStatus: $liveStatus, proof: $proof, pricing: $pricing)';
}


}

/// @nodoc
abstract mixin class _$SevaStatusDataCopyWith<$Res> implements $SevaStatusDataCopyWith<$Res> {
  factory _$SevaStatusDataCopyWith(_SevaStatusData value, $Res Function(_SevaStatusData) _then) = __$SevaStatusDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "service") ServiceInfo service,@JsonKey(name: "vendor") VendorInfo vendor,@JsonKey(name: "donorName") String donorName,@JsonKey(name: "sevaName") String sevaName,@JsonKey(name: "vendorAmount") int vendorAmount,@JsonKey(name: "formattedVendorAmount") String formattedVendorAmount,@JsonKey(name: "paymentStatus") String paymentStatus,@JsonKey(name: "paymentStatusLabel") String paymentStatusLabel,@JsonKey(name: "status") String status,@JsonKey(name: "statusLabel") String statusLabel,@JsonKey(name: "requestedAt") String requestedAt,@JsonKey(name: "proofExpectedBy") String proofExpectedBy,@JsonKey(name: "liveStatus") List<LiveStatus> liveStatus,@JsonKey(name: "proof") ProofInfo proof,@JsonKey(name: "pricing") PricingInfo pricing
});


@override $ServiceInfoCopyWith<$Res> get service;@override $VendorInfoCopyWith<$Res> get vendor;@override $ProofInfoCopyWith<$Res> get proof;@override $PricingInfoCopyWith<$Res> get pricing;

}
/// @nodoc
class __$SevaStatusDataCopyWithImpl<$Res>
    implements _$SevaStatusDataCopyWith<$Res> {
  __$SevaStatusDataCopyWithImpl(this._self, this._then);

  final _SevaStatusData _self;
  final $Res Function(_SevaStatusData) _then;

/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? service = null,Object? vendor = null,Object? donorName = null,Object? sevaName = null,Object? vendorAmount = null,Object? formattedVendorAmount = null,Object? paymentStatus = null,Object? paymentStatusLabel = null,Object? status = null,Object? statusLabel = null,Object? requestedAt = null,Object? proofExpectedBy = null,Object? liveStatus = null,Object? proof = null,Object? pricing = null,}) {
  return _then(_SevaStatusData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceInfo,vendor: null == vendor ? _self.vendor : vendor // ignore: cast_nullable_to_non_nullable
as VendorInfo,donorName: null == donorName ? _self.donorName : donorName // ignore: cast_nullable_to_non_nullable
as String,sevaName: null == sevaName ? _self.sevaName : sevaName // ignore: cast_nullable_to_non_nullable
as String,vendorAmount: null == vendorAmount ? _self.vendorAmount : vendorAmount // ignore: cast_nullable_to_non_nullable
as int,formattedVendorAmount: null == formattedVendorAmount ? _self.formattedVendorAmount : formattedVendorAmount // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,paymentStatusLabel: null == paymentStatusLabel ? _self.paymentStatusLabel : paymentStatusLabel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as String,proofExpectedBy: null == proofExpectedBy ? _self.proofExpectedBy : proofExpectedBy // ignore: cast_nullable_to_non_nullable
as String,liveStatus: null == liveStatus ? _self._liveStatus : liveStatus // ignore: cast_nullable_to_non_nullable
as List<LiveStatus>,proof: null == proof ? _self.proof : proof // ignore: cast_nullable_to_non_nullable
as ProofInfo,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as PricingInfo,
  ));
}

/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceInfoCopyWith<$Res> get service {
  
  return $ServiceInfoCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VendorInfoCopyWith<$Res> get vendor {
  
  return $VendorInfoCopyWith<$Res>(_self.vendor, (value) {
    return _then(_self.copyWith(vendor: value));
  });
}/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProofInfoCopyWith<$Res> get proof {
  
  return $ProofInfoCopyWith<$Res>(_self.proof, (value) {
    return _then(_self.copyWith(proof: value));
  });
}/// Create a copy of SevaStatusData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PricingInfoCopyWith<$Res> get pricing {
  
  return $PricingInfoCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}
}


/// @nodoc
mixin _$ServiceInfo {

@JsonKey(name: "_id") String get id;@JsonKey(name: "name") String get name;@JsonKey(name: "slug") String get slug;@JsonKey(name: "description") String get description;@JsonKey(name: "icon") String get icon;@JsonKey(name: "lines") List<String> get lines;
/// Create a copy of ServiceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceInfoCopyWith<ServiceInfo> get copyWith => _$ServiceInfoCopyWithImpl<ServiceInfo>(this as ServiceInfo, _$identity);

  /// Serializes this ServiceInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&const DeepCollectionEquality().equals(other.lines, lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,icon,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'ServiceInfo(id: $id, name: $name, slug: $slug, description: $description, icon: $icon, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $ServiceInfoCopyWith<$Res>  {
  factory $ServiceInfoCopyWith(ServiceInfo value, $Res Function(ServiceInfo) _then) = _$ServiceInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "slug") String slug,@JsonKey(name: "description") String description,@JsonKey(name: "icon") String icon,@JsonKey(name: "lines") List<String> lines
});




}
/// @nodoc
class _$ServiceInfoCopyWithImpl<$Res>
    implements $ServiceInfoCopyWith<$Res> {
  _$ServiceInfoCopyWithImpl(this._self, this._then);

  final ServiceInfo _self;
  final $Res Function(ServiceInfo) _then;

/// Create a copy of ServiceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? icon = null,Object? lines = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceInfo].
extension ServiceInfoPatterns on ServiceInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceInfo value)  $default,){
final _that = this;
switch (_that) {
case _ServiceInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "slug")  String slug, @JsonKey(name: "description")  String description, @JsonKey(name: "icon")  String icon, @JsonKey(name: "lines")  List<String> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceInfo() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.icon,_that.lines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "slug")  String slug, @JsonKey(name: "description")  String description, @JsonKey(name: "icon")  String icon, @JsonKey(name: "lines")  List<String> lines)  $default,) {final _that = this;
switch (_that) {
case _ServiceInfo():
return $default(_that.id,_that.name,_that.slug,_that.description,_that.icon,_that.lines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "slug")  String slug, @JsonKey(name: "description")  String description, @JsonKey(name: "icon")  String icon, @JsonKey(name: "lines")  List<String> lines)?  $default,) {final _that = this;
switch (_that) {
case _ServiceInfo() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.icon,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceInfo implements ServiceInfo {
  const _ServiceInfo({@JsonKey(name: "_id") this.id = "", @JsonKey(name: "name") this.name = "", @JsonKey(name: "slug") this.slug = "", @JsonKey(name: "description") this.description = "", @JsonKey(name: "icon") this.icon = "", @JsonKey(name: "lines") final  List<String> lines = const []}): _lines = lines;
  factory _ServiceInfo.fromJson(Map<String, dynamic> json) => _$ServiceInfoFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "slug") final  String slug;
@override@JsonKey(name: "description") final  String description;
@override@JsonKey(name: "icon") final  String icon;
 final  List<String> _lines;
@override@JsonKey(name: "lines") List<String> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of ServiceInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceInfoCopyWith<_ServiceInfo> get copyWith => __$ServiceInfoCopyWithImpl<_ServiceInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&const DeepCollectionEquality().equals(other._lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,icon,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'ServiceInfo(id: $id, name: $name, slug: $slug, description: $description, icon: $icon, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$ServiceInfoCopyWith<$Res> implements $ServiceInfoCopyWith<$Res> {
  factory _$ServiceInfoCopyWith(_ServiceInfo value, $Res Function(_ServiceInfo) _then) = __$ServiceInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "slug") String slug,@JsonKey(name: "description") String description,@JsonKey(name: "icon") String icon,@JsonKey(name: "lines") List<String> lines
});




}
/// @nodoc
class __$ServiceInfoCopyWithImpl<$Res>
    implements _$ServiceInfoCopyWith<$Res> {
  __$ServiceInfoCopyWithImpl(this._self, this._then);

  final _ServiceInfo _self;
  final $Res Function(_ServiceInfo) _then;

/// Create a copy of ServiceInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? icon = null,Object? lines = null,}) {
  return _then(_ServiceInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$VendorInfo {

@JsonKey(name: "_id") String get id;@JsonKey(name: "vendorName") String get vendorName;@JsonKey(name: "location") String get location;@JsonKey(name: "profilePhoto") String get profilePhoto;
/// Create a copy of VendorInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorInfoCopyWith<VendorInfo> get copyWith => _$VendorInfoCopyWithImpl<VendorInfo>(this as VendorInfo, _$identity);

  /// Serializes this VendorInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorName, vendorName) || other.vendorName == vendorName)&&(identical(other.location, location) || other.location == location)&&(identical(other.profilePhoto, profilePhoto) || other.profilePhoto == profilePhoto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorName,location,profilePhoto);

@override
String toString() {
  return 'VendorInfo(id: $id, vendorName: $vendorName, location: $location, profilePhoto: $profilePhoto)';
}


}

/// @nodoc
abstract mixin class $VendorInfoCopyWith<$Res>  {
  factory $VendorInfoCopyWith(VendorInfo value, $Res Function(VendorInfo) _then) = _$VendorInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "vendorName") String vendorName,@JsonKey(name: "location") String location,@JsonKey(name: "profilePhoto") String profilePhoto
});




}
/// @nodoc
class _$VendorInfoCopyWithImpl<$Res>
    implements $VendorInfoCopyWith<$Res> {
  _$VendorInfoCopyWithImpl(this._self, this._then);

  final VendorInfo _self;
  final $Res Function(VendorInfo) _then;

/// Create a copy of VendorInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? vendorName = null,Object? location = null,Object? profilePhoto = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorName: null == vendorName ? _self.vendorName : vendorName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,profilePhoto: null == profilePhoto ? _self.profilePhoto : profilePhoto // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorInfo].
extension VendorInfoPatterns on VendorInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorInfo value)  $default,){
final _that = this;
switch (_that) {
case _VendorInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorInfo value)?  $default,){
final _that = this;
switch (_that) {
case _VendorInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "vendorName")  String vendorName, @JsonKey(name: "location")  String location, @JsonKey(name: "profilePhoto")  String profilePhoto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorInfo() when $default != null:
return $default(_that.id,_that.vendorName,_that.location,_that.profilePhoto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "vendorName")  String vendorName, @JsonKey(name: "location")  String location, @JsonKey(name: "profilePhoto")  String profilePhoto)  $default,) {final _that = this;
switch (_that) {
case _VendorInfo():
return $default(_that.id,_that.vendorName,_that.location,_that.profilePhoto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "vendorName")  String vendorName, @JsonKey(name: "location")  String location, @JsonKey(name: "profilePhoto")  String profilePhoto)?  $default,) {final _that = this;
switch (_that) {
case _VendorInfo() when $default != null:
return $default(_that.id,_that.vendorName,_that.location,_that.profilePhoto);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorInfo implements VendorInfo {
  const _VendorInfo({@JsonKey(name: "_id") this.id = "", @JsonKey(name: "vendorName") this.vendorName = "", @JsonKey(name: "location") this.location = "", @JsonKey(name: "profilePhoto") this.profilePhoto = ""});
  factory _VendorInfo.fromJson(Map<String, dynamic> json) => _$VendorInfoFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey(name: "vendorName") final  String vendorName;
@override@JsonKey(name: "location") final  String location;
@override@JsonKey(name: "profilePhoto") final  String profilePhoto;

/// Create a copy of VendorInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorInfoCopyWith<_VendorInfo> get copyWith => __$VendorInfoCopyWithImpl<_VendorInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorName, vendorName) || other.vendorName == vendorName)&&(identical(other.location, location) || other.location == location)&&(identical(other.profilePhoto, profilePhoto) || other.profilePhoto == profilePhoto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorName,location,profilePhoto);

@override
String toString() {
  return 'VendorInfo(id: $id, vendorName: $vendorName, location: $location, profilePhoto: $profilePhoto)';
}


}

/// @nodoc
abstract mixin class _$VendorInfoCopyWith<$Res> implements $VendorInfoCopyWith<$Res> {
  factory _$VendorInfoCopyWith(_VendorInfo value, $Res Function(_VendorInfo) _then) = __$VendorInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "vendorName") String vendorName,@JsonKey(name: "location") String location,@JsonKey(name: "profilePhoto") String profilePhoto
});




}
/// @nodoc
class __$VendorInfoCopyWithImpl<$Res>
    implements _$VendorInfoCopyWith<$Res> {
  __$VendorInfoCopyWithImpl(this._self, this._then);

  final _VendorInfo _self;
  final $Res Function(_VendorInfo) _then;

/// Create a copy of VendorInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? vendorName = null,Object? location = null,Object? profilePhoto = null,}) {
  return _then(_VendorInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorName: null == vendorName ? _self.vendorName : vendorName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,profilePhoto: null == profilePhoto ? _self.profilePhoto : profilePhoto // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LiveStatus {

@JsonKey(name: "key") String get key;@JsonKey(name: "title") String get title;@JsonKey(name: "subtitle") String get subtitle;@JsonKey(name: "state") String get state;@JsonKey(name: "at") String get at;@JsonKey(name: "action") dynamic get action;
/// Create a copy of LiveStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveStatusCopyWith<LiveStatus> get copyWith => _$LiveStatusCopyWithImpl<LiveStatus>(this as LiveStatus, _$identity);

  /// Serializes this LiveStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveStatus&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.state, state) || other.state == state)&&(identical(other.at, at) || other.at == at)&&const DeepCollectionEquality().equals(other.action, action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,subtitle,state,at,const DeepCollectionEquality().hash(action));

@override
String toString() {
  return 'LiveStatus(key: $key, title: $title, subtitle: $subtitle, state: $state, at: $at, action: $action)';
}


}

/// @nodoc
abstract mixin class $LiveStatusCopyWith<$Res>  {
  factory $LiveStatusCopyWith(LiveStatus value, $Res Function(LiveStatus) _then) = _$LiveStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "key") String key,@JsonKey(name: "title") String title,@JsonKey(name: "subtitle") String subtitle,@JsonKey(name: "state") String state,@JsonKey(name: "at") String at,@JsonKey(name: "action") dynamic action
});




}
/// @nodoc
class _$LiveStatusCopyWithImpl<$Res>
    implements $LiveStatusCopyWith<$Res> {
  _$LiveStatusCopyWithImpl(this._self, this._then);

  final LiveStatus _self;
  final $Res Function(LiveStatus) _then;

/// Create a copy of LiveStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? title = null,Object? subtitle = null,Object? state = null,Object? at = null,Object? action = freezed,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as String,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveStatus].
extension LiveStatusPatterns on LiveStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveStatus value)  $default,){
final _that = this;
switch (_that) {
case _LiveStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveStatus value)?  $default,){
final _that = this;
switch (_that) {
case _LiveStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "key")  String key, @JsonKey(name: "title")  String title, @JsonKey(name: "subtitle")  String subtitle, @JsonKey(name: "state")  String state, @JsonKey(name: "at")  String at, @JsonKey(name: "action")  dynamic action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveStatus() when $default != null:
return $default(_that.key,_that.title,_that.subtitle,_that.state,_that.at,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "key")  String key, @JsonKey(name: "title")  String title, @JsonKey(name: "subtitle")  String subtitle, @JsonKey(name: "state")  String state, @JsonKey(name: "at")  String at, @JsonKey(name: "action")  dynamic action)  $default,) {final _that = this;
switch (_that) {
case _LiveStatus():
return $default(_that.key,_that.title,_that.subtitle,_that.state,_that.at,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "key")  String key, @JsonKey(name: "title")  String title, @JsonKey(name: "subtitle")  String subtitle, @JsonKey(name: "state")  String state, @JsonKey(name: "at")  String at, @JsonKey(name: "action")  dynamic action)?  $default,) {final _that = this;
switch (_that) {
case _LiveStatus() when $default != null:
return $default(_that.key,_that.title,_that.subtitle,_that.state,_that.at,_that.action);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveStatus implements LiveStatus {
  const _LiveStatus({@JsonKey(name: "key") this.key = "", @JsonKey(name: "title") this.title = "", @JsonKey(name: "subtitle") this.subtitle = "", @JsonKey(name: "state") this.state = "", @JsonKey(name: "at") this.at = "", @JsonKey(name: "action") this.action = null});
  factory _LiveStatus.fromJson(Map<String, dynamic> json) => _$LiveStatusFromJson(json);

@override@JsonKey(name: "key") final  String key;
@override@JsonKey(name: "title") final  String title;
@override@JsonKey(name: "subtitle") final  String subtitle;
@override@JsonKey(name: "state") final  String state;
@override@JsonKey(name: "at") final  String at;
@override@JsonKey(name: "action") final  dynamic action;

/// Create a copy of LiveStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveStatusCopyWith<_LiveStatus> get copyWith => __$LiveStatusCopyWithImpl<_LiveStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveStatus&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.state, state) || other.state == state)&&(identical(other.at, at) || other.at == at)&&const DeepCollectionEquality().equals(other.action, action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,subtitle,state,at,const DeepCollectionEquality().hash(action));

@override
String toString() {
  return 'LiveStatus(key: $key, title: $title, subtitle: $subtitle, state: $state, at: $at, action: $action)';
}


}

/// @nodoc
abstract mixin class _$LiveStatusCopyWith<$Res> implements $LiveStatusCopyWith<$Res> {
  factory _$LiveStatusCopyWith(_LiveStatus value, $Res Function(_LiveStatus) _then) = __$LiveStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "key") String key,@JsonKey(name: "title") String title,@JsonKey(name: "subtitle") String subtitle,@JsonKey(name: "state") String state,@JsonKey(name: "at") String at,@JsonKey(name: "action") dynamic action
});




}
/// @nodoc
class __$LiveStatusCopyWithImpl<$Res>
    implements _$LiveStatusCopyWith<$Res> {
  __$LiveStatusCopyWithImpl(this._self, this._then);

  final _LiveStatus _self;
  final $Res Function(_LiveStatus) _then;

/// Create a copy of LiveStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? title = null,Object? subtitle = null,Object? state = null,Object? at = null,Object? action = freezed,}) {
  return _then(_LiveStatus(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as String,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$ProofInfo {

@JsonKey(name: "available") bool get available;@JsonKey(name: "media") dynamic get media;
/// Create a copy of ProofInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProofInfoCopyWith<ProofInfo> get copyWith => _$ProofInfoCopyWithImpl<ProofInfo>(this as ProofInfo, _$identity);

  /// Serializes this ProofInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProofInfo&&(identical(other.available, available) || other.available == available)&&const DeepCollectionEquality().equals(other.media, media));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available,const DeepCollectionEquality().hash(media));

@override
String toString() {
  return 'ProofInfo(available: $available, media: $media)';
}


}

/// @nodoc
abstract mixin class $ProofInfoCopyWith<$Res>  {
  factory $ProofInfoCopyWith(ProofInfo value, $Res Function(ProofInfo) _then) = _$ProofInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "available") bool available,@JsonKey(name: "media") dynamic media
});




}
/// @nodoc
class _$ProofInfoCopyWithImpl<$Res>
    implements $ProofInfoCopyWith<$Res> {
  _$ProofInfoCopyWithImpl(this._self, this._then);

  final ProofInfo _self;
  final $Res Function(ProofInfo) _then;

/// Create a copy of ProofInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? available = null,Object? media = freezed,}) {
  return _then(_self.copyWith(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ProofInfo].
extension ProofInfoPatterns on ProofInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProofInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProofInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProofInfo value)  $default,){
final _that = this;
switch (_that) {
case _ProofInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProofInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ProofInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "available")  bool available, @JsonKey(name: "media")  dynamic media)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProofInfo() when $default != null:
return $default(_that.available,_that.media);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "available")  bool available, @JsonKey(name: "media")  dynamic media)  $default,) {final _that = this;
switch (_that) {
case _ProofInfo():
return $default(_that.available,_that.media);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "available")  bool available, @JsonKey(name: "media")  dynamic media)?  $default,) {final _that = this;
switch (_that) {
case _ProofInfo() when $default != null:
return $default(_that.available,_that.media);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProofInfo implements ProofInfo {
  const _ProofInfo({@JsonKey(name: "available") this.available = false, @JsonKey(name: "media") this.media = null});
  factory _ProofInfo.fromJson(Map<String, dynamic> json) => _$ProofInfoFromJson(json);

@override@JsonKey(name: "available") final  bool available;
@override@JsonKey(name: "media") final  dynamic media;

/// Create a copy of ProofInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProofInfoCopyWith<_ProofInfo> get copyWith => __$ProofInfoCopyWithImpl<_ProofInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProofInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProofInfo&&(identical(other.available, available) || other.available == available)&&const DeepCollectionEquality().equals(other.media, media));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available,const DeepCollectionEquality().hash(media));

@override
String toString() {
  return 'ProofInfo(available: $available, media: $media)';
}


}

/// @nodoc
abstract mixin class _$ProofInfoCopyWith<$Res> implements $ProofInfoCopyWith<$Res> {
  factory _$ProofInfoCopyWith(_ProofInfo value, $Res Function(_ProofInfo) _then) = __$ProofInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "available") bool available,@JsonKey(name: "media") dynamic media
});




}
/// @nodoc
class __$ProofInfoCopyWithImpl<$Res>
    implements _$ProofInfoCopyWith<$Res> {
  __$ProofInfoCopyWithImpl(this._self, this._then);

  final _ProofInfo _self;
  final $Res Function(_ProofInfo) _then;

/// Create a copy of ProofInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? available = null,Object? media = freezed,}) {
  return _then(_ProofInfo(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$PricingInfo {

@JsonKey(name: "grossAmount") int get grossAmount;@JsonKey(name: "platformFee") int get platformFee;@JsonKey(name: "gstAmount") int get gstAmount;@JsonKey(name: "formattedGrossAmount") String get formattedGrossAmount;@JsonKey(name: "formattedPlatformFee") String get formattedPlatformFee;@JsonKey(name: "formattedGstAmount") String get formattedGstAmount;
/// Create a copy of PricingInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingInfoCopyWith<PricingInfo> get copyWith => _$PricingInfoCopyWithImpl<PricingInfo>(this as PricingInfo, _$identity);

  /// Serializes this PricingInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingInfo&&(identical(other.grossAmount, grossAmount) || other.grossAmount == grossAmount)&&(identical(other.platformFee, platformFee) || other.platformFee == platformFee)&&(identical(other.gstAmount, gstAmount) || other.gstAmount == gstAmount)&&(identical(other.formattedGrossAmount, formattedGrossAmount) || other.formattedGrossAmount == formattedGrossAmount)&&(identical(other.formattedPlatformFee, formattedPlatformFee) || other.formattedPlatformFee == formattedPlatformFee)&&(identical(other.formattedGstAmount, formattedGstAmount) || other.formattedGstAmount == formattedGstAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,grossAmount,platformFee,gstAmount,formattedGrossAmount,formattedPlatformFee,formattedGstAmount);

@override
String toString() {
  return 'PricingInfo(grossAmount: $grossAmount, platformFee: $platformFee, gstAmount: $gstAmount, formattedGrossAmount: $formattedGrossAmount, formattedPlatformFee: $formattedPlatformFee, formattedGstAmount: $formattedGstAmount)';
}


}

/// @nodoc
abstract mixin class $PricingInfoCopyWith<$Res>  {
  factory $PricingInfoCopyWith(PricingInfo value, $Res Function(PricingInfo) _then) = _$PricingInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "grossAmount") int grossAmount,@JsonKey(name: "platformFee") int platformFee,@JsonKey(name: "gstAmount") int gstAmount,@JsonKey(name: "formattedGrossAmount") String formattedGrossAmount,@JsonKey(name: "formattedPlatformFee") String formattedPlatformFee,@JsonKey(name: "formattedGstAmount") String formattedGstAmount
});




}
/// @nodoc
class _$PricingInfoCopyWithImpl<$Res>
    implements $PricingInfoCopyWith<$Res> {
  _$PricingInfoCopyWithImpl(this._self, this._then);

  final PricingInfo _self;
  final $Res Function(PricingInfo) _then;

/// Create a copy of PricingInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? grossAmount = null,Object? platformFee = null,Object? gstAmount = null,Object? formattedGrossAmount = null,Object? formattedPlatformFee = null,Object? formattedGstAmount = null,}) {
  return _then(_self.copyWith(
grossAmount: null == grossAmount ? _self.grossAmount : grossAmount // ignore: cast_nullable_to_non_nullable
as int,platformFee: null == platformFee ? _self.platformFee : platformFee // ignore: cast_nullable_to_non_nullable
as int,gstAmount: null == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as int,formattedGrossAmount: null == formattedGrossAmount ? _self.formattedGrossAmount : formattedGrossAmount // ignore: cast_nullable_to_non_nullable
as String,formattedPlatformFee: null == formattedPlatformFee ? _self.formattedPlatformFee : formattedPlatformFee // ignore: cast_nullable_to_non_nullable
as String,formattedGstAmount: null == formattedGstAmount ? _self.formattedGstAmount : formattedGstAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PricingInfo].
extension PricingInfoPatterns on PricingInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricingInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricingInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricingInfo value)  $default,){
final _that = this;
switch (_that) {
case _PricingInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricingInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PricingInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "grossAmount")  int grossAmount, @JsonKey(name: "platformFee")  int platformFee, @JsonKey(name: "gstAmount")  int gstAmount, @JsonKey(name: "formattedGrossAmount")  String formattedGrossAmount, @JsonKey(name: "formattedPlatformFee")  String formattedPlatformFee, @JsonKey(name: "formattedGstAmount")  String formattedGstAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricingInfo() when $default != null:
return $default(_that.grossAmount,_that.platformFee,_that.gstAmount,_that.formattedGrossAmount,_that.formattedPlatformFee,_that.formattedGstAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "grossAmount")  int grossAmount, @JsonKey(name: "platformFee")  int platformFee, @JsonKey(name: "gstAmount")  int gstAmount, @JsonKey(name: "formattedGrossAmount")  String formattedGrossAmount, @JsonKey(name: "formattedPlatformFee")  String formattedPlatformFee, @JsonKey(name: "formattedGstAmount")  String formattedGstAmount)  $default,) {final _that = this;
switch (_that) {
case _PricingInfo():
return $default(_that.grossAmount,_that.platformFee,_that.gstAmount,_that.formattedGrossAmount,_that.formattedPlatformFee,_that.formattedGstAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "grossAmount")  int grossAmount, @JsonKey(name: "platformFee")  int platformFee, @JsonKey(name: "gstAmount")  int gstAmount, @JsonKey(name: "formattedGrossAmount")  String formattedGrossAmount, @JsonKey(name: "formattedPlatformFee")  String formattedPlatformFee, @JsonKey(name: "formattedGstAmount")  String formattedGstAmount)?  $default,) {final _that = this;
switch (_that) {
case _PricingInfo() when $default != null:
return $default(_that.grossAmount,_that.platformFee,_that.gstAmount,_that.formattedGrossAmount,_that.formattedPlatformFee,_that.formattedGstAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PricingInfo implements PricingInfo {
  const _PricingInfo({@JsonKey(name: "grossAmount") this.grossAmount = 0, @JsonKey(name: "platformFee") this.platformFee = 0, @JsonKey(name: "gstAmount") this.gstAmount = 0, @JsonKey(name: "formattedGrossAmount") this.formattedGrossAmount = "", @JsonKey(name: "formattedPlatformFee") this.formattedPlatformFee = "", @JsonKey(name: "formattedGstAmount") this.formattedGstAmount = ""});
  factory _PricingInfo.fromJson(Map<String, dynamic> json) => _$PricingInfoFromJson(json);

@override@JsonKey(name: "grossAmount") final  int grossAmount;
@override@JsonKey(name: "platformFee") final  int platformFee;
@override@JsonKey(name: "gstAmount") final  int gstAmount;
@override@JsonKey(name: "formattedGrossAmount") final  String formattedGrossAmount;
@override@JsonKey(name: "formattedPlatformFee") final  String formattedPlatformFee;
@override@JsonKey(name: "formattedGstAmount") final  String formattedGstAmount;

/// Create a copy of PricingInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingInfoCopyWith<_PricingInfo> get copyWith => __$PricingInfoCopyWithImpl<_PricingInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricingInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingInfo&&(identical(other.grossAmount, grossAmount) || other.grossAmount == grossAmount)&&(identical(other.platformFee, platformFee) || other.platformFee == platformFee)&&(identical(other.gstAmount, gstAmount) || other.gstAmount == gstAmount)&&(identical(other.formattedGrossAmount, formattedGrossAmount) || other.formattedGrossAmount == formattedGrossAmount)&&(identical(other.formattedPlatformFee, formattedPlatformFee) || other.formattedPlatformFee == formattedPlatformFee)&&(identical(other.formattedGstAmount, formattedGstAmount) || other.formattedGstAmount == formattedGstAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,grossAmount,platformFee,gstAmount,formattedGrossAmount,formattedPlatformFee,formattedGstAmount);

@override
String toString() {
  return 'PricingInfo(grossAmount: $grossAmount, platformFee: $platformFee, gstAmount: $gstAmount, formattedGrossAmount: $formattedGrossAmount, formattedPlatformFee: $formattedPlatformFee, formattedGstAmount: $formattedGstAmount)';
}


}

/// @nodoc
abstract mixin class _$PricingInfoCopyWith<$Res> implements $PricingInfoCopyWith<$Res> {
  factory _$PricingInfoCopyWith(_PricingInfo value, $Res Function(_PricingInfo) _then) = __$PricingInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "grossAmount") int grossAmount,@JsonKey(name: "platformFee") int platformFee,@JsonKey(name: "gstAmount") int gstAmount,@JsonKey(name: "formattedGrossAmount") String formattedGrossAmount,@JsonKey(name: "formattedPlatformFee") String formattedPlatformFee,@JsonKey(name: "formattedGstAmount") String formattedGstAmount
});




}
/// @nodoc
class __$PricingInfoCopyWithImpl<$Res>
    implements _$PricingInfoCopyWith<$Res> {
  __$PricingInfoCopyWithImpl(this._self, this._then);

  final _PricingInfo _self;
  final $Res Function(_PricingInfo) _then;

/// Create a copy of PricingInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? grossAmount = null,Object? platformFee = null,Object? gstAmount = null,Object? formattedGrossAmount = null,Object? formattedPlatformFee = null,Object? formattedGstAmount = null,}) {
  return _then(_PricingInfo(
grossAmount: null == grossAmount ? _self.grossAmount : grossAmount // ignore: cast_nullable_to_non_nullable
as int,platformFee: null == platformFee ? _self.platformFee : platformFee // ignore: cast_nullable_to_non_nullable
as int,gstAmount: null == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as int,formattedGrossAmount: null == formattedGrossAmount ? _self.formattedGrossAmount : formattedGrossAmount // ignore: cast_nullable_to_non_nullable
as String,formattedPlatformFee: null == formattedPlatformFee ? _self.formattedPlatformFee : formattedPlatformFee // ignore: cast_nullable_to_non_nullable
as String,formattedGstAmount: null == formattedGstAmount ? _self.formattedGstAmount : formattedGstAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
