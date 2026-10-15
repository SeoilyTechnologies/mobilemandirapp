import 'package:bloc/bloc.dart';
import 'package:mandirapp/pages/naamjaap/jaappage_one/domain/usecase/jaap_usecase.dart';
import '../../../../../common/analytics/facebook_analytics.dart';
import '../../../../../common/analytics/facebook_events.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../../../../aarti_chalisa_list/domain/usecase/aarti_chalisa_katha_usecase.dart';
import '../../../../auth/signin/data/entity/login_response.dart';
import '../../../../mobile_mandir_home/data/entity/home_foryou/home_for_your_api_response.dart';
import '../../../../mobile_mandir_home/domain/usecase/mobile_home_usecase.dart';
import '../../../../wishlist/data/entity/wishlist/wishlist_response.dart';
import '../../../../wishlist/domain/usecase/wishlist_usecase.dart';
import 'jaap_event.dart';
import 'jaap_state.dart';

class JaapBloc extends Bloc<JaapEvent, JaapState> {
  final SharedPrefs sharedPrefs = getIt<SharedPrefs>();
  final WishlistUsecase _wishlistUsecase = getIt<WishlistUsecase>();
  final JaapUsecase _jaapUsecase = getIt<JaapUsecase>();
  final MobileHomeUsecase _mobileHomeUsecase = getIt<MobileHomeUsecase>();
  final AartiChalisaKathaUsecase _aartiChalisaKathaRepositery =
      getIt<AartiChalisaKathaUsecase>();

  JaapBloc() : super(JaapState.initial()) {
    on<GetGodData>(_onGetGodData);
    on<GetMantra>(getAartiChalisabyType);
    on<SelectMantra>(_onSelectMantra);
    on<SelectJapCount>(_onSelectJapCount);
    on<ToggleWishlistJaapEvent>(_onToggleWishlist);
    on<CreateJaapSession>(_onCreateJaapSession);
    on<GetWishlistMantra>(_onGetWishlist);
  }

  Future<void> _onGetWishlist(
    GetWishlistMantra event,
    Emitter<JaapState> emit,
  ) async {
    _emitLoading(emit);

    final result = await _wishlistUsecase.callGetWishListNewApi({
      "type": "mantra",
      "lang": "en",
    });

    result.fold(
      (failure) => _emitFailure(emit, failure.message),
      (wishlistResponse) => _emitSuccess(
        emit,
        wishlistResponse,
        apiSuccessMessage: 'Wishlist loaded successfully',
      ),
    );
  }

