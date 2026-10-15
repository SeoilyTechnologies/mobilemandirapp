import 'package:bloc/bloc.dart';
import 'package:mandirapp/pages/templelist/persentation/bloc/temple_data.dart';
import 'package:mandirapp/pages/templelist/persentation/bloc/temple_event.dart';
import 'package:mandirapp/pages/templelist/persentation/bloc/temple_state.dart';
import 'package:meta/meta.dart';
import '../../data/entity/temple_model.dart';



class TempleBloc extends Bloc<TempleEvent, TempleState> {
  TempleBloc() : super(const TempleState()) {
    on<LoadTempleData>(_onLoadTempleData);
  }

  Future<void> _onLoadTempleData(
    LoadTempleData event,
    Emitter<TempleState> emit,
  ) async {
    try {

    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
