import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../domain/usecase/seva_history_usecase.dart';
import '../../data/entity/seva_history_response.dart';
import 'seva_history_event.dart';
import 'seva_history_state.dart';

class SevaHistoryBloc extends Bloc<SevaHistoryEvent, SevaHistoryState> {
  final SevaHistoryUsecase _usecase = getIt<SevaHistoryUsecase>();

  SevaHistoryBloc() : super(const SevaHistoryState.initial()) {
    on<GetSevaHistoryEvent>(_onGetSevaHistory);
  }

  Future<void> _onGetSevaHistory(
    GetSevaHistoryEvent event,
    Emitter<SevaHistoryState> emit,
  ) async {
    final bool isLoadMore = event.page > 1;
    List<SevaHistoryCard> previousList = [];

    state.maybeWhen(
      loaded: (response, accumulatedSevaList, currentStatus, isFiltering, isLoadingMore) {
        previousList = accumulatedSevaList;
        if (isLoadMore) {
          emit(SevaHistoryState.loaded(
            response: response,
            accumulatedSevaList: accumulatedSevaList,
            currentStatus: currentStatus,
            isFiltering: isFiltering,
            isLoadingMore: true,
          ));
        } else {
          emit(SevaHistoryState.loaded(
            response: response,
            accumulatedSevaList: accumulatedSevaList,
            currentStatus: event.status,
            isFiltering: true,
            isLoadingMore: false,
          ));
        }
      },
      orElse: () {
        emit(const SevaHistoryState.loading());
      },
    );

    final result = await _usecase.call(event.status, event.page, event.limit);
    
    result.fold(
      (failure) {
        if (!isLoadMore) {
          emit(SevaHistoryState.error(failure.message));
        } else {
          state.maybeWhen(
            loaded: (response, accumulatedSevaList, currentStatus, isFiltering, isLoadingMore) {
              emit(SevaHistoryState.loaded(
                response: response,
                accumulatedSevaList: accumulatedSevaList,
                currentStatus: currentStatus,
                isFiltering: false,
                isLoadingMore: false,
              ));
            },
            orElse: () {},
          );
        }
      },
      (response) {
        final newItems = response.data.sevaData;
        emit(SevaHistoryState.loaded(
          response: response,
          accumulatedSevaList: isLoadMore ? [...previousList, ...newItems] : newItems,
          currentStatus: event.status,
          isFiltering: false,
          isLoadingMore: false,
        ));
      }
    );
  }
}
