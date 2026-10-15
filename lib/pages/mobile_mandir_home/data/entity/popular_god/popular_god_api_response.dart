import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_god_api_response.freezed.dart';
part 'popular_god_api_response.g.dart';

@freezed
abstract class PopularGodApiResponse with _$PopularGodApiResponse {
  const factory PopularGodApiResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(PopularGodData()) PopularGodData data,
    @Default(null) dynamic errors,
  }) = _PopularGodApiResponse;

  factory PopularGodApiResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularGodApiResponseFromJson(json);
}

@freezed
abstract class PopularGodData with _$PopularGodData {
  const factory PopularGodData({
    @Default(<PopularGodItem>[]) List<PopularGodItem> items,
    @Default(PopularGodPagination()) PopularGodPagination pagination,
  }) = _PopularGodData;

  factory PopularGodData.fromJson(Map<String, dynamic> json) =>
      _$PopularGodDataFromJson(json);
}

@freezed
abstract class PopularGodItem with _$PopularGodItem {
  const factory PopularGodItem({
    @Default('') String id,
    @Default('') String title,
    @Default('') String slug,
    @Default('') String category,
    @Default('') String location,
    @Default('') String image,
    @Default(false) bool isWishlist,
  }) = _PopularGodItem;

  factory PopularGodItem.fromJson(Map<String, dynamic> json) =>
      _$PopularGodItemFromJson(json);
}

@freezed
abstract class PopularGodPagination with _$PopularGodPagination {
  const factory PopularGodPagination({
    @Default(0) int total,
    @Default(1) int page,
    @Default(10) int limit,
    @Default(0) int totalPages,
  }) = _PopularGodPagination;

  factory PopularGodPagination.fromJson(Map<String, dynamic> json) =>
      _$PopularGodPaginationFromJson(json);
}