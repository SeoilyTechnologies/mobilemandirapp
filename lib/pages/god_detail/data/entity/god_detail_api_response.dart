import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../aarti_chalisa_list/data/entity/aarti_model.dart';

part 'god_detail_api_response.freezed.dart';
part 'god_detail_api_response.g.dart';

@freezed
abstract class GodDetailApiResponse with _$GodDetailApiResponse {
  const factory GodDetailApiResponse({
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'data') @Default(GodDetailData()) GodDetailData data,
    @JsonKey(name: 'errors') dynamic errors,
  }) = _GodDetailApiResponse;

  factory GodDetailApiResponse.fromJson(Map<String, dynamic> json) =>
      _$GodDetailApiResponseFromJson(json);
}

@freezed
abstract class GodDetailData with _$GodDetailData {
  const factory GodDetailData({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'slug') @Default('') String slug,
    @JsonKey(name: 'testLyrics_hi') @Default('') String testLyrics_hi,
    @JsonKey(name: 'testLyrics_en') @Default('') String testLyrics_en,
    @JsonKey(name: 'image') @Default('') String image,
    @JsonKey(name: 'isWishlist') @Default(false) bool isWishlist,
    @JsonKey(name: 'isPopular') @Default(false) bool isPopular,
    @JsonKey(name: 'popularity') @Default(0) int popularity,
    @JsonKey(name: 'category') @Default('') String category,
    @JsonKey(name: 'birthPlace') @Default('') String birthPlace,
    @JsonKey(name: 'gender') @Default('') String gender,
    @JsonKey(name: 'shortDescription') @Default('') String shortDescription,
    @JsonKey(name: 'detail') @Default('') String detail,
    @JsonKey(name: 'avatarOf') @Default('') String avatarOf,
    @JsonKey(name: 'weapons') @Default('') String weapons,
    @JsonKey(name: 'vahans') @Default('') String vahans,
    @JsonKey(name: 'alternateNames') @Default('') String alternateNames,
    @JsonKey(name: 'favoriteFoods') @Default('') String favoriteFoods,
    @JsonKey(name: 'favoriteColors') @Default('') String favoriteColors,
    @JsonKey(name: 'tithis') @Default('') String tithis,
    @JsonKey(name: 'days') @Default(<String>[]) List<String> days,
    @JsonKey(name: 'festivals')
    @Default(<FestivalModel>[])
    List<FestivalModel> festivals,

    @JsonKey(name: 'familyMembers')
    @Default(<FamilyMember>[])
    List<FamilyMember> familyMembers,
    @JsonKey(name: 'avatarsAndForms')
    @Default(<GodReference>[])
    List<GodReference> avatarsAndForms,
    @JsonKey(name: 'relatedGods')
    @Default(<GodReference>[])
    List<GodReference> relatedGods,
    @JsonKey(name: 'suggestedSevas')
    @Default(<SuggestedSeva>[])
    List<SuggestedSeva> suggestedSevas,
    @JsonKey(name: 'temple')
    @Default(<TempleModel>[])
    List<TempleModel> temples,

    @JsonKey(name: 'devotional')
    @Default(<DevotionalItem>[])
    List<DevotionalItem> devotional,

    @JsonKey(name: 'vendorSeva')
    @Default(<VendorSeva>[])
    List<VendorSeva> vendorSeva,
  }) = _GodDetailData;

  factory GodDetailData.fromJson(Map<String, dynamic> json) =>
      _$GodDetailDataFromJson(json);
}

@freezed
abstract class DevotionalItem with _$DevotionalItem {
  const factory DevotionalItem({
    @JsonKey(name: '_id')
    @Default('')
    String id,

    @JsonKey(name: 'slug')
    @Default('')
    String slug,

    @JsonKey(name: 'testLyrics_hi')
    @Default('')
    String testLyrics_hi,

    @JsonKey(name: 'testLyrics_en')
    @Default('')
    String testLyrics_en,

    @JsonKey(name: 'type')
    @Default('')
    String type,

    @JsonKey(name: 'title')
    @Default('')
    String title,

    @JsonKey(name: 'audioAsset')
    @Default('')
    String audioAsset,

    @JsonKey(name: 'audio_duration')
    @Default('')
    String audioDuration,

    @JsonKey(name: 'thumbnail')
    @Default('')
    String thumbnail,

    @JsonKey(name: 'main_banner')
    @Default('')
    String mainBanner,

    @JsonKey(name: 'lyric_banner_image')
    @Default('')
    String lyricBannerImage,

    @JsonKey(name: 'lyrics')
    @Default([])
    List<dynamic> lyrics,

    @JsonKey(name: 'testLyrics')
    @Default('')
    String testLyrics,

    @JsonKey(name: 'youtubeLink')
    @Default('')
    String youtubeLink,

    @JsonKey(name: 'god')
    // @Default(DevotionalGod())
    // DevotionalGod god,
    @Default(GodModel())
    GodModel god,


    @JsonKey(name: 'isAddedInWishlist')
    @Default(false)
    bool isAddedInWishlist,

    @JsonKey(name: 'sewa')
    @Default(<SuggestedSeva>[])
    List<SuggestedSeva> sewa,

    @JsonKey(name: 'vendorSeva')
    @Default(<VendorSeva>[])
    List<VendorSeva> vendorSeva,

    @JsonKey(name: 'contentType')
    @Default(ContentTypeModel())
    ContentTypeModel contentType,

    @JsonKey(name: 'audioFile')
    MediaFile? audioFile,

    @JsonKey(name: 'smallThumbnail')
    MediaFile? smallThumbnail,

    @JsonKey(name: 'thumbnailImage')
    MediaFile? thumbnailImage,

    @JsonKey(name: 'pdfImage')
    MediaFile? pdfImage,

    @JsonKey(name: 'videoLink')
    @Default('')
    String videoLink,

    @JsonKey(name: 'createdAt')
    @Default('')
    String createdAt,

    @JsonKey(name: 'updatedAt')
    @Default('')
    String updatedAt,
  }) = _DevotionalItem;

