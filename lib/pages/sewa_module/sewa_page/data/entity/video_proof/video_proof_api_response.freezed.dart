// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_proof_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoProofApiResponse {

@JsonKey(name: "success") bool get success;@JsonKey(name: "message") String get message;@JsonKey(name: "data") VideoProofData get data;@JsonKey(name: "errors") dynamic get errors;
/// Create a copy of VideoProofApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoProofApiResponseCopyWith<VideoProofApiResponse> get copyWith => _$VideoProofApiResponseCopyWithImpl<VideoProofApiResponse>(this as VideoProofApiResponse, _$identity);

  /// Serializes this VideoProofApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoProofApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'VideoProofApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $VideoProofApiResponseCopyWith<$Res>  {
  factory $VideoProofApiResponseCopyWith(VideoProofApiResponse value, $Res Function(VideoProofApiResponse) _then) = _$VideoProofApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "message") String message,@JsonKey(name: "data") VideoProofData data,@JsonKey(name: "errors") dynamic errors
});


$VideoProofDataCopyWith<$Res> get data;

}
/// @nodoc
class _$VideoProofApiResponseCopyWithImpl<$Res>
    implements $VideoProofApiResponseCopyWith<$Res> {
  _$VideoProofApiResponseCopyWithImpl(this._self, this._then);

  final VideoProofApiResponse _self;
  final $Res Function(VideoProofApiResponse) _then;

/// Create a copy of VideoProofApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VideoProofData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of VideoProofApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProofDataCopyWith<$Res> get data {
  
  return $VideoProofDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoProofApiResponse].
extension VideoProofApiResponsePatterns on VideoProofApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoProofApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoProofApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoProofApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _VideoProofApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoProofApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VideoProofApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "message")  String message, @JsonKey(name: "data")  VideoProofData data, @JsonKey(name: "errors")  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoProofApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "message")  String message, @JsonKey(name: "data")  VideoProofData data, @JsonKey(name: "errors")  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _VideoProofApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "message")  String message, @JsonKey(name: "data")  VideoProofData data, @JsonKey(name: "errors")  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _VideoProofApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoProofApiResponse implements VideoProofApiResponse {
  const _VideoProofApiResponse({@JsonKey(name: "success") this.success = false, @JsonKey(name: "message") this.message = "", @JsonKey(name: "data") this.data = const VideoProofData(), @JsonKey(name: "errors") this.errors = null});
  factory _VideoProofApiResponse.fromJson(Map<String, dynamic> json) => _$VideoProofApiResponseFromJson(json);

@override@JsonKey(name: "success") final  bool success;
@override@JsonKey(name: "message") final  String message;
@override@JsonKey(name: "data") final  VideoProofData data;
@override@JsonKey(name: "errors") final  dynamic errors;

/// Create a copy of VideoProofApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoProofApiResponseCopyWith<_VideoProofApiResponse> get copyWith => __$VideoProofApiResponseCopyWithImpl<_VideoProofApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoProofApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoProofApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'VideoProofApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$VideoProofApiResponseCopyWith<$Res> implements $VideoProofApiResponseCopyWith<$Res> {
  factory _$VideoProofApiResponseCopyWith(_VideoProofApiResponse value, $Res Function(_VideoProofApiResponse) _then) = __$VideoProofApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "message") String message,@JsonKey(name: "data") VideoProofData data,@JsonKey(name: "errors") dynamic errors
});


@override $VideoProofDataCopyWith<$Res> get data;

}
/// @nodoc
class __$VideoProofApiResponseCopyWithImpl<$Res>
    implements _$VideoProofApiResponseCopyWith<$Res> {
  __$VideoProofApiResponseCopyWithImpl(this._self, this._then);

  final _VideoProofApiResponse _self;
  final $Res Function(_VideoProofApiResponse) _then;

/// Create a copy of VideoProofApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_VideoProofApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VideoProofData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of VideoProofApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProofDataCopyWith<$Res> get data {
  
  return $VideoProofDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$VideoProofData {

@JsonKey(name: "sevaId") String get sevaId;@JsonKey(name: "vendorId") String get vendorId;@JsonKey(name: "donorName") String get donorName;@JsonKey(name: "sevaName") String get sevaName;@JsonKey(name: "service") VideoProofService get service;@JsonKey(name: "vendor") VideoProofVendor get vendor;@JsonKey(name: "amount") int get amount;@JsonKey(name: "formattedAmount") String get formattedAmount;@JsonKey(name: "grossAmount") int get grossAmount;@JsonKey(name: "formattedGrossAmount") String get formattedGrossAmount;@JsonKey(name: "recordedAt") String get recordedAt;@JsonKey(name: "formattedRecordedAt") String get formattedRecordedAt;@JsonKey(name: "paidAt") String get paidAt;@JsonKey(name: "formattedPaidAt") String get formattedPaidAt;@JsonKey(name: "paymentStatus") String get paymentStatus;@JsonKey(name: "paymentReleased") bool get paymentReleased;@JsonKey(name: "status") String get status;@JsonKey(name: "canRaiseIssue") bool get canRaiseIssue;@JsonKey(name: "showGaushalaFields") bool get showGaushalaFields;@JsonKey(name: "proofTitle") String get proofTitle;@JsonKey(name: "proofSubtitle") String get proofSubtitle;@JsonKey(name: "dedicationMessage") String get dedicationMessage;@JsonKey(name: "gpsLocation") GpsLocation get gpsLocation;@JsonKey(name: "media") VideoMedia get media;@JsonKey(name: "infoCards") List<InfoCard> get infoCards;@JsonKey(name: "receipt") VideoReceipt get receipt;@JsonKey(name: "badges") VideoBadges get badges;@JsonKey(name: "whatWasSaid") String get whatWasSaid;
/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoProofDataCopyWith<VideoProofData> get copyWith => _$VideoProofDataCopyWithImpl<VideoProofData>(this as VideoProofData, _$identity);

  /// Serializes this VideoProofData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoProofData&&(identical(other.sevaId, sevaId) || other.sevaId == sevaId)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.donorName, donorName) || other.donorName == donorName)&&(identical(other.sevaName, sevaName) || other.sevaName == sevaName)&&(identical(other.service, service) || other.service == service)&&(identical(other.vendor, vendor) || other.vendor == vendor)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedAmount, formattedAmount) || other.formattedAmount == formattedAmount)&&(identical(other.grossAmount, grossAmount) || other.grossAmount == grossAmount)&&(identical(other.formattedGrossAmount, formattedGrossAmount) || other.formattedGrossAmount == formattedGrossAmount)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt)&&(identical(other.formattedRecordedAt, formattedRecordedAt) || other.formattedRecordedAt == formattedRecordedAt)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.formattedPaidAt, formattedPaidAt) || other.formattedPaidAt == formattedPaidAt)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentReleased, paymentReleased) || other.paymentReleased == paymentReleased)&&(identical(other.status, status) || other.status == status)&&(identical(other.canRaiseIssue, canRaiseIssue) || other.canRaiseIssue == canRaiseIssue)&&(identical(other.showGaushalaFields, showGaushalaFields) || other.showGaushalaFields == showGaushalaFields)&&(identical(other.proofTitle, proofTitle) || other.proofTitle == proofTitle)&&(identical(other.proofSubtitle, proofSubtitle) || other.proofSubtitle == proofSubtitle)&&(identical(other.dedicationMessage, dedicationMessage) || other.dedicationMessage == dedicationMessage)&&(identical(other.gpsLocation, gpsLocation) || other.gpsLocation == gpsLocation)&&(identical(other.media, media) || other.media == media)&&const DeepCollectionEquality().equals(other.infoCards, infoCards)&&(identical(other.receipt, receipt) || other.receipt == receipt)&&(identical(other.badges, badges) || other.badges == badges)&&(identical(other.whatWasSaid, whatWasSaid) || other.whatWasSaid == whatWasSaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,sevaId,vendorId,donorName,sevaName,service,vendor,amount,formattedAmount,grossAmount,formattedGrossAmount,recordedAt,formattedRecordedAt,paidAt,formattedPaidAt,paymentStatus,paymentReleased,status,canRaiseIssue,showGaushalaFields,proofTitle,proofSubtitle,dedicationMessage,gpsLocation,media,const DeepCollectionEquality().hash(infoCards),receipt,badges,whatWasSaid]);

@override
String toString() {
  return 'VideoProofData(sevaId: $sevaId, vendorId: $vendorId, donorName: $donorName, sevaName: $sevaName, service: $service, vendor: $vendor, amount: $amount, formattedAmount: $formattedAmount, grossAmount: $grossAmount, formattedGrossAmount: $formattedGrossAmount, recordedAt: $recordedAt, formattedRecordedAt: $formattedRecordedAt, paidAt: $paidAt, formattedPaidAt: $formattedPaidAt, paymentStatus: $paymentStatus, paymentReleased: $paymentReleased, status: $status, canRaiseIssue: $canRaiseIssue, showGaushalaFields: $showGaushalaFields, proofTitle: $proofTitle, proofSubtitle: $proofSubtitle, dedicationMessage: $dedicationMessage, gpsLocation: $gpsLocation, media: $media, infoCards: $infoCards, receipt: $receipt, badges: $badges, whatWasSaid: $whatWasSaid)';
}


}

/// @nodoc
abstract mixin class $VideoProofDataCopyWith<$Res>  {
  factory $VideoProofDataCopyWith(VideoProofData value, $Res Function(VideoProofData) _then) = _$VideoProofDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "sevaId") String sevaId,@JsonKey(name: "vendorId") String vendorId,@JsonKey(name: "donorName") String donorName,@JsonKey(name: "sevaName") String sevaName,@JsonKey(name: "service") VideoProofService service,@JsonKey(name: "vendor") VideoProofVendor vendor,@JsonKey(name: "amount") int amount,@JsonKey(name: "formattedAmount") String formattedAmount,@JsonKey(name: "grossAmount") int grossAmount,@JsonKey(name: "formattedGrossAmount") String formattedGrossAmount,@JsonKey(name: "recordedAt") String recordedAt,@JsonKey(name: "formattedRecordedAt") String formattedRecordedAt,@JsonKey(name: "paidAt") String paidAt,@JsonKey(name: "formattedPaidAt") String formattedPaidAt,@JsonKey(name: "paymentStatus") String paymentStatus,@JsonKey(name: "paymentReleased") bool paymentReleased,@JsonKey(name: "status") String status,@JsonKey(name: "canRaiseIssue") bool canRaiseIssue,@JsonKey(name: "showGaushalaFields") bool showGaushalaFields,@JsonKey(name: "proofTitle") String proofTitle,@JsonKey(name: "proofSubtitle") String proofSubtitle,@JsonKey(name: "dedicationMessage") String dedicationMessage,@JsonKey(name: "gpsLocation") GpsLocation gpsLocation,@JsonKey(name: "media") VideoMedia media,@JsonKey(name: "infoCards") List<InfoCard> infoCards,@JsonKey(name: "receipt") VideoReceipt receipt,@JsonKey(name: "badges") VideoBadges badges,@JsonKey(name: "whatWasSaid") String whatWasSaid
});


