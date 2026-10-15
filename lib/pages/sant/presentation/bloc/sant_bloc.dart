import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../../mobile_mandir_home/data/entity/sant/sant_detail/sant_detail_response.dart';
import '../../../mobile_mandir_home/data/entity/sant/sant_list/sant_list_response.dart';
import '../../../mobile_mandir_home/domain/usecase/mobile_home_usecase.dart';
import '../../../wishlist/domain/usecase/wishlist_usecase.dart';

part 'sant_event.dart';

part 'sant_state.dart';

part 'sant_bloc.freezed.dart';

class SantBloc extends Bloc<SantEvent, SantState> {
  final MobileHomeUsecase _mobileHomeUsecase = getIt<MobileHomeUsecase>();
  final WishlistUsecase _wishlistUsecase = getIt<WishlistUsecase>();
  final SharedPrefs sharedPrefs = getIt<SharedPrefs>();

  SantBloc() : super(SantState.initial()) {
    on<_Started>(_onStarted);
    on<_GetAllSantList>(_onGetAllSantList);
    on<_LetterSelected>(_onLetterSelected);
    on<_FilterByAlphabet>(_onFilterByAlphabet);
    on<_FilterByName>(_onFilterByName);
    on<_GetSantDetailById>(_onGetSantDetailById);
    on<_ToggleWishlist>(_onToggleWishlist);
    on<_GetAllPopularSantList>(_onGetAllPopularSantList);
  }
  Future<void> _onToggleWishlist(
      _ToggleWishlist event,
      Emitter<SantState> emit,
      ) async {
    final result = await _wishlistUsecase.toggleWishlist({
      'itemId': event.itemId,
      'itemModel': event.itemModel,
    });

    result.fold(
          (_) {},
          (response) {
        final action = (response['action'] ?? '').toString();
        final isAdded = action.toLowerCase() == 'added';

        /// Main Sant List
        final updatedSantList = state.santListResponse.data.map((item) {
          if (item.id == event.itemId) {
            return item.copyWith(
              isAddedInWishlist: isAdded,
            );
          }
          return item;
        }).toList();

        /// Related Sant List
        final updatedRelatedList =
        state.relatedsantListResponse.data.map((item) {
          if (item.id == event.itemId) {
            return item.copyWith(
              isAddedInWishlist: isAdded,
            );
          }
          return item;
        }).toList();

        emit(
          state.copyWith(
            santListResponse: state.santListResponse.copyWith(
              data: updatedSantList,
            ),
            relatedsantListResponse:
            state.relatedsantListResponse.copyWith(
              data: updatedRelatedList,
            ),
          ),
        );
      },
    );
  }
  // Future<void> _onToggleWishlist(
  //   _ToggleWishlist event,
  //   Emitter<SantState> emit,
  // ) async
  // {
  //   final result = await _wishlistUsecase.toggleWishlist({
  //     'itemId': event.itemId,
  //     'itemModel': event.itemModel,
  //   });
  //
  //   result.fold((_) {}, (response) {
  //     final action = (response['action'] ?? '').toString();
  //     final isAdded = action.toLowerCase() == 'added';
  //
  //     final updatedList = state.santListResponse.data.map((sant) {
  //       if (sant.id == event.itemId) {
  //         return sant.copyWith(isAddedInWishlist: isAdded);
  //       }
  //       return sant;
  //     }).toList();
  //
  //     emit(
  //       state.copyWith(
  //         santListResponse: state.santListResponse.copyWith(data: updatedList),
  //       ),
  //     );
  //   });
  // }

  /// Get single Sant detail by ID
  Future<void> _onGetSantDetailById(
    _GetSantDetailById event,
    Emitter<SantState> emit,
  ) async {
    emit(state.copyWith(isDetailLoading: true));
    final lang = sharedPrefs.getString(AppConstant.localeKey);
    final selectedLang = (lang != null && lang.isNotEmpty) ? lang : 'en';

    final result = await _mobileHomeUsecase.callGetSantDetailById({
      "id": event.santId,
      "lang": selectedLang,
    });

    result.fold(
      (failure) {
        emit(state.copyWith(isDetailLoading: false));
      },
      (response) {
        emit(
          state.copyWith(isDetailLoading: false, santDetailResponse: response),
        );
        add(SantEvent.getRelatedAllSantList(currentSantId: response.data.id));
      },
    );
  }

  /// App start
  Future<void> _onStarted(_Started event, Emitter<SantState> emit) async {
    add(const SantEvent.getAllSantList());
  }

  /// Get All Popular Sant Sant List
  Future<void> _onGetAllPopularSantList(
    _GetAllPopularSantList event,
    Emitter<SantState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isSuccess: false, selectedLetter: ""));

    final lang = sharedPrefs.getString(AppConstant.localeKey);
    final selectedLang = (lang != null && lang.isNotEmpty) ? lang : 'en';

    final result = await _mobileHomeUsecase.callGetSantList({
      "lang": selectedLang,
    });

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, isSuccess: false));
      },
      (response) {
        /// Current sant remove
        final filteredList = response.data
            .where((e) => e.id != event.currentSantId)
            .toList();

        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            relatedsantListResponse: response.copyWith(
              total: filteredList.length,
              data: filteredList,
            ),
          ),
        );
      },
    );
  }

  /// Get All Sant List
  Future<void> _onGetAllSantList(
    _GetAllSantList event,
    Emitter<SantState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isSuccess: false, selectedLetter: ""));
    final lang = sharedPrefs.getString(AppConstant.localeKey);
    final selectedLang = (lang != null && lang.isNotEmpty) ? lang : 'en';

    final result = await _mobileHomeUsecase.callGetSantList({
      "lang": selectedLang,
    });

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, isSuccess: false));
      },
      (response) {
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            santListResponse: response,
          ),
        );
      },
    );
  }

  /// Only UI selection (no API)
  void _onLetterSelected(_LetterSelected event, Emitter<SantState> emit) {
    emit(state.copyWith(selectedLetter: event.letter, errorMessage: ""));
  }

  /// Filter by Alphabet (A–Z)
  Future<void> _onFilterByAlphabet(
    _FilterByAlphabet event,
    Emitter<SantState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        isSuccess: false,
        selectedLetter: event.alphabet,
        errorMessage: "",
      ),
    );
    final lang = sharedPrefs.getString(AppConstant.localeKey);
    final selectedLang = (lang != null && lang.isNotEmpty) ? lang : 'en';

    final result = await _mobileHomeUsecase.callGetSantListFilterWithAlphabets({
      "alphabet": event.alphabet,
      "lang": selectedLang,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: false,
            errorMessage: "No Sant Found",
          ),
        );
      },
      (response) {
        final bool isEmpty = response.total == 0;

        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            santListResponse: response,
            errorMessage: isEmpty ? "No Sant Found" : "",
          ),
        );
      },
    );
  }

  /// Filter by Name (Search)
  Future<void> _onFilterByName(
    _FilterByName event,
    Emitter<SantState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        isSuccess: false,
        selectedLetter: "",
        errorMessage: "",
      ),
    );
    final lang = sharedPrefs.getString(AppConstant.localeKey);
    final selectedLang = (lang != null && lang.isNotEmpty) ? lang : 'en';

    final result = await _mobileHomeUsecase.callGetSantListFilter({
      "search": event.name,
      "lang": selectedLang,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: false,
            errorMessage: "No Sant Found",
          ),
        );
      },
      (response) {
        final bool isEmpty = response.total == 0;
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            errorMessage: isEmpty ? "No Sant Found" : "",
            santListResponse: response,
          ),
        );
      },
    );
  }
}
