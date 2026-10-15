import 'package:freezed_annotation/freezed_annotation.dart';

part 'festival_list.freezed.dart';

part 'festival_list.g.dart';

@freezed
abstract class FestivalListResponse with _$FestivalListResponse {
  const factory FestivalListResponse({
    @Default(false) bool success,
    @Default('') String lang,
    @Default(0) int count,
    @Default(<FestivalItem>[]) List<FestivalItem> data,
  }) = _FestivalListResponse;

  factory FestivalListResponse.fromJson(Map<String, dynamic> json) =>
      _$FestivalListResponseFromJson(json);
}

@freezed
abstract class FestivalItem with _$FestivalItem {
  const factory FestivalItem({
    @Default('') String title,
    @Default('') String slug,

    // API key changed: related_god -> relatedGods
    @JsonKey(name: 'relatedGods')
    @Default(<RelatedGod>[])
    List<RelatedGod> relatedGod,
  }) = _FestivalItem;

  factory FestivalItem.fromJson(Map<String, dynamic> json) =>
      _$FestivalItemFromJson(json);
}

@freezed
abstract class RelatedGod with _$RelatedGod {
  const factory RelatedGod({
    @JsonKey(name: 'name') @Default('') String name,

    @JsonKey(name: 'image') @Default('') String image,

    @JsonKey(name: 'birthPlace') @Default('') String birthPlace,

    @JsonKey(name: 'category') @Default('') String category,
  }) = _RelatedGod;

  factory RelatedGod.fromJson(Map<String, dynamic> json) =>
      _$RelatedGodFromJson(json);
}
