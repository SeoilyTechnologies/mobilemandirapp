import 'package:flutter_bloc/flutter_bloc.dart';

import 'temple_detail_event.dart';
import 'temple_detail_state.dart';

class TempleDetailBloc extends Bloc<TempleDetailEvent, TempleDetailState> {
  TempleDetailBloc() : super(const TempleDetailState()) {
    on<LoadTempleDetail>(_onLoadTempleDetail);
  }

  void _onLoadTempleDetail(
      LoadTempleDetail event, Emitter<TempleDetailState> emit) {
    emit(state.copyWith(isLoading: true));
    emit(state.copyWith(
      temple: event.temple,
      isLoading: false,
    ));
  }
}
