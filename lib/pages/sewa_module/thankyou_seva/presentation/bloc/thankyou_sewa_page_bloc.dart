import 'package:bloc/bloc.dart';
import 'package:mandirapp/common/service_locator/setivelocator.dart';

import '../../../sewa_page/domain/usecase/sewa_page_usecase.dart';
import 'thankyou_sewa_page_event.dart';
import 'thankyou_sewa_page_state.dart';

class ThankyouSewaPageBloc
    extends Bloc<ThankyouSewaPageEvent, ThankyouSewaPageState> {
  final SewaPageUsecase _sewaPageUsecase = getIt<SewaPageUsecase>();

  ThankyouSewaPageBloc() : super(ThankyouSewaPageState.initial()) {
    on<GetThankyou>(_getThankyouData);
  }

  Future<void> _getThankyouData(
    GetThankyou event,
    Emitter<ThankyouSewaPageState> emit,
  ) async {
    emit(
      state.copyWith(isLoading: true, errorMessage: "", isOrderSuccess: false),
    );

    final result = await _sewaPageUsecase.callgetThankyouData(event.id);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: failure.message ?? "Something went wrong",
            isOrderSuccess: false,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            isLoading: false,
            thankyouApoiResponse: response,
            isOrderSuccess: response.success,
            errorMessage: "",
          ),
        );
      },
    );
  }
}
