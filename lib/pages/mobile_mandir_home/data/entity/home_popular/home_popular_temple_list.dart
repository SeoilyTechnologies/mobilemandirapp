import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_popular_temple_list.freezed.dart';
part 'home_popular_temple_list.g.dart';

@freezed
abstract class HomePopularTempleListResponse with _$HomePopularTempleListResponse {
  const factory HomePopularTempleListResponse({
    @JsonKey(name: "success")
    @Default(false)
    bool success,

    @JsonKey(name: "data")
    @Default(HomePopularTempleData())
    HomePopularTempleData data,
  }) = _HomePopularTempleListResponse;

  factory HomePopularTempleListResponse.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$HomePopularTempleListResponseFromJson(json);
}

@freezed
abstract class HomePopularTempleData with _$HomePopularTempleData {
  const factory HomePopularTempleData({
    @JsonKey(name: "items")
    @Default([])
    List<PopularTempleItem> items,

    @JsonKey(name: "pagination")
    @Default(PopularTemplePagination())
    PopularTemplePagination pagination,
  }) = _HomePopularTempleData;

  factory HomePopularTempleData.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$HomePopularTempleDataFromJson(json);
}

@freezed
abstract class PopularTempleItem with _$PopularTempleItem {
  const factory PopularTempleItem({
    @JsonKey(name: "id")
    @Default("")
    String id,

    @JsonKey(name: "title")
    @Default("")
    String title,

    @JsonKey(name: "slug")
    @Default("")
    String slug,

    @JsonKey(name: "category")
    @Default("")
    String category,

    @JsonKey(name: "location")
    @Default("")
    String location,

    @JsonKey(name: "image")
    @Default("")
    String image,

    @JsonKey(name: "isWishlist")
    @Default(false)
    bool isWishlist,
  }) = _PopularTempleItem;

  factory PopularTempleItem.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$PopularTempleItemFromJson(json);
}

@freezed
abstract class PopularTemplePagination with _$PopularTemplePagination {
  const factory PopularTemplePagination({
    @JsonKey(name: "total")
    @Default(0)
    int total,

    @JsonKey(name: "page")
    @Default(0)
    int page,

    @JsonKey(name: "limit")
    @Default(0)
    int limit,

    @JsonKey(name: "totalPages")
    @Default(0)
    int totalPages,
  }) = _PopularTemplePagination;

  factory PopularTemplePagination.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$PopularTemplePaginationFromJson(json);
}