$VideoProofServiceCopyWith<$Res> get service;$VideoProofVendorCopyWith<$Res> get vendor;$GpsLocationCopyWith<$Res> get gpsLocation;$VideoMediaCopyWith<$Res> get media;$VideoReceiptCopyWith<$Res> get receipt;$VideoBadgesCopyWith<$Res> get badges;

}
/// @nodoc
class _$VideoProofDataCopyWithImpl<$Res>
    implements $VideoProofDataCopyWith<$Res> {
  _$VideoProofDataCopyWithImpl(this._self, this._then);

  final VideoProofData _self;
  final $Res Function(VideoProofData) _then;

/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sevaId = null,Object? vendorId = null,Object? donorName = null,Object? sevaName = null,Object? service = null,Object? vendor = null,Object? amount = null,Object? formattedAmount = null,Object? grossAmount = null,Object? formattedGrossAmount = null,Object? recordedAt = null,Object? formattedRecordedAt = null,Object? paidAt = null,Object? formattedPaidAt = null,Object? paymentStatus = null,Object? paymentReleased = null,Object? status = null,Object? canRaiseIssue = null,Object? showGaushalaFields = null,Object? proofTitle = null,Object? proofSubtitle = null,Object? dedicationMessage = null,Object? gpsLocation = null,Object? media = null,Object? infoCards = null,Object? receipt = null,Object? badges = null,Object? whatWasSaid = null,}) {
  return _then(_self.copyWith(
sevaId: null == sevaId ? _self.sevaId : sevaId // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,donorName: null == donorName ? _self.donorName : donorName // ignore: cast_nullable_to_non_nullable
as String,sevaName: null == sevaName ? _self.sevaName : sevaName // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as VideoProofService,vendor: null == vendor ? _self.vendor : vendor // ignore: cast_nullable_to_non_nullable
as VideoProofVendor,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formattedAmount: null == formattedAmount ? _self.formattedAmount : formattedAmount // ignore: cast_nullable_to_non_nullable
as String,grossAmount: null == grossAmount ? _self.grossAmount : grossAmount // ignore: cast_nullable_to_non_nullable
as int,formattedGrossAmount: null == formattedGrossAmount ? _self.formattedGrossAmount : formattedGrossAmount // ignore: cast_nullable_to_non_nullable
as String,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as String,formattedRecordedAt: null == formattedRecordedAt ? _self.formattedRecordedAt : formattedRecordedAt // ignore: cast_nullable_to_non_nullable
as String,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String,formattedPaidAt: null == formattedPaidAt ? _self.formattedPaidAt : formattedPaidAt // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,paymentReleased: null == paymentReleased ? _self.paymentReleased : paymentReleased // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,canRaiseIssue: null == canRaiseIssue ? _self.canRaiseIssue : canRaiseIssue // ignore: cast_nullable_to_non_nullable
as bool,showGaushalaFields: null == showGaushalaFields ? _self.showGaushalaFields : showGaushalaFields // ignore: cast_nullable_to_non_nullable
as bool,proofTitle: null == proofTitle ? _self.proofTitle : proofTitle // ignore: cast_nullable_to_non_nullable
as String,proofSubtitle: null == proofSubtitle ? _self.proofSubtitle : proofSubtitle // ignore: cast_nullable_to_non_nullable
as String,dedicationMessage: null == dedicationMessage ? _self.dedicationMessage : dedicationMessage // ignore: cast_nullable_to_non_nullable
as String,gpsLocation: null == gpsLocation ? _self.gpsLocation : gpsLocation // ignore: cast_nullable_to_non_nullable
as GpsLocation,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as VideoMedia,infoCards: null == infoCards ? _self.infoCards : infoCards // ignore: cast_nullable_to_non_nullable
as List<InfoCard>,receipt: null == receipt ? _self.receipt : receipt // ignore: cast_nullable_to_non_nullable
as VideoReceipt,badges: null == badges ? _self.badges : badges // ignore: cast_nullable_to_non_nullable
as VideoBadges,whatWasSaid: null == whatWasSaid ? _self.whatWasSaid : whatWasSaid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProofServiceCopyWith<$Res> get service {
  
  return $VideoProofServiceCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProofVendorCopyWith<$Res> get vendor {
  
  return $VideoProofVendorCopyWith<$Res>(_self.vendor, (value) {
    return _then(_self.copyWith(vendor: value));
  });
}/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GpsLocationCopyWith<$Res> get gpsLocation {
  
  return $GpsLocationCopyWith<$Res>(_self.gpsLocation, (value) {
    return _then(_self.copyWith(gpsLocation: value));
  });
}/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoMediaCopyWith<$Res> get media {
  
  return $VideoMediaCopyWith<$Res>(_self.media, (value) {
    return _then(_self.copyWith(media: value));
  });
}/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoReceiptCopyWith<$Res> get receipt {
  
  return $VideoReceiptCopyWith<$Res>(_self.receipt, (value) {
    return _then(_self.copyWith(receipt: value));
  });
}/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoBadgesCopyWith<$Res> get badges {
  
  return $VideoBadgesCopyWith<$Res>(_self.badges, (value) {
    return _then(_self.copyWith(badges: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoProofData].
extension VideoProofDataPatterns on VideoProofData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoProofData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoProofData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoProofData value)  $default,){
final _that = this;
switch (_that) {
case _VideoProofData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoProofData value)?  $default,){
final _that = this;
switch (_that) {
case _VideoProofData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "sevaId")  String sevaId, @JsonKey(name: "vendorId")  String vendorId, @JsonKey(name: "donorName")  String donorName, @JsonKey(name: "sevaName")  String sevaName, @JsonKey(name: "service")  VideoProofService service, @JsonKey(name: "vendor")  VideoProofVendor vendor, @JsonKey(name: "amount")  int amount, @JsonKey(name: "formattedAmount")  String formattedAmount, @JsonKey(name: "grossAmount")  int grossAmount, @JsonKey(name: "formattedGrossAmount")  String formattedGrossAmount, @JsonKey(name: "recordedAt")  String recordedAt, @JsonKey(name: "formattedRecordedAt")  String formattedRecordedAt, @JsonKey(name: "paidAt")  String paidAt, @JsonKey(name: "formattedPaidAt")  String formattedPaidAt, @JsonKey(name: "paymentStatus")  String paymentStatus, @JsonKey(name: "paymentReleased")  bool paymentReleased, @JsonKey(name: "status")  String status, @JsonKey(name: "canRaiseIssue")  bool canRaiseIssue, @JsonKey(name: "showGaushalaFields")  bool showGaushalaFields, @JsonKey(name: "proofTitle")  String proofTitle, @JsonKey(name: "proofSubtitle")  String proofSubtitle, @JsonKey(name: "dedicationMessage")  String dedicationMessage, @JsonKey(name: "gpsLocation")  GpsLocation gpsLocation, @JsonKey(name: "media")  VideoMedia media, @JsonKey(name: "infoCards")  List<InfoCard> infoCards, @JsonKey(name: "receipt")  VideoReceipt receipt, @JsonKey(name: "badges")  VideoBadges badges, @JsonKey(name: "whatWasSaid")  String whatWasSaid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoProofData() when $default != null:
return $default(_that.sevaId,_that.vendorId,_that.donorName,_that.sevaName,_that.service,_that.vendor,_that.amount,_that.formattedAmount,_that.grossAmount,_that.formattedGrossAmount,_that.recordedAt,_that.formattedRecordedAt,_that.paidAt,_that.formattedPaidAt,_that.paymentStatus,_that.paymentReleased,_that.status,_that.canRaiseIssue,_that.showGaushalaFields,_that.proofTitle,_that.proofSubtitle,_that.dedicationMessage,_that.gpsLocation,_that.media,_that.infoCards,_that.receipt,_that.badges,_that.whatWasSaid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "sevaId")  String sevaId, @JsonKey(name: "vendorId")  String vendorId, @JsonKey(name: "donorName")  String donorName, @JsonKey(name: "sevaName")  String sevaName, @JsonKey(name: "service")  VideoProofService service, @JsonKey(name: "vendor")  VideoProofVendor vendor, @JsonKey(name: "amount")  int amount, @JsonKey(name: "formattedAmount")  String formattedAmount, @JsonKey(name: "grossAmount")  int grossAmount, @JsonKey(name: "formattedGrossAmount")  String formattedGrossAmount, @JsonKey(name: "recordedAt")  String recordedAt, @JsonKey(name: "formattedRecordedAt")  String formattedRecordedAt, @JsonKey(name: "paidAt")  String paidAt, @JsonKey(name: "formattedPaidAt")  String formattedPaidAt, @JsonKey(name: "paymentStatus")  String paymentStatus, @JsonKey(name: "paymentReleased")  bool paymentReleased, @JsonKey(name: "status")  String status, @JsonKey(name: "canRaiseIssue")  bool canRaiseIssue, @JsonKey(name: "showGaushalaFields")  bool showGaushalaFields, @JsonKey(name: "proofTitle")  String proofTitle, @JsonKey(name: "proofSubtitle")  String proofSubtitle, @JsonKey(name: "dedicationMessage")  String dedicationMessage, @JsonKey(name: "gpsLocation")  GpsLocation gpsLocation, @JsonKey(name: "media")  VideoMedia media, @JsonKey(name: "infoCards")  List<InfoCard> infoCards, @JsonKey(name: "receipt")  VideoReceipt receipt, @JsonKey(name: "badges")  VideoBadges badges, @JsonKey(name: "whatWasSaid")  String whatWasSaid)  $default,) {final _that = this;
switch (_that) {
case _VideoProofData():
return $default(_that.sevaId,_that.vendorId,_that.donorName,_that.sevaName,_that.service,_that.vendor,_that.amount,_that.formattedAmount,_that.grossAmount,_that.formattedGrossAmount,_that.recordedAt,_that.formattedRecordedAt,_that.paidAt,_that.formattedPaidAt,_that.paymentStatus,_that.paymentReleased,_that.status,_that.canRaiseIssue,_that.showGaushalaFields,_that.proofTitle,_that.proofSubtitle,_that.dedicationMessage,_that.gpsLocation,_that.media,_that.infoCards,_that.receipt,_that.badges,_that.whatWasSaid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "sevaId")  String sevaId, @JsonKey(name: "vendorId")  String vendorId, @JsonKey(name: "donorName")  String donorName, @JsonKey(name: "sevaName")  String sevaName, @JsonKey(name: "service")  VideoProofService service, @JsonKey(name: "vendor")  VideoProofVendor vendor, @JsonKey(name: "amount")  int amount, @JsonKey(name: "formattedAmount")  String formattedAmount, @JsonKey(name: "grossAmount")  int grossAmount, @JsonKey(name: "formattedGrossAmount")  String formattedGrossAmount, @JsonKey(name: "recordedAt")  String recordedAt, @JsonKey(name: "formattedRecordedAt")  String formattedRecordedAt, @JsonKey(name: "paidAt")  String paidAt, @JsonKey(name: "formattedPaidAt")  String formattedPaidAt, @JsonKey(name: "paymentStatus")  String paymentStatus, @JsonKey(name: "paymentReleased")  bool paymentReleased, @JsonKey(name: "status")  String status, @JsonKey(name: "canRaiseIssue")  bool canRaiseIssue, @JsonKey(name: "showGaushalaFields")  bool showGaushalaFields, @JsonKey(name: "proofTitle")  String proofTitle, @JsonKey(name: "proofSubtitle")  String proofSubtitle, @JsonKey(name: "dedicationMessage")  String dedicationMessage, @JsonKey(name: "gpsLocation")  GpsLocation gpsLocation, @JsonKey(name: "media")  VideoMedia media, @JsonKey(name: "infoCards")  List<InfoCard> infoCards, @JsonKey(name: "receipt")  VideoReceipt receipt, @JsonKey(name: "badges")  VideoBadges badges, @JsonKey(name: "whatWasSaid")  String whatWasSaid)?  $default,) {final _that = this;
switch (_that) {
case _VideoProofData() when $default != null:
return $default(_that.sevaId,_that.vendorId,_that.donorName,_that.sevaName,_that.service,_that.vendor,_that.amount,_that.formattedAmount,_that.grossAmount,_that.formattedGrossAmount,_that.recordedAt,_that.formattedRecordedAt,_that.paidAt,_that.formattedPaidAt,_that.paymentStatus,_that.paymentReleased,_that.status,_that.canRaiseIssue,_that.showGaushalaFields,_that.proofTitle,_that.proofSubtitle,_that.dedicationMessage,_that.gpsLocation,_that.media,_that.infoCards,_that.receipt,_that.badges,_that.whatWasSaid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoProofData implements VideoProofData {
  const _VideoProofData({@JsonKey(name: "sevaId") this.sevaId = "", @JsonKey(name: "vendorId") this.vendorId = "", @JsonKey(name: "donorName") this.donorName = "", @JsonKey(name: "sevaName") this.sevaName = "", @JsonKey(name: "service") this.service = const VideoProofService(), @JsonKey(name: "vendor") this.vendor = const VideoProofVendor(), @JsonKey(name: "amount") this.amount = 0, @JsonKey(name: "formattedAmount") this.formattedAmount = "", @JsonKey(name: "grossAmount") this.grossAmount = 0, @JsonKey(name: "formattedGrossAmount") this.formattedGrossAmount = "", @JsonKey(name: "recordedAt") this.recordedAt = "", @JsonKey(name: "formattedRecordedAt") this.formattedRecordedAt = "", @JsonKey(name: "paidAt") this.paidAt = "", @JsonKey(name: "formattedPaidAt") this.formattedPaidAt = "", @JsonKey(name: "paymentStatus") this.paymentStatus = "", @JsonKey(name: "paymentReleased") this.paymentReleased = false, @JsonKey(name: "status") this.status = "", @JsonKey(name: "canRaiseIssue") this.canRaiseIssue = false, @JsonKey(name: "showGaushalaFields") this.showGaushalaFields = false, @JsonKey(name: "proofTitle") this.proofTitle = "", @JsonKey(name: "proofSubtitle") this.proofSubtitle = "", @JsonKey(name: "dedicationMessage") this.dedicationMessage = "", @JsonKey(name: "gpsLocation") this.gpsLocation = const GpsLocation(), @JsonKey(name: "media") this.media = const VideoMedia(), @JsonKey(name: "infoCards") final  List<InfoCard> infoCards = const [], @JsonKey(name: "receipt") this.receipt = const VideoReceipt(), @JsonKey(name: "badges") this.badges = const VideoBadges(), @JsonKey(name: "whatWasSaid") this.whatWasSaid = ""}): _infoCards = infoCards;
  factory _VideoProofData.fromJson(Map<String, dynamic> json) => _$VideoProofDataFromJson(json);

@override@JsonKey(name: "sevaId") final  String sevaId;
@override@JsonKey(name: "vendorId") final  String vendorId;
@override@JsonKey(name: "donorName") final  String donorName;
@override@JsonKey(name: "sevaName") final  String sevaName;
@override@JsonKey(name: "service") final  VideoProofService service;
@override@JsonKey(name: "vendor") final  VideoProofVendor vendor;
@override@JsonKey(name: "amount") final  int amount;
@override@JsonKey(name: "formattedAmount") final  String formattedAmount;
@override@JsonKey(name: "grossAmount") final  int grossAmount;
@override@JsonKey(name: "formattedGrossAmount") final  String formattedGrossAmount;
@override@JsonKey(name: "recordedAt") final  String recordedAt;
@override@JsonKey(name: "formattedRecordedAt") final  String formattedRecordedAt;
@override@JsonKey(name: "paidAt") final  String paidAt;
@override@JsonKey(name: "formattedPaidAt") final  String formattedPaidAt;
@override@JsonKey(name: "paymentStatus") final  String paymentStatus;
@override@JsonKey(name: "paymentReleased") final  bool paymentReleased;
@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "canRaiseIssue") final  bool canRaiseIssue;
@override@JsonKey(name: "showGaushalaFields") final  bool showGaushalaFields;
@override@JsonKey(name: "proofTitle") final  String proofTitle;
@override@JsonKey(name: "proofSubtitle") final  String proofSubtitle;
@override@JsonKey(name: "dedicationMessage") final  String dedicationMessage;
@override@JsonKey(name: "gpsLocation") final  GpsLocation gpsLocation;
@override@JsonKey(name: "media") final  VideoMedia media;
 final  List<InfoCard> _infoCards;
@override@JsonKey(name: "infoCards") List<InfoCard> get infoCards {
  if (_infoCards is EqualUnmodifiableListView) return _infoCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_infoCards);
}

@override@JsonKey(name: "receipt") final  VideoReceipt receipt;
@override@JsonKey(name: "badges") final  VideoBadges badges;
@override@JsonKey(name: "whatWasSaid") final  String whatWasSaid;

/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoProofDataCopyWith<_VideoProofData> get copyWith => __$VideoProofDataCopyWithImpl<_VideoProofData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoProofDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoProofData&&(identical(other.sevaId, sevaId) || other.sevaId == sevaId)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.donorName, donorName) || other.donorName == donorName)&&(identical(other.sevaName, sevaName) || other.sevaName == sevaName)&&(identical(other.service, service) || other.service == service)&&(identical(other.vendor, vendor) || other.vendor == vendor)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedAmount, formattedAmount) || other.formattedAmount == formattedAmount)&&(identical(other.grossAmount, grossAmount) || other.grossAmount == grossAmount)&&(identical(other.formattedGrossAmount, formattedGrossAmount) || other.formattedGrossAmount == formattedGrossAmount)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt)&&(identical(other.formattedRecordedAt, formattedRecordedAt) || other.formattedRecordedAt == formattedRecordedAt)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.formattedPaidAt, formattedPaidAt) || other.formattedPaidAt == formattedPaidAt)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentReleased, paymentReleased) || other.paymentReleased == paymentReleased)&&(identical(other.status, status) || other.status == status)&&(identical(other.canRaiseIssue, canRaiseIssue) || other.canRaiseIssue == canRaiseIssue)&&(identical(other.showGaushalaFields, showGaushalaFields) || other.showGaushalaFields == showGaushalaFields)&&(identical(other.proofTitle, proofTitle) || other.proofTitle == proofTitle)&&(identical(other.proofSubtitle, proofSubtitle) || other.proofSubtitle == proofSubtitle)&&(identical(other.dedicationMessage, dedicationMessage) || other.dedicationMessage == dedicationMessage)&&(identical(other.gpsLocation, gpsLocation) || other.gpsLocation == gpsLocation)&&(identical(other.media, media) || other.media == media)&&const DeepCollectionEquality().equals(other._infoCards, _infoCards)&&(identical(other.receipt, receipt) || other.receipt == receipt)&&(identical(other.badges, badges) || other.badges == badges)&&(identical(other.whatWasSaid, whatWasSaid) || other.whatWasSaid == whatWasSaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,sevaId,vendorId,donorName,sevaName,service,vendor,amount,formattedAmount,grossAmount,formattedGrossAmount,recordedAt,formattedRecordedAt,paidAt,formattedPaidAt,paymentStatus,paymentReleased,status,canRaiseIssue,showGaushalaFields,proofTitle,proofSubtitle,dedicationMessage,gpsLocation,media,const DeepCollectionEquality().hash(_infoCards),receipt,badges,whatWasSaid]);

