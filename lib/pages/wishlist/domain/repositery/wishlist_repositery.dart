import 'dart:io';

import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../../mobile_mandir_home/data/entity/home_foryou/home_for_your_api_response.dart';
import '../../data/entity/wishlist/wishlist_response.dart';

abstract class WishlistRepositery {
  Future<Either<Failure, WishlistResponse>> getWishlistData(
    Map<String, dynamic> wishlistData, Map<String, dynamic> queryData,
  );
  Future<Either<Failure, HomeForYouApiResponse>> getWishlistDataNew(
    Map<String, dynamic> queryData,
  );

  /// add/remove (toggle) ke liye
  Future<Either<Failure, Map<String, dynamic>>> toggleWishlist(
      Map<String, dynamic> wishlistData,
      );

}
