import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../aarti_chalisa_list/data/entity/aarti_model.dart';

part 'wishlist_response.freezed.dart';
part 'wishlist_response.g.dart';

@freezed
abstract class WishlistResponse with _$WishlistResponse {
  const factory WishlistResponse({
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'lang') @Default('') String lang,
    @JsonKey(name: 'count') @Default(0) int count,
    @JsonKey(name: 'data') @Default([]) List<WishlistItem> data,
  }) = _WishlistResponse;

  factory WishlistResponse.fromJson(Map<String, dynamic> json) =>
      _$WishlistResponseFromJson(json);
}

@freezed
abstract class WishlistItem with _$WishlistItem {
  const factory WishlistItem({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'type') @Default('') String type,
    @JsonKey(name: 'audioAsset') @Default('') String audioAsset,
    @JsonKey(name: 'audio_duration') @Default('') String audioDuration,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'thumbnail') @Default('') String thumbnail,
    @JsonKey(name: 'main_banner') @Default('') String mainBanner,
    @JsonKey(name: 'lyric_banner_image') @Default('') String lyricBannerImage,
    @JsonKey(name: 'lyrics') @Default([]) List<LyricsModel> lyrics,
    @JsonKey(name: 'testLyrics') @Default('') String testLyrics,
    @JsonKey(name: 'youtubeLink') @Default('') String youtubeLink,
    @JsonKey(name: 'god') GodModel? god,
    @JsonKey(name: 'isAddedInWishlist') @Default(false) bool isAddedInWishlist,
    @JsonKey(name: 'createdAt') @Default('') String createdAt,
  }) = _WishlistItem;

  factory WishlistItem.fromJson(Map<String, dynamic> json) =>
      _$WishlistItemFromJson(json);
}

@freezed
abstract class Lyrics with _$Lyrics {
  const factory Lyrics({
    @JsonKey(name: 'start') Time? start,
    @JsonKey(name: 'end') Time? end,
    @JsonKey(name: 'text') @Default('') String text,
  }) = _Lyrics;

  factory Lyrics.fromJson(Map<String, dynamic> json) =>
      _$LyricsFromJson(json);
}

@freezed
abstract class Time with _$Time {
  const factory Time({
    @JsonKey(name: 'seconds') @Default(0) int seconds,
    @JsonKey(name: 'milliseconds') @Default(0) int milliseconds,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) =>
      _$TimeFromJson(json);
}

@freezed
abstract class God with _$God {
  const factory God({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'god_name') @Default('') String godName,
    @JsonKey(name: 'birth_place') @Default('') String birthPlace,
    @JsonKey(name: 'father_name') @Default('') String fatherName,
    @JsonKey(name: 'mother_name') @Default('') String motherName,
    @JsonKey(name: 'detail') @Default('') String detail,
    @JsonKey(name: 'wife') @Default([]) List<String> wife,
    @JsonKey(name: 'fav_food') @Default([]) List<String> favFood,
    @JsonKey(name: 'fav_color') @Default([]) List<String> favColor,
    @JsonKey(name: 'related_month') @Default([]) List<String> relatedMonth,
    @JsonKey(name: 'related_god') @Default([]) List<String> relatedGod,
    @JsonKey(name: 'related_tithi') @Default([]) List<String> relatedTithi,
    @JsonKey(name: 'related_days') @Default([]) List<String> relatedDays,
    @JsonKey(name: 'related_festival') @Default([]) List<String> relatedFestival,
    @JsonKey(name: 'main_temples') @Default([]) List<Temple> mainTemples,
    @JsonKey(name: 'thumbnail') @Default('') String thumbnail,
    @JsonKey(name: 'godimage') @Default([]) List<String> godimage,
  }) = _God;

  factory God.fromJson(Map<String, dynamic> json) =>
      _$GodFromJson(json);
}

@freezed
abstract class Temple with _$Temple {
  const factory Temple({
    @JsonKey(name: 'temple_name') @Default('') String templeName,
    @JsonKey(name: 'location') @Default('') String location,
    @JsonKey(name: 'image') @Default('') String image,
  }) = _Temple;

  factory Temple.fromJson(Map<String, dynamic> json) =>
      _$TempleFromJson(json);
}