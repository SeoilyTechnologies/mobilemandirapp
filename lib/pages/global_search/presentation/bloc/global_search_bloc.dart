import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../mobile_mandir_home/data/global_search/gloable_search_api_response.dart';
import '../../../mobile_mandir_home/domain/usecase/mobile_home_usecase.dart';
import '../../../wishlist/domain/usecase/wishlist_usecase.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/network/app_constant.dart';
import 'global_search_event.dart';
import 'global_search_state.dart';

class GlobalSearchBloc extends Bloc<GlobalSearchEvent, GlobalSearchState> {
  final MobileHomeUsecase _mobileHomeUsecase = getIt<MobileHomeUsecase>();
  final WishlistUsecase _wishlistUsecase = getIt<WishlistUsecase>();
  final SharedPrefs sharedPrefs = getIt<SharedPrefs>();

  GlobalSearchBloc() : super(const GlobalSearchState()) {
    on<SearchQueryEvent>(_onSearchQuery, transformer: restartable());
    on<ToggleGlobalSearchWishlistEvent>(_onToggleWishlist);
    on<ClearSearchEvent>(_onClearSearch);
  }

  Future<void> _onSearchQuery(
    SearchQueryEvent event,
    Emitter<GlobalSearchState> emit,
  ) async {
    final isHiddenPrefetch = event.apiQuery != null;
    final apiQuery = (event.apiQuery ?? event.query).trim();
    final uiQuery = isHiddenPrefetch ? '' : event.query.trim();

    if (apiQuery.isEmpty) {
      emit(
        state.copyWith(
          query: '',
          isLoading: false,
          globalSearchResponse: const GloableSearchApiResponse(),
          errorMessage: '',
        ),
      );
      return;
    }

    if (apiQuery.length < 3) {
      emit(
        state.copyWith(
          query: uiQuery,
          isLoading: false,
          globalSearchResponse: const GloableSearchApiResponse(),
          errorMessage: '',
        ),
      );
      return;
    }

    // Agar same query already loaded hai to dubara API call na karein
    if (!isHiddenPrefetch &&
        uiQuery == state.query &&
        !state.isLoading &&
        state.errorMessage.isEmpty &&
        state.globalSearchResponse.success == true) {
      return;
    }

    emit(state.copyWith(query: uiQuery, isLoading: true, errorMessage: ''));

    final lang = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';

    final result = await _mobileHomeUsecase.callgloabSearchApi({
      'q': apiQuery,
      'lang': lang,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            query: uiQuery,
            isLoading: false,
            globalSearchResponse: const GloableSearchApiResponse(),
            errorMessage: failure.message.isNotEmpty
                ? failure.message
                : 'Search failed',
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            query: uiQuery,
            isLoading: false,
            globalSearchResponse: response,
          ),
        );
      },
    );
  }

  Future<void> _onToggleWishlist(
    ToggleGlobalSearchWishlistEvent event,
    Emitter<GlobalSearchState> emit,
  ) async {
    emit(state.copyWith(isWishlistLoading: true, errorMessage: ''));

    final result = await _wishlistUsecase.toggleWishlist({
      'itemId': event.itemId,
      'itemModel': event.itemModel,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isWishlistLoading: false,
            errorMessage: failure.message,
          ),
        );
      },
      (response) {
        final action = (response['action'] ?? '').toString();
        final isAdded = action.toLowerCase() == 'added';

        emit(
          state.copyWith(
            isWishlistLoading: false,
            errorMessage: '',
            globalSearchResponse: _updateGlobalSearchWishlistStatus(
              itemId: event.itemId,
              isAdded: isAdded,
            ),
          ),
        );
      },
    );
  }

  GloableSearchApiResponse _updateGlobalSearchWishlistStatus({
    required String itemId,
    required bool isAdded,
  }) {
    final data = state.globalSearchResponse.data;

    final updatedGod = data.god.map((item) {
      final god = item.godData;
      if (god != null && god.id == itemId) {
        return item.copyWith(godData: god.copyWith(isWishlist: isAdded));
      }
      return item;
    }).toList();

    final updatedSant = data.sant.map((item) {
      final sant = item.santData;
      if (sant != null && (sant.id == itemId || item.contentId == itemId)) {
        return item.copyWith(
          santData: sant.copyWith(isAddedInWishlist: isAdded),
        );
      }
      return item;
    }).toList();

    final updatedTemple = data.temple.map((item) {
      final temple = item.templeData;
      if (temple != null && temple.id == itemId) {
        return item.copyWith(templeData: temple.copyWith(isWishlist: isAdded));
      }
      return item;
    }).toList();

    final updatedAarti = data.aartichalisa.map((item) {
      final aarti = item.aartiData;
      if (aarti != null && aarti.id == itemId) {
        return item.copyWith(
          aartiData: aarti.copyWith(isAddedInWishlist: isAdded),
        );
      }
      return item;
    }).toList();

    return state.globalSearchResponse.copyWith(
      data: data.copyWith(
        god: updatedGod,
        sant: updatedSant,
        temple: updatedTemple,
        aartichalisa: updatedAarti,
      ),
    );
  }

  void _onClearSearch(ClearSearchEvent event, Emitter<GlobalSearchState> emit) {
    emit(
      state.copyWith(
        query: '',
        isLoading: false,
        globalSearchResponse: const GloableSearchApiResponse(),
        errorMessage: '',
      ),
    );
  }
}
