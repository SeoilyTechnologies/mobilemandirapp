import 'package:bloc/bloc.dart';
import 'package:mandirapp/common/service_locator/setivelocator.dart';
import 'package:mandirapp/pages/god_detail/domain/usecase/god_detail_usecase.dart';

import '../../../../common/routes/exports.dart';
import '../../../wishlist/domain/usecase/wishlist_usecase.dart';
import 'god_details_event.dart';
import 'god_details_state.dart';

class GodDetailsBloc extends Bloc<GodDetailsEvent, GodDetailsState> {
  final GodDetailUsecase _godDetailUsecase = getIt<GodDetailUsecase>();
  final WishlistUsecase _wishlistUsecase = getIt<WishlistUsecase>();


  GodDetailsBloc() : super(GodDetailsState.initial()) {
    on<GetGodDetailById>(_onGetGodDetailById);
    on<GodWishlistvent>(_onTempleToggleWishlist);
  }


  Future<void> _onTempleToggleWishlist(
      GodWishlistvent event,
      Emitter<GodDetailsState> emit,
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
        emit(
          state.copyWith(
            isWishlistLoading: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
            (response) {
          final String action = response["action"] ?? "";
          final String message = response["message"] ?? "";

          final bool isAdded = action.toLowerCase() == "added";

          emit(
            state.copyWith(
              isWishlistLoading: false,
              wishlistMessage: message,

              godDetailApiResponse: state.godDetailApiResponse.copyWith(
                data: state.godDetailApiResponse.data.copyWith(
                  isWishlist: isAdded,
                ),
              ),
            ),
          );
        }
    );
  }


  Future<void> _onGetGodDetailById(
    GetGodDetailById event,
    Emitter<GodDetailsState> emit,
  ) async {
    // Both ObjectId (normal navigation) and full slug path (deep-link) go to
    // the same endpoint: god/god-by-id/<id>
    // Deep-link example: id = "god/shiv-ji"
    //   → URL: god/god-by-id/god/shiv-ji?lang=en
    // Normal example: id = "6a4cc5007d7a22cd3f447196"
    //   → URL: god/god-by-id/6a4cc5007d7a22cd3f447196?lang=en
    emit(state.copyWith(isLoading: true, apiError: '', apiSuccess: ''));

    final response = await _godDetailUsecase.callAPiGetGodDetails(event.id);

    response.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, apiError: failure.message));
      },
      (success) {
        emit(
          state.copyWith(
            isLoading: false,
            apiSuccess: success.message,
            godDetailApiResponse: success,
          ),
        );
      },
    );
  }
}

