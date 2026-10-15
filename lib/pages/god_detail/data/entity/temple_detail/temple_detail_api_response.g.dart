// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temple_detail_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TempleDetailApiResponse _$TempleDetailApiResponseFromJson(
  Map<String, dynamic> json,
) => _TempleDetailApiResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? const TempleDetailData()
      : TempleDetailData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'],
);

Map<String, dynamic> _$TempleDetailApiResponseToJson(
  _TempleDetailApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_TempleDetailData _$TempleDetailDataFromJson(
  Map<String, dynamic> json,
) => _TempleDetailData(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  image: json['image'] as String? ?? '',
  isWishlist: json['isWishlist'] as bool? ?? false,
  isPopular: json['isPopular'] as bool? ?? false,
  location: json['location'] as String? ?? '',
  district: json['district'] as String? ?? '',
  state: json['state'] as String? ?? '',
  country: json['country'] as String? ?? '',
  address: json['address'] as String? ?? '',
  architecture: json['architecture'] as String? ?? '',
  lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
  lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
  description: json['description'] as String? ?? '',
  about: json['about'] as String? ?? '',
  deities:
      (json['deities'] as List<dynamic>?)
          ?.map((e) => TempleDeity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  relatedTemples:
      (json['relatedTemples'] as List<dynamic>?)
          ?.map((e) => RelatedTemple.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  gallery:
      (json['gallery'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  servicesFacilities:
      (json['servicesFacilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  aartiAndTempleTiming:
      (json['aartiAndTempleTiming'] as List<dynamic>?)
          ?.map((e) => AartiAndTempleTiming.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  exploreNearby:
      (json['exploreNearby'] as List<dynamic>?)
          ?.map((e) => ExploreNearby.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  planYourRoute:
      (json['planYourRoute'] as List<dynamic>?)
          ?.map((e) => PlanYourRoute.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TempleDetailDataToJson(_TempleDetailData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'image': instance.image,
      'isWishlist': instance.isWishlist,
      'isPopular': instance.isPopular,
      'location': instance.location,
      'district': instance.district,
      'state': instance.state,
      'country': instance.country,
      'address': instance.address,
      'architecture': instance.architecture,
      'lat': instance.lat,
      'lng': instance.lng,
      'description': instance.description,
      'about': instance.about,
      'deities': instance.deities,
      'relatedTemples': instance.relatedTemples,
      'gallery': instance.gallery,
      'servicesFacilities': instance.servicesFacilities,
      'aartiAndTempleTiming': instance.aartiAndTempleTiming,
      'exploreNearby': instance.exploreNearby,
      'planYourRoute': instance.planYourRoute,
    };

_TempleDeity _$TempleDeityFromJson(Map<String, dynamic> json) => _TempleDeity(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  image: json['image'] as String? ?? '',
);

Map<String, dynamic> _$TempleDeityToJson(_TempleDeity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

_RelatedTemple _$RelatedTempleFromJson(Map<String, dynamic> json) =>
    _RelatedTemple(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      location: json['location'] as String? ?? '',
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      image: json['image'] as String? ?? '',
      isWishlist: json['isWishlist'] as bool? ?? false,
    );

Map<String, dynamic> _$RelatedTempleToJson(_RelatedTemple instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'location': instance.location,
      'lat': instance.lat,
      'lng': instance.lng,
      'image': instance.image,
      'isWishlist': instance.isWishlist,
    };

_AartiAndTempleTiming _$AartiAndTempleTimingFromJson(
  Map<String, dynamic> json,
) => _AartiAndTempleTiming(
  title: json['title'] as String? ?? '',
  rows:
      (json['rows'] as List<dynamic>?)
          ?.map((e) => AartiTimingRow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$AartiAndTempleTimingToJson(
  _AartiAndTempleTiming instance,
) => <String, dynamic>{'title': instance.title, 'rows': instance.rows};

_AartiTimingRow _$AartiTimingRowFromJson(Map<String, dynamic> json) =>
    _AartiTimingRow(
      title: json['title'] as String? ?? '',
      open: json['open'] as String? ?? '',
      close: json['close'] as String? ?? '',
    );

Map<String, dynamic> _$AartiTimingRowToJson(_AartiTimingRow instance) =>
    <String, dynamic>{
      'title': instance.title,
      'open': instance.open,
      'close': instance.close,
    };

_ExploreNearby _$ExploreNearbyFromJson(Map<String, dynamic> json) =>
    _ExploreNearby(
      title: json['title'] as String? ?? '',
      points:
          (json['points'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ExploreNearbyToJson(_ExploreNearby instance) =>
    <String, dynamic>{'title': instance.title, 'points': instance.points};

_PlanYourRoute _$PlanYourRouteFromJson(Map<String, dynamic> json) =>
    _PlanYourRoute(
      title: json['title'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$PlanYourRouteToJson(_PlanYourRoute instance) =>
    <String, dynamic>{'title': instance.title, 'value': instance.value};
