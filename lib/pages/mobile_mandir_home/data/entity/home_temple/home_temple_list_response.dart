import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_temple_list_response.freezed.dart';
part 'home_temple_list_response.g.dart';

@freezed
abstract class HomeTempleListResponse with _$HomeTempleListResponse {
  const factory HomeTempleListResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(HomeTempleData()) HomeTempleData data,
    dynamic errors,
  }) = _HomeTempleListResponse;

  factory HomeTempleListResponse.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$HomeTempleListResponseFromJson(json);
}

@freezed
abstract class HomeTempleData with _$HomeTempleData {
  const factory HomeTempleData({
    @Default([]) List<HomeTempleItem> items,
    @Default(HomeTemplePagination())
    HomeTemplePagination pagination,
  }) = _HomeTempleData;

  factory HomeTempleData.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$HomeTempleDataFromJson(json);
}

@freezed
abstract class HomeTempleItem with _$HomeTempleItem {
  const factory HomeTempleItem({
    @Default('') String id,
    @Default('') String title,
    @Default('') String slug,
    @Default('') String location,

    double? lat,
    double? lng,

    @Default('') String image,

    @JsonKey(name: 'isWishlist')
    @Default(false)
    bool isWishlist,
  }) = _HomeTempleItem;

  factory HomeTempleItem.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$HomeTempleItemFromJson(json);
}

@freezed
abstract class HomeTemplePagination with _$HomeTemplePagination {
  const factory HomeTemplePagination({
    @Default(0) int total,
    @Default(1) int page,
    @Default(0) int limit,
    @Default(0) int totalPages,
  }) = _HomeTemplePagination;

  factory HomeTemplePagination.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$HomeTemplePaginationFromJson(json);
}