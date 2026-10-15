import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/current_location/location_service.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../domain/usecase/pitru_paksha_usecase.dart';
import 'pitru_paksha_detail_event.dart';
import 'pitru_paksha_detail_state.dart';

class PitruPakshaDetailBloc
    extends Bloc<PitruPakshaDetailEvent, PitruPakshaDetailState> {
  final PitruPakshaUsecase _usecase = getIt<PitruPakshaUsecase>();

  PitruPakshaDetailBloc() : super(PitruPakshaDetailState.initial()) {
    on<LoadPitruPakshaDetail>(_onLoadDetail);
  }

  Future<void> _onLoadDetail(
    LoadPitruPakshaDetail event,
    Emitter<PitruPakshaDetailState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    double lat = event.lat ?? 28.6139;
    double lon = event.lon ?? 77.209;
    String lang = event.lang ?? 'en';

    if (event.lat == null || event.lon == null) {
      try {
        final loc = await getIt<LocationService>().getCurrentLocation();
        if (loc.latitude != 0.0 && loc.longitude != 0.0) {
          lat = loc.latitude;
          lon = loc.longitude;
        }
      } catch (_) {}
    }

    final Map<String, dynamic> queryData = {
      'slug': event.slug,
      'date': event.date,
      'year': '${event.year}',
      'lang': lang,
      'lat': '$lat',
      'lon': '$lon',
    };

    final result = await _usecase.callGetPitruPakshaDetail(queryData);

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
}
