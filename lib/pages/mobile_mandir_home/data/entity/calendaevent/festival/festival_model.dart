import 'package:freezed_annotation/freezed_annotation.dart';

part 'festival_model.freezed.dart';
part 'festival_model.g.dart';

@freezed
abstract class FestivalModel with _$FestivalModel {
  const factory FestivalModel({
    @JsonKey(name: "_id") @Default("") String id,

    @JsonKey(name: "title_hi") @Default("") String titleHi,
    @JsonKey(name: "tag") @Default("") String tag,
    @JsonKey(name: "title_en") @Default("") String titleEn,

    @JsonKey(name: "related_god_hi") @Default("") String relatedGodHi,
    @JsonKey(name: "related_god_en") @Default("") String relatedGodEn,

    @JsonKey(name: "about_hi") @Default("") String aboutHi,
    @JsonKey(name: "about_en") @Default("") String aboutEn,

    @JsonKey(name: "puja_vidhi_hi") @Default("") String pujaVidhiHi,
    @JsonKey(name: "puja_vidhi_en") @Default("") String pujaVidhiEn,
  }) = _FestivalModel;

  factory FestivalModel.fromJson(Map<String, dynamic> json) =>
      _$FestivalModelFromJson(json);
}
