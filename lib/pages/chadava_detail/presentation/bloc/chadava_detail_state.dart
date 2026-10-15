import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/chadava_detail_model.dart';
import '../../data/entity/chadava_offering_model.dart';

part 'chadava_detail_state.freezed.dart';

@freezed
abstract class ChadavaDetailState with _$ChadavaDetailState {
  const factory ChadavaDetailState({
    @Default(false) bool isLoading,
    ChadavaDetailModel? detailModel,
    ChadavaOfferingModel? selectedOffering,
    @Default('') String errorMessage,
  }) = _ChadavaDetailState;

  factory ChadavaDetailState.initial() => const ChadavaDetailState();
}
