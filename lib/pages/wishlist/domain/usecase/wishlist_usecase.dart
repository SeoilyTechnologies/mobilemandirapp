import 'package:either_dart/either.dart';
import '../../../../../common/network/failure.dart';
import '../../../mobile_mandir_home/data/entity/home_foryou/home_for_your_api_response.dart';
import '../../data/entity/wishlist/wishlist_response.dart';
import '../repositery/wishlist_repositery.dart';

class WishlistUsecase {
  final WishlistRepositery _wishlistRepositery;

  WishlistUsecase(this._wishlistRepositery);

  Future<Either<Failure, WishlistResponse>> callGetWishListApi(
    Map<String, dynamic> penchangData,
    Map<String, dynamic> queryData,
  ) async {
    return _wishlistRepositery.getWishlistData(penchangData, queryData);
  }

  Future<Either<Failure, HomeForYouApiResponse>> callGetWishListNewApi(
    Map<String, dynamic> queryData,
  ) async {
    return _wishlistRepositery.getWishlistDataNew(queryData);
  }

  // Toggle wishlist (add/remove)
  Future<Either<Failure, Map<String, dynamic>>> toggleWishlist(
    Map<String, dynamic> wishlistData,
  ) async {
    return _wishlistRepositery.toggleWishlist(wishlistData);
  }
}
