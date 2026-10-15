// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'god_data_list.freezed.dart';
// part 'god_data_list.g.dart';


import 'package:freezed_annotation/freezed_annotation.dart';

part 'god_data_list.freezed.dart';

part 'god_data_list.g.dart';

@freezed
abstract class GodDataListResponse with _$GodDataListResponse {
  const factory GodDataListResponse({
    @Default(false) bool success,

// Old API compatibility
    @Default('') String lang,

    @Default(0) int total,

    @Default(<GodData>[]) List<GodData> data,
  }) = _GodDataListResponse;

  factory GodDataListResponse.fromJson(Map<String, dynamic> json) =>
      _$GodDataListResponseFromJson(json);
}

@freezed
abstract class GodData with _$GodData {
  const factory GodData({
    @JsonKey(name: '_id') @Default('') String id,

    @JsonKey(name: 'god_name') @Default('') String god_name,

    @JsonKey(name: 'birth_place') @Default('') String birth_place,

    @JsonKey(name: 'father_name') @Default('') String father_name,

    @JsonKey(name: 'mother_name') @Default('') String mother_name,

    @JsonKey(name: 'wife') @Default(<String>[]) List<String> wife,

    @JsonKey(name: 'fav_food') @Default(<String>[]) List<String> fav_food,

    @JsonKey(name: 'fav_color') @Default(<String>[]) List<String> fav_color,

    @JsonKey(name: 'thumbnail') @Default('') String thumbnail,

    /// API key = temple
    /// Variable name remains same
    @JsonKey(name: 'temple') @Default(<Temple>[]) List<Temple> main_temples,

    @JsonKey(name: 'related_month') @Default(<String>[]) List<
        String> related_month,

    @JsonKey(name: 'related_god') @Default(<String>[]) List<String> related_god,

    @JsonKey(name: 'related_tithi') @Default(<String>[]) List<
        String> related_tithi,

    @JsonKey(name: 'related_days') @Default(<String>[]) List<
        String> related_days,

    @JsonKey(name: 'related_festival') @Default(<RelatedFestival>[]) List<
        RelatedFestival> related_festival,

    @JsonKey(name: 'detail') @Default('') String detail,

// Old API compatibility
    @JsonKey(name: 'godimage') @Default(<String>[]) List<String> godimage,

    @JsonKey(name: 'familyMembers') @Default(<FamilyMember>[]) List<
        FamilyMember> familyMembers,

// Old API compatibility
    @JsonKey(name: 'createdAt') @Default('') String createdAt,

    @JsonKey(name: 'updatedAt') @Default('') String updatedAt,
  }) = _GodData;

  factory GodData.fromJson(Map<String, dynamic> json) =>
      _$GodDataFromJson(json);
}

@freezed
abstract class Temple with _$Temple {
  const factory Temple({
    @JsonKey(name: '_id') @Default('') String id,

    @JsonKey(name: 'name') @Default('') String temple_name,

    @JsonKey(name: 'location') @Default('') String location,

    @JsonKey(name: 'imageUrl') @Default('') String image,

    @JsonKey(name: 'slug') @Default('') String slug,
  }) = _Temple;

  factory Temple.fromJson(Map<String, dynamic> json) =>
      _$TempleFromJson(json);
}

@freezed
abstract class RelatedFestival with _$RelatedFestival {
  const factory RelatedFestival({
    @JsonKey(name: 'name') @Default('') String name,

    @JsonKey(name: 'slug') @Default('') String slug,

    @JsonKey(name: 'when') @Default('') String when,
  }) = _RelatedFestival;

  factory RelatedFestival.fromJson(Map<String, dynamic> json) =>
      _$RelatedFestivalFromJson(json);
}

@freezed
abstract class FamilyMember with _$FamilyMember {
  const factory FamilyMember({
    @JsonKey(name: 'id') @Default('') String id,

    @JsonKey(name: 'relation') @Default('') String relation,

    @JsonKey(name: 'name') @Default('') String name,

    @JsonKey(name: 'image') @Default('') String image,

    @JsonKey(name: 'isClick') @Default(false) bool isClick,
  }) = _FamilyMember;

  factory FamilyMember.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberFromJson(json);
}

