import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/chadava_item_model.dart';

part 'chadava_state.freezed.dart';

@freezed
abstract class ChadavaState with _$ChadavaState {
  const factory ChadavaState({
    @Default(false) bool isLoading,
    @Default(0) int selectedTabIndex,
    @Default([]) List<ChadavaItemModel> godItems,
    @Default([]) List<ChadavaItemModel> vanspatiItems,
    ChadavaItemModel? selectedItem,
    @Default('') String errorMessage,
  }) = _ChadavaState;

  factory ChadavaState.initial() => const ChadavaState();
}
