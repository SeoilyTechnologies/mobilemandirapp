import 'package:freezed_annotation/freezed_annotation.dart';

part 'god_data.freezed.dart';
part 'god_data.g.dart';

@freezed
abstract class GodApiResponse with _$GodApiResponse {
  const factory GodApiResponse({
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'lang') @Default('') String lang,
    @JsonKey(name: 'total') @Default(0) int total,
    @JsonKey(name: 'data') @Default(<GodData>[]) List<GodData> data,
  }) = _GodApiResponse;

  factory GodApiResponse.fromJson(Map<String, dynamic> json) =>
      _$GodApiResponseFromJson(json);
}

@freezed
abstract class GodData with _$GodData {
  const factory GodData({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'god_name') @Default('') String godName,
    @JsonKey(name: 'birth_place') @Default('') String birthPlace,
    @JsonKey(name: 'father_name') @Default('') String fatherName,
    @JsonKey(name: 'mother_name') @Default('') String motherName,

    @JsonKey(name: 'wife') @Default(<String>[]) List<String> wife,
    @JsonKey(name: 'fav_food') @Default(<String>[]) List<String> favFood,
    @JsonKey(name: 'fav_color') @Default(<String>[]) List<String> favColor,

    @JsonKey(name: 'thumbnail') @Default('') String thumbnail,

    @JsonKey(name: 'main_temples')
    @Default(<MainTemple>[])
    List<MainTemple> mainTemples,

    @JsonKey(name: 'related_month') @Default(<String>[]) List<String> relatedMonth,
    @JsonKey(name: 'related_god') @Default(<String>[]) List<String> relatedGod,
    @JsonKey(name: 'related_tithi') @Default(<String>[]) List<String> relatedTithi,
    @JsonKey(name: 'related_days') @Default(<String>[]) List<String> relatedDays,
    @JsonKey(name: 'related_festival')
    @Default(<String>[])
    List<String> relatedFestival,

    @JsonKey(name: 'detail') @Default('') String detail,
    @JsonKey(name: 'godimage') @Default(<String>[]) List<String> godImage,

    @JsonKey(name: 'createdAt') @Default('') String createdAt,
    @JsonKey(name: 'updatedAt') @Default('') String updatedAt,
  }) = _GodData;

  factory GodData.fromJson(Map<String, dynamic> json) =>
      _$GodDataFromJson(json);
}

@freezed
abstract class MainTemple with _$MainTemple {
  const factory MainTemple({
    @JsonKey(name: 'temple_name') @Default('') String templeName,
    @JsonKey(name: 'location') @Default('') String location,
    @JsonKey(name: 'image') @Default('') String image,
  }) = _MainTemple;

  factory MainTemple.fromJson(Map<String, dynamic> json) =>
      _$MainTempleFromJson(json);
}
