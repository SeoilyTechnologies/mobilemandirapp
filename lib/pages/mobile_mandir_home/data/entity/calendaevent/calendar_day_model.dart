
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_day_model.freezed.dart';
part 'calendar_day_model.g.dart';

@freezed
abstract class CalendarDayModel with _$CalendarDayModel {
  const factory CalendarDayModel({
    @JsonKey(name: "date")
    @Default("")
    String date,

    @JsonKey(name: "isPurnima")
    @Default(false)
    bool isPurnima,

    @JsonKey(name: "isEkadashi")
    @Default(false)
    bool isEkadashi,

    @JsonKey(name: "isAmavasya")
    @Default(false)
    bool isAmavasya,

    @JsonKey(name: "isGrahan")
    @Default(false)
    bool isGrahan,

    @JsonKey(name: "tithi")
    @Default("")
    String tithi,

    @JsonKey(name: "paksha")
    @Default("")
    String paksha,

    @JsonKey(name: "nakshatra")
    @Default("")
    String nakshatra,

    @JsonKey(name: "yog")
    @Default("")
    String yog,

    @JsonKey(name: "karan")
    @Default("")
    String karan,

    @JsonKey(name: "moonPhasePercent")
    @Default(0)
    int moonPhasePercent,

    @JsonKey(name: "moonPhase")
    @Default(0.0)
    double moonPhase,

    @JsonKey(name: "sunrise")
    @Default("")
    String sunrise,

    @JsonKey(name: "sunset")
    @Default("")
    String sunset,

    @JsonKey(name: "moonrise")
    @Default("")
    String moonrise,

    @JsonKey(name: "festivals")
    @Default(<String>[])
    List<String> festivals,

    @JsonKey(name: "relatedGods")
    @Default(<CalendarRelatedGod>[])
    List<CalendarRelatedGod> relatedGods,
  }) = _CalendarDayModel;

  factory CalendarDayModel.fromJson(Map<String, dynamic> json) =>
      _$CalendarDayModelFromJson(json);
}

@freezed
abstract class CalendarRelatedGod with _$CalendarRelatedGod {
  const factory CalendarRelatedGod({
    @JsonKey(name: "name")
    @Default("")
    String name,

    @JsonKey(name: "image")
    @Default("")
    String image,

    @JsonKey(name: "birthPlace")
    @Default("")
    String birthPlace,

    @JsonKey(name: "category")
    @Default("")
    String category,
    @JsonKey(name: "_id")
    @Default("")
    String id,

  }) = _CalendarRelatedGod;

  factory CalendarRelatedGod.fromJson(Map<String, dynamic> json) =>
      _$CalendarRelatedGodFromJson(json);
}

@freezed
abstract class CalendarResponse with _$CalendarResponse {
  const factory CalendarResponse({
    @JsonKey(name: "success")
    @Default(false)
    bool success,

    @JsonKey(name: "lang")
    @Default("")
    String lang,

    @JsonKey(name: "count")
    @Default(0)
    int count,

    @JsonKey(name: "data")
    @Default(<CalendarDayModel>[])
    List<CalendarDayModel> data,
  }) = _CalendarResponse;

  factory CalendarResponse.fromJson(Map<String, dynamic> json) =>
      _$CalendarResponseFromJson(json);
}



// import 'package:freezed_annotation/freezed_annotation.dart';
//
// import 'festival/festival_model.dart';
// import 'grahan/grahan_model.dart';
//
// part 'calendar_day_model.freezed.dart';
// part 'calendar_day_model.g.dart';
//
// @freezed
// class CalendarDayModel with _$CalendarDayModel {
//   const factory CalendarDayModel({
//     @JsonKey(name: "_id") @Default("") String id,
//
//     @JsonKey(name: "date") @Default("") String date,
//
//     @JsonKey(name: "isPurnima") @Default(false) bool isPurnima,
//     @JsonKey(name: "isAmavasya") @Default(false) bool isAmavasya,
//     @JsonKey(name: "isGrahan") @Default(false) bool isGrahan,
//
//     @JsonKey(name: "tithi") @Default("") String tithi,
//     @JsonKey(name: "tithi_hi") @Default("") String tithiHi,
//     @JsonKey(name: "tithi_en") @Default("") String tithiEn,
//
//     @JsonKey(name: "paksha") @Default("") String paksha,
//     @JsonKey(name: "nakshatra") @Default("") String nakshatra,
//     @JsonKey(name: "yog") @Default("") String yog,
//     @JsonKey(name: "karan") @Default("") String karan,
//
//     @JsonKey(name: "sunrise") @Default("") String sunrise,
//     @JsonKey(name: "sunset") @Default("") String sunset,
//     @JsonKey(name: "moonrise") @Default("") String moonrise,
//
//     @JsonKey(name: "related_god_hi") @Default("") String relatedGodHi,
//     @JsonKey(name: "related_god_en") @Default("") String relatedGodEn,
//
//     @JsonKey(name: "grahan") @Default(GrahanModel()) GrahanModel grahan,
//
//     @JsonKey(name: "festivals") @Default([]) List<FestivalModel> festivals,
//
//     @JsonKey(name: "createdAt") @Default("") String createdAt,
//     @JsonKey(name: "updatedAt") @Default("") String updatedAt,
//   }) = _CalendarDayModel;
//
//   factory CalendarDayModel.fromJson(Map<String, dynamic> json) =>
//       _$CalendarDayModelFromJson(json);
// }
//
//
//
//
// @freezed
// class CalendarResponse with _$CalendarResponse {
//   const factory CalendarResponse({
//     @JsonKey(name: "success") @Default(false) bool success,
//     @JsonKey(name: "count") @Default(0) int count,
//     @JsonKey(name: "data") @Default([]) List<CalendarDayModel> data,
//   }) = _CalendarResponse;
//
//   factory CalendarResponse.fromJson(Map<String, dynamic> json) =>
//       _$CalendarResponseFromJson(json);
// }
