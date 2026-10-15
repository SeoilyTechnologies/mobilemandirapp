import 'package:bloc/bloc.dart';
import 'package:mandirapp/common/service_locator/setivelocator.dart';
import 'package:mandirapp/pages/sewa_module/seva_status/bloc/seva_status_event.dart';
import 'package:mandirapp/pages/sewa_module/seva_status/bloc/seva_status_state.dart';

import '../../sewa_page/domain/usecase/sewa_page_usecase.dart';

class SevaStatusBloc extends Bloc<SevaStatusEvent, SevaStatusState> {
  final SewaPageUsecase _sewaPageUsecase = getIt<SewaPageUsecase>();

  SevaStatusBloc() : super(SevaStatusState.initial()) {
    on<GetStatus>(_getStatus);
  }

  /// Clear old status record by dispatching empty GetStatus
  void reset() {
    add(const GetStatus(id: ''));
  }

  Future<void> _getStatus(
    GetStatus event,
    Emitter<SevaStatusState> emit,
  ) async {

    // If id is empty, reset to initial state
    if (event.id.trim().isEmpty) {
      emit(SevaStatusState.initial());
      return;
    }

    // Clear old data immediately and show loading
    emit(SevaStatusState.initial().copyWith(isLoading: true));

    final result = await _sewaPageUsecase.callgetSevaStatus(event.id);

    result.fold(
      (failure) {
        emit(
          SevaStatusState.initial().copyWith(
            isLoading: false,
            errorMessage: failure.message,
          ),
        );
      },
      (response) {
        emit(
          SevaStatusState.initial().copyWith(
            isLoading: false,
            sevaStatusApiResponse: response,
            errorMessage: '',
          ),
        );
      },
    );
  }
}
