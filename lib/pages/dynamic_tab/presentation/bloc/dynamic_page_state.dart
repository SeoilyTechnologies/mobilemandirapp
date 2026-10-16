import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/dynamic_tab_models.dart';

part 'dynamic_page_state.freezed.dart';

@freezed
abstract class DynamicPageState with _$DynamicPageState {
  const factory DynamicPageState({
    @Default('') String slug,
    @Default(false) bool isLoading,
    DynamicPageModel? page,
    @Default('') String error,
  }) = _DynamicPageState;
}
