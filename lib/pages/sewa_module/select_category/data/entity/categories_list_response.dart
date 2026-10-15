import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_list_response.freezed.dart';
part 'categories_list_response.g.dart';

@freezed
abstract class CategoriesListResponse with _$CategoriesListResponse {
  const factory CategoriesListResponse({
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'data')
    @Default(<CategoryItem>[])
    List<CategoryItem> data,
    @JsonKey(name: 'errors') dynamic errors,
  }) = _CategoriesListResponse;

  factory CategoriesListResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesListResponseFromJson(json);
}

@freezed
abstract class CategoryItem with _$CategoryItem {
  const factory CategoryItem({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'backgroundColor') @Default('') String backgroundColor,
    @JsonKey(name: 'backgroundColorEnd') @Default('') String backgroundColorEnd,
    @JsonKey(name: 'icon') @Default('') String icon,
    @JsonKey(name: 'isActive') @Default(false) bool isActive,
    @JsonKey(name: 'order') @Default(0) int order,
  }) = _CategoryItem;

  factory CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemFromJson(json);
}