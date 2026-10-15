import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_god_api_response.freezed.dart';
part 'home_god_api_response.g.dart';

@freezed
abstract class HomeGodApiResponse with _$HomeGodApiResponse {
  const factory HomeGodApiResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(HomeGodData()) HomeGodData data,
    dynamic errors,
  }) = _HomeGodApiResponse;

  factory HomeGodApiResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeGodApiResponseFromJson(json);
}

@freezed
abstract class HomeGodData with _$HomeGodData {
  const factory HomeGodData({
    @Default([]) List<HomeGodItem> items,
    @Default(HomeGodPagination()) HomeGodPagination pagination,
  }) = _HomeGodData;

  factory HomeGodData.fromJson(Map<String, dynamic> json) =>
      _$HomeGodDataFromJson(json);
}

@freezed
abstract class HomeGodItem with _$HomeGodItem {
  const factory HomeGodItem({
    @Default('') String id,
    @Default('') String title,
    @Default('') String slug,
    @Default('') String category,
    @Default('') String location,
    @Default('') String image,
    @Default(false) bool isWishlist,
  }) = _HomeGodItem;

  factory HomeGodItem.fromJson(Map<String, dynamic> json) =>
      _$HomeGodItemFromJson(json);
}

@freezed
abstract class HomeGodPagination with _$HomeGodPagination {
  const factory HomeGodPagination({
    @Default(0) int total,
    @Default(1) int page,
    @Default(0) int limit,
    @Default(0) int totalPages,
  }) = _HomeGodPagination;

  factory HomeGodPagination.fromJson(Map<String, dynamic> json) =>
      _$HomeGodPaginationFromJson(json);
}