import 'package:freezed_annotation/freezed_annotation.dart';

part 'seva_history_response.freezed.dart';
part 'seva_history_response.g.dart';

@freezed
abstract class SevaHistoryResponse with _$SevaHistoryResponse {
  const factory SevaHistoryResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(SevaHistoryData()) SevaHistoryData data,
    Object? errors,
  }) = _SevaHistoryResponse;

  factory SevaHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SevaHistoryResponseFromJson(json);
}

@freezed
abstract class SevaHistoryData with _$SevaHistoryData {
  const factory SevaHistoryData({
    @Default([]) List<SevaHistoryItem> list,
    @JsonKey(name: 'SevaData')
    @Default([])
    List<SevaHistoryCard> sevaData,
    @Default(PaginationModel()) PaginationModel pagination,
    @Default(SevaSummary()) SevaSummary summary,
  }) = _SevaHistoryData;

  factory SevaHistoryData.fromJson(Map<String, dynamic> json) =>
      _$SevaHistoryDataFromJson(json);
}

@freezed
abstract class SevaHistoryItem with _$SevaHistoryItem {
  const factory SevaHistoryItem({
    @JsonKey(name: '_id')
    @Default('')
    String id,
    @Default(ServiceModel()) ServiceModel service,
    @Default(VendorModel()) VendorModel vendor,
    @Default('') String donorName,
    @Default('') String sevaName,
    @Default(0) int vendorAmount,
    @Default('') String formattedVendorAmount,
    @Default(0) int paidAmount,
    @Default('') String formattedPaidAmount,
    @Default('') String paymentStatus,
    @Default('') String paymentStatusLabel,
    @Default('') String status,
    @Default('') String statusLabel,
    @Default('') String requestedAt,
    @Default('') String proofExpectedBy,
    @Default([]) List<LiveStatusModel> liveStatus,
    @Default(ProofModel()) ProofModel proof,
    @Default(PricingModel()) PricingModel pricing,
  }) = _SevaHistoryItem;

  factory SevaHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$SevaHistoryItemFromJson(json);
}

@freezed
abstract class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    @JsonKey(name: '_id')
    @Default('')
    String id,
    @Default('') String name,
    @Default('') String slug,
    @Default('') String description,
    @Default('') String icon,
    @Default([]) List<String> lines,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}

@freezed
abstract class VendorModel with _$VendorModel {
  const factory VendorModel({
    @JsonKey(name: '_id')
    @Default('')
    String id,
    @Default('') String vendorName,
    @Default('') String location,
    @Default('') String profilePhoto,
  }) = _VendorModel;

  factory VendorModel.fromJson(Map<String, dynamic> json) =>
      _$VendorModelFromJson(json);
}

@freezed
abstract class LiveStatusModel with _$LiveStatusModel {
  const factory LiveStatusModel({
    @Default('') String key,
    @Default('') String title,
    @Default('') String subtitle,
    @Default('') String state,
    @Default('') String at,
    @Default('') String action,
  }) = _LiveStatusModel;

  factory LiveStatusModel.fromJson(Map<String, dynamic> json) =>
      _$LiveStatusModelFromJson(json);
}

@freezed
abstract class ProofModel with _$ProofModel {
  const factory ProofModel({
    @Default(false) bool available,
    MediaModel? media,
    @Default('') String recordedAt,
    @Default('') String gpsAddress,
  }) = _ProofModel;

  factory ProofModel.fromJson(Map<String, dynamic> json) =>
      _$ProofModelFromJson(json);
}

@freezed
abstract class MediaModel with _$MediaModel {
  const factory MediaModel({
    @Default('') String url,
    @Default('') String thumbnail,
    @Default('') String type,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}

@freezed
abstract class PricingModel with _$PricingModel {
  const factory PricingModel({
    @Default(0) int grossAmount,
    @Default(0) int platformFee,
    @Default(0) int gstAmount,
    @Default('') String formattedGrossAmount,
    @Default('') String formattedPlatformFee,
    @Default('') String formattedGstAmount,
  }) = _PricingModel;

  factory PricingModel.fromJson(Map<String, dynamic> json) =>
      _$PricingModelFromJson(json);
}

@freezed
abstract class SevaHistoryCard with _$SevaHistoryCard {
  const factory SevaHistoryCard({
    @JsonKey(name: '_id')
    @Default('')
    String id,
    @Default('') String thumbnailUrl,
    @Default('') String addedAt,
    @Default('') String sevaName,
    @Default(0) int amount,
    @Default('') String formattedAmount,
    @Default('') String formattedFinalPayment,
    @Default('') String paymentStatus,
    @Default('') String status,
    @Default('') String statusLabel,
  }) = _SevaHistoryCard;

  factory SevaHistoryCard.fromJson(Map<String, dynamic> json) =>
      _$SevaHistoryCardFromJson(json);
}

@freezed
abstract class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    @Default(0) int page,
    @Default(0) int limit,
    @Default(0) int totalItems,
    @Default(0) int totalPages,
    @Default(false) bool hasNextPage,
    @Default(false) bool hasPrevPage,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}

@freezed
abstract class SevaSummary with _$SevaSummary {
  const factory SevaSummary({
    @Default(SummaryItem()) SummaryItem total,
    @Default(SummaryItem()) SummaryItem completed,
    @Default(SummaryItem()) SummaryItem pending,
    @Default(InReviewSummary()) InReviewSummary inReview,
    @Default(SummaryItem()) SummaryItem refunded,
  }) = _SevaSummary;

  factory SevaSummary.fromJson(Map<String, dynamic> json) =>
      _$SevaSummaryFromJson(json);
}

@freezed
abstract class SummaryItem with _$SummaryItem {
  const factory SummaryItem({
    @Default(0) int count,
    @Default(0) int amount,
    @Default('') String formattedAmount,
  }) = _SummaryItem;

  factory SummaryItem.fromJson(Map<String, dynamic> json) =>
      _$SummaryItemFromJson(json);
}

@freezed
abstract class InReviewSummary with _$InReviewSummary {
  const factory InReviewSummary({
    @Default(0) int count,
    @Default(0) int amount,
    @Default('') String formattedAmount,
    @Default(0) int actionCount,
  }) = _InReviewSummary;

  factory InReviewSummary.fromJson(Map<String, dynamic> json) =>
      _$InReviewSummaryFromJson(json);
}