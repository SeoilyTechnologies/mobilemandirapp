import 'package:freezed_annotation/freezed_annotation.dart';

part 'seva_status_api_response.freezed.dart';
part 'seva_status_api_response.g.dart';

@freezed
abstract class SevaStatusApiResponse with _$SevaStatusApiResponse {
  const factory SevaStatusApiResponse({
    @JsonKey(name: "success") @Default(false) bool success,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "data") @Default(SevaStatusData()) SevaStatusData data,
    @JsonKey(name: "errors") @Default(null) dynamic errors,
  }) = _SevaStatusApiResponse;

  factory SevaStatusApiResponse.fromJson(Map<String, dynamic> json) =>
      _$SevaStatusApiResponseFromJson(json);
}

@freezed
abstract class SevaStatusData with _$SevaStatusData {
  const factory SevaStatusData({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "service")
    @Default(ServiceInfo())
    ServiceInfo service,
    @JsonKey(name: "vendor")
    @Default(VendorInfo())
    VendorInfo vendor,
    @JsonKey(name: "donorName") @Default("") String donorName,
    @JsonKey(name: "sevaName") @Default("") String sevaName,
    @JsonKey(name: "vendorAmount") @Default(0) int vendorAmount,
    @JsonKey(name: "formattedVendorAmount")
    @Default("")
    String formattedVendorAmount,
    @JsonKey(name: "paymentStatus") @Default("") String paymentStatus,
    @JsonKey(name: "paymentStatusLabel")
    @Default("")
    String paymentStatusLabel,
    @JsonKey(name: "status") @Default("") String status,
    @JsonKey(name: "statusLabel") @Default("") String statusLabel,
    @JsonKey(name: "requestedAt") @Default("") String requestedAt,
    @JsonKey(name: "proofExpectedBy") @Default("") String proofExpectedBy,
    @JsonKey(name: "liveStatus")
    @Default([])
    List<LiveStatus> liveStatus,
    @JsonKey(name: "proof")
    @Default(ProofInfo())
    ProofInfo proof,
    @JsonKey(name: "pricing")
    @Default(PricingInfo())
    PricingInfo pricing,
  }) = _SevaStatusData;

  factory SevaStatusData.fromJson(Map<String, dynamic> json) =>
      _$SevaStatusDataFromJson(json);
}

@freezed
abstract class ServiceInfo with _$ServiceInfo {
  const factory ServiceInfo({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "slug") @Default("") String slug,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "icon") @Default("") String icon,
    @JsonKey(name: "lines")
    @Default([])
    List<String> lines,
  }) = _ServiceInfo;

  factory ServiceInfo.fromJson(Map<String, dynamic> json) =>
      _$ServiceInfoFromJson(json);
}

@freezed
abstract class VendorInfo with _$VendorInfo {
  const factory VendorInfo({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "vendorName") @Default("") String vendorName,
    @JsonKey(name: "location") @Default("") String location,
    @JsonKey(name: "profilePhoto") @Default("") String profilePhoto,
  }) = _VendorInfo;

  factory VendorInfo.fromJson(Map<String, dynamic> json) =>
      _$VendorInfoFromJson(json);
}

@freezed
abstract class LiveStatus with _$LiveStatus {
  const factory LiveStatus({
    @JsonKey(name: "key") @Default("") String key,
    @JsonKey(name: "title") @Default("") String title,
    @JsonKey(name: "subtitle") @Default("") String subtitle,
    @JsonKey(name: "state") @Default("") String state,
    @JsonKey(name: "at") @Default("") String at,
    @JsonKey(name: "action") @Default(null) dynamic action,
  }) = _LiveStatus;

  factory LiveStatus.fromJson(Map<String, dynamic> json) =>
      _$LiveStatusFromJson(json);
}

@freezed
abstract class ProofInfo with _$ProofInfo {
  const factory ProofInfo({
    @JsonKey(name: "available") @Default(false) bool available,
    @JsonKey(name: "media") @Default(null) dynamic media,
  }) = _ProofInfo;

  factory ProofInfo.fromJson(Map<String, dynamic> json) =>
      _$ProofInfoFromJson(json);
}

@freezed
abstract class PricingInfo with _$PricingInfo {
  const factory PricingInfo({
    @JsonKey(name: "grossAmount") @Default(0) int grossAmount,
    @JsonKey(name: "platformFee") @Default(0) int platformFee,
    @JsonKey(name: "gstAmount") @Default(0) int gstAmount,
    @JsonKey(name: "formattedGrossAmount")
    @Default("")
    String formattedGrossAmount,
    @JsonKey(name: "formattedPlatformFee")
    @Default("")
    String formattedPlatformFee,
    @JsonKey(name: "formattedGstAmount")
    @Default("")
    String formattedGstAmount,
  }) = _PricingInfo;

  factory PricingInfo.fromJson(Map<String, dynamic> json) =>
      _$PricingInfoFromJson(json);
}