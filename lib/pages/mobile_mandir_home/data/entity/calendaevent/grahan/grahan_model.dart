import 'package:freezed_annotation/freezed_annotation.dart';

part 'grahan_model.freezed.dart';
part 'grahan_model.g.dart';

@freezed
abstract class GrahanModel with _$GrahanModel {
  const factory GrahanModel({
    @JsonKey(name: "title_hi") @Default("") String titleHi,
    @JsonKey(name: "title_en") @Default("") String titleEn,
    @JsonKey(name: "related_god_hi") @Default("") String relatedGodHi,
    @JsonKey(name: "related_god_en") @Default("") String relatedGodEn,
    @JsonKey(name: "type") @Default("") String type,
  }) = _GrahanModel;

  factory GrahanModel.fromJson(Map<String, dynamic> json) =>
      _$GrahanModelFromJson(json);
}
