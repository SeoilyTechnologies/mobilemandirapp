// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seva_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SevaHistoryResponse {

 bool get success; String get message; SevaHistoryData get data; Object? get errors;
/// Create a copy of SevaHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaHistoryResponseCopyWith<SevaHistoryResponse> get copyWith => _$SevaHistoryResponseCopyWithImpl<SevaHistoryResponse>(this as SevaHistoryResponse, _$identity);

  /// Serializes this SevaHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaHistoryResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SevaHistoryResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $SevaHistoryResponseCopyWith<$Res>  {
  factory $SevaHistoryResponseCopyWith(SevaHistoryResponse value, $Res Function(SevaHistoryResponse) _then) = _$SevaHistoryResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, SevaHistoryData data, Object? errors
});


$SevaHistoryDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SevaHistoryResponseCopyWithImpl<$Res>
    implements $SevaHistoryResponseCopyWith<$Res> {
  _$SevaHistoryResponseCopyWithImpl(this._self, this._then);

  final SevaHistoryResponse _self;
  final $Res Function(SevaHistoryResponse) _then;

/// Create a copy of SevaHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SevaHistoryData,errors: freezed == errors ? _self.errors : errors ,
  ));
}
/// Create a copy of SevaHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaHistoryDataCopyWith<$Res> get data {
  
  return $SevaHistoryDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SevaHistoryResponse].
extension SevaHistoryResponsePatterns on SevaHistoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SevaHistoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SevaHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SevaHistoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _SevaHistoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SevaHistoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SevaHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  SevaHistoryData data,  Object? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SevaHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  SevaHistoryData data,  Object? errors)  $default,) {final _that = this;
switch (_that) {
case _SevaHistoryResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  SevaHistoryData data,  Object? errors)?  $default,) {final _that = this;
switch (_that) {
case _SevaHistoryResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SevaHistoryResponse implements SevaHistoryResponse {
  const _SevaHistoryResponse({this.success = false, this.message = '', this.data = const SevaHistoryData(), this.errors});
  factory _SevaHistoryResponse.fromJson(Map<String, dynamic> json) => _$SevaHistoryResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override@JsonKey() final  SevaHistoryData data;
@override final  Object? errors;

/// Create a copy of SevaHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SevaHistoryResponseCopyWith<_SevaHistoryResponse> get copyWith => __$SevaHistoryResponseCopyWithImpl<_SevaHistoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SevaHistoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SevaHistoryResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SevaHistoryResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$SevaHistoryResponseCopyWith<$Res> implements $SevaHistoryResponseCopyWith<$Res> {
  factory _$SevaHistoryResponseCopyWith(_SevaHistoryResponse value, $Res Function(_SevaHistoryResponse) _then) = __$SevaHistoryResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, SevaHistoryData data, Object? errors
});


@override $SevaHistoryDataCopyWith<$Res> get data;

}
/// @nodoc
class __$SevaHistoryResponseCopyWithImpl<$Res>
    implements _$SevaHistoryResponseCopyWith<$Res> {
  __$SevaHistoryResponseCopyWithImpl(this._self, this._then);

  final _SevaHistoryResponse _self;
  final $Res Function(_SevaHistoryResponse) _then;

/// Create a copy of SevaHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_SevaHistoryResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SevaHistoryData,errors: freezed == errors ? _self.errors : errors ,
  ));
}

