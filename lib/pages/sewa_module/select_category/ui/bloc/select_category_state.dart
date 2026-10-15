import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/categories_list_response.dart';
import '../../domain/save_category_entity.dart';

part 'select_category_state.freezed.dart';

@freezed
abstract class SelectCategoryState with _$SelectCategoryState {
  const factory SelectCategoryState({
    CategoryItem? selectedCategory,
    @Default(CategoriesListResponse()) CategoriesListResponse categoriesListApiResponse,
    @Default('') String errorMessage,
    @Default(false) bool isProceedSuccess,
  }) = _SelectCategoryState;

  factory SelectCategoryState.initial() => const SelectCategoryState();
}