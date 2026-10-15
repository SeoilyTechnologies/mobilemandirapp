import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_proof_api_response.freezed.dart';
part 'video_proof_api_response.g.dart';

@freezed
abstract class VideoProofApiResponse with _$VideoProofApiResponse {
  const factory VideoProofApiResponse({
    @JsonKey(name: "success") @Default(false) bool success,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "data")
    @Default(VideoProofData())
    VideoProofData data,
    @JsonKey(name: "errors") @Default(null) dynamic errors,
  }) = _VideoProofApiResponse;

  factory VideoProofApiResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoProofApiResponseFromJson(json);
}

@freezed
abstract class VideoProofData with _$VideoProofData {
  const factory VideoProofData({
    @JsonKey(name: "sevaId") @Default("") String sevaId,
    @JsonKey(name: "vendorId") @Default("") String vendorId,
    @JsonKey(name: "donorName") @Default("") String donorName,
    @JsonKey(name: "sevaName") @Default("") String sevaName,

    @JsonKey(name: "service")
    @Default(VideoProofService())
    VideoProofService service,

    @JsonKey(name: "vendor")
    @Default(VideoProofVendor())
    VideoProofVendor vendor,

    @JsonKey(name: "amount") @Default(0) int amount,
    @JsonKey(name: "formattedAmount") @Default("") String formattedAmount,
    @JsonKey(name: "grossAmount") @Default(0) int grossAmount,
    @JsonKey(name: "formattedGrossAmount")
    @Default("")
    String formattedGrossAmount,

    @JsonKey(name: "recordedAt") @Default("") String recordedAt,
    @JsonKey(name: "formattedRecordedAt")
    @Default("")
    String formattedRecordedAt,

    @JsonKey(name: "paidAt") @Default("") String paidAt,
    @JsonKey(name: "formattedPaidAt")
    @Default("")
    String formattedPaidAt,

    @JsonKey(name: "paymentStatus") @Default("") String paymentStatus,
    @JsonKey(name: "paymentReleased")
    @Default(false)
    bool paymentReleased,

    @JsonKey(name: "status") @Default("") String status,
    @JsonKey(name: "canRaiseIssue")
    @Default(false)
    bool canRaiseIssue,

    @JsonKey(name: "showGaushalaFields")
    @Default(false)
    bool showGaushalaFields,

    @JsonKey(name: "proofTitle") @Default("") String proofTitle,
    @JsonKey(name: "proofSubtitle") @Default("") String proofSubtitle,
    @JsonKey(name: "dedicationMessage")
    @Default("")
    String dedicationMessage,

    @JsonKey(name: "gpsLocation")
    @Default(GpsLocation())
    GpsLocation gpsLocation,

    @JsonKey(name: "media")
    @Default(VideoMedia())
    VideoMedia media,

    @JsonKey(name: "infoCards")
    @Default([])
    List<InfoCard> infoCards,

    @JsonKey(name: "receipt")
    @Default(VideoReceipt())
    VideoReceipt receipt,

    @JsonKey(name: "badges")
    @Default(VideoBadges())
    VideoBadges badges,

    @JsonKey(name: "whatWasSaid")
    @Default("")
    String whatWasSaid,
  }) = _VideoProofData;

  factory VideoProofData.fromJson(Map<String, dynamic> json) =>
      _$VideoProofDataFromJson(json);
}

@freezed
abstract class VideoProofService with _$VideoProofService {
  const factory VideoProofService({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "slug") @Default("") String slug,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "icon") @Default("") String icon,
    @JsonKey(name: "lines") @Default([]) List<String> lines,
  }) = _VideoProofService;

  factory VideoProofService.fromJson(Map<String, dynamic> json) =>
      _$VideoProofServiceFromJson(json);
}

@freezed
abstract class VideoProofVendor with _$VideoProofVendor {
  const factory VideoProofVendor({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "vendorName") @Default("") String vendorName,
    @JsonKey(name: "location") @Default("") String location,
  }) = _VideoProofVendor;

  factory VideoProofVendor.fromJson(Map<String, dynamic> json) =>
      _$VideoProofVendorFromJson(json);
}

@freezed
abstract class GpsLocation with _$GpsLocation {
  const factory GpsLocation({
    @JsonKey(name: "type") @Default("") String type,
    @JsonKey(name: "coordinates")
    @Default([])
    List<double> coordinates,
    @JsonKey(name: "address") @Default("") String address,
  }) = _GpsLocation;

  factory GpsLocation.fromJson(Map<String, dynamic> json) =>
      _$GpsLocationFromJson(json);
}

@freezed
abstract class VideoMedia with _$VideoMedia {
  const factory VideoMedia({
    @JsonKey(name: "url") @Default("") String url,
    @JsonKey(name: "thumbnail") @Default("") String thumbnail,
    @JsonKey(name: "type") @Default("") String type,
    @JsonKey(name: "duration") @Default(null) dynamic duration,
  }) = _VideoMedia;

  factory VideoMedia.fromJson(Map<String, dynamic> json) =>
      _$VideoMediaFromJson(json);
}

@freezed
abstract class InfoCard with _$InfoCard {
  const factory InfoCard({
    @JsonKey(name: "key") @Default("") String key,
    @JsonKey(name: "title") @Default("") String title,
    @JsonKey(name: "subtitle") @Default("") String subtitle,
  }) = _InfoCard;

  factory InfoCard.fromJson(Map<String, dynamic> json) =>
      _$InfoCardFromJson(json);
}

@freezed
abstract class VideoReceipt with _$VideoReceipt {
  const factory VideoReceipt({
    @JsonKey(name: "sevaType") @Default("") String sevaType,
    @JsonKey(name: "vendorLine") @Default("") String vendorLine,
    @JsonKey(name: "formattedPaidAt")
    @Default("")
    String formattedPaidAt,
    @JsonKey(name: "formattedGrossAmount")
    @Default("")
    String formattedGrossAmount,
  }) = _VideoReceipt;

  factory VideoReceipt.fromJson(Map<String, dynamic> json) =>
      _$VideoReceiptFromJson(json);
}

@freezed
abstract class VideoBadges with _$VideoBadges {
  const factory VideoBadges({
    @JsonKey(name: "gpsVerified")
    @Default(false)
    bool gpsVerified,
    @JsonKey(name: "recordedLive")
    @Default(false)
    bool recordedLive,
    @JsonKey(name: "noEditPossible")
    @Default(false)
    bool noEditPossible,
  }) = _VideoBadges;

  factory VideoBadges.fromJson(Map<String, dynamic> json) =>
      _$VideoBadgesFromJson(json);
}