@override
String toString() {
  return 'VideoProofData(sevaId: $sevaId, vendorId: $vendorId, donorName: $donorName, sevaName: $sevaName, service: $service, vendor: $vendor, amount: $amount, formattedAmount: $formattedAmount, grossAmount: $grossAmount, formattedGrossAmount: $formattedGrossAmount, recordedAt: $recordedAt, formattedRecordedAt: $formattedRecordedAt, paidAt: $paidAt, formattedPaidAt: $formattedPaidAt, paymentStatus: $paymentStatus, paymentReleased: $paymentReleased, status: $status, canRaiseIssue: $canRaiseIssue, showGaushalaFields: $showGaushalaFields, proofTitle: $proofTitle, proofSubtitle: $proofSubtitle, dedicationMessage: $dedicationMessage, gpsLocation: $gpsLocation, media: $media, infoCards: $infoCards, receipt: $receipt, badges: $badges, whatWasSaid: $whatWasSaid)';
}


}

/// @nodoc
abstract mixin class _$VideoProofDataCopyWith<$Res> implements $VideoProofDataCopyWith<$Res> {
  factory _$VideoProofDataCopyWith(_VideoProofData value, $Res Function(_VideoProofData) _then) = __$VideoProofDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "sevaId") String sevaId,@JsonKey(name: "vendorId") String vendorId,@JsonKey(name: "donorName") String donorName,@JsonKey(name: "sevaName") String sevaName,@JsonKey(name: "service") VideoProofService service,@JsonKey(name: "vendor") VideoProofVendor vendor,@JsonKey(name: "amount") int amount,@JsonKey(name: "formattedAmount") String formattedAmount,@JsonKey(name: "grossAmount") int grossAmount,@JsonKey(name: "formattedGrossAmount") String formattedGrossAmount,@JsonKey(name: "recordedAt") String recordedAt,@JsonKey(name: "formattedRecordedAt") String formattedRecordedAt,@JsonKey(name: "paidAt") String paidAt,@JsonKey(name: "formattedPaidAt") String formattedPaidAt,@JsonKey(name: "paymentStatus") String paymentStatus,@JsonKey(name: "paymentReleased") bool paymentReleased,@JsonKey(name: "status") String status,@JsonKey(name: "canRaiseIssue") bool canRaiseIssue,@JsonKey(name: "showGaushalaFields") bool showGaushalaFields,@JsonKey(name: "proofTitle") String proofTitle,@JsonKey(name: "proofSubtitle") String proofSubtitle,@JsonKey(name: "dedicationMessage") String dedicationMessage,@JsonKey(name: "gpsLocation") GpsLocation gpsLocation,@JsonKey(name: "media") VideoMedia media,@JsonKey(name: "infoCards") List<InfoCard> infoCards,@JsonKey(name: "receipt") VideoReceipt receipt,@JsonKey(name: "badges") VideoBadges badges,@JsonKey(name: "whatWasSaid") String whatWasSaid
});


