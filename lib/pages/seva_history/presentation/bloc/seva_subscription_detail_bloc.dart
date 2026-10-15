import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../data/entity/seva_subscription_detail_response.dart';
import '../../domain/usecase/seva_history_usecase.dart';

abstract class SevaSubscriptionDetailEvent {}

class GetSubscriptionDetailEvent extends SevaSubscriptionDetailEvent {
  final String id;
  GetSubscriptionDetailEvent({required this.id});
}

abstract class SevaSubscriptionDetailState {
  const SevaSubscriptionDetailState();
}

class SevaSubscriptionDetailInitial extends SevaSubscriptionDetailState {
  const SevaSubscriptionDetailInitial();
}

class SevaSubscriptionDetailLoading extends SevaSubscriptionDetailState {
  const SevaSubscriptionDetailLoading();
}

class SevaSubscriptionDetailLoaded extends SevaSubscriptionDetailState {
  final SevaSubscriptionDetailData data;
  const SevaSubscriptionDetailLoaded({required this.data});
}

class SevaSubscriptionDetailError extends SevaSubscriptionDetailState {
  final String message;
  const SevaSubscriptionDetailError(this.message);
}

class SevaSubscriptionDetailBloc
    extends Bloc<SevaSubscriptionDetailEvent, SevaSubscriptionDetailState> {
  final SevaHistoryUsecase _usecase = getIt<SevaHistoryUsecase>();

  SevaSubscriptionDetailBloc() : super(const SevaSubscriptionDetailInitial()) {
    on<GetSubscriptionDetailEvent>(_onGetSubscriptionDetail);
  }

  Future<void> _onGetSubscriptionDetail(
    GetSubscriptionDetailEvent event,
    Emitter<SevaSubscriptionDetailState> emit,
  ) async {
    if (event.id.trim().isEmpty) {
      emit(const SevaSubscriptionDetailError('Subscription ID not found'));
      return;
    }

    emit(const SevaSubscriptionDetailLoading());

    final result = await _usecase.callSubscriptionDetail(event.id);

    result.fold(
      (failure) => emit(SevaSubscriptionDetailError(failure.message)),
      (response) => emit(SevaSubscriptionDetailLoaded(data: response.data)),
    );
  }
}
