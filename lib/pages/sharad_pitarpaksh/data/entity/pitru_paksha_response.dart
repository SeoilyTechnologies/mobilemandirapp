import 'package:freezed_annotation/freezed_annotation.dart';

part 'pitru_paksha_response.freezed.dart';
part 'pitru_paksha_response.g.dart';

@freezed
abstract class PitruPakshaResponse with _$PitruPakshaResponse {
  const factory PitruPakshaResponse({
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'lang') @Default('') String lang,
    @JsonKey(name: 'data') PitruPakshaData? data,
  }) = _PitruPakshaResponse;

  factory PitruPakshaResponse.fromJson(Map<String, dynamic> json) =>
      _$PitruPakshaResponseFromJson(json);
}

@freezed
abstract class PitruPakshaData with _$PitruPakshaData {
  const factory PitruPakshaData({
    @JsonKey(name: 'header') PitruHeader? header,
    @JsonKey(name: 'period') PitruPeriod? period,
    @JsonKey(name: 'todayCard') PitruTodayCard? todayCard,
    @JsonKey(name: 'count') @Default(0) int count,
    @JsonKey(name: 'items') @Default(<PitruItem>[]) List<PitruItem> items,
    @JsonKey(name: 'meta') PitruMeta? meta,
  }) = _PitruPakshaData;

  factory PitruPakshaData.fromJson(Map<String, dynamic> json) =>
      _$PitruPakshaDataFromJson(json);
}

@freezed
abstract class PitruHeader with _$PitruHeader {
  const factory PitruHeader({
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'subtitle') @Default('') String subtitle,
  }) = _PitruHeader;

  factory PitruHeader.fromJson(Map<String, dynamic> json) =>
      _$PitruHeaderFromJson(json);
}

@freezed
abstract class PitruPeriod with _$PitruPeriod {
  const factory PitruPeriod({
    @JsonKey(name: 'label') @Default('') String label,
    @JsonKey(name: 'rangeLabel') @Default('') String rangeLabel,
    @JsonKey(name: 'start') @Default('') String start,
    @JsonKey(name: 'end') @Default('') String end,
    @JsonKey(name: 'year') @Default(0) int year,
  }) = _PitruPeriod;

  factory PitruPeriod.fromJson(Map<String, dynamic> json) =>
      _$PitruPeriodFromJson(json);
}

@freezed
abstract class PitruTodayCard with _$PitruTodayCard {
  const factory PitruTodayCard({
    @JsonKey(name: 'isToday') @Default(false) bool isToday,
    @JsonKey(name: 'badge') @Default('') String badge,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'dateLine') @Default('') String dateLine,
    @JsonKey(name: 'kutupMuhurat') MuhuratTiming? kutupMuhurat,
    @JsonKey(name: 'aparahnaKaal') MuhuratTiming? aparahnaKaal,
    @JsonKey(name: 'date') @Default('') String date,
    @JsonKey(name: 'shraddhaType') @Default('') String shraddhaType,
    @JsonKey(name: 'shraddhaTitle') @Default('') String shraddhaTitle,
  }) = _PitruTodayCard;

  factory PitruTodayCard.fromJson(Map<String, dynamic> json) =>
      _$PitruTodayCardFromJson(json);
}

@freezed
abstract class MuhuratTiming with _$MuhuratTiming {
  const factory MuhuratTiming({
    @JsonKey(name: 'label') @Default('') String label,
    @JsonKey(name: 'display') @Default('') String display,
    @JsonKey(name: 'start') @Default('') String start,
    @JsonKey(name: 'end') @Default('') String end,
  }) = _MuhuratTiming;

  factory MuhuratTiming.fromJson(Map<String, dynamic> json) =>
      _$MuhuratTimingFromJson(json);
}

@freezed
abstract class PitruItem with _$PitruItem {
  const factory PitruItem({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'slug') @Default('') String slug,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'date') @Default('') String date,
    @JsonKey(name: 'dateDisplay') @Default('') String dateDisplay,
    @JsonKey(name: 'dayName') @Default('') String dayName,
    @JsonKey(name: 'category') @Default('') String category,
    @JsonKey(name: 'categoryLabel') @Default('') String categoryLabel,
    @JsonKey(name: 'shortDescription') @Default('') String shortDescription,
    @JsonKey(name: 'isToday') @Default(false) bool isToday,
    @JsonKey(name: 'isPitruPaksha') @Default(false) bool isPitruPaksha,
    @JsonKey(name: 'isShraddhaDay') @Default(false) bool isShraddhaDay,
    @JsonKey(name: 'specialTags') @Default(<String>[]) List<String> specialTags,
    @JsonKey(name: 'dayIndex') @Default(0) int dayIndex,
    @JsonKey(name: 'aparahnaKaal') MuhuratTiming? aparahnaKaal,
    @JsonKey(name: 'kutupMuhurat') MuhuratTiming? kutupMuhurat,
    @JsonKey(name: 'rohinaMuhurat') MuhuratTiming? rohinaMuhurat,
  }) = _PitruItem;

  factory PitruItem.fromJson(Map<String, dynamic> json) =>
      _$PitruItemFromJson(json);
}

@freezed
abstract class PitruMeta with _$PitruMeta {
  const factory PitruMeta({
    @JsonKey(name: 'latitude') @Default(0.0) double latitude,
    @JsonKey(name: 'longitude') @Default(0.0) double longitude,
    @JsonKey(name: 'timezone') @Default('') String timezone,
    @JsonKey(name: 'source') @Default('') String source,
  }) = _PitruMeta;

  factory PitruMeta.fromJson(Map<String, dynamic> json) =>
      _$PitruMetaFromJson(json);
}
