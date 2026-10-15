import 'package:freezed_annotation/freezed_annotation.dart';

part 'temple_model.freezed.dart';
part 'temple_model.g.dart';

@freezed
abstract class TempleModel with _$TempleModel {
  const factory TempleModel({
    @JsonKey(name: "temple_name") @Default("") String templeName,
    @JsonKey(name: "temple_location") @Default("") String templeLocation,
    @JsonKey(name: "district") @Default("") String district,
    @JsonKey(name: "state") @Default("") String state,
    @JsonKey(name: "country") @Default("") String country,
    @JsonKey(name: "address") @Default("") String address,
    @JsonKey(name: "temple_description") @Default("") String templeDescription,
    @JsonKey(name: "architecture") @Default("") String architecture,
    @JsonKey(name: "temple_image") @Default("") String templeImage,
  }) = _TempleModel;

  factory TempleModel.fromJson(Map<String, dynamic> json) =>
      _$TempleModelFromJson(json);
}
