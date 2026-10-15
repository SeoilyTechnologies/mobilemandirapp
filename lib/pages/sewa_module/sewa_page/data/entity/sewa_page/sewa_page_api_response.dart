import 'package:freezed_annotation/freezed_annotation.dart';

part 'sewa_page_api_response.freezed.dart';
part 'sewa_page_api_response.g.dart';

@freezed
abstract class SewaPageApiResponse with _$SewaPageApiResponse {
  const factory SewaPageApiResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(SewaData()) SewaData data,
    dynamic errors,
  }) = _SewaPageApiResponse;

  factory SewaPageApiResponse.fromJson(Map<String, dynamic> json) =>
      _$SewaPageApiResponseFromJson(json);
}

@freezed
abstract class SewaData with _$SewaData {
  const factory SewaData({
    @JsonKey(name: '_id') @Default('') String id,
    @Default('') String slug,
    @Default('') String name,
    @Default('') String nameEn,
    @Default('') String nameHi,
    @Default('') String description,
    @Default('') String backgroundColor,
    @Default('') String backgroundColorEnd,
    @Default('') String icon,
    @Default('') String gifIcon,
    @Default('') String video,
    @Default(<String>[]) List<String> images,
    @Default('') String youtubePlaylistId,
    @Default('') String metaTitle,
    @Default('') String metaDescription,
    @Default(SewaPageContent()) SewaPageContent pageContent,
    @Default(<Offering>[]) List<Offering> offerings,
    @Default(<String>[]) List<String> lines,
    @Default(<AmountOption>[]) List<AmountOption> amountOptions,
    @Default(<AmountOption>[]) List<AmountOption> oneTimeAmountOptions,
    @Default(<AmountOption>[]) List<AmountOption> monthlyAmountOptions,
    @Default(<TithiOption>[]) List<TithiOption> tithis,
    @Default(false) bool isActive,
    @Default(0) int order,
  }) = _SewaData;

  factory SewaData.fromJson(Map<String, dynamic> json) =>
      _$SewaDataFromJson(json);
}

@freezed
abstract class SewaPageContent with _$SewaPageContent {
  const factory SewaPageContent({
    @Default(LocalizedText()) LocalizedText heading,
    @Default(LocalizedText()) LocalizedText paragraph,
    @Default(LocalizedText()) LocalizedText subHeading,
    @Default(<LocalizedText>[]) List<LocalizedText> bullets,
    @Default(LocalizedText()) LocalizedText faqHeading,
    @Default(LocalizedText()) LocalizedText faqDescription,
    @Default(<SewaFaq>[]) List<SewaFaq> faqs,
  }) = _SewaPageContent;

  factory SewaPageContent.fromJson(Map<String, dynamic> json) =>
      _$SewaPageContentFromJson(json);
}

@freezed
abstract class LocalizedText with _$LocalizedText {
  const factory LocalizedText({
    @Default('') String en,
    @Default('') String hi,
  }) = _LocalizedText;

  factory LocalizedText.fromJson(Map<String, dynamic> json) =>
      _$LocalizedTextFromJson(json);
}

@freezed
abstract class SewaFaq with _$SewaFaq {
  const factory SewaFaq({
    @Default(LocalizedText()) LocalizedText question,
    @Default(LocalizedText()) LocalizedText answer,
  }) = _SewaFaq;

  factory SewaFaq.fromJson(Map<String, dynamic> json) =>
      _$SewaFaqFromJson(json);
}

@freezed
abstract class Offering with _$Offering {
  const factory Offering({
    @Default('') String name,
    @Default('') String nameEn,
    @Default('') String nameHi,
    @Default('') String imageUrl,
    @Default(true) bool isActive,
    @Default(0) int order,
  }) = _Offering;

  factory Offering.fromJson(Map<String, dynamic> json) =>
      _$OfferingFromJson(json);
}

@freezed
abstract class AmountOption with _$AmountOption {
  const factory AmountOption({
    @Default(0) int amount,
    @Default('') String type,
    @Default('') String label,
    @Default('') String badge,
  }) = _AmountOption;

  factory AmountOption.fromJson(Map<String, dynamic> json) =>
      _$AmountOptionFromJson(json);
}

@freezed
abstract class TithiOption with _$TithiOption {
  const factory TithiOption({
    @JsonKey(name: '_id') @Default('') String id,
    @Default('') String name,
    @Default('') String nameEn,
    @Default('') String nameHi,
    @Default('') String code,
    @Default(0) int order,
  }) = _TithiOption;

  factory TithiOption.fromJson(Map<String, dynamic> json) =>
      _$TithiOptionFromJson(json);
}