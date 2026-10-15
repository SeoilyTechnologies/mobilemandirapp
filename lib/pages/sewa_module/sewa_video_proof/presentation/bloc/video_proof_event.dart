import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_proof_event.freezed.dart';

@freezed
abstract class VideoProofEvent with _$VideoProofEvent {
  const factory VideoProofEvent.getVideoProof({
    required String id,
  }) = GetVideoProof;

  const factory VideoProofEvent.raiseConcernVideoProof(String id,String message) = RaiseConcernVideoProof;
  const factory VideoProofEvent.approveVideoProof() = ApproveVideoProof;
  const factory VideoProofEvent.resetState() = ResetState;
}