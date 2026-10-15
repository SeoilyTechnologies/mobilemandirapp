import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/pitru_paksha_detail_response.dart';

part 'pitru_paksha_detail_state.freezed.dart';

@freezed
abstract class PitruPakshaDetailState with _$PitruPakshaDetailState {
  const factory PitruPakshaDetailState({
    @Default(true) bool isLoading,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
    PitruPakshaDetailResponse? response,
  }) = _PitruPakshaDetailState;

  factory PitruPakshaDetailState.initial() => const PitruPakshaDetailState();
}