/// Create a copy of SevaHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaHistoryDataCopyWith<$Res> get data {
  
  return $SevaHistoryDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SevaHistoryData {

 List<SevaHistoryItem> get list;@JsonKey(name: 'SevaData') List<SevaHistoryCard> get sevaData; PaginationModel get pagination; SevaSummary get summary;
/// Create a copy of SevaHistoryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaHistoryDataCopyWith<SevaHistoryData> get copyWith => _$SevaHistoryDataCopyWithImpl<SevaHistoryData>(this as SevaHistoryData, _$identity);

  /// Serializes this SevaHistoryData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaHistoryData&&const DeepCollectionEquality().equals(other.list, list)&&const DeepCollectionEquality().equals(other.sevaData, sevaData)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list),const DeepCollectionEquality().hash(sevaData),pagination,summary);

@override
String toString() {
  return 'SevaHistoryData(list: $list, sevaData: $sevaData, pagination: $pagination, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $SevaHistoryDataCopyWith<$Res>  {
  factory $SevaHistoryDataCopyWith(SevaHistoryData value, $Res Function(SevaHistoryData) _then) = _$SevaHistoryDataCopyWithImpl;
@useResult
$Res call({
 List<SevaHistoryItem> list,@JsonKey(name: 'SevaData') List<SevaHistoryCard> sevaData, PaginationModel pagination, SevaSummary summary
});


$PaginationModelCopyWith<$Res> get pagination;$SevaSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$SevaHistoryDataCopyWithImpl<$Res>
    implements $SevaHistoryDataCopyWith<$Res> {
  _$SevaHistoryDataCopyWithImpl(this._self, this._then);

  final SevaHistoryData _self;
  final $Res Function(SevaHistoryData) _then;

/// Create a copy of SevaHistoryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = null,Object? sevaData = null,Object? pagination = null,Object? summary = null,}) {
  return _then(_self.copyWith(
list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<SevaHistoryItem>,sevaData: null == sevaData ? _self.sevaData : sevaData // ignore: cast_nullable_to_non_nullable
as List<SevaHistoryCard>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as SevaSummary,
  ));
}
/// Create a copy of SevaHistoryData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res> get pagination {
  
  return $PaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of SevaHistoryData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaSummaryCopyWith<$Res> get summary {
  
  return $SevaSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [SevaHistoryData].
extension SevaHistoryDataPatterns on SevaHistoryData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SevaHistoryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SevaHistoryData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SevaHistoryData value)  $default,){
final _that = this;
switch (_that) {
case _SevaHistoryData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SevaHistoryData value)?  $default,){
final _that = this;
switch (_that) {
case _SevaHistoryData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SevaHistoryItem> list, @JsonKey(name: 'SevaData')  List<SevaHistoryCard> sevaData,  PaginationModel pagination,  SevaSummary summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SevaHistoryData() when $default != null:
return $default(_that.list,_that.sevaData,_that.pagination,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SevaHistoryItem> list, @JsonKey(name: 'SevaData')  List<SevaHistoryCard> sevaData,  PaginationModel pagination,  SevaSummary summary)  $default,) {final _that = this;
switch (_that) {
case _SevaHistoryData():
return $default(_that.list,_that.sevaData,_that.pagination,_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SevaHistoryItem> list, @JsonKey(name: 'SevaData')  List<SevaHistoryCard> sevaData,  PaginationModel pagination,  SevaSummary summary)?  $default,) {final _that = this;
switch (_that) {
case _SevaHistoryData() when $default != null:
return $default(_that.list,_that.sevaData,_that.pagination,_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SevaHistoryData implements SevaHistoryData {
  const _SevaHistoryData({final  List<SevaHistoryItem> list = const [], @JsonKey(name: 'SevaData') final  List<SevaHistoryCard> sevaData = const [], this.pagination = const PaginationModel(), this.summary = const SevaSummary()}): _list = list,_sevaData = sevaData;
  factory _SevaHistoryData.fromJson(Map<String, dynamic> json) => _$SevaHistoryDataFromJson(json);

 final  List<SevaHistoryItem> _list;
@override@JsonKey() List<SevaHistoryItem> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

 final  List<SevaHistoryCard> _sevaData;
@override@JsonKey(name: 'SevaData') List<SevaHistoryCard> get sevaData {
  if (_sevaData is EqualUnmodifiableListView) return _sevaData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sevaData);
}

@override@JsonKey() final  PaginationModel pagination;
@override@JsonKey() final  SevaSummary summary;

/// Create a copy of SevaHistoryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SevaHistoryDataCopyWith<_SevaHistoryData> get copyWith => __$SevaHistoryDataCopyWithImpl<_SevaHistoryData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SevaHistoryDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SevaHistoryData&&const DeepCollectionEquality().equals(other._list, _list)&&const DeepCollectionEquality().equals(other._sevaData, _sevaData)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),const DeepCollectionEquality().hash(_sevaData),pagination,summary);

@override
String toString() {
  return 'SevaHistoryData(list: $list, sevaData: $sevaData, pagination: $pagination, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$SevaHistoryDataCopyWith<$Res> implements $SevaHistoryDataCopyWith<$Res> {
  factory _$SevaHistoryDataCopyWith(_SevaHistoryData value, $Res Function(_SevaHistoryData) _then) = __$SevaHistoryDataCopyWithImpl;
@override @useResult
$Res call({
 List<SevaHistoryItem> list,@JsonKey(name: 'SevaData') List<SevaHistoryCard> sevaData, PaginationModel pagination, SevaSummary summary
});


@override $PaginationModelCopyWith<$Res> get pagination;@override $SevaSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$SevaHistoryDataCopyWithImpl<$Res>
    implements _$SevaHistoryDataCopyWith<$Res> {
  __$SevaHistoryDataCopyWithImpl(this._self, this._then);

  final _SevaHistoryData _self;
  final $Res Function(_SevaHistoryData) _then;

/// Create a copy of SevaHistoryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = null,Object? sevaData = null,Object? pagination = null,Object? summary = null,}) {
  return _then(_SevaHistoryData(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<SevaHistoryItem>,sevaData: null == sevaData ? _self._sevaData : sevaData // ignore: cast_nullable_to_non_nullable
as List<SevaHistoryCard>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as SevaSummary,
  ));
}

/// Create a copy of SevaHistoryData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res> get pagination {
  
  return $PaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of SevaHistoryData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaSummaryCopyWith<$Res> get summary {
  
  return $SevaSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$SevaHistoryItem {

@JsonKey(name: '_id') String get id; ServiceModel get service; VendorModel get vendor; String get donorName; String get sevaName; int get vendorAmount; String get formattedVendorAmount; int get paidAmount; String get formattedPaidAmount; String get paymentStatus; String get paymentStatusLabel; String get status; String get statusLabel; String get requestedAt; String get proofExpectedBy; List<LiveStatusModel> get liveStatus; ProofModel get proof; PricingModel get pricing;
/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaHistoryItemCopyWith<SevaHistoryItem> get copyWith => _$SevaHistoryItemCopyWithImpl<SevaHistoryItem>(this as SevaHistoryItem, _$identity);

  /// Serializes this SevaHistoryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaHistoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.service, service) || other.service == service)&&(identical(other.vendor, vendor) || other.vendor == vendor)&&(identical(other.donorName, donorName) || other.donorName == donorName)&&(identical(other.sevaName, sevaName) || other.sevaName == sevaName)&&(identical(other.vendorAmount, vendorAmount) || other.vendorAmount == vendorAmount)&&(identical(other.formattedVendorAmount, formattedVendorAmount) || other.formattedVendorAmount == formattedVendorAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.formattedPaidAmount, formattedPaidAmount) || other.formattedPaidAmount == formattedPaidAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentStatusLabel, paymentStatusLabel) || other.paymentStatusLabel == paymentStatusLabel)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.proofExpectedBy, proofExpectedBy) || other.proofExpectedBy == proofExpectedBy)&&const DeepCollectionEquality().equals(other.liveStatus, liveStatus)&&(identical(other.proof, proof) || other.proof == proof)&&(identical(other.pricing, pricing) || other.pricing == pricing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,service,vendor,donorName,sevaName,vendorAmount,formattedVendorAmount,paidAmount,formattedPaidAmount,paymentStatus,paymentStatusLabel,status,statusLabel,requestedAt,proofExpectedBy,const DeepCollectionEquality().hash(liveStatus),proof,pricing);

@override
String toString() {
  return 'SevaHistoryItem(id: $id, service: $service, vendor: $vendor, donorName: $donorName, sevaName: $sevaName, vendorAmount: $vendorAmount, formattedVendorAmount: $formattedVendorAmount, paidAmount: $paidAmount, formattedPaidAmount: $formattedPaidAmount, paymentStatus: $paymentStatus, paymentStatusLabel: $paymentStatusLabel, status: $status, statusLabel: $statusLabel, requestedAt: $requestedAt, proofExpectedBy: $proofExpectedBy, liveStatus: $liveStatus, proof: $proof, pricing: $pricing)';
}


}

/// @nodoc
abstract mixin class $SevaHistoryItemCopyWith<$Res>  {
  factory $SevaHistoryItemCopyWith(SevaHistoryItem value, $Res Function(SevaHistoryItem) _then) = _$SevaHistoryItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, ServiceModel service, VendorModel vendor, String donorName, String sevaName, int vendorAmount, String formattedVendorAmount, int paidAmount, String formattedPaidAmount, String paymentStatus, String paymentStatusLabel, String status, String statusLabel, String requestedAt, String proofExpectedBy, List<LiveStatusModel> liveStatus, ProofModel proof, PricingModel pricing
});


$ServiceModelCopyWith<$Res> get service;$VendorModelCopyWith<$Res> get vendor;$ProofModelCopyWith<$Res> get proof;$PricingModelCopyWith<$Res> get pricing;

}
/// @nodoc
class _$SevaHistoryItemCopyWithImpl<$Res>
    implements $SevaHistoryItemCopyWith<$Res> {
  _$SevaHistoryItemCopyWithImpl(this._self, this._then);

  final SevaHistoryItem _self;
  final $Res Function(SevaHistoryItem) _then;

/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? service = null,Object? vendor = null,Object? donorName = null,Object? sevaName = null,Object? vendorAmount = null,Object? formattedVendorAmount = null,Object? paidAmount = null,Object? formattedPaidAmount = null,Object? paymentStatus = null,Object? paymentStatusLabel = null,Object? status = null,Object? statusLabel = null,Object? requestedAt = null,Object? proofExpectedBy = null,Object? liveStatus = null,Object? proof = null,Object? pricing = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceModel,vendor: null == vendor ? _self.vendor : vendor // ignore: cast_nullable_to_non_nullable
as VendorModel,donorName: null == donorName ? _self.donorName : donorName // ignore: cast_nullable_to_non_nullable
as String,sevaName: null == sevaName ? _self.sevaName : sevaName // ignore: cast_nullable_to_non_nullable
as String,vendorAmount: null == vendorAmount ? _self.vendorAmount : vendorAmount // ignore: cast_nullable_to_non_nullable
as int,formattedVendorAmount: null == formattedVendorAmount ? _self.formattedVendorAmount : formattedVendorAmount // ignore: cast_nullable_to_non_nullable
as String,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as int,formattedPaidAmount: null == formattedPaidAmount ? _self.formattedPaidAmount : formattedPaidAmount // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,paymentStatusLabel: null == paymentStatusLabel ? _self.paymentStatusLabel : paymentStatusLabel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as String,proofExpectedBy: null == proofExpectedBy ? _self.proofExpectedBy : proofExpectedBy // ignore: cast_nullable_to_non_nullable
as String,liveStatus: null == liveStatus ? _self.liveStatus : liveStatus // ignore: cast_nullable_to_non_nullable
as List<LiveStatusModel>,proof: null == proof ? _self.proof : proof // ignore: cast_nullable_to_non_nullable
as ProofModel,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as PricingModel,
  ));
}
/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceModelCopyWith<$Res> get service {
  
  return $ServiceModelCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VendorModelCopyWith<$Res> get vendor {
  
  return $VendorModelCopyWith<$Res>(_self.vendor, (value) {
    return _then(_self.copyWith(vendor: value));
  });
}/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProofModelCopyWith<$Res> get proof {
  
  return $ProofModelCopyWith<$Res>(_self.proof, (value) {
    return _then(_self.copyWith(proof: value));
  });
}/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PricingModelCopyWith<$Res> get pricing {
  
  return $PricingModelCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}
}


/// Adds pattern-matching-related methods to [SevaHistoryItem].
extension SevaHistoryItemPatterns on SevaHistoryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SevaHistoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SevaHistoryItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SevaHistoryItem value)  $default,){
final _that = this;
switch (_that) {
case _SevaHistoryItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SevaHistoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _SevaHistoryItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  ServiceModel service,  VendorModel vendor,  String donorName,  String sevaName,  int vendorAmount,  String formattedVendorAmount,  int paidAmount,  String formattedPaidAmount,  String paymentStatus,  String paymentStatusLabel,  String status,  String statusLabel,  String requestedAt,  String proofExpectedBy,  List<LiveStatusModel> liveStatus,  ProofModel proof,  PricingModel pricing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SevaHistoryItem() when $default != null:
return $default(_that.id,_that.service,_that.vendor,_that.donorName,_that.sevaName,_that.vendorAmount,_that.formattedVendorAmount,_that.paidAmount,_that.formattedPaidAmount,_that.paymentStatus,_that.paymentStatusLabel,_that.status,_that.statusLabel,_that.requestedAt,_that.proofExpectedBy,_that.liveStatus,_that.proof,_that.pricing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  ServiceModel service,  VendorModel vendor,  String donorName,  String sevaName,  int vendorAmount,  String formattedVendorAmount,  int paidAmount,  String formattedPaidAmount,  String paymentStatus,  String paymentStatusLabel,  String status,  String statusLabel,  String requestedAt,  String proofExpectedBy,  List<LiveStatusModel> liveStatus,  ProofModel proof,  PricingModel pricing)  $default,) {final _that = this;
switch (_that) {
case _SevaHistoryItem():
return $default(_that.id,_that.service,_that.vendor,_that.donorName,_that.sevaName,_that.vendorAmount,_that.formattedVendorAmount,_that.paidAmount,_that.formattedPaidAmount,_that.paymentStatus,_that.paymentStatusLabel,_that.status,_that.statusLabel,_that.requestedAt,_that.proofExpectedBy,_that.liveStatus,_that.proof,_that.pricing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  ServiceModel service,  VendorModel vendor,  String donorName,  String sevaName,  int vendorAmount,  String formattedVendorAmount,  int paidAmount,  String formattedPaidAmount,  String paymentStatus,  String paymentStatusLabel,  String status,  String statusLabel,  String requestedAt,  String proofExpectedBy,  List<LiveStatusModel> liveStatus,  ProofModel proof,  PricingModel pricing)?  $default,) {final _that = this;
switch (_that) {
case _SevaHistoryItem() when $default != null:
return $default(_that.id,_that.service,_that.vendor,_that.donorName,_that.sevaName,_that.vendorAmount,_that.formattedVendorAmount,_that.paidAmount,_that.formattedPaidAmount,_that.paymentStatus,_that.paymentStatusLabel,_that.status,_that.statusLabel,_that.requestedAt,_that.proofExpectedBy,_that.liveStatus,_that.proof,_that.pricing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SevaHistoryItem implements SevaHistoryItem {
  const _SevaHistoryItem({@JsonKey(name: '_id') this.id = '', this.service = const ServiceModel(), this.vendor = const VendorModel(), this.donorName = '', this.sevaName = '', this.vendorAmount = 0, this.formattedVendorAmount = '', this.paidAmount = 0, this.formattedPaidAmount = '', this.paymentStatus = '', this.paymentStatusLabel = '', this.status = '', this.statusLabel = '', this.requestedAt = '', this.proofExpectedBy = '', final  List<LiveStatusModel> liveStatus = const [], this.proof = const ProofModel(), this.pricing = const PricingModel()}): _liveStatus = liveStatus;
  factory _SevaHistoryItem.fromJson(Map<String, dynamic> json) => _$SevaHistoryItemFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  ServiceModel service;
@override@JsonKey() final  VendorModel vendor;
@override@JsonKey() final  String donorName;
@override@JsonKey() final  String sevaName;
@override@JsonKey() final  int vendorAmount;
@override@JsonKey() final  String formattedVendorAmount;
@override@JsonKey() final  int paidAmount;
@override@JsonKey() final  String formattedPaidAmount;
@override@JsonKey() final  String paymentStatus;
@override@JsonKey() final  String paymentStatusLabel;
@override@JsonKey() final  String status;
@override@JsonKey() final  String statusLabel;
@override@JsonKey() final  String requestedAt;
@override@JsonKey() final  String proofExpectedBy;
 final  List<LiveStatusModel> _liveStatus;
@override@JsonKey() List<LiveStatusModel> get liveStatus {
  if (_liveStatus is EqualUnmodifiableListView) return _liveStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_liveStatus);
}

@override@JsonKey() final  ProofModel proof;
@override@JsonKey() final  PricingModel pricing;

/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SevaHistoryItemCopyWith<_SevaHistoryItem> get copyWith => __$SevaHistoryItemCopyWithImpl<_SevaHistoryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SevaHistoryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SevaHistoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.service, service) || other.service == service)&&(identical(other.vendor, vendor) || other.vendor == vendor)&&(identical(other.donorName, donorName) || other.donorName == donorName)&&(identical(other.sevaName, sevaName) || other.sevaName == sevaName)&&(identical(other.vendorAmount, vendorAmount) || other.vendorAmount == vendorAmount)&&(identical(other.formattedVendorAmount, formattedVendorAmount) || other.formattedVendorAmount == formattedVendorAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.formattedPaidAmount, formattedPaidAmount) || other.formattedPaidAmount == formattedPaidAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentStatusLabel, paymentStatusLabel) || other.paymentStatusLabel == paymentStatusLabel)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.proofExpectedBy, proofExpectedBy) || other.proofExpectedBy == proofExpectedBy)&&const DeepCollectionEquality().equals(other._liveStatus, _liveStatus)&&(identical(other.proof, proof) || other.proof == proof)&&(identical(other.pricing, pricing) || other.pricing == pricing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,service,vendor,donorName,sevaName,vendorAmount,formattedVendorAmount,paidAmount,formattedPaidAmount,paymentStatus,paymentStatusLabel,status,statusLabel,requestedAt,proofExpectedBy,const DeepCollectionEquality().hash(_liveStatus),proof,pricing);

@override
String toString() {
  return 'SevaHistoryItem(id: $id, service: $service, vendor: $vendor, donorName: $donorName, sevaName: $sevaName, vendorAmount: $vendorAmount, formattedVendorAmount: $formattedVendorAmount, paidAmount: $paidAmount, formattedPaidAmount: $formattedPaidAmount, paymentStatus: $paymentStatus, paymentStatusLabel: $paymentStatusLabel, status: $status, statusLabel: $statusLabel, requestedAt: $requestedAt, proofExpectedBy: $proofExpectedBy, liveStatus: $liveStatus, proof: $proof, pricing: $pricing)';
}


}

