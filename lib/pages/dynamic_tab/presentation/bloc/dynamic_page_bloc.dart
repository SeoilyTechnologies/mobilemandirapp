import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/service_locator/setivelocator.dart';
import '../../domain/usecase/dynamic_tab_usecase.dart';
import 'dynamic_page_event.dart';
import 'dynamic_page_state.dart';

/// One instance per open page (tab body or pushed inner page).
class DynamicPageBloc extends Bloc<DynamicPageEvent, DynamicPageState> {
  final DynamicTabUsecase _usecase = getIt<DynamicTabUsecase>();

  DynamicPageBloc() : super(const DynamicPageState()) {
    on<LoadDynamicPage>(_onLoad);
  }

  Future<void> _onLoad(LoadDynamicPage event, Emitter<DynamicPageState> emit) async {
    // Keep showing the current page while refreshing the same slug.
    final sameSlug = state.slug == event.slug && state.page != null;
    emit(state.copyWith(
      slug: event.slug,
      isLoading: true,
      error: '',
      page: sameSlug ? state.page : null,
    ));

    final result = await _usecase.callGetPage(event.slug);
    if (isClosed) return;
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, error: failure.message)),
      (page) => emit(state.copyWith(isLoading: false, page: page, error: '')),
    );
  }
}
