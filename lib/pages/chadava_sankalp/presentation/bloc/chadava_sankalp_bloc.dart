import 'package:flutter_bloc/flutter_bloc.dart';
import 'chadava_sankalp_event.dart';
import 'chadava_sankalp_state.dart';

class ChadavaSankalpBloc
    extends Bloc<ChadavaSankalpEvent, ChadavaSankalpState> {
  ChadavaSankalpBloc() : super(ChadavaSankalpState.initial()) {
    on<InitChadavaSankalp>(_onInitSankalp);
    on<SelectSankalpOption>(_onSelectOption);
    on<SelectSankalpWeeks>(_onSelectWeeks);
  }

  void _onInitSankalp(
    InitChadavaSankalp event,
    Emitter<ChadavaSankalpState> emit,
  ) {
    emit(state.copyWith(
      baseOfferingPrice: event.offeringPrice,
      offeringTitle: event.offeringTitle,
    ));
  }

  void _onSelectOption(
    SelectSankalpOption event,
    Emitter<ChadavaSankalpState> emit,
  ) {
    emit(state.copyWith(selectedOption: event.optionType));
  }

  void _onSelectWeeks(
    SelectSankalpWeeks event,
    Emitter<ChadavaSankalpState> emit,
  ) {
    emit(state.copyWith(selectedWeeks: event.weeksCount));
  }
}