/// @nodoc
abstract mixin class _$SevaHistoryItemCopyWith<$Res> implements $SevaHistoryItemCopyWith<$Res> {
  factory _$SevaHistoryItemCopyWith(_SevaHistoryItem value, $Res Function(_SevaHistoryItem) _then) = __$SevaHistoryItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, ServiceModel service, VendorModel vendor, String donorName, String sevaName, int vendorAmount, String formattedVendorAmount, int paidAmount, String formattedPaidAmount, String paymentStatus, String paymentStatusLabel, String status, String statusLabel, String requestedAt, String proofExpectedBy, List<LiveStatusModel> liveStatus, ProofModel proof, PricingModel pricing
});


@override $ServiceModelCopyWith<$Res> get service;@override $VendorModelCopyWith<$Res> get vendor;@override $ProofModelCopyWith<$Res> get proof;@override $PricingModelCopyWith<$Res> get pricing;

}
/// @nodoc
class __$SevaHistoryItemCopyWithImpl<$Res>
    implements _$SevaHistoryItemCopyWith<$Res> {
  __$SevaHistoryItemCopyWithImpl(this._self, this._then);

  final _SevaHistoryItem _self;
  final $Res Function(_SevaHistoryItem) _then;

/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? service = null,Object? vendor = null,Object? donorName = null,Object? sevaName = null,Object? vendorAmount = null,Object? formattedVendorAmount = null,Object? paidAmount = null,Object? formattedPaidAmount = null,Object? paymentStatus = null,Object? paymentStatusLabel = null,Object? status = null,Object? statusLabel = null,Object? requestedAt = null,Object? proofExpectedBy = null,Object? liveStatus = null,Object? proof = null,Object? pricing = null,}) {
  return _then(_SevaHistoryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceModel,vendor: null == vendor ? _self.vendor : vendor // ignore: cast_nullable_to_non_nullable
as VendorModel,donorName: null == donorName ? _self.donorName : donorName // ignore: cast_nullable_to_non_nullable
as String,sevaName: null == sevaName ? _self.sevaName : sevaName // ignore: cast_nullable_to_non_nullable
as String,vendorAmount: null == vendorAmount ? _self.vendorAmount : vendorAmount // ignore: cast_nullable_to_non_nullable
as int,formattedVendorAmount: null == formattedVendorAmount ? _self.formattedVendorAmount : formattedVendorAmount // ignore: cast_nullable_to_non_nullable
as String,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as int,formattedPaidAmount: null == formattedPaidAmount ? _self.formattedPaidAmount : formattedPaidAmount // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,paymentStatusLabel: null == paymentStatusLabel ? _self.paymentStatusLabel : paymentStatusLabel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as String,proofExpectedBy: null == proofExpectedBy ? _self.proofExpectedBy : proofExpectedBy // ignore: cast_nullable_to_non_nullable
as String,liveStatus: null == liveStatus ? _self._liveStatus : liveStatus // ignore: cast_nullable_to_non_nullable
as List<LiveStatusModel>,proof: null == proof ? _self.proof : proof // ignore: cast_nullable_to_non_nullable
as ProofModel,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as PricingModel,
  ));
}

/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceModelCopyWith<$Res> get service {
  
  return $ServiceModelCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VendorModelCopyWith<$Res> get vendor {
  
  return $VendorModelCopyWith<$Res>(_self.vendor, (value) {
    return _then(_self.copyWith(vendor: value));
  });
}/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProofModelCopyWith<$Res> get proof {
  
  return $ProofModelCopyWith<$Res>(_self.proof, (value) {
    return _then(_self.copyWith(proof: value));
  });
}/// Create a copy of SevaHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PricingModelCopyWith<$Res> get pricing {
  
  return $PricingModelCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}
}


/// @nodoc
mixin _$ServiceModel {

@JsonKey(name: '_id') String get id; String get name; String get slug; String get description; String get icon; List<String> get lines;
/// Create a copy of ServiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceModelCopyWith<ServiceModel> get copyWith => _$ServiceModelCopyWithImpl<ServiceModel>(this as ServiceModel, _$identity);

  /// Serializes this ServiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&const DeepCollectionEquality().equals(other.lines, lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,icon,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'ServiceModel(id: $id, name: $name, slug: $slug, description: $description, icon: $icon, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $ServiceModelCopyWith<$Res>  {
  factory $ServiceModelCopyWith(ServiceModel value, $Res Function(ServiceModel) _then) = _$ServiceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String slug, String description, String icon, List<String> lines
});




}
/// @nodoc
class _$ServiceModelCopyWithImpl<$Res>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._self, this._then);

  final ServiceModel _self;
  final $Res Function(ServiceModel) _then;

/// Create a copy of ServiceModel
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


