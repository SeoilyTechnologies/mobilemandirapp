import 'package:freezed_annotation/freezed_annotation.dart';
import 'festival_model.dart';
import 'grahan_model.dart';

part 'calendar_day_model.freezed.dart';
part 'calendar_day_model.g.dart';

@freezed
abstract class CalendarDayModell with _$CalendarDayModell {
  const factory CalendarDayModell({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "date") @Default("") String date,

    @JsonKey(name: "isPurnima") @Default(false) bool isPurnima,
    @JsonKey(name: "isAmavasya") @Default(false) bool isAmavasya,
    @JsonKey(name: "isGrahan") @Default(false) bool isGrahan,

    @JsonKey(name: "tithi") @Default("") String tithi,
    @JsonKey(name: "tithi_hi") @Default("") String tithiHi,
    @JsonKey(name: "tithi_en") @Default("") String tithiEn,

    @JsonKey(name: "paksha") @Default("") String paksha,
    @JsonKey(name: "nakshatra") @Default("") String nakshatra,
    @JsonKey(name: "yog") @Default("") String yog,
    @JsonKey(name: "karan") @Default("") String karan,

    @JsonKey(name: "sunrise") @Default("") String sunrise,
    @JsonKey(name: "sunset") @Default("") String sunset,
    @JsonKey(name: "moonrise") @Default("") String moonrise,

    @JsonKey(name: "related_god_hi") @Default("") String relatedGodHi,
    @JsonKey(name: "related_god_en") @Default("") String relatedGodEn,

    @JsonKey(name: "grahan") @Default(GrahanModel()) GrahanModel grahan,
    @JsonKey(name: "festivals") @Default([]) List<FestivalModel> festivals,

    @JsonKey(name: "createdAt") @Default("") String createdAt,
    @JsonKey(name: "updatedAt") @Default("") String updatedAt,
  }) = _CalendarDayModell;

  factory CalendarDayModell.fromJson(Map<String, dynamic> json) =>
      _$CalendarDayModellFromJson(json);
}
