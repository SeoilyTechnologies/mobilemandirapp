import 'package:bloc/bloc.dart';
import 'package:mandirapp/common/service_locator/setivelocator.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../god_detail/domain/usecase/god_detail_usecase.dart';
import '../../../../wishlist/domain/usecase/wishlist_usecase.dart';
import 'temple_detail_new_event.dart';
import 'temple_detail_new_state.dart';

class TempleDetailNewBloc
    extends Bloc<TempleDetailNewEvent, TempleDetailNewState> {
  final GodDetailUsecase _godDetailUsecase = getIt<GodDetailUsecase>();
  final WishlistUsecase _wishlistUsecase = getIt<WishlistUsecase>();

  TempleDetailNewBloc() : super(TempleDetailNewState.initial()) {
    on<GetTempleDetailById>(_onGetTempleDetailById);
    on<TempleWishlistvent>(_onTempleToggleWishlist);
    on<RelatedTempleWishlistEvent>(_onRelatedTempleToggleWishlist);
  }

  Future<void> _onTempleToggleWishlist(
      TempleWishlistvent event,
      Emitter<TempleDetailNewState> emit,
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

              templeDetailApiResponse:
              state.templeDetailApiResponse.copyWith(
                data: state.templeDetailApiResponse.data.copyWith(
                  isWishlist: isAdded,
                ),
              ),
            ),
          );
        }
    );
  }


  Future<void> _onRelatedTempleToggleWishlist(
    RelatedTempleWishlistEvent event,
    Emitter<TempleDetailNewState> emit,
  ) async {
    emit(
      state.copyWith(
        isWishlistLoading: true,
        apiErrorMessage: '',
        wishlistMessage: '',
      ),
    );

    final result = await _wishlistUsecase.toggleWishlist({
      'itemId': event.itemId,
      'itemModel': event.itemModel,
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
        final action = (response['action'] ?? '').toString();
        final message = response['message'] ?? '';
        final isAdded = action.toLowerCase() == 'added';

        final updatedRelated =
            state.templeDetailApiResponse.data.relatedTemples.map((temple) {
          if (temple.id == event.itemId) {
            return temple.copyWith(isWishlist: isAdded);
          }
          return temple;
        }).toList();

        emit(
          state.copyWith(
            isWishlistLoading: false,
            wishlistMessage: message,
            templeDetailApiResponse: state.templeDetailApiResponse.copyWith(
              data: state.templeDetailApiResponse.data.copyWith(
                relatedTemples: updatedRelated,
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _onGetTempleDetailById(
    GetTempleDetailById event,
    Emitter<TempleDetailNewState> emit,
  ) async {
    // Both ObjectId (normal navigation) and slug (deep-link e.g. "dilwara-temple")
    // go to the same endpoint: temple/temple-by-id/<templeId>?lang=en
    emit(state.copyWith(isLoading: true, apiError: '', apiSuccess: ''));

    final response = await _godDetailUsecase.callGetTempleDetail(event.id);

    response.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, apiError: failure.message));
      },
      (success) {
        emit(
          state.copyWith(
            isLoading: false,
            apiSuccess: success.message,
            templeDetailApiResponse: success,
          ),
        );
      },
    );
  }
}
