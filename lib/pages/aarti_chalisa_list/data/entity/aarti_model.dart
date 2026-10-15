import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../god_detail/data/entity/god_detail_api_response.dart';

part 'aarti_model.freezed.dart';
part 'aarti_model.g.dart';

@freezed
abstract class AartiResponse with _$AartiResponse {
  const factory AartiResponse({
    @Default(false) bool success,
    @Default('') String lang,
    @Default(0) int count,
    @Default([]) List<AartiModel> data,
    @Default(AartiPagination()) AartiPagination pagination,
  }) = _AartiResponse;

  factory AartiResponse.fromJson(Map<String, dynamic> json) =>
      _$AartiResponseFromJson(json);
}

@freezed
abstract class AartiPagination with _$AartiPagination {
  const factory AartiPagination({
    @Default(0) int total,
    @Default(1) int page,
    @Default(10) int limit,
    @Default(0) int totalPages,
  }) = _AartiPagination;

  factory AartiPagination.fromJson(Map<String, dynamic> json) =>
      _$AartiPaginationFromJson(json);
}


@freezed
abstract class AartiModel with _$AartiModel {
  const factory AartiModel({
    @JsonKey(name: "_id") @Default("") String id,
    @Default("") String type,
    @Default("") String slug,
    @Default("") String testLyrics_hi,
    @Default("") String testLyrics_en,

    @Default("") String audioAsset,
    @Default("") String lyric_banner_image,
    @Default("") String youtubeLink,
    @Default("") String testLyrics,
    @JsonKey(name: "audio_duration") @Default("") String audioDuration,

    @Default("") String title,
    @Default("") String thumbnail,
    @JsonKey(name: "main_banner") @Default("") String mainBanner,

    @Default([]) List<LyricsModel> lyrics,

    @Default(GodModel()) GodModel god,

    @Default(false) bool isAddedInWishlist,

    @JsonKey(name: "createdAt") @Default("") String createdAt,
    @JsonKey(name: "date") @Default("") String date,
    @JsonKey(name: "updatedAt") @Default("") String updatedAt,
  }) = _AartiModel;

  factory AartiModel.fromJson(Map<String, dynamic> json) =>
      _$AartiModelFromJson(json);
}


@freezed
abstract class LyricsModel with _$LyricsModel {
  const factory LyricsModel({
    @Default(TimeStamp()) TimeStamp start,
    @Default(TimeStamp()) TimeStamp end,
    @Default("") String text,
  }) = _LyricsModel;

  factory LyricsModel.fromJson(Map<String, dynamic> json) =>
      _$LyricsModelFromJson(json);
}

@freezed
abstract class TimeStamp with _$TimeStamp {
  const factory TimeStamp({
    @Default(0) int seconds,
    @Default(0) int milliseconds,
  }) = _TimeStamp;

  factory TimeStamp.fromJson(Map<String, dynamic> json) =>
      _$TimeStampFromJson(json);
}

@freezed
abstract class FestivalModel with _$FestivalModel {
  const factory FestivalModel({
    @JsonKey(name: 'name')
    @Default('')
    String name,

    @JsonKey(name: 'slug')
    @Default('')
    String slug,

    @JsonKey(name: 'when')
    @Default('')
    String when,
  }) = _FestivalModel;

  factory FestivalModel.fromJson(Map<String, dynamic> json) =>
      _$FestivalModelFromJson(json);
}

@freezed
abstract class GodModel with _$GodModel {
  const factory GodModel({
    @JsonKey(name: "_id") @Default('') String id,
    @JsonKey(name: "god_name") @Default('') String godName,

  @JsonKey(name: "birth_place")  @Default('') String birthPlace,
    @JsonKey(name: "father_name") @Default('') String fatherName,
    @JsonKey(name: "mother_name")  @Default('') String motherName,

    @JsonKey(name: "detail") @Default('') String detail,

    @Default([]) List<String> wife,
    @JsonKey(name: "fav_food") @Default([]) List<String> favFood,
    @JsonKey(name: "fav_color") @Default([]) List<String> favColor,

    @JsonKey(name: "related_month") @Default([]) List<String> relatedMonth,
    @JsonKey(name: "related_days") @Default([]) List<String> relatedDays,
    @JsonKey(name: "related_god") @Default([]) List<String> relatedGod,
    @JsonKey(name: "related_tithi") @Default([]) List<String> relatedTithi,
    @JsonKey(name: 'related_festival')
    @Default(<FestivalModel>[])
    List<FestivalModel> festivals,

    @JsonKey(name: "main_temples") @Default([]) List<TempleModel> mainTemples,

    @JsonKey(name: 'familyMembers')
    @Default(<FamilyMember>[])
    List<FamilyMember> familyMembers,

    @JsonKey(name: 'temple')
    @Default(<TempleModel>[])
    List<TempleModel> temples,

    @Default('') String thumbnail,
    @JsonKey(name: "godimage") @Default([]) List<String> godImages,
  }) = _GodModel;

  factory GodModel.fromJson(Map<String, dynamic> json) =>
      _$GodModelFromJson(json);
}

@freezed
abstract class TempleModel with _$TempleModel {
  const factory TempleModel({
    @JsonKey(name: "_id") @Default('') String id,
    @JsonKey(name: "name") @Default('') String templeName,
    @Default('') String location,
    @Default('') String image,
  }) = _TempleModel;

  factory TempleModel.fromJson(Map<String, dynamic> json) =>
      _$TempleModelFromJson(json);
}

