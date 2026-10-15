// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_save_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderSaveApiResponse _$OrderSaveApiResponseFromJson(Map<String, dynamic> json) {
  return _OrderSaveApiResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderSaveApiResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  OrderSaveData get data => throw _privateConstructorUsedError;
  dynamic get errors => throw _privateConstructorUsedError;

  /// Serializes this OrderSaveApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderSaveApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderSaveApiResponseCopyWith<OrderSaveApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSaveApiResponseCopyWith<$Res> {
  factory $OrderSaveApiResponseCopyWith(
    OrderSaveApiResponse value,
    $Res Function(OrderSaveApiResponse) then,
  ) = _$OrderSaveApiResponseCopyWithImpl<$Res, OrderSaveApiResponse>;
  @useResult
  $Res call({bool success, String message, OrderSaveData data, dynamic errors});

  $OrderSaveDataCopyWith<$Res> get data;
}

/// @nodoc
class _$OrderSaveApiResponseCopyWithImpl<
  $Res,
  $Val extends OrderSaveApiResponse
>
    implements $OrderSaveApiResponseCopyWith<$Res> {
  _$OrderSaveApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderSaveApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? errors = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as OrderSaveData,
            errors: freezed == errors
                ? _value.errors
                : errors // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderSaveApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderSaveDataCopyWith<$Res> get data {
    return $OrderSaveDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderSaveApiResponseImplCopyWith<$Res>
    implements $OrderSaveApiResponseCopyWith<$Res> {
  factory _$$OrderSaveApiResponseImplCopyWith(
    _$OrderSaveApiResponseImpl value,
    $Res Function(_$OrderSaveApiResponseImpl) then,
  ) = __$$OrderSaveApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, OrderSaveData data, dynamic errors});

  @override
  $OrderSaveDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OrderSaveApiResponseImplCopyWithImpl<$Res>
    extends _$OrderSaveApiResponseCopyWithImpl<$Res, _$OrderSaveApiResponseImpl>
    implements _$$OrderSaveApiResponseImplCopyWith<$Res> {
  __$$OrderSaveApiResponseImplCopyWithImpl(
    _$OrderSaveApiResponseImpl _value,
    $Res Function(_$OrderSaveApiResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderSaveApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? errors = freezed,
  }) {
    return _then(
      _$OrderSaveApiResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as OrderSaveData,
        errors: freezed == errors
            ? _value.errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderSaveApiResponseImpl implements _OrderSaveApiResponse {
  const _$OrderSaveApiResponseImpl({
    this.success = false,
    this.message = '',
    this.data = const OrderSaveData(),
    this.errors,
  });

  factory _$OrderSaveApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderSaveApiResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final OrderSaveData data;
  @override
  final dynamic errors;

  @override
  String toString() {
    return 'OrderSaveApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderSaveApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    data,
    const DeepCollectionEquality().hash(errors),
  );

  /// Create a copy of OrderSaveApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderSaveApiResponseImplCopyWith<_$OrderSaveApiResponseImpl>
  get copyWith =>
      __$$OrderSaveApiResponseImplCopyWithImpl<_$OrderSaveApiResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderSaveApiResponseImplToJson(this);
  }
}

abstract class _OrderSaveApiResponse implements OrderSaveApiResponse {
  const factory _OrderSaveApiResponse({
    final bool success,
    final String message,
    final OrderSaveData data,
    final dynamic errors,
  }) = _$OrderSaveApiResponseImpl;

  factory _OrderSaveApiResponse.fromJson(Map<String, dynamic> json) =
      _$OrderSaveApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  OrderSaveData get data;
  @override
  dynamic get errors;

  /// Create a copy of OrderSaveApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderSaveApiResponseImplCopyWith<_$OrderSaveApiResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

OrderSaveData _$OrderSaveDataFromJson(Map<String, dynamic> json) {
  return _OrderSaveData.fromJson(json);
}

/// @nodoc
mixin _$OrderSaveData {
  String get sevaId => throw _privateConstructorUsedError;
  VendorData get vendor => throw _privateConstructorUsedError;
  ServiceData get service => throw _privateConstructorUsedError;
  PricingData get pricing => throw _privateConstructorUsedError;
  RazorpayData get razorpay => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;

  /// Serializes this OrderSaveData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderSaveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderSaveDataCopyWith<OrderSaveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSaveDataCopyWith<$Res> {
  factory $OrderSaveDataCopyWith(
    OrderSaveData value,
    $Res Function(OrderSaveData) then,
  ) = _$OrderSaveDataCopyWithImpl<$Res, OrderSaveData>;
  @useResult
  $Res call({
    String sevaId,
    VendorData vendor,
    ServiceData service,
    PricingData pricing,
    RazorpayData razorpay,
    String transactionId,
  });

  $VendorDataCopyWith<$Res> get vendor;
  $ServiceDataCopyWith<$Res> get service;
  $PricingDataCopyWith<$Res> get pricing;
  $RazorpayDataCopyWith<$Res> get razorpay;
}

/// @nodoc
class _$OrderSaveDataCopyWithImpl<$Res, $Val extends OrderSaveData>
    implements $OrderSaveDataCopyWith<$Res> {
  _$OrderSaveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderSaveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sevaId = null,
    Object? vendor = null,
    Object? service = null,
    Object? pricing = null,
    Object? razorpay = null,
    Object? transactionId = null,
  }) {
    return _then(
      _value.copyWith(
            sevaId: null == sevaId
                ? _value.sevaId
                : sevaId // ignore: cast_nullable_to_non_nullable
                      as String,
            vendor: null == vendor
                ? _value.vendor
                : vendor // ignore: cast_nullable_to_non_nullable
                      as VendorData,
            service: null == service
                ? _value.service
                : service // ignore: cast_nullable_to_non_nullable
                      as ServiceData,
            pricing: null == pricing
                ? _value.pricing
                : pricing // ignore: cast_nullable_to_non_nullable
                      as PricingData,
            razorpay: null == razorpay
                ? _value.razorpay
                : razorpay // ignore: cast_nullable_to_non_nullable
                      as RazorpayData,
            transactionId: null == transactionId
                ? _value.transactionId
                : transactionId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderSaveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorDataCopyWith<$Res> get vendor {
    return $VendorDataCopyWith<$Res>(_value.vendor, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
  }

  /// Create a copy of OrderSaveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceDataCopyWith<$Res> get service {
    return $ServiceDataCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }

  /// Create a copy of OrderSaveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PricingDataCopyWith<$Res> get pricing {
    return $PricingDataCopyWith<$Res>(_value.pricing, (value) {
      return _then(_value.copyWith(pricing: value) as $Val);
    });
  }

  /// Create a copy of OrderSaveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RazorpayDataCopyWith<$Res> get razorpay {
    return $RazorpayDataCopyWith<$Res>(_value.razorpay, (value) {
      return _then(_value.copyWith(razorpay: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderSaveDataImplCopyWith<$Res>
    implements $OrderSaveDataCopyWith<$Res> {
  factory _$$OrderSaveDataImplCopyWith(
    _$OrderSaveDataImpl value,
    $Res Function(_$OrderSaveDataImpl) then,
  ) = __$$OrderSaveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sevaId,
    VendorData vendor,
    ServiceData service,
    PricingData pricing,
    RazorpayData razorpay,
    String transactionId,
  });

  @override
  $VendorDataCopyWith<$Res> get vendor;
  @override
  $ServiceDataCopyWith<$Res> get service;
  @override
  $PricingDataCopyWith<$Res> get pricing;
  @override
  $RazorpayDataCopyWith<$Res> get razorpay;
}

/// @nodoc
class __$$OrderSaveDataImplCopyWithImpl<$Res>
    extends _$OrderSaveDataCopyWithImpl<$Res, _$OrderSaveDataImpl>
    implements _$$OrderSaveDataImplCopyWith<$Res> {
  __$$OrderSaveDataImplCopyWithImpl(
    _$OrderSaveDataImpl _value,
    $Res Function(_$OrderSaveDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderSaveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sevaId = null,
    Object? vendor = null,
    Object? service = null,
    Object? pricing = null,
    Object? razorpay = null,
    Object? transactionId = null,
  }) {
    return _then(
      _$OrderSaveDataImpl(
        sevaId: null == sevaId
            ? _value.sevaId
            : sevaId // ignore: cast_nullable_to_non_nullable
                  as String,
        vendor: null == vendor
            ? _value.vendor
            : vendor // ignore: cast_nullable_to_non_nullable
                  as VendorData,
        service: null == service
            ? _value.service
            : service // ignore: cast_nullable_to_non_nullable
                  as ServiceData,
        pricing: null == pricing
            ? _value.pricing
            : pricing // ignore: cast_nullable_to_non_nullable
                  as PricingData,
        razorpay: null == razorpay
            ? _value.razorpay
            : razorpay // ignore: cast_nullable_to_non_nullable
                  as RazorpayData,
        transactionId: null == transactionId
            ? _value.transactionId
            : transactionId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderSaveDataImpl implements _OrderSaveData {
  const _$OrderSaveDataImpl({
    this.sevaId = '',
    this.vendor = const VendorData(),
    this.service = const ServiceData(),
    this.pricing = const PricingData(),
    this.razorpay = const RazorpayData(),
    this.transactionId = '',
  });

  factory _$OrderSaveDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderSaveDataImplFromJson(json);

  @override
  @JsonKey()
  final String sevaId;
  @override
  @JsonKey()
  final VendorData vendor;
  @override
  @JsonKey()
  final ServiceData service;
  @override
  @JsonKey()
  final PricingData pricing;
  @override
  @JsonKey()
  final RazorpayData razorpay;
  @override
  @JsonKey()
  final String transactionId;

  @override
  String toString() {
    return 'OrderSaveData(sevaId: $sevaId, vendor: $vendor, service: $service, pricing: $pricing, razorpay: $razorpay, transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderSaveDataImpl &&
            (identical(other.sevaId, sevaId) || other.sevaId == sevaId) &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            (identical(other.razorpay, razorpay) ||
                other.razorpay == razorpay) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sevaId,
    vendor,
    service,
    pricing,
    razorpay,
    transactionId,
  );

  /// Create a copy of OrderSaveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderSaveDataImplCopyWith<_$OrderSaveDataImpl> get copyWith =>
      __$$OrderSaveDataImplCopyWithImpl<_$OrderSaveDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderSaveDataImplToJson(this);
  }
}

abstract class _OrderSaveData implements OrderSaveData {
  const factory _OrderSaveData({
    final String sevaId,
    final VendorData vendor,
    final ServiceData service,
    final PricingData pricing,
    final RazorpayData razorpay,
    final String transactionId,
  }) = _$OrderSaveDataImpl;

  factory _OrderSaveData.fromJson(Map<String, dynamic> json) =
      _$OrderSaveDataImpl.fromJson;

  @override
  String get sevaId;
  @override
  VendorData get vendor;
  @override
  ServiceData get service;
  @override
  PricingData get pricing;
  @override
  RazorpayData get razorpay;
  @override
  String get transactionId;

  /// Create a copy of OrderSaveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderSaveDataImplCopyWith<_$OrderSaveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorData _$VendorDataFromJson(Map<String, dynamic> json) {
  return _VendorData.fromJson(json);
}

/// @nodoc
mixin _$VendorData {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get vendorName => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  /// Serializes this VendorData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorDataCopyWith<VendorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorDataCopyWith<$Res> {
  factory $VendorDataCopyWith(
    VendorData value,
    $Res Function(VendorData) then,
  ) = _$VendorDataCopyWithImpl<$Res, VendorData>;
  @useResult
  $Res call({
    @JsonKey(name: '_id') String id,
    String vendorName,
    String location,
  });
}

/// @nodoc
class _$VendorDataCopyWithImpl<$Res, $Val extends VendorData>
    implements $VendorDataCopyWith<$Res> {
  _$VendorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorName = null,
    Object? location = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            vendorName: null == vendorName
                ? _value.vendorName
                : vendorName // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VendorDataImplCopyWith<$Res>
    implements $VendorDataCopyWith<$Res> {
  factory _$$VendorDataImplCopyWith(
    _$VendorDataImpl value,
    $Res Function(_$VendorDataImpl) then,
  ) = __$$VendorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: '_id') String id,
    String vendorName,
    String location,
  });
}

/// @nodoc
class __$$VendorDataImplCopyWithImpl<$Res>
    extends _$VendorDataCopyWithImpl<$Res, _$VendorDataImpl>
    implements _$$VendorDataImplCopyWith<$Res> {
  __$$VendorDataImplCopyWithImpl(
    _$VendorDataImpl _value,
    $Res Function(_$VendorDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorName = null,
    Object? location = null,
  }) {
    return _then(
      _$VendorDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        vendorName: null == vendorName
            ? _value.vendorName
            : vendorName // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorDataImpl implements _VendorData {
  const _$VendorDataImpl({
    @JsonKey(name: '_id') this.id = '',
    this.vendorName = '',
    this.location = '',
  });

  factory _$VendorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String vendorName;
  @override
  @JsonKey()
  final String location;

  @override
  String toString() {
    return 'VendorData(id: $id, vendorName: $vendorName, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, vendorName, location);

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorDataImplCopyWith<_$VendorDataImpl> get copyWith =>
      __$$VendorDataImplCopyWithImpl<_$VendorDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorDataImplToJson(this);
  }
}

abstract class _VendorData implements VendorData {
  const factory _VendorData({
    @JsonKey(name: '_id') final String id,
    final String vendorName,
    final String location,
  }) = _$VendorDataImpl;

  factory _VendorData.fromJson(Map<String, dynamic> json) =
      _$VendorDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get vendorName;
  @override
  String get location;

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorDataImplCopyWith<_$VendorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceData _$ServiceDataFromJson(Map<String, dynamic> json) {
  return _ServiceData.fromJson(json);
}

/// @nodoc
mixin _$ServiceData {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this ServiceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceDataCopyWith<ServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDataCopyWith<$Res> {
  factory $ServiceDataCopyWith(
    ServiceData value,
    $Res Function(ServiceData) then,
  ) = _$ServiceDataCopyWithImpl<$Res, ServiceData>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name, String slug});
}

/// @nodoc
class _$ServiceDataCopyWithImpl<$Res, $Val extends ServiceData>
    implements $ServiceDataCopyWith<$Res> {
  _$ServiceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? slug = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ServiceDataImplCopyWith<$Res>
    implements $ServiceDataCopyWith<$Res> {
  factory _$$ServiceDataImplCopyWith(
    _$ServiceDataImpl value,
    $Res Function(_$ServiceDataImpl) then,
  ) = __$$ServiceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name, String slug});
}

/// @nodoc
class __$$ServiceDataImplCopyWithImpl<$Res>
    extends _$ServiceDataCopyWithImpl<$Res, _$ServiceDataImpl>
    implements _$$ServiceDataImplCopyWith<$Res> {
  __$$ServiceDataImplCopyWithImpl(
    _$ServiceDataImpl _value,
    $Res Function(_$ServiceDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServiceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? slug = null}) {
    return _then(
      _$ServiceDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceDataImpl implements _ServiceData {
  const _$ServiceDataImpl({
    @JsonKey(name: '_id') this.id = '',
    this.name = '',
    this.slug = '',
  });

  factory _$ServiceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String slug;

  @override
  String toString() {
    return 'ServiceData(id: $id, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug);

  /// Create a copy of ServiceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDataImplCopyWith<_$ServiceDataImpl> get copyWith =>
      __$$ServiceDataImplCopyWithImpl<_$ServiceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceDataImplToJson(this);
  }
}

abstract class _ServiceData implements ServiceData {
  const factory _ServiceData({
    @JsonKey(name: '_id') final String id,
    final String name,
    final String slug,
  }) = _$ServiceDataImpl;

  factory _ServiceData.fromJson(Map<String, dynamic> json) =
      _$ServiceDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get slug;

  /// Create a copy of ServiceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceDataImplCopyWith<_$ServiceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingData _$PricingDataFromJson(Map<String, dynamic> json) {
  return _PricingData.fromJson(json);
}

/// @nodoc
mixin _$PricingData {
  int get vendorAmount => throw _privateConstructorUsedError;
  int get platformFee => throw _privateConstructorUsedError;
  int get gstAmount => throw _privateConstructorUsedError;
  int get grossAmount => throw _privateConstructorUsedError;
  String get formattedVendorAmount => throw _privateConstructorUsedError;
  String get formattedPlatformFee => throw _privateConstructorUsedError;
  String get formattedGstAmount => throw _privateConstructorUsedError;
  String get formattedGrossAmount => throw _privateConstructorUsedError;

  /// Serializes this PricingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricingDataCopyWith<PricingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingDataCopyWith<$Res> {
  factory $PricingDataCopyWith(
    PricingData value,
    $Res Function(PricingData) then,
  ) = _$PricingDataCopyWithImpl<$Res, PricingData>;
  @useResult
  $Res call({
    int vendorAmount,
    int platformFee,
    int gstAmount,
    int grossAmount,
    String formattedVendorAmount,
    String formattedPlatformFee,
    String formattedGstAmount,
    String formattedGrossAmount,
  });
}

/// @nodoc
class _$PricingDataCopyWithImpl<$Res, $Val extends PricingData>
    implements $PricingDataCopyWith<$Res> {
  _$PricingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorAmount = null,
    Object? platformFee = null,
    Object? gstAmount = null,
    Object? grossAmount = null,
    Object? formattedVendorAmount = null,
    Object? formattedPlatformFee = null,
    Object? formattedGstAmount = null,
    Object? formattedGrossAmount = null,
  }) {
    return _then(
      _value.copyWith(
            vendorAmount: null == vendorAmount
                ? _value.vendorAmount
                : vendorAmount // ignore: cast_nullable_to_non_nullable
                      as int,
            platformFee: null == platformFee
                ? _value.platformFee
                : platformFee // ignore: cast_nullable_to_non_nullable
                      as int,
            gstAmount: null == gstAmount
                ? _value.gstAmount
                : gstAmount // ignore: cast_nullable_to_non_nullable
                      as int,
            grossAmount: null == grossAmount
                ? _value.grossAmount
                : grossAmount // ignore: cast_nullable_to_non_nullable
                      as int,
            formattedVendorAmount: null == formattedVendorAmount
                ? _value.formattedVendorAmount
                : formattedVendorAmount // ignore: cast_nullable_to_non_nullable
                      as String,
            formattedPlatformFee: null == formattedPlatformFee
                ? _value.formattedPlatformFee
                : formattedPlatformFee // ignore: cast_nullable_to_non_nullable
                      as String,
            formattedGstAmount: null == formattedGstAmount
                ? _value.formattedGstAmount
                : formattedGstAmount // ignore: cast_nullable_to_non_nullable
                      as String,
            formattedGrossAmount: null == formattedGrossAmount
                ? _value.formattedGrossAmount
                : formattedGrossAmount // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PricingDataImplCopyWith<$Res>
    implements $PricingDataCopyWith<$Res> {
  factory _$$PricingDataImplCopyWith(
    _$PricingDataImpl value,
    $Res Function(_$PricingDataImpl) then,
  ) = __$$PricingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int vendorAmount,
    int platformFee,
    int gstAmount,
    int grossAmount,
    String formattedVendorAmount,
    String formattedPlatformFee,
    String formattedGstAmount,
    String formattedGrossAmount,
  });
}

/// @nodoc
class __$$PricingDataImplCopyWithImpl<$Res>
    extends _$PricingDataCopyWithImpl<$Res, _$PricingDataImpl>
    implements _$$PricingDataImplCopyWith<$Res> {
  __$$PricingDataImplCopyWithImpl(
    _$PricingDataImpl _value,
    $Res Function(_$PricingDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PricingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorAmount = null,
    Object? platformFee = null,
    Object? gstAmount = null,
    Object? grossAmount = null,
    Object? formattedVendorAmount = null,
    Object? formattedPlatformFee = null,
    Object? formattedGstAmount = null,
    Object? formattedGrossAmount = null,
  }) {
    return _then(
      _$PricingDataImpl(
        vendorAmount: null == vendorAmount
            ? _value.vendorAmount
            : vendorAmount // ignore: cast_nullable_to_non_nullable
                  as int,
        platformFee: null == platformFee
            ? _value.platformFee
            : platformFee // ignore: cast_nullable_to_non_nullable
                  as int,
        gstAmount: null == gstAmount
            ? _value.gstAmount
            : gstAmount // ignore: cast_nullable_to_non_nullable
                  as int,
        grossAmount: null == grossAmount
            ? _value.grossAmount
            : grossAmount // ignore: cast_nullable_to_non_nullable
                  as int,
        formattedVendorAmount: null == formattedVendorAmount
            ? _value.formattedVendorAmount
            : formattedVendorAmount // ignore: cast_nullable_to_non_nullable
                  as String,
        formattedPlatformFee: null == formattedPlatformFee
            ? _value.formattedPlatformFee
            : formattedPlatformFee // ignore: cast_nullable_to_non_nullable
                  as String,
        formattedGstAmount: null == formattedGstAmount
            ? _value.formattedGstAmount
            : formattedGstAmount // ignore: cast_nullable_to_non_nullable
                  as String,
        formattedGrossAmount: null == formattedGrossAmount
            ? _value.formattedGrossAmount
            : formattedGrossAmount // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingDataImpl implements _PricingData {
  const _$PricingDataImpl({
    this.vendorAmount = 0,
    this.platformFee = 0,
    this.gstAmount = 0,
    this.grossAmount = 0,
    this.formattedVendorAmount = '',
    this.formattedPlatformFee = '',
    this.formattedGstAmount = '',
    this.formattedGrossAmount = '',
  });

  factory _$PricingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingDataImplFromJson(json);

  @override
  @JsonKey()
  final int vendorAmount;
  @override
  @JsonKey()
  final int platformFee;
  @override
  @JsonKey()
  final int gstAmount;
  @override
  @JsonKey()
  final int grossAmount;
  @override
  @JsonKey()
  final String formattedVendorAmount;
  @override
  @JsonKey()
  final String formattedPlatformFee;
  @override
  @JsonKey()
  final String formattedGstAmount;
  @override
  @JsonKey()
  final String formattedGrossAmount;

  @override
  String toString() {
    return 'PricingData(vendorAmount: $vendorAmount, platformFee: $platformFee, gstAmount: $gstAmount, grossAmount: $grossAmount, formattedVendorAmount: $formattedVendorAmount, formattedPlatformFee: $formattedPlatformFee, formattedGstAmount: $formattedGstAmount, formattedGrossAmount: $formattedGrossAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingDataImpl &&
            (identical(other.vendorAmount, vendorAmount) ||
                other.vendorAmount == vendorAmount) &&
            (identical(other.platformFee, platformFee) ||
                other.platformFee == platformFee) &&
            (identical(other.gstAmount, gstAmount) ||
                other.gstAmount == gstAmount) &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount) &&
            (identical(other.formattedVendorAmount, formattedVendorAmount) ||
                other.formattedVendorAmount == formattedVendorAmount) &&
            (identical(other.formattedPlatformFee, formattedPlatformFee) ||
                other.formattedPlatformFee == formattedPlatformFee) &&
            (identical(other.formattedGstAmount, formattedGstAmount) ||
                other.formattedGstAmount == formattedGstAmount) &&
            (identical(other.formattedGrossAmount, formattedGrossAmount) ||
                other.formattedGrossAmount == formattedGrossAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    vendorAmount,
    platformFee,
    gstAmount,
    grossAmount,
    formattedVendorAmount,
    formattedPlatformFee,
    formattedGstAmount,
    formattedGrossAmount,
  );

  /// Create a copy of PricingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingDataImplCopyWith<_$PricingDataImpl> get copyWith =>
      __$$PricingDataImplCopyWithImpl<_$PricingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingDataImplToJson(this);
  }
}

abstract class _PricingData implements PricingData {
  const factory _PricingData({
    final int vendorAmount,
    final int platformFee,
    final int gstAmount,
    final int grossAmount,
    final String formattedVendorAmount,
    final String formattedPlatformFee,
    final String formattedGstAmount,
    final String formattedGrossAmount,
  }) = _$PricingDataImpl;

  factory _PricingData.fromJson(Map<String, dynamic> json) =
      _$PricingDataImpl.fromJson;

  @override
  int get vendorAmount;
  @override
  int get platformFee;
  @override
  int get gstAmount;
  @override
  int get grossAmount;
  @override
  String get formattedVendorAmount;
  @override
  String get formattedPlatformFee;
  @override
  String get formattedGstAmount;
  @override
  String get formattedGrossAmount;

  /// Create a copy of PricingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricingDataImplCopyWith<_$PricingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RazorpayData _$RazorpayDataFromJson(Map<String, dynamic> json) {
  return _RazorpayData.fromJson(json);
}

/// @nodoc
mixin _$RazorpayData {
  String get keyId => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this RazorpayData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RazorpayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RazorpayDataCopyWith<RazorpayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RazorpayDataCopyWith<$Res> {
  factory $RazorpayDataCopyWith(
    RazorpayData value,
    $Res Function(RazorpayData) then,
  ) = _$RazorpayDataCopyWithImpl<$Res, RazorpayData>;
  @useResult
  $Res call({String keyId, String orderId, int amount, String currency});
}

/// @nodoc
class _$RazorpayDataCopyWithImpl<$Res, $Val extends RazorpayData>
    implements $RazorpayDataCopyWith<$Res> {
  _$RazorpayDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RazorpayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyId = null,
    Object? orderId = null,
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(
      _value.copyWith(
            keyId: null == keyId
                ? _value.keyId
                : keyId // ignore: cast_nullable_to_non_nullable
                      as String,
            orderId: null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RazorpayDataImplCopyWith<$Res>
    implements $RazorpayDataCopyWith<$Res> {
  factory _$$RazorpayDataImplCopyWith(
    _$RazorpayDataImpl value,
    $Res Function(_$RazorpayDataImpl) then,
  ) = __$$RazorpayDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyId, String orderId, int amount, String currency});
}

/// @nodoc
class __$$RazorpayDataImplCopyWithImpl<$Res>
    extends _$RazorpayDataCopyWithImpl<$Res, _$RazorpayDataImpl>
    implements _$$RazorpayDataImplCopyWith<$Res> {
  __$$RazorpayDataImplCopyWithImpl(
    _$RazorpayDataImpl _value,
    $Res Function(_$RazorpayDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RazorpayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyId = null,
    Object? orderId = null,
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(
      _$RazorpayDataImpl(
        keyId: null == keyId
            ? _value.keyId
            : keyId // ignore: cast_nullable_to_non_nullable
                  as String,
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RazorpayDataImpl implements _RazorpayData {
  const _$RazorpayDataImpl({
    this.keyId = '',
    this.orderId = '',
    this.amount = 0,
    this.currency = 'INR',
  });

  factory _$RazorpayDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RazorpayDataImplFromJson(json);

  @override
  @JsonKey()
  final String keyId;
  @override
  @JsonKey()
  final String orderId;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String currency;

  @override
  String toString() {
    return 'RazorpayData(keyId: $keyId, orderId: $orderId, amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RazorpayDataImpl &&
            (identical(other.keyId, keyId) || other.keyId == keyId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, keyId, orderId, amount, currency);

  /// Create a copy of RazorpayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RazorpayDataImplCopyWith<_$RazorpayDataImpl> get copyWith =>
      __$$RazorpayDataImplCopyWithImpl<_$RazorpayDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RazorpayDataImplToJson(this);
  }
}

abstract class _RazorpayData implements RazorpayData {
  const factory _RazorpayData({
    final String keyId,
    final String orderId,
    final int amount,
    final String currency,
  }) = _$RazorpayDataImpl;

  factory _RazorpayData.fromJson(Map<String, dynamic> json) =
      _$RazorpayDataImpl.fromJson;

  @override
  String get keyId;
  @override
  String get orderId;
  @override
  int get amount;
  @override
  String get currency;

  /// Create a copy of RazorpayData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RazorpayDataImplCopyWith<_$RazorpayDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
