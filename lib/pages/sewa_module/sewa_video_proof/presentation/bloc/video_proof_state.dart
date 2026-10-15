import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../sewa_page/data/entity/video_proof/video_proof_api_response.dart';

part 'video_proof_state.freezed.dart';

@freezed
abstract class VideoProofState with _$VideoProofState {
  const factory VideoProofState({
    @Default('') String errorMessage,
    @Default('') String raiseConcernMessage,
    @Default('') String approveVideoMessage,
    @Default(false) bool isApproveVideoDone,

    @Default(false) bool isLoading,

    @Default(VideoProofApiResponse())
    VideoProofApiResponse videoProofApiResponse,
  }) = _VideoProofState;

  factory VideoProofState.initial() => const VideoProofState();
}