/// Adds pattern-matching-related methods to [ServiceModel].
extension ServiceModelPatterns on ServiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceModel value)  $default,){
final _that = this;
switch (_that) {
case _ServiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String slug,  String description,  String icon,  List<String> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String slug,  String description,  String icon,  List<String> lines)  $default,) {final _that = this;
switch (_that) {
case _ServiceModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String name,  String slug,  String description,  String icon,  List<String> lines)?  $default,) {final _that = this;
switch (_that) {
case _ServiceModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.icon,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceModel implements ServiceModel {
  const _ServiceModel({@JsonKey(name: '_id') this.id = '', this.name = '', this.slug = '', this.description = '', this.icon = '', final  List<String> lines = const []}): _lines = lines;
  factory _ServiceModel.fromJson(Map<String, dynamic> json) => _$ServiceModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String description;
@override@JsonKey() final  String icon;
 final  List<String> _lines;
@override@JsonKey() List<String> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of ServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceModelCopyWith<_ServiceModel> get copyWith => __$ServiceModelCopyWithImpl<_ServiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&const DeepCollectionEquality().equals(other._lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,icon,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'ServiceModel(id: $id, name: $name, slug: $slug, description: $description, icon: $icon, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$ServiceModelCopyWith<$Res> implements $ServiceModelCopyWith<$Res> {
  factory _$ServiceModelCopyWith(_ServiceModel value, $Res Function(_ServiceModel) _then) = __$ServiceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String slug, String description, String icon, List<String> lines
});




}
/// @nodoc
class __$ServiceModelCopyWithImpl<$Res>
    implements _$ServiceModelCopyWith<$Res> {
  __$ServiceModelCopyWithImpl(this._self, this._then);

  final _ServiceModel _self;
  final $Res Function(_ServiceModel) _then;

/// Create a copy of ServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? icon = null,Object? lines = null,}) {
  return _then(_ServiceModel(
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
mixin _$VendorModel {

@JsonKey(name: '_id') String get id; String get vendorName; String get location; String get profilePhoto;
/// Create a copy of VendorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorModelCopyWith<VendorModel> get copyWith => _$VendorModelCopyWithImpl<VendorModel>(this as VendorModel, _$identity);

  /// Serializes this VendorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorName, vendorName) || other.vendorName == vendorName)&&(identical(other.location, location) || other.location == location)&&(identical(other.profilePhoto, profilePhoto) || other.profilePhoto == profilePhoto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorName,location,profilePhoto);

@override
String toString() {
  return 'VendorModel(id: $id, vendorName: $vendorName, location: $location, profilePhoto: $profilePhoto)';
}


}

/// @nodoc
abstract mixin class $VendorModelCopyWith<$Res>  {
  factory $VendorModelCopyWith(VendorModel value, $Res Function(VendorModel) _then) = _$VendorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String vendorName, String location, String profilePhoto
});




}
/// @nodoc
class _$VendorModelCopyWithImpl<$Res>
    implements $VendorModelCopyWith<$Res> {
  _$VendorModelCopyWithImpl(this._self, this._then);

  final VendorModel _self;
  final $Res Function(VendorModel) _then;

/// Create a copy of VendorModel
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


/// Adds pattern-matching-related methods to [VendorModel].
extension VendorModelPatterns on VendorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorModel value)  $default,){
final _that = this;
switch (_that) {
case _VendorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorModel value)?  $default,){
final _that = this;
switch (_that) {
case _VendorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String vendorName,  String location,  String profilePhoto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String vendorName,  String location,  String profilePhoto)  $default,) {final _that = this;
switch (_that) {
case _VendorModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String vendorName,  String location,  String profilePhoto)?  $default,) {final _that = this;
switch (_that) {
case _VendorModel() when $default != null:
return $default(_that.id,_that.vendorName,_that.location,_that.profilePhoto);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorModel implements VendorModel {
  const _VendorModel({@JsonKey(name: '_id') this.id = '', this.vendorName = '', this.location = '', this.profilePhoto = ''});
  factory _VendorModel.fromJson(Map<String, dynamic> json) => _$VendorModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String vendorName;
@override@JsonKey() final  String location;
@override@JsonKey() final  String profilePhoto;

/// Create a copy of VendorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorModelCopyWith<_VendorModel> get copyWith => __$VendorModelCopyWithImpl<_VendorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorName, vendorName) || other.vendorName == vendorName)&&(identical(other.location, location) || other.location == location)&&(identical(other.profilePhoto, profilePhoto) || other.profilePhoto == profilePhoto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorName,location,profilePhoto);

@override
String toString() {
  return 'VendorModel(id: $id, vendorName: $vendorName, location: $location, profilePhoto: $profilePhoto)';
}


}

/// @nodoc
abstract mixin class _$VendorModelCopyWith<$Res> implements $VendorModelCopyWith<$Res> {
  factory _$VendorModelCopyWith(_VendorModel value, $Res Function(_VendorModel) _then) = __$VendorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String vendorName, String location, String profilePhoto
});




}
/// @nodoc
class __$VendorModelCopyWithImpl<$Res>
    implements _$VendorModelCopyWith<$Res> {
  __$VendorModelCopyWithImpl(this._self, this._then);

  final _VendorModel _self;
  final $Res Function(_VendorModel) _then;

/// Create a copy of VendorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? vendorName = null,Object? location = null,Object? profilePhoto = null,}) {
  return _then(_VendorModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorName: null == vendorName ? _self.vendorName : vendorName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,profilePhoto: null == profilePhoto ? _self.profilePhoto : profilePhoto // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LiveStatusModel {

 String get key; String get title; String get subtitle; String get state; String get at; String get action;
/// Create a copy of LiveStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveStatusModelCopyWith<LiveStatusModel> get copyWith => _$LiveStatusModelCopyWithImpl<LiveStatusModel>(this as LiveStatusModel, _$identity);

  /// Serializes this LiveStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveStatusModel&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.state, state) || other.state == state)&&(identical(other.at, at) || other.at == at)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,subtitle,state,at,action);

@override
String toString() {
  return 'LiveStatusModel(key: $key, title: $title, subtitle: $subtitle, state: $state, at: $at, action: $action)';
}


}

/// @nodoc
abstract mixin class $LiveStatusModelCopyWith<$Res>  {
  factory $LiveStatusModelCopyWith(LiveStatusModel value, $Res Function(LiveStatusModel) _then) = _$LiveStatusModelCopyWithImpl;
@useResult
$Res call({
 String key, String title, String subtitle, String state, String at, String action
});




}
/// @nodoc
class _$LiveStatusModelCopyWithImpl<$Res>
    implements $LiveStatusModelCopyWith<$Res> {
  _$LiveStatusModelCopyWithImpl(this._self, this._then);

  final LiveStatusModel _self;
  final $Res Function(LiveStatusModel) _then;

/// Create a copy of LiveStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? title = null,Object? subtitle = null,Object? state = null,Object? at = null,Object? action = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveStatusModel].
extension LiveStatusModelPatterns on LiveStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _LiveStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _LiveStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String title,  String subtitle,  String state,  String at,  String action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveStatusModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String title,  String subtitle,  String state,  String at,  String action)  $default,) {final _that = this;
switch (_that) {
case _LiveStatusModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String title,  String subtitle,  String state,  String at,  String action)?  $default,) {final _that = this;
switch (_that) {
case _LiveStatusModel() when $default != null:
return $default(_that.key,_that.title,_that.subtitle,_that.state,_that.at,_that.action);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveStatusModel implements LiveStatusModel {
  const _LiveStatusModel({this.key = '', this.title = '', this.subtitle = '', this.state = '', this.at = '', this.action = ''});
  factory _LiveStatusModel.fromJson(Map<String, dynamic> json) => _$LiveStatusModelFromJson(json);

@override@JsonKey() final  String key;
@override@JsonKey() final  String title;
@override@JsonKey() final  String subtitle;
@override@JsonKey() final  String state;
@override@JsonKey() final  String at;
@override@JsonKey() final  String action;

/// Create a copy of LiveStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveStatusModelCopyWith<_LiveStatusModel> get copyWith => __$LiveStatusModelCopyWithImpl<_LiveStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveStatusModel&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.state, state) || other.state == state)&&(identical(other.at, at) || other.at == at)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,subtitle,state,at,action);

@override
String toString() {
  return 'LiveStatusModel(key: $key, title: $title, subtitle: $subtitle, state: $state, at: $at, action: $action)';
}


}

/// @nodoc
abstract mixin class _$LiveStatusModelCopyWith<$Res> implements $LiveStatusModelCopyWith<$Res> {
  factory _$LiveStatusModelCopyWith(_LiveStatusModel value, $Res Function(_LiveStatusModel) _then) = __$LiveStatusModelCopyWithImpl;
@override @useResult
$Res call({
 String key, String title, String subtitle, String state, String at, String action
});




}
/// @nodoc
class __$LiveStatusModelCopyWithImpl<$Res>
    implements _$LiveStatusModelCopyWith<$Res> {
  __$LiveStatusModelCopyWithImpl(this._self, this._then);

  final _LiveStatusModel _self;
  final $Res Function(_LiveStatusModel) _then;

/// Create a copy of LiveStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? title = null,Object? subtitle = null,Object? state = null,Object? at = null,Object? action = null,}) {
  return _then(_LiveStatusModel(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProofModel {

 bool get available; MediaModel? get media; String get recordedAt; String get gpsAddress;
/// Create a copy of ProofModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProofModelCopyWith<ProofModel> get copyWith => _$ProofModelCopyWithImpl<ProofModel>(this as ProofModel, _$identity);

  /// Serializes this ProofModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProofModel&&(identical(other.available, available) || other.available == available)&&(identical(other.media, media) || other.media == media)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt)&&(identical(other.gpsAddress, gpsAddress) || other.gpsAddress == gpsAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available,media,recordedAt,gpsAddress);

@override
String toString() {
  return 'ProofModel(available: $available, media: $media, recordedAt: $recordedAt, gpsAddress: $gpsAddress)';
}


}

/// @nodoc
abstract mixin class $ProofModelCopyWith<$Res>  {
  factory $ProofModelCopyWith(ProofModel value, $Res Function(ProofModel) _then) = _$ProofModelCopyWithImpl;
@useResult
$Res call({
 bool available, MediaModel? media, String recordedAt, String gpsAddress
});


$MediaModelCopyWith<$Res>? get media;

}
/// @nodoc
class _$ProofModelCopyWithImpl<$Res>
    implements $ProofModelCopyWith<$Res> {
  _$ProofModelCopyWithImpl(this._self, this._then);

  final ProofModel _self;
  final $Res Function(ProofModel) _then;

/// Create a copy of ProofModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? available = null,Object? media = freezed,Object? recordedAt = null,Object? gpsAddress = null,}) {
  return _then(_self.copyWith(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as MediaModel?,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as String,gpsAddress: null == gpsAddress ? _self.gpsAddress : gpsAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ProofModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaModelCopyWith<$Res>? get media {
    if (_self.media == null) {
    return null;
  }

  return $MediaModelCopyWith<$Res>(_self.media!, (value) {
    return _then(_self.copyWith(media: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProofModel].
extension ProofModelPatterns on ProofModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProofModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProofModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProofModel value)  $default,){
final _that = this;
switch (_that) {
case _ProofModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProofModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProofModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool available,  MediaModel? media,  String recordedAt,  String gpsAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProofModel() when $default != null:
return $default(_that.available,_that.media,_that.recordedAt,_that.gpsAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool available,  MediaModel? media,  String recordedAt,  String gpsAddress)  $default,) {final _that = this;
switch (_that) {
case _ProofModel():
return $default(_that.available,_that.media,_that.recordedAt,_that.gpsAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool available,  MediaModel? media,  String recordedAt,  String gpsAddress)?  $default,) {final _that = this;
switch (_that) {
case _ProofModel() when $default != null:
return $default(_that.available,_that.media,_that.recordedAt,_that.gpsAddress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProofModel implements ProofModel {
  const _ProofModel({this.available = false, this.media, this.recordedAt = '', this.gpsAddress = ''});
  factory _ProofModel.fromJson(Map<String, dynamic> json) => _$ProofModelFromJson(json);

@override@JsonKey() final  bool available;
@override final  MediaModel? media;
@override@JsonKey() final  String recordedAt;
@override@JsonKey() final  String gpsAddress;

/// Create a copy of ProofModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProofModelCopyWith<_ProofModel> get copyWith => __$ProofModelCopyWithImpl<_ProofModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProofModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProofModel&&(identical(other.available, available) || other.available == available)&&(identical(other.media, media) || other.media == media)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt)&&(identical(other.gpsAddress, gpsAddress) || other.gpsAddress == gpsAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available,media,recordedAt,gpsAddress);

@override
String toString() {
  return 'ProofModel(available: $available, media: $media, recordedAt: $recordedAt, gpsAddress: $gpsAddress)';
}


}

/// @nodoc
abstract mixin class _$ProofModelCopyWith<$Res> implements $ProofModelCopyWith<$Res> {
  factory _$ProofModelCopyWith(_ProofModel value, $Res Function(_ProofModel) _then) = __$ProofModelCopyWithImpl;
@override @useResult
$Res call({
 bool available, MediaModel? media, String recordedAt, String gpsAddress
});


@override $MediaModelCopyWith<$Res>? get media;

}
/// @nodoc
class __$ProofModelCopyWithImpl<$Res>
    implements _$ProofModelCopyWith<$Res> {
  __$ProofModelCopyWithImpl(this._self, this._then);

  final _ProofModel _self;
  final $Res Function(_ProofModel) _then;

/// Create a copy of ProofModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? available = null,Object? media = freezed,Object? recordedAt = null,Object? gpsAddress = null,}) {
  return _then(_ProofModel(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as MediaModel?,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as String,gpsAddress: null == gpsAddress ? _self.gpsAddress : gpsAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ProofModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaModelCopyWith<$Res>? get media {
    if (_self.media == null) {
    return null;
  }

  return $MediaModelCopyWith<$Res>(_self.media!, (value) {
    return _then(_self.copyWith(media: value));
  });
}
}


/// @nodoc
mixin _$MediaModel {

 String get url; String get thumbnail; String get type;
/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaModelCopyWith<MediaModel> get copyWith => _$MediaModelCopyWithImpl<MediaModel>(this as MediaModel, _$identity);

  /// Serializes this MediaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaModel&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,thumbnail,type);

@override
String toString() {
  return 'MediaModel(url: $url, thumbnail: $thumbnail, type: $type)';
}


}

/// @nodoc
abstract mixin class $MediaModelCopyWith<$Res>  {
  factory $MediaModelCopyWith(MediaModel value, $Res Function(MediaModel) _then) = _$MediaModelCopyWithImpl;
@useResult
$Res call({
 String url, String thumbnail, String type
});




}
/// @nodoc
class _$MediaModelCopyWithImpl<$Res>
    implements $MediaModelCopyWith<$Res> {
  _$MediaModelCopyWithImpl(this._self, this._then);

  final MediaModel _self;
  final $Res Function(MediaModel) _then;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? thumbnail = null,Object? type = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaModel].
extension MediaModelPatterns on MediaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaModel value)  $default,){
final _that = this;
switch (_that) {
case _MediaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaModel value)?  $default,){
final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String thumbnail,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
return $default(_that.url,_that.thumbnail,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String thumbnail,  String type)  $default,) {final _that = this;
switch (_that) {
case _MediaModel():
return $default(_that.url,_that.thumbnail,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String thumbnail,  String type)?  $default,) {final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
return $default(_that.url,_that.thumbnail,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaModel implements MediaModel {
  const _MediaModel({this.url = '', this.thumbnail = '', this.type = ''});
  factory _MediaModel.fromJson(Map<String, dynamic> json) => _$MediaModelFromJson(json);

@override@JsonKey() final  String url;
@override@JsonKey() final  String thumbnail;
@override@JsonKey() final  String type;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaModelCopyWith<_MediaModel> get copyWith => __$MediaModelCopyWithImpl<_MediaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaModel&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,thumbnail,type);

@override
String toString() {
  return 'MediaModel(url: $url, thumbnail: $thumbnail, type: $type)';
}


}

/// @nodoc
abstract mixin class _$MediaModelCopyWith<$Res> implements $MediaModelCopyWith<$Res> {
  factory _$MediaModelCopyWith(_MediaModel value, $Res Function(_MediaModel) _then) = __$MediaModelCopyWithImpl;
@override @useResult
$Res call({
 String url, String thumbnail, String type
});




}
/// @nodoc
class __$MediaModelCopyWithImpl<$Res>
    implements _$MediaModelCopyWith<$Res> {
  __$MediaModelCopyWithImpl(this._self, this._then);

  final _MediaModel _self;
  final $Res Function(_MediaModel) _then;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? thumbnail = null,Object? type = null,}) {
  return _then(_MediaModel(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PricingModel {

 int get grossAmount; int get platformFee; int get gstAmount; String get formattedGrossAmount; String get formattedPlatformFee; String get formattedGstAmount;
/// Create a copy of PricingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingModelCopyWith<PricingModel> get copyWith => _$PricingModelCopyWithImpl<PricingModel>(this as PricingModel, _$identity);

  /// Serializes this PricingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingModel&&(identical(other.grossAmount, grossAmount) || other.grossAmount == grossAmount)&&(identical(other.platformFee, platformFee) || other.platformFee == platformFee)&&(identical(other.gstAmount, gstAmount) || other.gstAmount == gstAmount)&&(identical(other.formattedGrossAmount, formattedGrossAmount) || other.formattedGrossAmount == formattedGrossAmount)&&(identical(other.formattedPlatformFee, formattedPlatformFee) || other.formattedPlatformFee == formattedPlatformFee)&&(identical(other.formattedGstAmount, formattedGstAmount) || other.formattedGstAmount == formattedGstAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,grossAmount,platformFee,gstAmount,formattedGrossAmount,formattedPlatformFee,formattedGstAmount);

@override
String toString() {
  return 'PricingModel(grossAmount: $grossAmount, platformFee: $platformFee, gstAmount: $gstAmount, formattedGrossAmount: $formattedGrossAmount, formattedPlatformFee: $formattedPlatformFee, formattedGstAmount: $formattedGstAmount)';
}


}

/// @nodoc
abstract mixin class $PricingModelCopyWith<$Res>  {
  factory $PricingModelCopyWith(PricingModel value, $Res Function(PricingModel) _then) = _$PricingModelCopyWithImpl;
@useResult
$Res call({
 int grossAmount, int platformFee, int gstAmount, String formattedGrossAmount, String formattedPlatformFee, String formattedGstAmount
});




}
/// @nodoc
class _$PricingModelCopyWithImpl<$Res>
    implements $PricingModelCopyWith<$Res> {
  _$PricingModelCopyWithImpl(this._self, this._then);

  final PricingModel _self;
  final $Res Function(PricingModel) _then;

/// Create a copy of PricingModel
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


/// Adds pattern-matching-related methods to [PricingModel].
extension PricingModelPatterns on PricingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricingModel value)  $default,){
final _that = this;
switch (_that) {
case _PricingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricingModel value)?  $default,){
final _that = this;
switch (_that) {
case _PricingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int grossAmount,  int platformFee,  int gstAmount,  String formattedGrossAmount,  String formattedPlatformFee,  String formattedGstAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricingModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int grossAmount,  int platformFee,  int gstAmount,  String formattedGrossAmount,  String formattedPlatformFee,  String formattedGstAmount)  $default,) {final _that = this;
switch (_that) {
case _PricingModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int grossAmount,  int platformFee,  int gstAmount,  String formattedGrossAmount,  String formattedPlatformFee,  String formattedGstAmount)?  $default,) {final _that = this;
switch (_that) {
case _PricingModel() when $default != null:
return $default(_that.grossAmount,_that.platformFee,_that.gstAmount,_that.formattedGrossAmount,_that.formattedPlatformFee,_that.formattedGstAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PricingModel implements PricingModel {
  const _PricingModel({this.grossAmount = 0, this.platformFee = 0, this.gstAmount = 0, this.formattedGrossAmount = '', this.formattedPlatformFee = '', this.formattedGstAmount = ''});
  factory _PricingModel.fromJson(Map<String, dynamic> json) => _$PricingModelFromJson(json);

@override@JsonKey() final  int grossAmount;
@override@JsonKey() final  int platformFee;
@override@JsonKey() final  int gstAmount;
@override@JsonKey() final  String formattedGrossAmount;
@override@JsonKey() final  String formattedPlatformFee;
@override@JsonKey() final  String formattedGstAmount;

/// Create a copy of PricingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingModelCopyWith<_PricingModel> get copyWith => __$PricingModelCopyWithImpl<_PricingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingModel&&(identical(other.grossAmount, grossAmount) || other.grossAmount == grossAmount)&&(identical(other.platformFee, platformFee) || other.platformFee == platformFee)&&(identical(other.gstAmount, gstAmount) || other.gstAmount == gstAmount)&&(identical(other.formattedGrossAmount, formattedGrossAmount) || other.formattedGrossAmount == formattedGrossAmount)&&(identical(other.formattedPlatformFee, formattedPlatformFee) || other.formattedPlatformFee == formattedPlatformFee)&&(identical(other.formattedGstAmount, formattedGstAmount) || other.formattedGstAmount == formattedGstAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,grossAmount,platformFee,gstAmount,formattedGrossAmount,formattedPlatformFee,formattedGstAmount);

@override
String toString() {
  return 'PricingModel(grossAmount: $grossAmount, platformFee: $platformFee, gstAmount: $gstAmount, formattedGrossAmount: $formattedGrossAmount, formattedPlatformFee: $formattedPlatformFee, formattedGstAmount: $formattedGstAmount)';
}


}

/// @nodoc
abstract mixin class _$PricingModelCopyWith<$Res> implements $PricingModelCopyWith<$Res> {
  factory _$PricingModelCopyWith(_PricingModel value, $Res Function(_PricingModel) _then) = __$PricingModelCopyWithImpl;
@override @useResult
$Res call({
 int grossAmount, int platformFee, int gstAmount, String formattedGrossAmount, String formattedPlatformFee, String formattedGstAmount
});




}
/// @nodoc
class __$PricingModelCopyWithImpl<$Res>
    implements _$PricingModelCopyWith<$Res> {
  __$PricingModelCopyWithImpl(this._self, this._then);

  final _PricingModel _self;
  final $Res Function(_PricingModel) _then;

/// Create a copy of PricingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? grossAmount = null,Object? platformFee = null,Object? gstAmount = null,Object? formattedGrossAmount = null,Object? formattedPlatformFee = null,Object? formattedGstAmount = null,}) {
  return _then(_PricingModel(
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


/// @nodoc
mixin _$SevaHistoryCard {

@JsonKey(name: '_id') String get id; String get thumbnailUrl; String get addedAt; String get sevaName; int get amount; String get formattedAmount; String get formattedFinalPayment; String get paymentStatus; String get status; String get statusLabel;
/// Create a copy of SevaHistoryCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaHistoryCardCopyWith<SevaHistoryCard> get copyWith => _$SevaHistoryCardCopyWithImpl<SevaHistoryCard>(this as SevaHistoryCard, _$identity);

  /// Serializes this SevaHistoryCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaHistoryCard&&(identical(other.id, id) || other.id == id)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt)&&(identical(other.sevaName, sevaName) || other.sevaName == sevaName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedAmount, formattedAmount) || other.formattedAmount == formattedAmount)&&(identical(other.formattedFinalPayment, formattedFinalPayment) || other.formattedFinalPayment == formattedFinalPayment)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,thumbnailUrl,addedAt,sevaName,amount,formattedAmount,formattedFinalPayment,paymentStatus,status,statusLabel);

@override
String toString() {
  return 'SevaHistoryCard(id: $id, thumbnailUrl: $thumbnailUrl, addedAt: $addedAt, sevaName: $sevaName, amount: $amount, formattedAmount: $formattedAmount, formattedFinalPayment: $formattedFinalPayment, paymentStatus: $paymentStatus, status: $status, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class $SevaHistoryCardCopyWith<$Res>  {
  factory $SevaHistoryCardCopyWith(SevaHistoryCard value, $Res Function(SevaHistoryCard) _then) = _$SevaHistoryCardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String thumbnailUrl, String addedAt, String sevaName, int amount, String formattedAmount, String formattedFinalPayment, String paymentStatus, String status, String statusLabel
});




}
/// @nodoc
class _$SevaHistoryCardCopyWithImpl<$Res>
    implements $SevaHistoryCardCopyWith<$Res> {
  _$SevaHistoryCardCopyWithImpl(this._self, this._then);

  final SevaHistoryCard _self;
  final $Res Function(SevaHistoryCard) _then;

/// Create a copy of SevaHistoryCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? thumbnailUrl = null,Object? addedAt = null,Object? sevaName = null,Object? amount = null,Object? formattedAmount = null,Object? formattedFinalPayment = null,Object? paymentStatus = null,Object? status = null,Object? statusLabel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,addedAt: null == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as String,sevaName: null == sevaName ? _self.sevaName : sevaName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formattedAmount: null == formattedAmount ? _self.formattedAmount : formattedAmount // ignore: cast_nullable_to_non_nullable
as String,formattedFinalPayment: null == formattedFinalPayment ? _self.formattedFinalPayment : formattedFinalPayment // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SevaHistoryCard].
extension SevaHistoryCardPatterns on SevaHistoryCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SevaHistoryCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SevaHistoryCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SevaHistoryCard value)  $default,){
final _that = this;
switch (_that) {
case _SevaHistoryCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SevaHistoryCard value)?  $default,){
final _that = this;
switch (_that) {
case _SevaHistoryCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String thumbnailUrl,  String addedAt,  String sevaName,  int amount,  String formattedAmount,  String formattedFinalPayment,  String paymentStatus,  String status,  String statusLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SevaHistoryCard() when $default != null:
return $default(_that.id,_that.thumbnailUrl,_that.addedAt,_that.sevaName,_that.amount,_that.formattedAmount,_that.formattedFinalPayment,_that.paymentStatus,_that.status,_that.statusLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String thumbnailUrl,  String addedAt,  String sevaName,  int amount,  String formattedAmount,  String formattedFinalPayment,  String paymentStatus,  String status,  String statusLabel)  $default,) {final _that = this;
switch (_that) {
case _SevaHistoryCard():
return $default(_that.id,_that.thumbnailUrl,_that.addedAt,_that.sevaName,_that.amount,_that.formattedAmount,_that.formattedFinalPayment,_that.paymentStatus,_that.status,_that.statusLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String thumbnailUrl,  String addedAt,  String sevaName,  int amount,  String formattedAmount,  String formattedFinalPayment,  String paymentStatus,  String status,  String statusLabel)?  $default,) {final _that = this;
switch (_that) {
case _SevaHistoryCard() when $default != null:
return $default(_that.id,_that.thumbnailUrl,_that.addedAt,_that.sevaName,_that.amount,_that.formattedAmount,_that.formattedFinalPayment,_that.paymentStatus,_that.status,_that.statusLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SevaHistoryCard implements SevaHistoryCard {
  const _SevaHistoryCard({@JsonKey(name: '_id') this.id = '', this.thumbnailUrl = '', this.addedAt = '', this.sevaName = '', this.amount = 0, this.formattedAmount = '', this.formattedFinalPayment = '', this.paymentStatus = '', this.status = '', this.statusLabel = ''});
  factory _SevaHistoryCard.fromJson(Map<String, dynamic> json) => _$SevaHistoryCardFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String thumbnailUrl;
@override@JsonKey() final  String addedAt;
@override@JsonKey() final  String sevaName;
@override@JsonKey() final  int amount;
@override@JsonKey() final  String formattedAmount;
@override@JsonKey() final  String formattedFinalPayment;
@override@JsonKey() final  String paymentStatus;
@override@JsonKey() final  String status;
@override@JsonKey() final  String statusLabel;

/// Create a copy of SevaHistoryCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SevaHistoryCardCopyWith<_SevaHistoryCard> get copyWith => __$SevaHistoryCardCopyWithImpl<_SevaHistoryCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SevaHistoryCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SevaHistoryCard&&(identical(other.id, id) || other.id == id)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt)&&(identical(other.sevaName, sevaName) || other.sevaName == sevaName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedAmount, formattedAmount) || other.formattedAmount == formattedAmount)&&(identical(other.formattedFinalPayment, formattedFinalPayment) || other.formattedFinalPayment == formattedFinalPayment)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,thumbnailUrl,addedAt,sevaName,amount,formattedAmount,formattedFinalPayment,paymentStatus,status,statusLabel);

@override
String toString() {
  return 'SevaHistoryCard(id: $id, thumbnailUrl: $thumbnailUrl, addedAt: $addedAt, sevaName: $sevaName, amount: $amount, formattedAmount: $formattedAmount, formattedFinalPayment: $formattedFinalPayment, paymentStatus: $paymentStatus, status: $status, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class _$SevaHistoryCardCopyWith<$Res> implements $SevaHistoryCardCopyWith<$Res> {
  factory _$SevaHistoryCardCopyWith(_SevaHistoryCard value, $Res Function(_SevaHistoryCard) _then) = __$SevaHistoryCardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String thumbnailUrl, String addedAt, String sevaName, int amount, String formattedAmount, String formattedFinalPayment, String paymentStatus, String status, String statusLabel
});




}
/// @nodoc
class __$SevaHistoryCardCopyWithImpl<$Res>
    implements _$SevaHistoryCardCopyWith<$Res> {
  __$SevaHistoryCardCopyWithImpl(this._self, this._then);

  final _SevaHistoryCard _self;
  final $Res Function(_SevaHistoryCard) _then;

/// Create a copy of SevaHistoryCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? thumbnailUrl = null,Object? addedAt = null,Object? sevaName = null,Object? amount = null,Object? formattedAmount = null,Object? formattedFinalPayment = null,Object? paymentStatus = null,Object? status = null,Object? statusLabel = null,}) {
  return _then(_SevaHistoryCard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,addedAt: null == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as String,sevaName: null == sevaName ? _self.sevaName : sevaName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formattedAmount: null == formattedAmount ? _self.formattedAmount : formattedAmount // ignore: cast_nullable_to_non_nullable
as String,formattedFinalPayment: null == formattedFinalPayment ? _self.formattedFinalPayment : formattedFinalPayment // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PaginationModel {

 int get page; int get limit; int get totalItems; int get totalPages; bool get hasNextPage; bool get hasPrevPage;
/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<PaginationModel> get copyWith => _$PaginationModelCopyWithImpl<PaginationModel>(this as PaginationModel, _$identity);

  /// Serializes this PaginationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationModel&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.hasPrevPage, hasPrevPage) || other.hasPrevPage == hasPrevPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,totalItems,totalPages,hasNextPage,hasPrevPage);

@override
String toString() {
  return 'PaginationModel(page: $page, limit: $limit, totalItems: $totalItems, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
}


}

/// @nodoc
abstract mixin class $PaginationModelCopyWith<$Res>  {
  factory $PaginationModelCopyWith(PaginationModel value, $Res Function(PaginationModel) _then) = _$PaginationModelCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int totalItems, int totalPages, bool hasNextPage, bool hasPrevPage
});




}
/// @nodoc
class _$PaginationModelCopyWithImpl<$Res>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._self, this._then);

  final PaginationModel _self;
  final $Res Function(PaginationModel) _then;

/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,Object? totalItems = null,Object? totalPages = null,Object? hasNextPage = null,Object? hasPrevPage = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,hasPrevPage: null == hasPrevPage ? _self.hasPrevPage : hasPrevPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationModel].
extension PaginationModelPatterns on PaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _PaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit,  int totalItems,  int totalPages,  bool hasNextPage,  bool hasPrevPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
return $default(_that.page,_that.limit,_that.totalItems,_that.totalPages,_that.hasNextPage,_that.hasPrevPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit,  int totalItems,  int totalPages,  bool hasNextPage,  bool hasPrevPage)  $default,) {final _that = this;
switch (_that) {
case _PaginationModel():
return $default(_that.page,_that.limit,_that.totalItems,_that.totalPages,_that.hasNextPage,_that.hasPrevPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit,  int totalItems,  int totalPages,  bool hasNextPage,  bool hasPrevPage)?  $default,) {final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
return $default(_that.page,_that.limit,_that.totalItems,_that.totalPages,_that.hasNextPage,_that.hasPrevPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationModel implements PaginationModel {
  const _PaginationModel({this.page = 0, this.limit = 0, this.totalItems = 0, this.totalPages = 0, this.hasNextPage = false, this.hasPrevPage = false});
  factory _PaginationModel.fromJson(Map<String, dynamic> json) => _$PaginationModelFromJson(json);

@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int totalPages;
@override@JsonKey() final  bool hasNextPage;
@override@JsonKey() final  bool hasPrevPage;

/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationModelCopyWith<_PaginationModel> get copyWith => __$PaginationModelCopyWithImpl<_PaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationModel&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.hasPrevPage, hasPrevPage) || other.hasPrevPage == hasPrevPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,totalItems,totalPages,hasNextPage,hasPrevPage);

@override
String toString() {
  return 'PaginationModel(page: $page, limit: $limit, totalItems: $totalItems, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
}


}

/// @nodoc
abstract mixin class _$PaginationModelCopyWith<$Res> implements $PaginationModelCopyWith<$Res> {
  factory _$PaginationModelCopyWith(_PaginationModel value, $Res Function(_PaginationModel) _then) = __$PaginationModelCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int totalItems, int totalPages, bool hasNextPage, bool hasPrevPage
});




}
/// @nodoc
class __$PaginationModelCopyWithImpl<$Res>
    implements _$PaginationModelCopyWith<$Res> {
  __$PaginationModelCopyWithImpl(this._self, this._then);

  final _PaginationModel _self;
  final $Res Function(_PaginationModel) _then;

/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? totalItems = null,Object? totalPages = null,Object? hasNextPage = null,Object? hasPrevPage = null,}) {
  return _then(_PaginationModel(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,hasPrevPage: null == hasPrevPage ? _self.hasPrevPage : hasPrevPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SevaSummary {

 SummaryItem get total; SummaryItem get completed; SummaryItem get pending; InReviewSummary get inReview; SummaryItem get refunded;
/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaSummaryCopyWith<SevaSummary> get copyWith => _$SevaSummaryCopyWithImpl<SevaSummary>(this as SevaSummary, _$identity);

  /// Serializes this SevaSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.inReview, inReview) || other.inReview == inReview)&&(identical(other.refunded, refunded) || other.refunded == refunded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,completed,pending,inReview,refunded);

@override
String toString() {
  return 'SevaSummary(total: $total, completed: $completed, pending: $pending, inReview: $inReview, refunded: $refunded)';
}


}

/// @nodoc
abstract mixin class $SevaSummaryCopyWith<$Res>  {
  factory $SevaSummaryCopyWith(SevaSummary value, $Res Function(SevaSummary) _then) = _$SevaSummaryCopyWithImpl;
@useResult
$Res call({
 SummaryItem total, SummaryItem completed, SummaryItem pending, InReviewSummary inReview, SummaryItem refunded
});


$SummaryItemCopyWith<$Res> get total;$SummaryItemCopyWith<$Res> get completed;$SummaryItemCopyWith<$Res> get pending;$InReviewSummaryCopyWith<$Res> get inReview;$SummaryItemCopyWith<$Res> get refunded;

}
/// @nodoc
class _$SevaSummaryCopyWithImpl<$Res>
    implements $SevaSummaryCopyWith<$Res> {
  _$SevaSummaryCopyWithImpl(this._self, this._then);

  final SevaSummary _self;
  final $Res Function(SevaSummary) _then;

/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? completed = null,Object? pending = null,Object? inReview = null,Object? refunded = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as SummaryItem,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as SummaryItem,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as SummaryItem,inReview: null == inReview ? _self.inReview : inReview // ignore: cast_nullable_to_non_nullable
as InReviewSummary,refunded: null == refunded ? _self.refunded : refunded // ignore: cast_nullable_to_non_nullable
as SummaryItem,
  ));
}
/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get total {
  
  return $SummaryItemCopyWith<$Res>(_self.total, (value) {
    return _then(_self.copyWith(total: value));
  });
}/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get completed {
  
  return $SummaryItemCopyWith<$Res>(_self.completed, (value) {
    return _then(_self.copyWith(completed: value));
  });
}/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get pending {
  
  return $SummaryItemCopyWith<$Res>(_self.pending, (value) {
    return _then(_self.copyWith(pending: value));
  });
}/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InReviewSummaryCopyWith<$Res> get inReview {
  
  return $InReviewSummaryCopyWith<$Res>(_self.inReview, (value) {
    return _then(_self.copyWith(inReview: value));
  });
}/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get refunded {
  
  return $SummaryItemCopyWith<$Res>(_self.refunded, (value) {
    return _then(_self.copyWith(refunded: value));
  });
}
}


/// Adds pattern-matching-related methods to [SevaSummary].
extension SevaSummaryPatterns on SevaSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SevaSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SevaSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SevaSummary value)  $default,){
final _that = this;
switch (_that) {
case _SevaSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SevaSummary value)?  $default,){
final _that = this;
switch (_that) {
case _SevaSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SummaryItem total,  SummaryItem completed,  SummaryItem pending,  InReviewSummary inReview,  SummaryItem refunded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SevaSummary() when $default != null:
return $default(_that.total,_that.completed,_that.pending,_that.inReview,_that.refunded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SummaryItem total,  SummaryItem completed,  SummaryItem pending,  InReviewSummary inReview,  SummaryItem refunded)  $default,) {final _that = this;
switch (_that) {
case _SevaSummary():
return $default(_that.total,_that.completed,_that.pending,_that.inReview,_that.refunded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SummaryItem total,  SummaryItem completed,  SummaryItem pending,  InReviewSummary inReview,  SummaryItem refunded)?  $default,) {final _that = this;
switch (_that) {
case _SevaSummary() when $default != null:
return $default(_that.total,_that.completed,_that.pending,_that.inReview,_that.refunded);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SevaSummary implements SevaSummary {
  const _SevaSummary({this.total = const SummaryItem(), this.completed = const SummaryItem(), this.pending = const SummaryItem(), this.inReview = const InReviewSummary(), this.refunded = const SummaryItem()});
  factory _SevaSummary.fromJson(Map<String, dynamic> json) => _$SevaSummaryFromJson(json);

@override@JsonKey() final  SummaryItem total;
@override@JsonKey() final  SummaryItem completed;
@override@JsonKey() final  SummaryItem pending;
@override@JsonKey() final  InReviewSummary inReview;
@override@JsonKey() final  SummaryItem refunded;

/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SevaSummaryCopyWith<_SevaSummary> get copyWith => __$SevaSummaryCopyWithImpl<_SevaSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SevaSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SevaSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.inReview, inReview) || other.inReview == inReview)&&(identical(other.refunded, refunded) || other.refunded == refunded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,completed,pending,inReview,refunded);

@override
String toString() {
  return 'SevaSummary(total: $total, completed: $completed, pending: $pending, inReview: $inReview, refunded: $refunded)';
}


}

/// @nodoc
abstract mixin class _$SevaSummaryCopyWith<$Res> implements $SevaSummaryCopyWith<$Res> {
  factory _$SevaSummaryCopyWith(_SevaSummary value, $Res Function(_SevaSummary) _then) = __$SevaSummaryCopyWithImpl;
@override @useResult
$Res call({
 SummaryItem total, SummaryItem completed, SummaryItem pending, InReviewSummary inReview, SummaryItem refunded
});


@override $SummaryItemCopyWith<$Res> get total;@override $SummaryItemCopyWith<$Res> get completed;@override $SummaryItemCopyWith<$Res> get pending;@override $InReviewSummaryCopyWith<$Res> get inReview;@override $SummaryItemCopyWith<$Res> get refunded;

}
/// @nodoc
class __$SevaSummaryCopyWithImpl<$Res>
    implements _$SevaSummaryCopyWith<$Res> {
  __$SevaSummaryCopyWithImpl(this._self, this._then);

  final _SevaSummary _self;
  final $Res Function(_SevaSummary) _then;

/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? completed = null,Object? pending = null,Object? inReview = null,Object? refunded = null,}) {
  return _then(_SevaSummary(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as SummaryItem,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as SummaryItem,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as SummaryItem,inReview: null == inReview ? _self.inReview : inReview // ignore: cast_nullable_to_non_nullable
as InReviewSummary,refunded: null == refunded ? _self.refunded : refunded // ignore: cast_nullable_to_non_nullable
as SummaryItem,
  ));
}

/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get total {
  
  return $SummaryItemCopyWith<$Res>(_self.total, (value) {
    return _then(_self.copyWith(total: value));
  });
}/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get completed {
  
  return $SummaryItemCopyWith<$Res>(_self.completed, (value) {
    return _then(_self.copyWith(completed: value));
  });
}/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get pending {
  
  return $SummaryItemCopyWith<$Res>(_self.pending, (value) {
    return _then(_self.copyWith(pending: value));
  });
}/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InReviewSummaryCopyWith<$Res> get inReview {
  
  return $InReviewSummaryCopyWith<$Res>(_self.inReview, (value) {
    return _then(_self.copyWith(inReview: value));
  });
}/// Create a copy of SevaSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get refunded {
  
  return $SummaryItemCopyWith<$Res>(_self.refunded, (value) {
    return _then(_self.copyWith(refunded: value));
  });
}
}


/// @nodoc
mixin _$SummaryItem {

 int get count; int get amount; String get formattedAmount;
/// Create a copy of SummaryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<SummaryItem> get copyWith => _$SummaryItemCopyWithImpl<SummaryItem>(this as SummaryItem, _$identity);

  /// Serializes this SummaryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryItem&&(identical(other.count, count) || other.count == count)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedAmount, formattedAmount) || other.formattedAmount == formattedAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,amount,formattedAmount);

@override
String toString() {
  return 'SummaryItem(count: $count, amount: $amount, formattedAmount: $formattedAmount)';
}


}

/// @nodoc
abstract mixin class $SummaryItemCopyWith<$Res>  {
  factory $SummaryItemCopyWith(SummaryItem value, $Res Function(SummaryItem) _then) = _$SummaryItemCopyWithImpl;
@useResult
$Res call({
 int count, int amount, String formattedAmount
});




}
/// @nodoc
class _$SummaryItemCopyWithImpl<$Res>
    implements $SummaryItemCopyWith<$Res> {
  _$SummaryItemCopyWithImpl(this._self, this._then);

  final SummaryItem _self;
  final $Res Function(SummaryItem) _then;

/// Create a copy of SummaryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? amount = null,Object? formattedAmount = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formattedAmount: null == formattedAmount ? _self.formattedAmount : formattedAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SummaryItem].
extension SummaryItemPatterns on SummaryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryItem value)  $default,){
final _that = this;
switch (_that) {
case _SummaryItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryItem value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  int amount,  String formattedAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryItem() when $default != null:
return $default(_that.count,_that.amount,_that.formattedAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  int amount,  String formattedAmount)  $default,) {final _that = this;
switch (_that) {
case _SummaryItem():
return $default(_that.count,_that.amount,_that.formattedAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  int amount,  String formattedAmount)?  $default,) {final _that = this;
switch (_that) {
case _SummaryItem() when $default != null:
return $default(_that.count,_that.amount,_that.formattedAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SummaryItem implements SummaryItem {
  const _SummaryItem({this.count = 0, this.amount = 0, this.formattedAmount = ''});
  factory _SummaryItem.fromJson(Map<String, dynamic> json) => _$SummaryItemFromJson(json);

@override@JsonKey() final  int count;
@override@JsonKey() final  int amount;
@override@JsonKey() final  String formattedAmount;

/// Create a copy of SummaryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryItemCopyWith<_SummaryItem> get copyWith => __$SummaryItemCopyWithImpl<_SummaryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryItem&&(identical(other.count, count) || other.count == count)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedAmount, formattedAmount) || other.formattedAmount == formattedAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,amount,formattedAmount);

@override
String toString() {
  return 'SummaryItem(count: $count, amount: $amount, formattedAmount: $formattedAmount)';
}


}

/// @nodoc
abstract mixin class _$SummaryItemCopyWith<$Res> implements $SummaryItemCopyWith<$Res> {
  factory _$SummaryItemCopyWith(_SummaryItem value, $Res Function(_SummaryItem) _then) = __$SummaryItemCopyWithImpl;
@override @useResult
$Res call({
 int count, int amount, String formattedAmount
});




}
/// @nodoc
class __$SummaryItemCopyWithImpl<$Res>
    implements _$SummaryItemCopyWith<$Res> {
  __$SummaryItemCopyWithImpl(this._self, this._then);

  final _SummaryItem _self;
  final $Res Function(_SummaryItem) _then;

/// Create a copy of SummaryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? amount = null,Object? formattedAmount = null,}) {
  return _then(_SummaryItem(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formattedAmount: null == formattedAmount ? _self.formattedAmount : formattedAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$InReviewSummary {

 int get count; int get amount; String get formattedAmount; int get actionCount;
/// Create a copy of InReviewSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InReviewSummaryCopyWith<InReviewSummary> get copyWith => _$InReviewSummaryCopyWithImpl<InReviewSummary>(this as InReviewSummary, _$identity);

  /// Serializes this InReviewSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InReviewSummary&&(identical(other.count, count) || other.count == count)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedAmount, formattedAmount) || other.formattedAmount == formattedAmount)&&(identical(other.actionCount, actionCount) || other.actionCount == actionCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,amount,formattedAmount,actionCount);

@override
String toString() {
  return 'InReviewSummary(count: $count, amount: $amount, formattedAmount: $formattedAmount, actionCount: $actionCount)';
}


}

/// @nodoc
abstract mixin class $InReviewSummaryCopyWith<$Res>  {
  factory $InReviewSummaryCopyWith(InReviewSummary value, $Res Function(InReviewSummary) _then) = _$InReviewSummaryCopyWithImpl;
@useResult
$Res call({
 int count, int amount, String formattedAmount, int actionCount
});




}
/// @nodoc
class _$InReviewSummaryCopyWithImpl<$Res>
    implements $InReviewSummaryCopyWith<$Res> {
  _$InReviewSummaryCopyWithImpl(this._self, this._then);

  final InReviewSummary _self;
  final $Res Function(InReviewSummary) _then;

/// Create a copy of InReviewSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? amount = null,Object? formattedAmount = null,Object? actionCount = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formattedAmount: null == formattedAmount ? _self.formattedAmount : formattedAmount // ignore: cast_nullable_to_non_nullable
as String,actionCount: null == actionCount ? _self.actionCount : actionCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [InReviewSummary].
extension InReviewSummaryPatterns on InReviewSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InReviewSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InReviewSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InReviewSummary value)  $default,){
final _that = this;
switch (_that) {
case _InReviewSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InReviewSummary value)?  $default,){
final _that = this;
switch (_that) {
case _InReviewSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  int amount,  String formattedAmount,  int actionCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InReviewSummary() when $default != null:
return $default(_that.count,_that.amount,_that.formattedAmount,_that.actionCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  int amount,  String formattedAmount,  int actionCount)  $default,) {final _that = this;
switch (_that) {
case _InReviewSummary():
return $default(_that.count,_that.amount,_that.formattedAmount,_that.actionCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  int amount,  String formattedAmount,  int actionCount)?  $default,) {final _that = this;
switch (_that) {
case _InReviewSummary() when $default != null:
return $default(_that.count,_that.amount,_that.formattedAmount,_that.actionCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InReviewSummary implements InReviewSummary {
  const _InReviewSummary({this.count = 0, this.amount = 0, this.formattedAmount = '', this.actionCount = 0});
  factory _InReviewSummary.fromJson(Map<String, dynamic> json) => _$InReviewSummaryFromJson(json);

@override@JsonKey() final  int count;
@override@JsonKey() final  int amount;
@override@JsonKey() final  String formattedAmount;
@override@JsonKey() final  int actionCount;

/// Create a copy of InReviewSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InReviewSummaryCopyWith<_InReviewSummary> get copyWith => __$InReviewSummaryCopyWithImpl<_InReviewSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InReviewSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InReviewSummary&&(identical(other.count, count) || other.count == count)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedAmount, formattedAmount) || other.formattedAmount == formattedAmount)&&(identical(other.actionCount, actionCount) || other.actionCount == actionCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,amount,formattedAmount,actionCount);

@override
String toString() {
  return 'InReviewSummary(count: $count, amount: $amount, formattedAmount: $formattedAmount, actionCount: $actionCount)';
}


}

/// @nodoc
abstract mixin class _$InReviewSummaryCopyWith<$Res> implements $InReviewSummaryCopyWith<$Res> {
  factory _$InReviewSummaryCopyWith(_InReviewSummary value, $Res Function(_InReviewSummary) _then) = __$InReviewSummaryCopyWithImpl;
@override @useResult
$Res call({
 int count, int amount, String formattedAmount, int actionCount
});




}
/// @nodoc
class __$InReviewSummaryCopyWithImpl<$Res>
    implements _$InReviewSummaryCopyWith<$Res> {
  __$InReviewSummaryCopyWithImpl(this._self, this._then);

  final _InReviewSummary _self;
  final $Res Function(_InReviewSummary) _then;

/// Create a copy of InReviewSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? amount = null,Object? formattedAmount = null,Object? actionCount = null,}) {
  return _then(_InReviewSummary(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formattedAmount: null == formattedAmount ? _self.formattedAmount : formattedAmount // ignore: cast_nullable_to_non_nullable
as String,actionCount: null == actionCount ? _self.actionCount : actionCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
