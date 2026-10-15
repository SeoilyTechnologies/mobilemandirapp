import 'package:freezed_annotation/freezed_annotation.dart';

import '../../sewa_page/data/entity/seva_status/seva_status_api_response.dart';

part 'seva_status_state.freezed.dart';

@freezed
abstract class SevaStatusState with _$SevaStatusState {
  const factory SevaStatusState({
    @Default('') String errorMessage,

    @Default(false) bool isLoading,

    @Default(SevaStatusApiResponse())
    SevaStatusApiResponse sevaStatusApiResponse,
  }) = _SevaStatusState;

  factory SevaStatusState.initial() => const SevaStatusState();
}