  void _emitLoading(Emitter<JaapState> emit) {
    emit(
      state.copyWith(
        isLoading: true,
        isSuccess: false,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );
  }

  Future<void> _onCreateJaapSession(
    CreateJaapSession event,
    Emitter<JaapState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );

    final int targetCount = int.tryParse(state.selectedJapCount) ?? 108;

    final result = await _jaapUsecase.createJaapSession(
      targetCount: targetCount,
      mantraId: state.selectedMantraId.isNotEmpty
          ? state.selectedMantraId
          : null, // 👈 “I will do” case
    );

    result.fold(
      (failure) {
        print("CALLING HERE IN FAILURE===${failure.message}");
        emit(
          state.copyWith(
            isLoading: false,
            isServerError: true,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (sessionId) {
        print("HERE IS RUNNING RUNINGGSDJKDKJSDJKDSJKDSKJ $sessionId");
        print(sessionId);
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            jaapSessionId: sessionId,
            apiSuccessMessage: "Jaap session started",
          ),
        );
       try{
         FacebookAnalytics.logEvent(
           FacebookEvents.jaapStarted,
           parameters: {
             "god_name": "${state.selectedGodId}",
             "mantra_name": "${state.selectedMantraTitle}",
             "target_count": targetCount,
           },
         );
       }catch(e){}
      },
    );
  }

  Future<void> _onToggleWishlist(
    ToggleWishlistJaapEvent event,
    Emitter<JaapState> emit,
  ) async {
    emit(
      state.copyWith(
        isWishlistLoading: true,
        apiErrorMessage: '',
        wishlistMessage: '',
      ),
    );

    final result = await _wishlistUsecase.toggleWishlist({
      "itemId": event.itemId,
      "itemModel": event.itemModel,
    });

    result.fold(
      (failure) {
        //jab remove kr raha hu to ye chl raha hai
        print("WISHLIST FAILURE dsjkdsjkdsjsdjksdjkjsd");
        emit(
          state.copyWith(
            isWishlistLoading: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (result) {
        final String action = result['action'] ?? '';
        final String message = result['message'] ?? '';

        final bool isAdded = action == 'added';

        /// Mantra List Update
        final updatedMantras = state.aartiResponse.data.map((item) {
          if (item.id == event.itemId) {
            return item.copyWith(isAddedInWishlist: isAdded);
          }
          return item;
        }).toList();

        /// Wishlist Update
        List<HomeForYouItem> updatedWishlist = List<HomeForYouItem>.from(
          state.items.data,
        );

        if (!isAdded) {
          /// remove locally
          updatedWishlist.removeWhere((e) => e.contentId == event.itemId);
        }

        emit(
          state.copyWith(
            isWishlistLoading: false,
            wishlistMessage: message,
            aartiResponse: state.aartiResponse.copyWith(data: updatedMantras),
            items: state.items.copyWith(data: updatedWishlist),
          ),
        );

        add(GetWishlistMantra());
      },
    );
  }

  void _onSelectJapCount(SelectJapCount event, Emitter<JaapState> emit) {
    /// same count dobara tap → unselect
    if (state.selectedJapCount == event.japCount) {
      emit(state.copyWith(selectedJapCount: ''));
    } else {
      emit(state.copyWith(selectedJapCount: event.japCount));
    }
  }

  /// 👇 Separate function (clean & readable)
  void _onSelectMantra(SelectMantra event, Emitter<JaapState> emit) {
    emit(
      state.copyWith(
        selectedMantraId: event.mantraId,
        selectedMantraTitle: event.mantraTitle,
        mantraLyrics: event.mantra,
      ),
    );
  }

  /*Get Mantra*/
  /*Get Mantra*/
  Future<void> getAartiChalisabyType(
    GetMantra event,
    Emitter<JaapState> emit,
  ) async {
    final String selectedGodId = event.type;

    emit(
      state.copyWith(
        selectedGodId: selectedGodId,
        //isGodSelectedByUser: true,
        // <-- JaapState me add karna padega
        isLoading: true,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );

    final code = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';

    final Map<String, dynamic> body = {
      "type": "mantra",
      "lang": code,
      "godId": selectedGodId,
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
            selectedGodId: selectedGodId,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            selectedGodId: selectedGodId,
            aartiResponse: response,
          ),
        );
      },
    );
  }


  Future<void> _onGetGodData(GetGodData event, Emitter<JaapState> emit) async {
    // Show Loader
    emit(
      state.copyWith(
        isLoading: true,
        isServerError: false,
        isSuccess: false,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );

    final Map<String, dynamic> params = {};

    /// Search
    final String search = event.searchQuery?.trim() ?? "";

    if (search.isNotEmpty) {
      params["q"] = search;
    }

    final result = await _jaapUsecase.callGetGodDataApi(params);

    result.fold(
      // Failure
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isServerError: true,
            apiErrorMessage: failure.message ?? "Something went wrong",
          ),
        );
      },

      // Success
      (response) {
        /// No God Found
        if (response.data.gods.isEmpty) {
          emit(
            state.copyWith(
              isLoading: false,
              isSuccess: true,
              godResponse: response,
              selectedGodId: '',
              aartiResponse: const AartiResponse(),
            ),
          );
          return;
        }

        /// Always select first God
        final selectedGod = response.data.gods.firstWhere(
              (god) => god.id == event.selectedGodId,
          orElse: () => response.data.gods.first,
        );
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            godResponse: response,
            selectedGodId: selectedGod.id,
            apiSuccessMessage: 'Data loaded successfully',
          ),
        );

        add(GetMantra(selectedGod.id));
        add(const SelectMantra('', '', ''));
      },
    );
  }

  void _emitFailure(Emitter<JaapState> emit, String message) {
    emit(
      state.copyWith(
        isLoading: false,
        isSuccess: false,
        apiErrorMessage: message,
        apiSuccessMessage: '',

        items: HomeForYouApiResponse(),
      ),
    );
  }

  void _emitSuccess(
    Emitter<JaapState> emit,
    HomeForYouApiResponse wishlistResponse, {
    String apiSuccessMessage = '',
  }) {
    emit(
      state.copyWith(
        isLoading: false,
        isSuccess: true,
        apiErrorMessage: '',
        apiSuccessMessage: apiSuccessMessage,

        items: wishlistResponse,
      ),
    );
  }
}
