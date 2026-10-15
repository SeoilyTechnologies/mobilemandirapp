import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../aarti_chalisa_list/data/entity/aarti_model.dart';

part 'home_for_your_api_response.freezed.dart';

part 'home_for_your_api_response.g.dart';

@freezed
abstract class HomeForYouApiResponse with _$HomeForYouApiResponse {
  const factory HomeForYouApiResponse({
    @Default(false) bool success,
    @Default(0) int count,
    @Default([]) List<HomeForYouItem> data,
  }) = _HomeForYouApiResponse;

  factory HomeForYouApiResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeForYouApiResponseFromJson(json);
}

@freezed
abstract class HomeForYouItem with _$HomeForYouItem {
  const HomeForYouItem._();

  const factory HomeForYouItem({
    @Default('') String contentType,
    @Default('') String contentId,
    @Default('') String addedAt,

    SantData? santData,
    GodData? godData,
    TempleData? templeData,
    AartiModel? mantraData,
    SevaData? sevaData,
  }) = _HomeForYouItem;

  factory HomeForYouItem.fromJson(Map<String, dynamic> json) {
    final type = (json['contentType'] ?? '').toString().toLowerCase();

    return HomeForYouItem(
      contentType: json['contentType'] ?? '',
      contentId: json['contentId'] ?? '',
      addedAt: json['addedAt'] ?? '',

      santData: type.toLowerCase() == 'sant'
          ? SantData.fromJson(json['data'] ?? {})
          : null,

      godData: type.toLowerCase() == 'god'
          ? GodData.fromJson(json['data'] ?? {})
          : null,

      templeData: type.toLowerCase() == 'temple'
          ? TempleData.fromJson(json['data'] ?? {})
          : null,

      sevaData: type.toLowerCase() == 'seva'
          ? SevaData.fromJson(json['data'] ?? {})
          : null,

      mantraData: !['sant', 'god', 'temple', 'seva'].contains(type)
          ? AartiModel.fromJson(json['data'] ?? {})
          : null,
    );
  }
  Map<String, dynamic> toJson() => {
    'contentType': contentType,
    'contentId': contentId,
    'addedAt': addedAt,
  };
}

@freezed
abstract class SantData with _$SantData {
  const factory SantData({
    @JsonKey(name: '_id') @Default('') String id,

    @Default('') String name,

    @Default('') String image,

    @Default('') String thumbnailImage,
    @Default('') String about,

    @Default(false) bool isAddedInWishlist,
  }) = _SantData;

  factory SantData.fromJson(Map<String, dynamic> json) =>
      _$SantDataFromJson(json);
}

@freezed
abstract class GodData with _$GodData {
  const factory GodData({
    @JsonKey(name: '_id') @Default('') String id,

    @JsonKey(name: 'god_name') @Default('') String godName,
    @JsonKey(name: 'category') @Default('') String category,
    @JsonKey(name: 'isWishlist') @Default(false) bool isWishlist,
    @JsonKey(name: 'location') @Default('') String location,

    @Default('') String thumbnail,
  }) = _GodData;

  factory GodData.fromJson(Map<String, dynamic> json) =>
      _$GodDataFromJson(json);
}

@freezed
abstract class TempleData with _$TempleData {
  const factory TempleData({
    @JsonKey(name: '_id') @Default('') String id,

    @Default('') String name,

    @Default('') String thumbnailUrl,

    @Default('') String slug,
    @Default('') String location,

    double? lat,
    double? lng,

    @JsonKey(name: 'isWishlist')
    @Default(false)
    bool isWishlist,
  }) = _TempleData;

  factory TempleData.fromJson(Map<String, dynamic> json) =>
      _$TempleDataFromJson(json);
}

@freezed
abstract class SevaData with _$SevaData {
  const factory SevaData({
    @JsonKey(name: '_id') @Default('') String id,

    @Default('') String sevaName,

    @Default('') String sevaSlug,

    @Default('') String thumbnailUrl,

    @Default(0) int amount,

    @Default('') String formattedAmount,

    @Default(0) int finalPaymentAmount,

    @Default('') String formattedFinalPayment,

    @Default('') String paymentStatus,

    @Default('') String status,
    @Default('') String statusLabel,

    @Default('') String donorName,
  }) = _SevaData;

  factory SevaData.fromJson(Map<String, dynamic> json) =>
      _$SevaDataFromJson(json);
}


