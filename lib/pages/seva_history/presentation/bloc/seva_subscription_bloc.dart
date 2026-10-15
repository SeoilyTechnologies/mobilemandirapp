import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../data/entity/seva_subscription_response.dart';
import '../../domain/usecase/seva_history_usecase.dart';

abstract class SevaSubscriptionEvent {}

class GetSubscriptionsEvent extends SevaSubscriptionEvent {
  final int page;
  final int limit;

  GetSubscriptionsEvent({this.page = 1, this.limit = 50});
}

abstract class SevaSubscriptionState {
  const SevaSubscriptionState();
}

class SevaSubscriptionInitial extends SevaSubscriptionState {
  const SevaSubscriptionInitial();
}

class SevaSubscriptionLoading extends SevaSubscriptionState {
  const SevaSubscriptionLoading();
}

class SevaSubscriptionLoaded extends SevaSubscriptionState {
  final List<SevaSubscriptionItem> list;
  final SubscriptionPagination pagination;
  final bool isLoadingMore;

  const SevaSubscriptionLoaded({
    required this.list,
    required this.pagination,
    this.isLoadingMore = false,
  });

  SevaSubscriptionLoaded copyWith({
    List<SevaSubscriptionItem>? list,
    SubscriptionPagination? pagination,
    bool? isLoadingMore,
  }) {
    return SevaSubscriptionLoaded(
      list: list ?? this.list,
      pagination: pagination ?? this.pagination,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    );
  }
}

class SevaSubscriptionError extends SevaSubscriptionState {
  final String message;
  const SevaSubscriptionError(this.message);
}

class SevaSubscriptionBloc
    extends Bloc<SevaSubscriptionEvent, SevaSubscriptionState> {
  final SevaHistoryUsecase _usecase = getIt<SevaHistoryUsecase>();

  SevaSubscriptionBloc() : super(const SevaSubscriptionInitial()) {
    on<GetSubscriptionsEvent>(_onGetSubscriptions);
  }

  Future<void> _onGetSubscriptions(
    GetSubscriptionsEvent event,
    Emitter<SevaSubscriptionState> emit,
  ) async {
    final bool isLoadMore = event.page > 1;
    List<SevaSubscriptionItem> previousList = [];

    if (state is SevaSubscriptionLoaded) {
      final current = state as SevaSubscriptionLoaded;
      previousList = current.list;
      if (isLoadMore) {
        emit(current.copyWith(isLoadingMore: true));
      } else {
        emit(const SevaSubscriptionLoading());
      }
    } else {
      emit(const SevaSubscriptionLoading());
    }

    final result = await _usecase.callSubscriptions(event.page, event.limit);

    result.fold(
      (failure) {
        if (!isLoadMore) {
          emit(SevaSubscriptionError(failure.message));
        } else if (state is SevaSubscriptionLoaded) {
          emit(
            (state as SevaSubscriptionLoaded).copyWith(isLoadingMore: false),
          );
        }
      },
      (response) {
        final newItems = response.data.list;
        emit(
          SevaSubscriptionLoaded(
            list: isLoadMore ? [...previousList, ...newItems] : newItems,
            pagination: response.data.pagination,
            isLoadingMore: false,
          ),
        );
      },
    );
  }
}
