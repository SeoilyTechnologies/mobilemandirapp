import 'package:freezed_annotation/freezed_annotation.dart';

part 'temple_detail_api_response.freezed.dart';
part 'temple_detail_api_response.g.dart';

@freezed
abstract class TempleDetailApiResponse with _$TempleDetailApiResponse {
  const factory TempleDetailApiResponse({
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'data')
    @Default(TempleDetailData())
    TempleDetailData data,
    @JsonKey(name: 'errors') dynamic errors,
  }) = _TempleDetailApiResponse;

  factory TempleDetailApiResponse.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$TempleDetailApiResponseFromJson(json);
}

@freezed
abstract class TempleDetailData with _$TempleDetailData {
  const factory TempleDetailData({
    @JsonKey(name: 'id')
    @Default('')
    String id,

    @JsonKey(name: 'title')
    @Default('')
    String title,

    @JsonKey(name: 'slug')
    @Default('')
    String slug,

    @JsonKey(name: 'image')
    @Default('')
    String image,

    @JsonKey(name: 'isWishlist')
    @Default(false)
    bool isWishlist,

    @JsonKey(name: 'isPopular')
    @Default(false)
    bool isPopular,

    @JsonKey(name: 'location')
    @Default('')
    String location,

    @JsonKey(name: 'district')
    @Default('')
    String district,

    @JsonKey(name: 'state')
    @Default('')
    String state,

    @JsonKey(name: 'country')
    @Default('')
    String country,

    @JsonKey(name: 'address')
    @Default('')
    String address,

    @JsonKey(name: 'architecture')
    @Default('')
    String architecture,

    @JsonKey(name: 'lat')
    @Default(0.0)
    double lat,

    @JsonKey(name: 'lng')
    @Default(0.0)
    double lng,

    @JsonKey(name: 'description')
    @Default('')
    String description,

    @JsonKey(name: 'about')
    @Default('')
    String about,

    @JsonKey(name: 'deities')
    @Default([])
    List<TempleDeity> deities,

    @JsonKey(name: 'relatedTemples')
    @Default([])
    List<RelatedTemple> relatedTemples,

    @JsonKey(name: 'gallery')
    @Default([])
    List<String> gallery,

    @JsonKey(name: 'servicesFacilities')
    @Default([])
    List<String> servicesFacilities,

    @JsonKey(name: 'aartiAndTempleTiming')
    @Default([])
    List<AartiAndTempleTiming> aartiAndTempleTiming,

    @JsonKey(name: 'exploreNearby')
    @Default([])
    List<ExploreNearby> exploreNearby,

    @JsonKey(name: 'planYourRoute')
    @Default([])
    List<PlanYourRoute> planYourRoute,
  }) = _TempleDetailData;

  factory TempleDetailData.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$TempleDetailDataFromJson(json);
}

@freezed
abstract class TempleDeity with _$TempleDeity {
  const factory TempleDeity({
    @JsonKey(name: 'id')
    @Default('')
    String id,

    @JsonKey(name: 'title')
    @Default('')
    String title,

    @JsonKey(name: 'image')
    @Default('')
    String image,
  }) = _TempleDeity;

  factory TempleDeity.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$TempleDeityFromJson(json);
}

@freezed
abstract class RelatedTemple with _$RelatedTemple {
  const factory RelatedTemple({
    @JsonKey(name: 'id')
    @Default('')
    String id,

    @JsonKey(name: 'title')
    @Default('')
    String title,

    @JsonKey(name: 'slug')
    @Default('')
    String slug,

    @JsonKey(name: 'location')
    @Default('')
    String location,

    @JsonKey(name: 'lat')
    double? lat,

    @JsonKey(name: 'lng')
    double? lng,

    @JsonKey(name: 'image')
    @Default('')
    String image,

    @JsonKey(name: 'isWishlist')
    @Default(false)
    bool isWishlist,
  }) = _RelatedTemple;

  factory RelatedTemple.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$RelatedTempleFromJson(json);
}

@freezed
abstract class AartiAndTempleTiming with _$AartiAndTempleTiming {
  const factory AartiAndTempleTiming({
    @JsonKey(name: 'title')
    @Default('')
    String title,

    @JsonKey(name: 'rows')
    @Default([])
    List<AartiTimingRow> rows,
  }) = _AartiAndTempleTiming;

  factory AartiAndTempleTiming.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$AartiAndTempleTimingFromJson(json);
}

@freezed
abstract class AartiTimingRow with _$AartiTimingRow {
  const factory AartiTimingRow({
    @JsonKey(name: 'title')
    @Default('')
    String title,

    @JsonKey(name: 'open')
    @Default('')
    String open,

    @JsonKey(name: 'close')
    @Default('')
    String close,
  }) = _AartiTimingRow;

  factory AartiTimingRow.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$AartiTimingRowFromJson(json);
}

@freezed
abstract class ExploreNearby with _$ExploreNearby {
  const factory ExploreNearby({
    @JsonKey(name: 'title')
    @Default('')
    String title,

    @JsonKey(name: 'points')
    @Default([])
    List<String> points,
  }) = _ExploreNearby;

  factory ExploreNearby.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$ExploreNearbyFromJson(json);
}

@freezed
abstract class PlanYourRoute with _$PlanYourRoute {
  const factory PlanYourRoute({
    @JsonKey(name: 'title')
    @Default('')
    String title,

    @JsonKey(name: 'value')
    @Default('')
    String value,
  }) = _PlanYourRoute;

  factory PlanYourRoute.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$PlanYourRouteFromJson(json);
}