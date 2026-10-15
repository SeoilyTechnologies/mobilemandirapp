import 'package:bloc/bloc.dart';
import 'package:mandirapp/pages/wishlist/presentation/bloc/wishlist_event.dart';
import 'package:mandirapp/pages/wishlist/presentation/bloc/wishlist_state.dart';

import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../data/entity/wishlist/wishlist_response.dart';
import '../../domain/usecase/wishlist_usecase.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final WishlistUsecase _wishlistUsecase = getIt<WishlistUsecase>();
  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();

  WishlistBloc() : super(WishlistState.initial()) {
    /// yahan pe alag–alag event register
    on<GetWishlist>(_onGetWishlist);
    on<ToggleWishlist>(_onToggleWishlist);
    on<ToggleWishlistAartiChalisaListNew>(_onToggleWishlistnew);
  }

  Future<void> _onToggleWishlistnew(
      ToggleWishlistAartiChalisaListNew event,
      Emitter<WishlistState> emit,
      ) async
  {
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
        emit(
          state.copyWith(
            isWishlistLoading: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
          (response) {
        final String action = response['action'] ?? '';
        final String message = response['message'] ?? '';

        final bool isAdded = action == 'added';

        // 🔥 LOCAL LIST UPDATE (LIKE mobile_home_bloc)
        final updatedList = state.items.data.map((item) {
          if (item.id == event.itemId) {
            return item.copyWith(isAddedInWishlist: isAdded);
          }
          return item;
        }).toList();

        final updatedResponse = state.items.copyWith(data: updatedList);

        emit(
          state.copyWith(
            isWishlistLoading: false,
            wishlistMessage: message,
            apiSuccessMessage: "",
            items: updatedResponse,
          ),
        );

      },
    );
  }

  /// -----------------------------
  /// HANDLER: Get Wishlist
  /// -----------------------------
  Future<void> _onGetWishlist(
      GetWishlist event,
      Emitter<WishlistState> emit,
      ) async {
    _emitLoading(emit);

    final lang = _sharedPrefs.getString(AppConstant.localeKey);
    final selectedLang = lang.isNotEmpty ? lang : 'en';

    final result = await _wishlistUsecase.callGetWishListApi({
      "user": event.userId,

    },{"type": "all", "lang": selectedLang});

    result.fold(
          (failure) => _emitFailure(emit, failure.message),
          (wishlistResponse) => _emitSuccess(
        emit,
        wishlistResponse,
        apiSuccessMessage: 'Wishlist loaded successfully',
      ),
    );
  }

  /// -----------------------------
  /// HANDLER: Toggle Wishlist (add/remove)
  /// -----------------------------
  Future<void> _onToggleWishlist(
      ToggleWishlist event,
      Emitter<WishlistState> emit,
      ) async {
    _emitLoading(emit);

    // 1) pehle toggle API hit karo
    final toggleResult = await _wishlistUsecase.toggleWishlist({
      "user": event.userId,
      "itemId": event.itemId,
      "itemModel": event.itemModel,
    });

    await toggleResult.fold(
          (failure) async {
        _emitFailure(emit, failure.message);
      },
          (successMsg) async {
        // 2) toggle ho gaya, ab updated wishlist reload kar lo
        add(GetWishlist(userId: ""));
      },
    );
  }

  /// -----------------------------
  /// HELPERS
  /// -----------------------------

  void _emitLoading(Emitter<WishlistState> emit) {
    emit(
      state.copyWith(
        isLoading: true,
        isSuccess: false,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );
  }

  void _emitFailure(Emitter<WishlistState> emit, String message) {
    emit(
      state.copyWith(
        isLoading: false,
        isSuccess: false,
        apiErrorMessage: message,
        apiSuccessMessage: '',
        count: 0,
        items: WishlistResponse(),
      ),
    );
  }

  void _emitSuccess(
      Emitter<WishlistState> emit,
      WishlistResponse wishlistResponse, {
        String apiSuccessMessage = '',
      }) {
    emit(
      state.copyWith(
        isLoading: false,
        isSuccess: true,
        apiErrorMessage: '',
        apiSuccessMessage: apiSuccessMessage,
        count: wishlistResponse.count,
        items: wishlistResponse,
      ),
    );
  }
}
