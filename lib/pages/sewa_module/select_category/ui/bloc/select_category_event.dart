import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/categories_list_response.dart';
import '../../domain/save_category_entity.dart';

part 'select_category_event.freezed.dart';

@freezed
abstract class SelectCategoryEvent with _$SelectCategoryEvent {
  const factory SelectCategoryEvent.categorySelected(
      CategoryItem category,
      ) = CategorySelected;

  const factory SelectCategoryEvent.proceed() = Proceed;
  const factory SelectCategoryEvent.getCateroiesList() = GetCategoriesList;
}

