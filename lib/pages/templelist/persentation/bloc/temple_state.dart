import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/temple_model.dart';

part 'temple_state.freezed.dart';

@freezed
abstract class TempleState with _$TempleState {
  const factory TempleState({
    @Default(false) bool isLoading,
    @Default([]) List<TempleModel> templeList,
    String? error,
  }) = _TempleState;
}