@override $VideoProofServiceCopyWith<$Res> get service;@override $VideoProofVendorCopyWith<$Res> get vendor;@override $GpsLocationCopyWith<$Res> get gpsLocation;@override $VideoMediaCopyWith<$Res> get media;@override $VideoReceiptCopyWith<$Res> get receipt;@override $VideoBadgesCopyWith<$Res> get badges;

}
/// @nodoc
class __$VideoProofDataCopyWithImpl<$Res>
    implements _$VideoProofDataCopyWith<$Res> {
  __$VideoProofDataCopyWithImpl(this._self, this._then);

  final _VideoProofData _self;
  final $Res Function(_VideoProofData) _then;

/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sevaId = null,Object? vendorId = null,Object? donorName = null,Object? sevaName = null,Object? service = null,Object? vendor = null,Object? amount = null,Object? formattedAmount = null,Object? grossAmount = null,Object? formattedGrossAmount = null,Object? recordedAt = null,Object? formattedRecordedAt = null,Object? paidAt = null,Object? formattedPaidAt = null,Object? paymentStatus = null,Object? paymentReleased = null,Object? status = null,Object? canRaiseIssue = null,Object? showGaushalaFields = null,Object? proofTitle = null,Object? proofSubtitle = null,Object? dedicationMessage = null,Object? gpsLocation = null,Object? media = null,Object? infoCards = null,Object? receipt = null,Object? badges = null,Object? whatWasSaid = null,}) {
  return _then(_VideoProofData(
sevaId: null == sevaId ? _self.sevaId : sevaId // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,donorName: null == donorName ? _self.donorName : donorName // ignore: cast_nullable_to_non_nullable
as String,sevaName: null == sevaName ? _self.sevaName : sevaName // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as VideoProofService,vendor: null == vendor ? _self.vendor : vendor // ignore: cast_nullable_to_non_nullable
as VideoProofVendor,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formattedAmount: null == formattedAmount ? _self.formattedAmount : formattedAmount // ignore: cast_nullable_to_non_nullable
as String,grossAmount: null == grossAmount ? _self.grossAmount : grossAmount // ignore: cast_nullable_to_non_nullable
as int,formattedGrossAmount: null == formattedGrossAmount ? _self.formattedGrossAmount : formattedGrossAmount // ignore: cast_nullable_to_non_nullable
as String,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as String,formattedRecordedAt: null == formattedRecordedAt ? _self.formattedRecordedAt : formattedRecordedAt // ignore: cast_nullable_to_non_nullable
as String,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String,formattedPaidAt: null == formattedPaidAt ? _self.formattedPaidAt : formattedPaidAt // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,paymentReleased: null == paymentReleased ? _self.paymentReleased : paymentReleased // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,canRaiseIssue: null == canRaiseIssue ? _self.canRaiseIssue : canRaiseIssue // ignore: cast_nullable_to_non_nullable
as bool,showGaushalaFields: null == showGaushalaFields ? _self.showGaushalaFields : showGaushalaFields // ignore: cast_nullable_to_non_nullable
as bool,proofTitle: null == proofTitle ? _self.proofTitle : proofTitle // ignore: cast_nullable_to_non_nullable
as String,proofSubtitle: null == proofSubtitle ? _self.proofSubtitle : proofSubtitle // ignore: cast_nullable_to_non_nullable
as String,dedicationMessage: null == dedicationMessage ? _self.dedicationMessage : dedicationMessage // ignore: cast_nullable_to_non_nullable
as String,gpsLocation: null == gpsLocation ? _self.gpsLocation : gpsLocation // ignore: cast_nullable_to_non_nullable
as GpsLocation,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as VideoMedia,infoCards: null == infoCards ? _self._infoCards : infoCards // ignore: cast_nullable_to_non_nullable
as List<InfoCard>,receipt: null == receipt ? _self.receipt : receipt // ignore: cast_nullable_to_non_nullable
as VideoReceipt,badges: null == badges ? _self.badges : badges // ignore: cast_nullable_to_non_nullable
as VideoBadges,whatWasSaid: null == whatWasSaid ? _self.whatWasSaid : whatWasSaid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProofServiceCopyWith<$Res> get service {
  
  return $VideoProofServiceCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProofVendorCopyWith<$Res> get vendor {
  
  return $VideoProofVendorCopyWith<$Res>(_self.vendor, (value) {
    return _then(_self.copyWith(vendor: value));
  });
}/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GpsLocationCopyWith<$Res> get gpsLocation {
  
  return $GpsLocationCopyWith<$Res>(_self.gpsLocation, (value) {
    return _then(_self.copyWith(gpsLocation: value));
  });
}/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoMediaCopyWith<$Res> get media {
  
  return $VideoMediaCopyWith<$Res>(_self.media, (value) {
    return _then(_self.copyWith(media: value));
  });
}/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoReceiptCopyWith<$Res> get receipt {
  
  return $VideoReceiptCopyWith<$Res>(_self.receipt, (value) {
    return _then(_self.copyWith(receipt: value));
  });
}/// Create a copy of VideoProofData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoBadgesCopyWith<$Res> get badges {
  
  return $VideoBadgesCopyWith<$Res>(_self.badges, (value) {
    return _then(_self.copyWith(badges: value));
  });
}
}


/// @nodoc
mixin _$VideoProofService {

@JsonKey(name: "_id") String get id;@JsonKey(name: "name") String get name;@JsonKey(name: "slug") String get slug;@JsonKey(name: "description") String get description;@JsonKey(name: "icon") String get icon;@JsonKey(name: "lines") List<String> get lines;
/// Create a copy of VideoProofService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoProofServiceCopyWith<VideoProofService> get copyWith => _$VideoProofServiceCopyWithImpl<VideoProofService>(this as VideoProofService, _$identity);

  /// Serializes this VideoProofService to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoProofService&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&const DeepCollectionEquality().equals(other.lines, lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,icon,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'VideoProofService(id: $id, name: $name, slug: $slug, description: $description, icon: $icon, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $VideoProofServiceCopyWith<$Res>  {
  factory $VideoProofServiceCopyWith(VideoProofService value, $Res Function(VideoProofService) _then) = _$VideoProofServiceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "slug") String slug,@JsonKey(name: "description") String description,@JsonKey(name: "icon") String icon,@JsonKey(name: "lines") List<String> lines
});




}
/// @nodoc
class _$VideoProofServiceCopyWithImpl<$Res>
    implements $VideoProofServiceCopyWith<$Res> {
  _$VideoProofServiceCopyWithImpl(this._self, this._then);

  final VideoProofService _self;
  final $Res Function(VideoProofService) _then;

/// Create a copy of VideoProofService
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


/// Adds pattern-matching-related methods to [VideoProofService].
extension VideoProofServicePatterns on VideoProofService {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoProofService value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoProofService() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoProofService value)  $default,){
final _that = this;
switch (_that) {
case _VideoProofService():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoProofService value)?  $default,){
final _that = this;
switch (_that) {
case _VideoProofService() when $default != null:
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
case _VideoProofService() when $default != null:
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
case _VideoProofService():
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
case _VideoProofService() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.icon,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoProofService implements VideoProofService {
  const _VideoProofService({@JsonKey(name: "_id") this.id = "", @JsonKey(name: "name") this.name = "", @JsonKey(name: "slug") this.slug = "", @JsonKey(name: "description") this.description = "", @JsonKey(name: "icon") this.icon = "", @JsonKey(name: "lines") final  List<String> lines = const []}): _lines = lines;
  factory _VideoProofService.fromJson(Map<String, dynamic> json) => _$VideoProofServiceFromJson(json);

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


/// Create a copy of VideoProofService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoProofServiceCopyWith<_VideoProofService> get copyWith => __$VideoProofServiceCopyWithImpl<_VideoProofService>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoProofServiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoProofService&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&const DeepCollectionEquality().equals(other._lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,icon,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'VideoProofService(id: $id, name: $name, slug: $slug, description: $description, icon: $icon, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$VideoProofServiceCopyWith<$Res> implements $VideoProofServiceCopyWith<$Res> {
  factory _$VideoProofServiceCopyWith(_VideoProofService value, $Res Function(_VideoProofService) _then) = __$VideoProofServiceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "slug") String slug,@JsonKey(name: "description") String description,@JsonKey(name: "icon") String icon,@JsonKey(name: "lines") List<String> lines
});




}
/// @nodoc
class __$VideoProofServiceCopyWithImpl<$Res>
    implements _$VideoProofServiceCopyWith<$Res> {
  __$VideoProofServiceCopyWithImpl(this._self, this._then);

  final _VideoProofService _self;
  final $Res Function(_VideoProofService) _then;

/// Create a copy of VideoProofService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? icon = null,Object? lines = null,}) {
  return _then(_VideoProofService(
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
mixin _$VideoProofVendor {

@JsonKey(name: "_id") String get id;@JsonKey(name: "vendorName") String get vendorName;@JsonKey(name: "location") String get location;
/// Create a copy of VideoProofVendor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoProofVendorCopyWith<VideoProofVendor> get copyWith => _$VideoProofVendorCopyWithImpl<VideoProofVendor>(this as VideoProofVendor, _$identity);

  /// Serializes this VideoProofVendor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoProofVendor&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorName, vendorName) || other.vendorName == vendorName)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorName,location);

@override
String toString() {
  return 'VideoProofVendor(id: $id, vendorName: $vendorName, location: $location)';
}


}

/// @nodoc
abstract mixin class $VideoProofVendorCopyWith<$Res>  {
  factory $VideoProofVendorCopyWith(VideoProofVendor value, $Res Function(VideoProofVendor) _then) = _$VideoProofVendorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "vendorName") String vendorName,@JsonKey(name: "location") String location
});




}
/// @nodoc
class _$VideoProofVendorCopyWithImpl<$Res>
    implements $VideoProofVendorCopyWith<$Res> {
  _$VideoProofVendorCopyWithImpl(this._self, this._then);

  final VideoProofVendor _self;
  final $Res Function(VideoProofVendor) _then;

/// Create a copy of VideoProofVendor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? vendorName = null,Object? location = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorName: null == vendorName ? _self.vendorName : vendorName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoProofVendor].
extension VideoProofVendorPatterns on VideoProofVendor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoProofVendor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoProofVendor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoProofVendor value)  $default,){
final _that = this;
switch (_that) {
case _VideoProofVendor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoProofVendor value)?  $default,){
final _that = this;
switch (_that) {
case _VideoProofVendor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "vendorName")  String vendorName, @JsonKey(name: "location")  String location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoProofVendor() when $default != null:
return $default(_that.id,_that.vendorName,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "vendorName")  String vendorName, @JsonKey(name: "location")  String location)  $default,) {final _that = this;
switch (_that) {
case _VideoProofVendor():
return $default(_that.id,_that.vendorName,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "vendorName")  String vendorName, @JsonKey(name: "location")  String location)?  $default,) {final _that = this;
switch (_that) {
case _VideoProofVendor() when $default != null:
return $default(_that.id,_that.vendorName,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoProofVendor implements VideoProofVendor {
  const _VideoProofVendor({@JsonKey(name: "_id") this.id = "", @JsonKey(name: "vendorName") this.vendorName = "", @JsonKey(name: "location") this.location = ""});
  factory _VideoProofVendor.fromJson(Map<String, dynamic> json) => _$VideoProofVendorFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey(name: "vendorName") final  String vendorName;
@override@JsonKey(name: "location") final  String location;

/// Create a copy of VideoProofVendor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoProofVendorCopyWith<_VideoProofVendor> get copyWith => __$VideoProofVendorCopyWithImpl<_VideoProofVendor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoProofVendorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoProofVendor&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorName, vendorName) || other.vendorName == vendorName)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorName,location);

@override
String toString() {
  return 'VideoProofVendor(id: $id, vendorName: $vendorName, location: $location)';
}


}

/// @nodoc
abstract mixin class _$VideoProofVendorCopyWith<$Res> implements $VideoProofVendorCopyWith<$Res> {
  factory _$VideoProofVendorCopyWith(_VideoProofVendor value, $Res Function(_VideoProofVendor) _then) = __$VideoProofVendorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "vendorName") String vendorName,@JsonKey(name: "location") String location
});




}
/// @nodoc
class __$VideoProofVendorCopyWithImpl<$Res>
    implements _$VideoProofVendorCopyWith<$Res> {
  __$VideoProofVendorCopyWithImpl(this._self, this._then);

  final _VideoProofVendor _self;
  final $Res Function(_VideoProofVendor) _then;

/// Create a copy of VideoProofVendor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? vendorName = null,Object? location = null,}) {
  return _then(_VideoProofVendor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorName: null == vendorName ? _self.vendorName : vendorName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GpsLocation {

@JsonKey(name: "type") String get type;@JsonKey(name: "coordinates") List<double> get coordinates;@JsonKey(name: "address") String get address;
/// Create a copy of GpsLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GpsLocationCopyWith<GpsLocation> get copyWith => _$GpsLocationCopyWithImpl<GpsLocation>(this as GpsLocation, _$identity);

  /// Serializes this GpsLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GpsLocation&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.coordinates, coordinates)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(coordinates),address);

@override
String toString() {
  return 'GpsLocation(type: $type, coordinates: $coordinates, address: $address)';
}


}

/// @nodoc
abstract mixin class $GpsLocationCopyWith<$Res>  {
  factory $GpsLocationCopyWith(GpsLocation value, $Res Function(GpsLocation) _then) = _$GpsLocationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "type") String type,@JsonKey(name: "coordinates") List<double> coordinates,@JsonKey(name: "address") String address
});




}
/// @nodoc
class _$GpsLocationCopyWithImpl<$Res>
    implements $GpsLocationCopyWith<$Res> {
  _$GpsLocationCopyWithImpl(this._self, this._then);

  final GpsLocation _self;
  final $Res Function(GpsLocation) _then;

/// Create a copy of GpsLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? coordinates = null,Object? address = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<double>,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GpsLocation].
extension GpsLocationPatterns on GpsLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GpsLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GpsLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GpsLocation value)  $default,){
final _that = this;
switch (_that) {
case _GpsLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GpsLocation value)?  $default,){
final _that = this;
switch (_that) {
case _GpsLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "type")  String type, @JsonKey(name: "coordinates")  List<double> coordinates, @JsonKey(name: "address")  String address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GpsLocation() when $default != null:
return $default(_that.type,_that.coordinates,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "type")  String type, @JsonKey(name: "coordinates")  List<double> coordinates, @JsonKey(name: "address")  String address)  $default,) {final _that = this;
switch (_that) {
case _GpsLocation():
return $default(_that.type,_that.coordinates,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "type")  String type, @JsonKey(name: "coordinates")  List<double> coordinates, @JsonKey(name: "address")  String address)?  $default,) {final _that = this;
switch (_that) {
case _GpsLocation() when $default != null:
return $default(_that.type,_that.coordinates,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GpsLocation implements GpsLocation {
  const _GpsLocation({@JsonKey(name: "type") this.type = "", @JsonKey(name: "coordinates") final  List<double> coordinates = const [], @JsonKey(name: "address") this.address = ""}): _coordinates = coordinates;
  factory _GpsLocation.fromJson(Map<String, dynamic> json) => _$GpsLocationFromJson(json);

@override@JsonKey(name: "type") final  String type;
 final  List<double> _coordinates;
@override@JsonKey(name: "coordinates") List<double> get coordinates {
  if (_coordinates is EqualUnmodifiableListView) return _coordinates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coordinates);
}

@override@JsonKey(name: "address") final  String address;

/// Create a copy of GpsLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GpsLocationCopyWith<_GpsLocation> get copyWith => __$GpsLocationCopyWithImpl<_GpsLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GpsLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GpsLocation&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._coordinates, _coordinates)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_coordinates),address);

@override
String toString() {
  return 'GpsLocation(type: $type, coordinates: $coordinates, address: $address)';
}


}

/// @nodoc
abstract mixin class _$GpsLocationCopyWith<$Res> implements $GpsLocationCopyWith<$Res> {
  factory _$GpsLocationCopyWith(_GpsLocation value, $Res Function(_GpsLocation) _then) = __$GpsLocationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "type") String type,@JsonKey(name: "coordinates") List<double> coordinates,@JsonKey(name: "address") String address
});




}
/// @nodoc
class __$GpsLocationCopyWithImpl<$Res>
    implements _$GpsLocationCopyWith<$Res> {
  __$GpsLocationCopyWithImpl(this._self, this._then);

  final _GpsLocation _self;
  final $Res Function(_GpsLocation) _then;

/// Create a copy of GpsLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? coordinates = null,Object? address = null,}) {
  return _then(_GpsLocation(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self._coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<double>,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$VideoMedia {

@JsonKey(name: "url") String get url;@JsonKey(name: "thumbnail") String get thumbnail;@JsonKey(name: "type") String get type;@JsonKey(name: "duration") dynamic get duration;
/// Create a copy of VideoMedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoMediaCopyWith<VideoMedia> get copyWith => _$VideoMediaCopyWithImpl<VideoMedia>(this as VideoMedia, _$identity);

  /// Serializes this VideoMedia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoMedia&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.duration, duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,thumbnail,type,const DeepCollectionEquality().hash(duration));

@override
String toString() {
  return 'VideoMedia(url: $url, thumbnail: $thumbnail, type: $type, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $VideoMediaCopyWith<$Res>  {
  factory $VideoMediaCopyWith(VideoMedia value, $Res Function(VideoMedia) _then) = _$VideoMediaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "url") String url,@JsonKey(name: "thumbnail") String thumbnail,@JsonKey(name: "type") String type,@JsonKey(name: "duration") dynamic duration
});




}
/// @nodoc
class _$VideoMediaCopyWithImpl<$Res>
    implements $VideoMediaCopyWith<$Res> {
  _$VideoMediaCopyWithImpl(this._self, this._then);

  final VideoMedia _self;
  final $Res Function(VideoMedia) _then;

/// Create a copy of VideoMedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? thumbnail = null,Object? type = null,Object? duration = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoMedia].
extension VideoMediaPatterns on VideoMedia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoMedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoMedia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoMedia value)  $default,){
final _that = this;
switch (_that) {
case _VideoMedia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoMedia value)?  $default,){
final _that = this;
switch (_that) {
case _VideoMedia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "url")  String url, @JsonKey(name: "thumbnail")  String thumbnail, @JsonKey(name: "type")  String type, @JsonKey(name: "duration")  dynamic duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoMedia() when $default != null:
return $default(_that.url,_that.thumbnail,_that.type,_that.duration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "url")  String url, @JsonKey(name: "thumbnail")  String thumbnail, @JsonKey(name: "type")  String type, @JsonKey(name: "duration")  dynamic duration)  $default,) {final _that = this;
switch (_that) {
case _VideoMedia():
return $default(_that.url,_that.thumbnail,_that.type,_that.duration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "url")  String url, @JsonKey(name: "thumbnail")  String thumbnail, @JsonKey(name: "type")  String type, @JsonKey(name: "duration")  dynamic duration)?  $default,) {final _that = this;
switch (_that) {
case _VideoMedia() when $default != null:
return $default(_that.url,_that.thumbnail,_that.type,_that.duration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoMedia implements VideoMedia {
  const _VideoMedia({@JsonKey(name: "url") this.url = "", @JsonKey(name: "thumbnail") this.thumbnail = "", @JsonKey(name: "type") this.type = "", @JsonKey(name: "duration") this.duration = null});
  factory _VideoMedia.fromJson(Map<String, dynamic> json) => _$VideoMediaFromJson(json);

@override@JsonKey(name: "url") final  String url;
@override@JsonKey(name: "thumbnail") final  String thumbnail;
@override@JsonKey(name: "type") final  String type;
@override@JsonKey(name: "duration") final  dynamic duration;

/// Create a copy of VideoMedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoMediaCopyWith<_VideoMedia> get copyWith => __$VideoMediaCopyWithImpl<_VideoMedia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoMediaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoMedia&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.duration, duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,thumbnail,type,const DeepCollectionEquality().hash(duration));

@override
String toString() {
  return 'VideoMedia(url: $url, thumbnail: $thumbnail, type: $type, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$VideoMediaCopyWith<$Res> implements $VideoMediaCopyWith<$Res> {
  factory _$VideoMediaCopyWith(_VideoMedia value, $Res Function(_VideoMedia) _then) = __$VideoMediaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "url") String url,@JsonKey(name: "thumbnail") String thumbnail,@JsonKey(name: "type") String type,@JsonKey(name: "duration") dynamic duration
});




}
/// @nodoc
class __$VideoMediaCopyWithImpl<$Res>
    implements _$VideoMediaCopyWith<$Res> {
  __$VideoMediaCopyWithImpl(this._self, this._then);

  final _VideoMedia _self;
  final $Res Function(_VideoMedia) _then;

/// Create a copy of VideoMedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? thumbnail = null,Object? type = null,Object? duration = freezed,}) {
  return _then(_VideoMedia(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$InfoCard {

@JsonKey(name: "key") String get key;@JsonKey(name: "title") String get title;@JsonKey(name: "subtitle") String get subtitle;
/// Create a copy of InfoCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoCardCopyWith<InfoCard> get copyWith => _$InfoCardCopyWithImpl<InfoCard>(this as InfoCard, _$identity);

  /// Serializes this InfoCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoCard&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,subtitle);

@override
String toString() {
  return 'InfoCard(key: $key, title: $title, subtitle: $subtitle)';
}


}

/// @nodoc
abstract mixin class $InfoCardCopyWith<$Res>  {
  factory $InfoCardCopyWith(InfoCard value, $Res Function(InfoCard) _then) = _$InfoCardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "key") String key,@JsonKey(name: "title") String title,@JsonKey(name: "subtitle") String subtitle
});




}
/// @nodoc
class _$InfoCardCopyWithImpl<$Res>
    implements $InfoCardCopyWith<$Res> {
  _$InfoCardCopyWithImpl(this._self, this._then);

  final InfoCard _self;
  final $Res Function(InfoCard) _then;

/// Create a copy of InfoCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? title = null,Object? subtitle = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoCard].
extension InfoCardPatterns on InfoCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoCard value)  $default,){
final _that = this;
switch (_that) {
case _InfoCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoCard value)?  $default,){
final _that = this;
switch (_that) {
case _InfoCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "key")  String key, @JsonKey(name: "title")  String title, @JsonKey(name: "subtitle")  String subtitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoCard() when $default != null:
return $default(_that.key,_that.title,_that.subtitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "key")  String key, @JsonKey(name: "title")  String title, @JsonKey(name: "subtitle")  String subtitle)  $default,) {final _that = this;
switch (_that) {
case _InfoCard():
return $default(_that.key,_that.title,_that.subtitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "key")  String key, @JsonKey(name: "title")  String title, @JsonKey(name: "subtitle")  String subtitle)?  $default,) {final _that = this;
switch (_that) {
case _InfoCard() when $default != null:
return $default(_that.key,_that.title,_that.subtitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoCard implements InfoCard {
  const _InfoCard({@JsonKey(name: "key") this.key = "", @JsonKey(name: "title") this.title = "", @JsonKey(name: "subtitle") this.subtitle = ""});
  factory _InfoCard.fromJson(Map<String, dynamic> json) => _$InfoCardFromJson(json);

@override@JsonKey(name: "key") final  String key;
@override@JsonKey(name: "title") final  String title;
@override@JsonKey(name: "subtitle") final  String subtitle;

/// Create a copy of InfoCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoCardCopyWith<_InfoCard> get copyWith => __$InfoCardCopyWithImpl<_InfoCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoCard&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,subtitle);

@override
String toString() {
  return 'InfoCard(key: $key, title: $title, subtitle: $subtitle)';
}


}

/// @nodoc
abstract mixin class _$InfoCardCopyWith<$Res> implements $InfoCardCopyWith<$Res> {
  factory _$InfoCardCopyWith(_InfoCard value, $Res Function(_InfoCard) _then) = __$InfoCardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "key") String key,@JsonKey(name: "title") String title,@JsonKey(name: "subtitle") String subtitle
});




}
/// @nodoc
class __$InfoCardCopyWithImpl<$Res>
    implements _$InfoCardCopyWith<$Res> {
  __$InfoCardCopyWithImpl(this._self, this._then);

  final _InfoCard _self;
  final $Res Function(_InfoCard) _then;

/// Create a copy of InfoCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? title = null,Object? subtitle = null,}) {
  return _then(_InfoCard(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$VideoReceipt {

@JsonKey(name: "sevaType") String get sevaType;@JsonKey(name: "vendorLine") String get vendorLine;@JsonKey(name: "formattedPaidAt") String get formattedPaidAt;@JsonKey(name: "formattedGrossAmount") String get formattedGrossAmount;
/// Create a copy of VideoReceipt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoReceiptCopyWith<VideoReceipt> get copyWith => _$VideoReceiptCopyWithImpl<VideoReceipt>(this as VideoReceipt, _$identity);

  /// Serializes this VideoReceipt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoReceipt&&(identical(other.sevaType, sevaType) || other.sevaType == sevaType)&&(identical(other.vendorLine, vendorLine) || other.vendorLine == vendorLine)&&(identical(other.formattedPaidAt, formattedPaidAt) || other.formattedPaidAt == formattedPaidAt)&&(identical(other.formattedGrossAmount, formattedGrossAmount) || other.formattedGrossAmount == formattedGrossAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sevaType,vendorLine,formattedPaidAt,formattedGrossAmount);

@override
String toString() {
  return 'VideoReceipt(sevaType: $sevaType, vendorLine: $vendorLine, formattedPaidAt: $formattedPaidAt, formattedGrossAmount: $formattedGrossAmount)';
}


}

/// @nodoc
abstract mixin class $VideoReceiptCopyWith<$Res>  {
  factory $VideoReceiptCopyWith(VideoReceipt value, $Res Function(VideoReceipt) _then) = _$VideoReceiptCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "sevaType") String sevaType,@JsonKey(name: "vendorLine") String vendorLine,@JsonKey(name: "formattedPaidAt") String formattedPaidAt,@JsonKey(name: "formattedGrossAmount") String formattedGrossAmount
});




}
/// @nodoc
class _$VideoReceiptCopyWithImpl<$Res>
    implements $VideoReceiptCopyWith<$Res> {
  _$VideoReceiptCopyWithImpl(this._self, this._then);

  final VideoReceipt _self;
  final $Res Function(VideoReceipt) _then;

/// Create a copy of VideoReceipt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sevaType = null,Object? vendorLine = null,Object? formattedPaidAt = null,Object? formattedGrossAmount = null,}) {
  return _then(_self.copyWith(
sevaType: null == sevaType ? _self.sevaType : sevaType // ignore: cast_nullable_to_non_nullable
as String,vendorLine: null == vendorLine ? _self.vendorLine : vendorLine // ignore: cast_nullable_to_non_nullable
as String,formattedPaidAt: null == formattedPaidAt ? _self.formattedPaidAt : formattedPaidAt // ignore: cast_nullable_to_non_nullable
as String,formattedGrossAmount: null == formattedGrossAmount ? _self.formattedGrossAmount : formattedGrossAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoReceipt].
extension VideoReceiptPatterns on VideoReceipt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoReceipt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoReceipt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoReceipt value)  $default,){
final _that = this;
switch (_that) {
case _VideoReceipt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoReceipt value)?  $default,){
final _that = this;
switch (_that) {
case _VideoReceipt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "sevaType")  String sevaType, @JsonKey(name: "vendorLine")  String vendorLine, @JsonKey(name: "formattedPaidAt")  String formattedPaidAt, @JsonKey(name: "formattedGrossAmount")  String formattedGrossAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoReceipt() when $default != null:
return $default(_that.sevaType,_that.vendorLine,_that.formattedPaidAt,_that.formattedGrossAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "sevaType")  String sevaType, @JsonKey(name: "vendorLine")  String vendorLine, @JsonKey(name: "formattedPaidAt")  String formattedPaidAt, @JsonKey(name: "formattedGrossAmount")  String formattedGrossAmount)  $default,) {final _that = this;
switch (_that) {
case _VideoReceipt():
return $default(_that.sevaType,_that.vendorLine,_that.formattedPaidAt,_that.formattedGrossAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "sevaType")  String sevaType, @JsonKey(name: "vendorLine")  String vendorLine, @JsonKey(name: "formattedPaidAt")  String formattedPaidAt, @JsonKey(name: "formattedGrossAmount")  String formattedGrossAmount)?  $default,) {final _that = this;
switch (_that) {
case _VideoReceipt() when $default != null:
return $default(_that.sevaType,_that.vendorLine,_that.formattedPaidAt,_that.formattedGrossAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoReceipt implements VideoReceipt {
  const _VideoReceipt({@JsonKey(name: "sevaType") this.sevaType = "", @JsonKey(name: "vendorLine") this.vendorLine = "", @JsonKey(name: "formattedPaidAt") this.formattedPaidAt = "", @JsonKey(name: "formattedGrossAmount") this.formattedGrossAmount = ""});
  factory _VideoReceipt.fromJson(Map<String, dynamic> json) => _$VideoReceiptFromJson(json);

@override@JsonKey(name: "sevaType") final  String sevaType;
@override@JsonKey(name: "vendorLine") final  String vendorLine;
@override@JsonKey(name: "formattedPaidAt") final  String formattedPaidAt;
@override@JsonKey(name: "formattedGrossAmount") final  String formattedGrossAmount;

/// Create a copy of VideoReceipt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoReceiptCopyWith<_VideoReceipt> get copyWith => __$VideoReceiptCopyWithImpl<_VideoReceipt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoReceiptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoReceipt&&(identical(other.sevaType, sevaType) || other.sevaType == sevaType)&&(identical(other.vendorLine, vendorLine) || other.vendorLine == vendorLine)&&(identical(other.formattedPaidAt, formattedPaidAt) || other.formattedPaidAt == formattedPaidAt)&&(identical(other.formattedGrossAmount, formattedGrossAmount) || other.formattedGrossAmount == formattedGrossAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sevaType,vendorLine,formattedPaidAt,formattedGrossAmount);

@override
String toString() {
  return 'VideoReceipt(sevaType: $sevaType, vendorLine: $vendorLine, formattedPaidAt: $formattedPaidAt, formattedGrossAmount: $formattedGrossAmount)';
}


}

/// @nodoc
abstract mixin class _$VideoReceiptCopyWith<$Res> implements $VideoReceiptCopyWith<$Res> {
  factory _$VideoReceiptCopyWith(_VideoReceipt value, $Res Function(_VideoReceipt) _then) = __$VideoReceiptCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "sevaType") String sevaType,@JsonKey(name: "vendorLine") String vendorLine,@JsonKey(name: "formattedPaidAt") String formattedPaidAt,@JsonKey(name: "formattedGrossAmount") String formattedGrossAmount
});




}
/// @nodoc
class __$VideoReceiptCopyWithImpl<$Res>
    implements _$VideoReceiptCopyWith<$Res> {
  __$VideoReceiptCopyWithImpl(this._self, this._then);

  final _VideoReceipt _self;
  final $Res Function(_VideoReceipt) _then;

/// Create a copy of VideoReceipt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sevaType = null,Object? vendorLine = null,Object? formattedPaidAt = null,Object? formattedGrossAmount = null,}) {
  return _then(_VideoReceipt(
sevaType: null == sevaType ? _self.sevaType : sevaType // ignore: cast_nullable_to_non_nullable
as String,vendorLine: null == vendorLine ? _self.vendorLine : vendorLine // ignore: cast_nullable_to_non_nullable
as String,formattedPaidAt: null == formattedPaidAt ? _self.formattedPaidAt : formattedPaidAt // ignore: cast_nullable_to_non_nullable
as String,formattedGrossAmount: null == formattedGrossAmount ? _self.formattedGrossAmount : formattedGrossAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$VideoBadges {

@JsonKey(name: "gpsVerified") bool get gpsVerified;@JsonKey(name: "recordedLive") bool get recordedLive;@JsonKey(name: "noEditPossible") bool get noEditPossible;
/// Create a copy of VideoBadges
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoBadgesCopyWith<VideoBadges> get copyWith => _$VideoBadgesCopyWithImpl<VideoBadges>(this as VideoBadges, _$identity);

  /// Serializes this VideoBadges to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoBadges&&(identical(other.gpsVerified, gpsVerified) || other.gpsVerified == gpsVerified)&&(identical(other.recordedLive, recordedLive) || other.recordedLive == recordedLive)&&(identical(other.noEditPossible, noEditPossible) || other.noEditPossible == noEditPossible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gpsVerified,recordedLive,noEditPossible);

@override
String toString() {
  return 'VideoBadges(gpsVerified: $gpsVerified, recordedLive: $recordedLive, noEditPossible: $noEditPossible)';
}


}

/// @nodoc
abstract mixin class $VideoBadgesCopyWith<$Res>  {
  factory $VideoBadgesCopyWith(VideoBadges value, $Res Function(VideoBadges) _then) = _$VideoBadgesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "gpsVerified") bool gpsVerified,@JsonKey(name: "recordedLive") bool recordedLive,@JsonKey(name: "noEditPossible") bool noEditPossible
});




}
/// @nodoc
class _$VideoBadgesCopyWithImpl<$Res>
    implements $VideoBadgesCopyWith<$Res> {
  _$VideoBadgesCopyWithImpl(this._self, this._then);

  final VideoBadges _self;
  final $Res Function(VideoBadges) _then;

/// Create a copy of VideoBadges
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gpsVerified = null,Object? recordedLive = null,Object? noEditPossible = null,}) {
  return _then(_self.copyWith(
gpsVerified: null == gpsVerified ? _self.gpsVerified : gpsVerified // ignore: cast_nullable_to_non_nullable
as bool,recordedLive: null == recordedLive ? _self.recordedLive : recordedLive // ignore: cast_nullable_to_non_nullable
as bool,noEditPossible: null == noEditPossible ? _self.noEditPossible : noEditPossible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoBadges].
extension VideoBadgesPatterns on VideoBadges {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoBadges value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoBadges() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoBadges value)  $default,){
final _that = this;
switch (_that) {
case _VideoBadges():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoBadges value)?  $default,){
final _that = this;
switch (_that) {
case _VideoBadges() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "gpsVerified")  bool gpsVerified, @JsonKey(name: "recordedLive")  bool recordedLive, @JsonKey(name: "noEditPossible")  bool noEditPossible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoBadges() when $default != null:
return $default(_that.gpsVerified,_that.recordedLive,_that.noEditPossible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "gpsVerified")  bool gpsVerified, @JsonKey(name: "recordedLive")  bool recordedLive, @JsonKey(name: "noEditPossible")  bool noEditPossible)  $default,) {final _that = this;
switch (_that) {
case _VideoBadges():
return $default(_that.gpsVerified,_that.recordedLive,_that.noEditPossible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "gpsVerified")  bool gpsVerified, @JsonKey(name: "recordedLive")  bool recordedLive, @JsonKey(name: "noEditPossible")  bool noEditPossible)?  $default,) {final _that = this;
switch (_that) {
case _VideoBadges() when $default != null:
return $default(_that.gpsVerified,_that.recordedLive,_that.noEditPossible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoBadges implements VideoBadges {
  const _VideoBadges({@JsonKey(name: "gpsVerified") this.gpsVerified = false, @JsonKey(name: "recordedLive") this.recordedLive = false, @JsonKey(name: "noEditPossible") this.noEditPossible = false});
  factory _VideoBadges.fromJson(Map<String, dynamic> json) => _$VideoBadgesFromJson(json);

@override@JsonKey(name: "gpsVerified") final  bool gpsVerified;
@override@JsonKey(name: "recordedLive") final  bool recordedLive;
@override@JsonKey(name: "noEditPossible") final  bool noEditPossible;

/// Create a copy of VideoBadges
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoBadgesCopyWith<_VideoBadges> get copyWith => __$VideoBadgesCopyWithImpl<_VideoBadges>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoBadgesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoBadges&&(identical(other.gpsVerified, gpsVerified) || other.gpsVerified == gpsVerified)&&(identical(other.recordedLive, recordedLive) || other.recordedLive == recordedLive)&&(identical(other.noEditPossible, noEditPossible) || other.noEditPossible == noEditPossible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gpsVerified,recordedLive,noEditPossible);

@override
String toString() {
  return 'VideoBadges(gpsVerified: $gpsVerified, recordedLive: $recordedLive, noEditPossible: $noEditPossible)';
}


}

/// @nodoc
abstract mixin class _$VideoBadgesCopyWith<$Res> implements $VideoBadgesCopyWith<$Res> {
  factory _$VideoBadgesCopyWith(_VideoBadges value, $Res Function(_VideoBadges) _then) = __$VideoBadgesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "gpsVerified") bool gpsVerified,@JsonKey(name: "recordedLive") bool recordedLive,@JsonKey(name: "noEditPossible") bool noEditPossible
});




}
/// @nodoc
class __$VideoBadgesCopyWithImpl<$Res>
    implements _$VideoBadgesCopyWith<$Res> {
  __$VideoBadgesCopyWithImpl(this._self, this._then);

  final _VideoBadges _self;
  final $Res Function(_VideoBadges) _then;

/// Create a copy of VideoBadges
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gpsVerified = null,Object? recordedLive = null,Object? noEditPossible = null,}) {
  return _then(_VideoBadges(
gpsVerified: null == gpsVerified ? _self.gpsVerified : gpsVerified // ignore: cast_nullable_to_non_nullable
as bool,recordedLive: null == recordedLive ? _self.recordedLive : recordedLive // ignore: cast_nullable_to_non_nullable
as bool,noEditPossible: null == noEditPossible ? _self.noEditPossible : noEditPossible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
