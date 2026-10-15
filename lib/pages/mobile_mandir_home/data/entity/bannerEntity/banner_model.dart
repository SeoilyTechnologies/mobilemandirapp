import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../aarti_chalisa_list/data/entity/aarti_model.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
abstract class BannerResponse with _$BannerResponse {
  const factory BannerResponse({
    @Default(false) bool success,
    @Default('en') String lang,
    @Default(0) int count,
    @Default([]) List<BannerItem> data,
  }) = _BannerResponse;

  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);
}

/* ==========================================================
   PANCHANG MODELS
   ========================================================== */

@freezed
abstract class PanchangBannerModel with _$PanchangBannerModel {
  const factory PanchangBannerModel({
    @Default(false) bool success,

    InputModel? input,

    HeaderModel? header,

    TithiModel? tithi,

    @Default('') String vikramSamvat,

    @Default('') String samvatsara,

    @Default('') String hinduMonth,
  }) = _PanchangBannerModel;

  factory PanchangBannerModel.fromJson(Map<String, dynamic> json) =>
      _$PanchangBannerModelFromJson(json);
}

@freezed
abstract class InputModel with _$InputModel {
  const factory InputModel({
    @Default(0.0) double latitude,

    @Default(0.0) double longitude,

    @Default('') String date,

    @Default('en') String lang,
  }) = _InputModel;

  factory InputModel.fromJson(
      Map<String, dynamic> json,
      ) => _$InputModelFromJson(json);
}

@freezed
abstract class HeaderModel with _$HeaderModel {
  const factory HeaderModel({
    @Default('') String locationLabel,
    @Default('') String dateDisplay,
    @Default('') String tithiLine,
    @Default('') String pakshaLine,
    @Default('') String samvatLine,
  }) = _HeaderModel;

  factory HeaderModel.fromJson(Map<String, dynamic> json) =>
      _$HeaderModelFromJson(json);
}

@freezed
abstract class TithiModel with _$TithiModel {
  const factory TithiModel({
    @Default(0) int number,
    @Default('') String name,
    @Default('') String paksha,
    @Default('') String display,
    @Default('') String upto,
  }) = _TithiModel;

  factory TithiModel.fromJson(Map<String, dynamic> json) =>
      _$TithiModelFromJson(json);
}

/* ==========================================================
   SEVA MODELS
   ========================================================== */

@freezed
abstract class TodaySevaModel with _$TodaySevaModel {
  const factory TodaySevaModel({
    @JsonKey(name: 'vendorSeva')
    @Default([])
    List<VendorSevaModel> vendorSeva,
  }) = _TodaySevaModel;

  factory TodaySevaModel.fromJson(Map<String, dynamic> json) =>
      _$TodaySevaModelFromJson(json);
}

@freezed
abstract class VendorSevaModel with _$VendorSevaModel {
  const factory VendorSevaModel({
    @JsonKey(name: '_id')
    @Default('')
    String id,

    @Default('')
    String slug,

    @Default('')
    String name,

    @Default([])
    List<String> lines,

    @Default('')
    String backgroundColor,

    @Default('')
    String backgroundColorEnd,

    @Default('')
    String iconUrl,

    @Default('')
    String iconType,

    @Default(0)
    int order,
  }) = _VendorSevaModel;

  factory VendorSevaModel.fromJson(Map<String, dynamic> json) =>
      _$VendorSevaModelFromJson(json);
}

/* ==========================================================
   BANNER ITEM
   ========================================================== */

@freezed
abstract class BannerItem with _$BannerItem {
  const BannerItem._();

  const factory BannerItem({
    @JsonKey(name: '_id')
    @Default('')
    String id,

    @Default('')
    String title,

    @JsonKey(name: 'banner_image')
    @Default('')
    String bannerImage,

    /// content | panchang | seva
    @Default('')
    String bannerType,

    /// AARTI_CHALISA_MANTRA_DETAIL | PANCHANG | NONE
    @Default('')
    String actionType,

    @Default('')
    String buttonText,

    @Default(0)
    int priority,

    @Default(false)
    bool isActive,

    @JsonKey(name: 'data')
    @Default({})
    Map<String, dynamic> data,

    @Default({})
    Map<String, dynamic> panchangdata,

    @Default({})
    Map<String, dynamic> sevaData,
  }) = _BannerItem;

  factory BannerItem.fromJson(Map<String, dynamic> json) =>
      _$BannerItemFromJson(json);

  /* =====================================================
     Runtime Parsing
     ===================================================== */

  dynamic get parsedData {
    switch (bannerType) {
      case 'content':
        return aarti;

      case 'panchang':
        return panchang;

      case 'seva':
        return seva;

      default:
        return null;
    }
  }

  /* =====================================================
     Helper Getters
     ===================================================== */

  bool get isContentBanner => bannerType == 'content';

  bool get isPanchangBanner => bannerType == 'panchang';

  bool get isSevaBanner => bannerType == 'seva';

  bool get hasButton => buttonText.isNotEmpty;

  bool get hasEmbeddedData => data.isNotEmpty;

  bool get hasPanchangData => panchangdata.isNotEmpty;

  bool get hasSevaData => sevaData.isNotEmpty;

  /* =====================================================
     Strongly Typed Helpers
     ===================================================== */

  AartiModel? get aarti {
    if (!isContentBanner || data.isEmpty) return null;

    try {
      return AartiModel.fromJson(data);
    } catch (_) {
      return null;
    }
  }

  PanchangBannerModel? get panchang {
    if (!isPanchangBanner || panchangdata.isEmpty) return null;

    try {
      return PanchangBannerModel.fromJson(panchangdata);
    } catch (_) {
      return null;
    }
  }

  TodaySevaModel? get seva {
    if (!isSevaBanner || sevaData.isEmpty) return null;

    try {
      return TodaySevaModel.fromJson(sevaData);
    } catch (_) {
      return null;
    }
  }
}