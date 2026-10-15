import 'package:freezed_annotation/freezed_annotation.dart';
import 'pitru_paksha_response.dart';

part 'pitru_paksha_detail_response.freezed.dart';
part 'pitru_paksha_detail_response.g.dart';

@freezed
abstract class PitruPakshaDetailResponse with _$PitruPakshaDetailResponse {
  const factory PitruPakshaDetailResponse({
    @Default(false) bool success,
    @Default('') String lang,
    PitruPakshaDetailData? data,
  }) = _PitruPakshaDetailResponse;

  factory PitruPakshaDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PitruPakshaDetailResponseFromJson(json);
}

@freezed
abstract class PitruPakshaDetailData with _$PitruPakshaDetailData {
  const factory PitruPakshaDetailData({
    @Default('') String title,
    @Default('') String slug,
    @Default('') String date,
    @Default('') String dateDisplay,
    @Default('') String category,
    @Default('') String categoryLabel,
    @Default([]) List<String> specialTags,
    @Default(false) bool isPitruPaksha,
    @Default(false) bool isShraddhaDay,
    @Default(false) bool isSarvaPitruAmavasya,
    @Default('') String shraddhaType,
    PitruDetailMuhurats? muhurats,
    PitruPanchangVivaran? panchangVivaran,
    PitruAparahnaVyapiniTithi? aparahnaVyapiniTithi,
    @Default([]) List<PitruRitual> rituals,
    @Default('') String significance,
    @Default('') String forWhom,
    @Default([]) List<String> vidhi,
    @Default([]) List<String> dos,
    @Default([]) List<String> donts,
    MuhuratTiming? rahuKaal,
    PitruAarti? aarti,
    @Default('') String note,
    PitruMeta? meta,
  }) = _PitruPakshaDetailData;

  factory PitruPakshaDetailData.fromJson(Map<String, dynamic> json) =>
      _$PitruPakshaDetailDataFromJson(json);
}

@freezed
abstract class PitruDetailMuhurats with _$PitruDetailMuhurats {
  const factory PitruDetailMuhurats({
    MuhuratTiming? kutupMuhurat,
    MuhuratTiming? rohinaMuhurat,
    MuhuratTiming? aparahnaKaal,
  }) = _PitruDetailMuhurats;

  factory PitruDetailMuhurats.fromJson(Map<String, dynamic> json) =>
      _$PitruDetailMuhuratsFromJson(json);
}

@freezed
abstract class PitruPanchangVivaran with _$PitruPanchangVivaran {
  const factory PitruPanchangVivaran({
    @Default('') String tithi,
    @Default('') String paksha,
    @Default('') String nakshatra,
    @Default('') String yoga,
    @Default('') String karan,
    @Default('') String day,
  }) = _PitruPanchangVivaran;

  factory PitruPanchangVivaran.fromJson(Map<String, dynamic> json) =>
      _$PitruPanchangVivaranFromJson(json);
}

@freezed
abstract class PitruAparahnaVyapiniTithi with _$PitruAparahnaVyapiniTithi {
  const factory PitruAparahnaVyapiniTithi({
    @Default('') String name,
    @Default(0) int index,
    @Default('') String paksha,
  }) = _PitruAparahnaVyapiniTithi;

  factory PitruAparahnaVyapiniTithi.fromJson(Map<String, dynamic> json) =>
      _$PitruAparahnaVyapiniTithiFromJson(json);
}

@freezed
abstract class PitruRitual with _$PitruRitual {
  const factory PitruRitual({
    @Default('') String id,
    @Default('') String title,
    @Default('') String subtitle,
  }) = _PitruRitual;

  factory PitruRitual.fromJson(Map<String, dynamic> json) =>
      _$PitruRitualFromJson(json);
}

@freezed
abstract class PitruAarti with _$PitruAarti {
  const factory PitruAarti({
    @Default('') String slug,
    @Default('') String title,
    @Default('') String titleEn,
    @Default('') String titleHi,
  }) = _PitruAarti;

  factory PitruAarti.fromJson(Map<String, dynamic> json) =>
      _$PitruAartiFromJson(json);
}