  factory DevotionalItem.fromJson(Map<String, dynamic> json) =>
      _$DevotionalItemFromJson(json);
}

@freezed
abstract class DevotionalGod with _$DevotionalGod {
  const factory DevotionalGod({
    @JsonKey(name: '_id')
    @Default('')
    String id,

    @JsonKey(name: 'god_name')
    @Default('')
    String godName,

    @JsonKey(name: 'thumbnail')
    @Default('')
    String thumbnail,
  }) = _DevotionalGod;

  factory DevotionalGod.fromJson(Map<String, dynamic> json) =>
      _$DevotionalGodFromJson(json);
}

@freezed
abstract class ContentTypeModel with _$ContentTypeModel {
  const factory ContentTypeModel({
    @JsonKey(name: '_id')
    @Default('')
    String id,

    @JsonKey(name: 'name')
    @Default('')
    String name,

    @JsonKey(name: 'slug')
    @Default('')
    String slug,
  }) = _ContentTypeModel;

  factory ContentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ContentTypeModelFromJson(json);
}


@freezed
abstract class MediaFile with _$MediaFile {
  const factory MediaFile({
    @JsonKey(name: '_id')
    @Default('')
    String id,

    @JsonKey(name: 'url')
    @Default('')
    String url,

    @JsonKey(name: 'type')
    @Default('')
    String type,
  }) = _MediaFile;

  factory MediaFile.fromJson(Map<String, dynamic> json) =>
      _$MediaFileFromJson(json);
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
abstract class FamilyMember with _$FamilyMember {
  const factory FamilyMember({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'relation') @Default('') String relation,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'isClick') @Default(false) bool isClick,
    @JsonKey(name: 'image') @Default('') String image,
  }) = _FamilyMember;

  factory FamilyMember.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberFromJson(json);
}

@freezed
abstract class GodReference with _$GodReference {
  const factory GodReference({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'slug') @Default('') String slug,
    @JsonKey(name: 'image') @Default('') String image,
    @JsonKey(name: 'category') @Default('') String category,
    @JsonKey(name: 'location') @Default('') String location,
  }) = _GodReference;

  factory GodReference.fromJson(Map<String, dynamic> json) =>
      _$GodReferenceFromJson(json);
}

@freezed
abstract class SuggestedSeva with _$SuggestedSeva {
  const factory SuggestedSeva({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'thumbnail') @Default('') String thumbnail,
    @JsonKey(name: 'price') @Default(0) int price,
  }) = _SuggestedSeva;

  factory SuggestedSeva.fromJson(Map<String, dynamic> json) =>
      _$SuggestedSevaFromJson(json);
}

@freezed
abstract class TempleModel with _$TempleModel {
  const factory TempleModel({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'location') @Default('') String location,
    @JsonKey(name: 'image') @Default('') String image,
  }) = _TempleModel;

  factory TempleModel.fromJson(Map<String, dynamic> json) =>
      _$TempleModelFromJson(json);
}

@freezed
abstract class DevotionalData with _$DevotionalData {
  const factory DevotionalData({
    @JsonKey(name: 'aarti')
    @Default(<DevotionalItem>[])
    List<DevotionalItem> aarti,
    @JsonKey(name: 'chalisa')
    @Default(<DevotionalItem>[])
    List<DevotionalItem> chalisa,
    @JsonKey(name: 'mantra')
    @Default(<DevotionalItem>[])
    List<DevotionalItem> mantra,
    @JsonKey(name: 'bhajan')
    @Default(<DevotionalItem>[])
    List<DevotionalItem> bhajan,
    @JsonKey(name: 'stuti')
    @Default(<DevotionalItem>[])
    List<DevotionalItem> stuti,
    @JsonKey(name: 'katha')
    @Default(<DevotionalItem>[])
    List<DevotionalItem> katha,
    @JsonKey(name: 'other')
    @Default(<DevotionalItem>[])
    List<DevotionalItem> other,
  }) = _DevotionalData;

  factory DevotionalData.fromJson(Map<String, dynamic> json) =>
      _$DevotionalDataFromJson(json);
}



@freezed
abstract class VendorSeva with _$VendorSeva {
  const factory VendorSeva({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'slug') @Default('') String slug,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'lines') @Default(<String>[]) List<String> lines,
    @JsonKey(name: 'backgroundColor') @Default('') String backgroundColor,
    @JsonKey(name: 'backgroundColorEnd') @Default('') String backgroundColorEnd,
    @JsonKey(name: 'iconUrl') @Default('') String iconUrl,
    @JsonKey(name: 'iconType') @Default('') String iconType,
    @JsonKey(name: 'order') @Default(0) int order,
  }) = _VendorSeva;

  factory VendorSeva.fromJson(Map<String, dynamic> json) =>
      _$VendorSevaFromJson(json);
}