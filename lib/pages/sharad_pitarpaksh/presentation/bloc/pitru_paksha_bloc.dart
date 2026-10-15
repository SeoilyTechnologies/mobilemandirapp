import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/current_location/location_service.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../domain/usecase/pitru_paksha_usecase.dart';
import 'pitru_paksha_event.dart';
import 'pitru_paksha_state.dart';

class PitruPakshaBloc extends Bloc<PitruPakshaEvent, PitruPakshaState> {
  final PitruPakshaUsecase _usecase = getIt<PitruPakshaUsecase>();

  PitruPakshaBloc() : super(PitruPakshaState.initial()) {
    on<LoadPitruPakshaData>(_onLoadData);
    on<SearchPitruPaksha>(_onSearch);
    on<FilterPitruPakshaByDate>(_onFilterByDate);
    on<ClearPitruPakshaFilter>(_onClearFilter);
  }

  Future<void> _onLoadData(
    LoadPitruPakshaData event,
    Emitter<PitruPakshaState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    int year = event.year ?? state.selectedYear;
    String lang = event.lang ?? state.language;
    double lat = event.lat ?? state.latitude;
    double lon = event.lon ?? state.longitude;

    // Fetch current location if not explicitly provided
    if (event.lat == null || event.lon == null) {
      try {
        final location = await getIt<LocationService>().getCurrentLocation();
        if (location.latitude != 0.0 && location.longitude != 0.0) {
          lat = location.latitude;
          lon = location.longitude;
        }
      } catch (e) {
        // Fallback to default
      }
    }

    emit(state.copyWith(
      selectedYear: year,
      language: lang,
      latitude: lat,
      longitude: lon,
    ));

    final Map<String, dynamic> queryData = {
      'year': '$year',
      'lang': lang,
      'lat': '$lat',
      'lon': '$lon',
    };

    final result = await _usecase(queryData);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: false,
          errorMessage: failure.message,
        ));
      },
      (response) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          response: response,
          errorMessage: '',
        ));
      },
    );
  }

  void _onSearch(
    SearchPitruPaksha event,
    Emitter<PitruPakshaState> emit,
  ) {
    emit(state.copyWith(searchQuery: event.query));
  }

  void _onFilterByDate(
    FilterPitruPakshaByDate event,
    Emitter<PitruPakshaState> emit,
  ) {
    emit(state.copyWith(selectedDateFilter: event.selectedDate));
  }

  void _onClearFilter(
    ClearPitruPakshaFilter event,
    Emitter<PitruPakshaState> emit,
  ) {
    emit(state.copyWith(
      searchQuery: '',
      selectedDateFilter: null,
    ));
  }
}
