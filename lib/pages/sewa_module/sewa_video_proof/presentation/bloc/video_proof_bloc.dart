import 'package:bloc/bloc.dart';
import 'package:mandirapp/pages/sewa_module/sewa_video_proof/presentation/bloc/video_proof_event.dart';
import 'package:mandirapp/pages/sewa_module/sewa_video_proof/presentation/bloc/video_proof_state.dart';

import '../../../../../common/service_locator/setivelocator.dart';
import '../../../sewa_page/domain/usecase/sewa_page_usecase.dart';

class VideoProofBloc extends Bloc<VideoProofEvent, VideoProofState> {
  final SewaPageUsecase _sewaPageUsecase = getIt<SewaPageUsecase>();

  VideoProofBloc() : super(VideoProofState.initial()) {
    on<GetVideoProof>(_getVideoProof);
    on<RaiseConcernVideoProof>(_raiseConcern);
    on<ApproveVideoProof>(_approveVideo);
    on<ResetState>(_resetState);

  }

  Future<void> _resetState(
      ResetState event,
      Emitter<VideoProofState> emit,
      ) async {
    emit(
      state.copyWith(
        errorMessage: '',
        raiseConcernMessage: '',
        approveVideoMessage: '',
        isApproveVideoDone: false,
        isLoading: false,
      ),
    );
  }
  Future<void> _getVideoProof(
    GetVideoProof event,
    Emitter<VideoProofState> emit,
  ) async {
    emit(state.copyWith(  isLoading: true,
      raiseConcernMessage: '',
      errorMessage: "",
      approveVideoMessage: "",
      isApproveVideoDone: false,));

    final result = await _sewaPageUsecase.callgetVideoProof(event.id);

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure.message));
      },
      (response) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: '',
            videoProofApiResponse: response,
          ),
        );
      },
    );
  }

  Future<void> _raiseConcern(
    RaiseConcernVideoProof event,
    Emitter<VideoProofState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        raiseConcernMessage: '',
        errorMessage: "",
        approveVideoMessage: "",
        isApproveVideoDone: false,
      ),
    );

    final result = await _sewaPageUsecase.callraiseConcern({
      "category": "other",
      "message": event.message,
    }, state.videoProofApiResponse.data.sevaId);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            raiseConcernMessage: failure.message,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            isLoading: false,
            raiseConcernMessage: response.message ?? '',
          ),
        );
        add(GetVideoProof(id: state.videoProofApiResponse.data.sevaId));
      },
    );
  }

  Future<void> _approveVideo(
    ApproveVideoProof event,
    Emitter<VideoProofState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        raiseConcernMessage: '',
        errorMessage: "",
        approveVideoMessage: "",
        isApproveVideoDone: false,
      ),
    );

    final result = await _sewaPageUsecase.callapproveVideo(
      {},
      state.videoProofApiResponse.data.sevaId,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isApproveVideoDone: false,
            approveVideoMessage: failure.message,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            isLoading: false,
            isApproveVideoDone: true,
            approveVideoMessage: response.message ?? '',
          ),
        );
       // add(GetVideoProof(id: state.videoProofApiResponse.data.sevaId));
      },
    );
  }
}
