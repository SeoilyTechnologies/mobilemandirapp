import 'package:bloc/bloc.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/data/entity/aarti_model.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_state.dart';
import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../../auth/signin/data/entity/login_response.dart';
import '../../../auth/signin/domain/usecase/login_usecase.dart';
import '../../../wishlist/domain/usecase/wishlist_usecase.dart';
import '../../domain/usecase/aarti_chalisa_katha_usecase.dart';
import 'aarti_chalisa_lsit_event.dart';

class AartiChalisaLsitBloc
    extends Bloc<AartiChalisaListEvent, AartiChalisaListState> {
  final SharedPrefs sharedPrefs = getIt<SharedPrefs>();
  final LoginUsecase _loginUsecase = getIt<LoginUsecase>();

  final WishlistUsecase _wishlistUsecase = getIt<WishlistUsecase>();

  final AartiChalisaKathaUsecase _aartiChalisaKathaRepositery =
      getIt<AartiChalisaKathaUsecase>();

  AartiChalisaLsitBloc() : super(AartiChalisaListState.initial()) {
    on<StoreType>(loadGoadName);
    on<GetAartiChalisaByType>(getAartiChalisabyType);
    on<LoadMoreAartiChalisa>(_onLoadMoreAartiChalisa);
    on<RelatedGetAartiChalisaByType>(getAartiChalisabyTypeRelated);
    on<GetAartiByAartiIdEvent>(getAartiByAartiId);
    on<CategorySelected>(_onCategorySelected); // ✅
    on<UpdateLyricsFontSize>(_onUpdateLyricsFontSize);
    on<UpdateLyricsColor>(_onUpdateLyricsColor);

    on<ResetFilters>(_onResetFilters);
    on<GetGodList>(_onGetGodList);
    on<GetFestivalList>(_onGetFestivalList);
    on<DaySelected>(_onDaySelected);

    on<GodSelected>(_onGodSelected);
    on<FestivalSelected>(_onFestivalSelected);
    on<AartiChalisaGuestSubmitted>(_onGuestLoginSubmitted);

    on<ToggleWishlistAartiChalisaList>(_onToggleWishlist);

    on<GetTithiList>(_onGetTithiList);

    on<TithiSelected>(_onTithiSelected);

    on<ClearFilters>(_onClearFilters);
  }


  Future<void> _onClearFilters(
      ClearFilters event,
      Emitter<AartiChalisaListState> emit,
      ) async {

    emit(
      state.copyWith(
        selectedGod: null,
        selectedFestival: null,
        selectedDay: null,
        selectedTithi: null,

        godName: "",
        godID: "",
        godDisplayImage: "",

        apiSuccessMessage: "",
      ),
    );

    add(GetAartiChalisaByType(state.type));
  }

  Future<void> _onGetTithiList(
      GetTithiList event,
      Emitter<AartiChalisaListState> emit,
      ) async
  {
    final code =
    sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : "en";

    final body = {
      "lang": code,
    };

    final result =
    await _aartiChalisaKathaRepositery.getTithiApiResponse(body);

    result.fold(
          (failure) {
        emit(
          state.copyWith(
            isServerError: true,
            apiErrorMessage: failure.message,
          ),
        );
      },
          (response) {
        emit(
          state.copyWith(
            tithiList: response.data,
          ),
        );
      },
    );
  }

  void _onTithiSelected(
      TithiSelected event,
      Emitter<AartiChalisaListState> emit,
      ) {
    final isSame =
        state.selectedTithi?.id == event.tithi.id;

    emit(
      state.copyWith(
        selectedTithi: isSame ? null : event.tithi,

        // Reset other filters
        selectedGod: null,
        selectedFestival: null,
        selectedDay: null,

        godName: "",
        godID: "",
        godDisplayImage: "",

        apiSuccessMessage: "",
      ),
    );

    add(GetAartiChalisaByType(state.type));
  }


  Future<void> _onGuestLoginSubmitted(
    AartiChalisaGuestSubmitted event,
    Emitter<AartiChalisaListState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          //  isGuestButtonClick:true,
          isLoading: true,
          //  validationErrorMessage: "",
          apiErrorMessage: "",
          isServerError: false,
          isSuccess: false,
          apiSuccessMessage: "",
          loginResponse: LoginResponse(),
        ),
      );

      /// 🔹 Guest API (no body required usually)
      final response = await _loginUsecase.guestLoginApiCall({});

      response.fold(
        (err) {
          emit(
            state.copyWith(
              isLoading: false,
              isServerError: true,
              isGuestLoginDone: true,
              apiErrorMessage: err.message,
              isSuccess: false,
            ),
          );
        },
        (success) {
          emit(
            state.copyWith(
              isLoading: false,
              isServerError: false,
              loginResponse: success,
              isSuccess: true,
              apiSuccessMessage: success.message,
              // validationErrorMessage: "",
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          isServerError: true,
          apiErrorMessage: e.toString(),
          isSuccess: false,
        ),
      );
    }
  }

  Future<void> _onToggleWishlist(
    ToggleWishlistAartiChalisaList event,
    Emitter<AartiChalisaListState> emit,
  ) async {
    bool currentStatus = false;
    final matching = state.aartiResponse.data.where((i) => i.id == event.itemId);
    if (matching.isNotEmpty) {
      currentStatus = matching.first.isAddedInWishlist;
    } else {
      final matchingRelated = state.relatedaartiResponse.data.where((i) => i.id == event.itemId);
      if (matchingRelated.isNotEmpty) {
        currentStatus = matchingRelated.first.isAddedInWishlist;
      }
    }

    final bool optimisticStatus = !currentStatus;

    List<AartiModel> updateAartiList(List<AartiModel> list, String id, bool status) {
      return list.map((item) {
        if (item.id == id) {
          return item.copyWith(isAddedInWishlist: status);
        }
        return item;
      }).toList();
    }

    emit(
      state.copyWith(
        isWishlistLoading: true,
        apiErrorMessage: '',
        wishlistMessage: '',
        aartiResponse: state.aartiResponse.copyWith(
          data: updateAartiList(state.aartiResponse.data, event.itemId, optimisticStatus),
        ),
        relatedaartiResponse: state.relatedaartiResponse.copyWith(
          data: updateAartiList(state.relatedaartiResponse.data, event.itemId, optimisticStatus),
        ),
        aartiResponseGetByGodId: state.aartiResponseGetByGodId.copyWith(
          data: updateAartiList(state.aartiResponseGetByGodId.data, event.itemId, optimisticStatus),
        ),
        aartiResponseGetAartiById: state.aartiResponseGetAartiById.copyWith(
          data: updateAartiList(state.aartiResponseGetAartiById.data, event.itemId, optimisticStatus),
        ),
        mantraHomePageResponse: state.mantraHomePageResponse.copyWith(
          data: updateAartiList(state.mantraHomePageResponse.data, event.itemId, optimisticStatus),
        ),
      ),
    );

    final result = await _wishlistUsecase.toggleWishlist({
      "itemId": event.itemId,
      "itemModel": event.itemModel,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isWishlistLoading: false,
            apiErrorMessage: failure.message,
            aartiResponse: state.aartiResponse.copyWith(
              data: updateAartiList(state.aartiResponse.data, event.itemId, currentStatus),
            ),
            relatedaartiResponse: state.relatedaartiResponse.copyWith(
              data: updateAartiList(state.relatedaartiResponse.data, event.itemId, currentStatus),
            ),
            aartiResponseGetByGodId: state.aartiResponseGetByGodId.copyWith(
              data: updateAartiList(state.aartiResponseGetByGodId.data, event.itemId, currentStatus),
            ),
            aartiResponseGetAartiById: state.aartiResponseGetAartiById.copyWith(
              data: updateAartiList(state.aartiResponseGetAartiById.data, event.itemId, currentStatus),
            ),
            mantraHomePageResponse: state.mantraHomePageResponse.copyWith(
              data: updateAartiList(state.mantraHomePageResponse.data, event.itemId, currentStatus),
            ),
          ),
        );
      },
      (response) {
        final String action = (response['action'] ?? response['data']?['action'] ?? '').toString();
        final String message = (response['message'] ?? '').toString();

        bool isAdded;
        final String lowerAction = action.toLowerCase();
        final String lowerMsg = message.toLowerCase();

        if (lowerAction == 'added' || lowerAction == 'add') {
          isAdded = true;
        } else if (lowerAction == 'removed' || lowerAction == 'remove') {
          isAdded = false;
        } else if (lowerMsg.contains('added') || lowerMsg.contains('add')) {
          isAdded = true;
        } else if (lowerMsg.contains('removed') || lowerMsg.contains('remove')) {
          isAdded = false;
        } else {
          isAdded = optimisticStatus;
        }

        emit(
          state.copyWith(
            isWishlistLoading: false,
            wishlistMessage: message,
            apiSuccessMessage: "",
            aartiResponse: state.aartiResponse.copyWith(
              data: updateAartiList(state.aartiResponse.data, event.itemId, isAdded),
            ),
            relatedaartiResponse: state.relatedaartiResponse.copyWith(
              data: updateAartiList(state.relatedaartiResponse.data, event.itemId, isAdded),
            ),
            aartiResponseGetByGodId: state.aartiResponseGetAartiById.copyWith(
              data: updateAartiList(state.aartiResponseGetByGodId.data, event.itemId, isAdded),
            ),
            aartiResponseGetAartiById: state.aartiResponseGetAartiById.copyWith(
              data: updateAartiList(state.aartiResponseGetAartiById.data, event.itemId, isAdded),
            ),
            mantraHomePageResponse: state.mantraHomePageResponse.copyWith(
              data: updateAartiList(state.mantraHomePageResponse.data, event.itemId, isAdded),
            ),
          ),
        );
      },
    );
  }

  void _onResetFilters(
    ResetFilters event,
    Emitter<AartiChalisaListState> emit,
  ) {
    emit(
      state.copyWith(
        selectedGod: null,
        selectedFestival: null,
        selectedDay: null,

        godName: '',
        godID: '',
        godDisplayImage: '',
        apiSuccessMessage: '',
      ),
    );

    // 🔥 re-fetch without any filters
    add(GetAartiChalisaByType(state.type));
  }

  void _onDaySelected(
      DaySelected event,
      Emitter<AartiChalisaListState> emit,
      ) {
    final isSame = state.selectedDay == event.day;

    emit(
      state.copyWith(
        selectedDay: isSame ? null : event.day,

        // Reset other filters
        selectedGod: null,
        selectedFestival: null,
        selectedTithi: null,

        godName: "",
        godID: "",
        godDisplayImage: "",

        apiSuccessMessage: "",
      ),
    );

    add(GetAartiChalisaByType(state.type));
  }
  // void _onDaySelected(DaySelected event, Emitter<AartiChalisaListState> emit) {
  //   final isSame = state.selectedDay == event.day;
  //
  //   emit(
  //     state.copyWith(
  //       selectedDay: isSame ? null : event.day,
  //       apiSuccessMessage: "",
  //     ),
  //   );
  //
  //   add(GetAartiChalisaByType(state.type));
  // }

  Future<void> _onGetGodList(
    GetGodList event,
    Emitter<AartiChalisaListState> emit,
  ) async {
    final code = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';

    final body = {"lang": code};

    final result = await _aartiChalisaKathaRepositery.callGodDataAPi(body);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isServerError: true,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            godList: response.data, // ✅ IMPORTANT
          ),
        );
      },
    );
  }

  Future<void> _onGetFestivalList(
    GetFestivalList event,
    Emitter<AartiChalisaListState> emit,
  ) async {
    final code = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';

    final body = {"lang": code};

    final result = await _aartiChalisaKathaRepositery.getFesttivalData(body);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isServerError: true,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        emit(state.copyWith(festivalList: response.data));
      },
    );
  }

  void _onGodSelected(
      GodSelected event,
      Emitter<AartiChalisaListState> emit,
      ) {
    final isSame =
        state.selectedGod != null &&
            state.selectedGod!.id == event.god.id;

    emit(
      state.copyWith(
        selectedGod: isSame ? null : event.god,

        // Reset other filters
        selectedFestival: null,
        selectedDay: null,
        selectedTithi: null,

        godName: isSame ? '' : event.god.god_name,
        godID: isSame ? '' : event.god.id,
        godDisplayImage: isSame ? '' : event.god.thumbnail,

        apiSuccessMessage: "",
      ),
    );

    add(GetAartiChalisaByType(state.type));
  }
  // void _onGodSelected(GodSelected event, Emitter<AartiChalisaListState> emit) {
  //   final isSame =
  //       state.selectedGod != null && state.selectedGod!.id == event.god.id;
  //
  //   emit(
  //     state.copyWith(
  //       selectedGod: isSame ? null : event.god,
  //       godName: isSame ? '' : event.god.god_name,
  //       godID: isSame ? '' : event.god.id,
  //       godDisplayImage: isSame ? '' : event.god.thumbnail,
  //       apiSuccessMessage: "",
  //     ),
  //   );
  //
  //   add(GetAartiChalisaByType(state.type));
  // }

  void _onFestivalSelected(
      FestivalSelected event,
      Emitter<AartiChalisaListState> emit,
      ) {
    final isSame =
        state.selectedFestival?.title == event.festival.title;

    emit(
      state.copyWith(
        selectedFestival: isSame ? null : event.festival,

        // Reset other filters
        selectedGod: null,
        selectedDay: null,
        selectedTithi: null,

        godName: "",
        godID: "",
        godDisplayImage: "",

        apiSuccessMessage: "",
      ),
    );

    add(GetAartiChalisaByType(state.type));
  }
  // void _onFestivalSelected(
  //   FestivalSelected event,
  //   Emitter<AartiChalisaListState> emit,
  // ) {
  //   final isSame = state.selectedFestival?.title == event.festival.title;
  //
  //   emit(
  //     state.copyWith(
  //       selectedFestival: isSame ? null : event.festival,
  //       apiSuccessMessage: "",
  //     ),
  //   );
  //
  //   add(GetAartiChalisaByType(state.type));
  // }

  void _onUpdateLyricsFontSize(
    UpdateLyricsFontSize event,
    Emitter<AartiChalisaListState> emit,
  ) {
    emit(state.copyWith(lyricsFontSize: event.fontSize, apiSuccessMessage: ""));
  }

  void _onUpdateLyricsColor(
    UpdateLyricsColor event,
    Emitter<AartiChalisaListState> emit,
  ) {
    emit(
      state.copyWith(lyricsColorValue: event.colorValue, apiSuccessMessage: ""),
    );
  }

  void _onCategorySelected(
    CategorySelected event,
    Emitter<AartiChalisaListState> emit,
  ) {
    emit(
      state.copyWith(
        selectedCategoryIndex: event.index,
        type: event.type,
        apiSuccessMessage: "",
      ),
    );

    add(GetAartiChalisaByType(event.type)); // ✅ API CALL
  }

  Future<void> loadGoadName(
    StoreType event,
    Emitter<AartiChalisaListState> emit,
  ) async {
    emit(state.copyWith(type: event.type, apiSuccessMessage: ""));
  }

  Future<void> getAartiChalisabyType(
    GetAartiChalisaByType event,
    Emitter<AartiChalisaListState> emit,
  ) async
  {
    emit(
      state.copyWith(
        type: event.type,
        isLoading: true,
        isSuccess: false,
        isServerError: false,
        apiErrorMessage: '',
        apiSuccessMessage: '',
        currentPage: 1,
        hasMoreData: true,
        isLoadingMore: false,
      ),
    );
    final code = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';
    final Map<String, dynamic> body = {
      "type": "${event.type}",
      "lang": "$code",
      "limit": 10,
      "page": 1,
    };

    /// 🔥 OPTIONAL FILTERS
    if (state.selectedGod != null) {
      body["godId"] = state.selectedGod!.id;
    }

    if (state.selectedFestival != null) {
      body["festival"] = state.selectedFestival!.slug;
    }

    if (state.selectedDay != null && state.selectedDay!.isNotEmpty) {
      body["day"] = state.selectedDay;
    }

    if (state.selectedTithi != null) {
      body["tithi"] = state.selectedTithi!.id;
    }

    final result = await _aartiChalisaKathaRepositery.getAartiChalisaByTYpe(
      body,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isServerError: true,
            apiErrorMessage: failure.message,
            aartiResponse: AartiResponse(),
            apiSuccessMessage: "",
            hasMoreData: false,
          ),
        );
      },
      (response) {
        final bool isEmpty = response.data.isEmpty && response.count == 0;
        final int page = response.pagination.page > 0 ? response.pagination.page : 1;
        final bool hasMore = response.pagination.totalPages > 0
            ? (page < response.pagination.totalPages)
            : (response.data.length >= 10);

        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            isServerError: false,
            aartiResponse: response,
            apiSuccessMessage: isEmpty ? "No Data Found For This" : "",
            currentPage: page,
            hasMoreData: hasMore,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreAartiChalisa(
    LoadMoreAartiChalisa event,
    Emitter<AartiChalisaListState> emit,
  ) async {
    if (state.isLoading || state.isLoadingMore || !state.hasMoreData) {
      return;
    }

    emit(state.copyWith(isLoadingMore: true));

    final int nextPage = state.currentPage + 1;
    final code = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';

    final Map<String, dynamic> body = {
      "type": state.type.isEmpty ? "aarti" : state.type,
      "lang": "$code",
      "limit": 10,
      "page": nextPage,
    };

    if (state.selectedGod != null) {
      body["godId"] = state.selectedGod!.id;
    }
    if (state.selectedFestival != null) {
      body["festival"] = state.selectedFestival!.slug;
    }
    if (state.selectedDay != null && state.selectedDay!.isNotEmpty) {
      body["day"] = state.selectedDay;
    }
    if (state.selectedTithi != null) {
      body["tithi"] = state.selectedTithi!.id;
    }

    final result = await _aartiChalisaKathaRepositery.getAartiChalisaByTYpe(
      body,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingMore: false,
          ),
        );
      },
      (response) {
        final newItems = response.data;
        if (newItems.isEmpty) {
          emit(
            state.copyWith(
              isLoadingMore: false,
              hasMoreData: false,
            ),
          );
          return;
        }

        final existingIds = state.aartiResponse.data.map((e) => e.id).toSet();
        final filteredNewItems =
            newItems.where((e) => !existingIds.contains(e.id)).toList();
        final combinedList = [...state.aartiResponse.data, ...filteredNewItems];

        final int currentPage =
            response.pagination.page > 0 ? response.pagination.page : nextPage;
        final bool hasMore = response.pagination.totalPages > 0
            ? (currentPage < response.pagination.totalPages)
            : (newItems.length >= 10);

        emit(
          state.copyWith(
            isLoadingMore: false,
            currentPage: currentPage,
            hasMoreData: hasMore,
            aartiResponse: state.aartiResponse.copyWith(
              data: combinedList,
              pagination: response.pagination,
              count: response.pagination.total > 0
                  ? response.pagination.total
                  : combinedList.length,
            ),
          ),
        );
      },
    );
  }

  Future<void> getAartiChalisabyTypeRelated(
      RelatedGetAartiChalisaByType event,
      Emitter<AartiChalisaListState> emit,
      ) async
  {
    emit(
      state.copyWith(
        type: event.type,
        isLoading: true,
        isSuccess: false,
        isServerError: false,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );
    final code = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';
    final Map<String, dynamic> body = {
      "type": "${event.type}",
      "lang": "$code",
      "limit": 10,
    };


    final result = await _aartiChalisaKathaRepositery.getAartiChalisaByTYpe(
      body,
    );

    result.fold(
          (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isServerError: true,
            apiErrorMessage: failure.message,
            aartiResponse: AartiResponse(),
            apiSuccessMessage: "",
          ),
        );
      },
          (response) {
        final bool isEmpty = response.count == 0;
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            isServerError: false,
            relatedaartiResponse: response,
            // errorMessage: isEmpty ? "No Sant Found" : "",
            apiSuccessMessage: isEmpty ? "No Data Found For This" : "",
          ),
        );
      },
    );
  }

  Future<void> getAartiByAartiId(
    GetAartiByAartiIdEvent event,
    Emitter<AartiChalisaListState> emit,
  ) async
  {
    emit(
      state.copyWith(
        // isLoading: true,
        isSuccess: false,
        isServerError: false,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );

    final code = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';
    final Map<String, dynamic> body = {
      "aartiId": "${event.aartiIdEvent}",
      "lang": "$code",
    };

    final result = await _aartiChalisaKathaRepositery.callgetAartiById(body);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isServerError: true,
            apiErrorMessage: failure.message,
            aartiResponseGetAartiById: AartiResponse(),
            apiSuccessMessage: "",
          ),
        );
      },
      (response) {
        final bool isEmpty = response.count == 0;
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            isServerError: false,
            aartiResponseGetAartiById: response,
            // errorMessage: isEmpty ? "No Sant Found" : "",
            apiSuccessMessage: isEmpty ? "No Data Found For This" : "",
          ),
        );
      },
    );
  }
}
