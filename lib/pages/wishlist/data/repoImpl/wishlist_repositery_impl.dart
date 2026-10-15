import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;

import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../mobile_mandir_home/data/entity/home_foryou/home_for_your_api_response.dart';
import '../../domain/repositery/wishlist_repositery.dart';
import '../entity/wishlist/wishlist_response.dart';

class WishlistRepositeryImpl implements WishlistRepositery {
  final ApiServices _apiServices = getIt<ApiServices>();

  WishlistRepositeryImpl();

  @override
  Future<Either<Failure, WishlistResponse>> getWishlistData(
    Map<String, dynamic> wishlistData,
    Map<String, dynamic> queryData,
  ) async {
    try {
      http.Response response = await _apiServices.getWithQuery(
        AppConstant.getWishList,
        queryParams: queryData,
        //  wishlistData,
        //  isJson: true,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        if (responseData['success'] == true) {
          final WishlistResponse wishlist = WishlistResponse.fromJson(
            responseData,
          );
          return Right(wishlist);
        } else {
          final message =
              responseData['message']?.toString() ?? 'Unknown error occurred';
          return Left(Failure(message));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, HomeForYouApiResponse>> getWishlistDataNew(
    Map<String, dynamic> queryData,
  ) async {
    try {
      http.Response response = await _apiServices.getWithQuery(
        AppConstant.getWishList,
        queryParams: queryData,
        //  wishlistData,
        //  isJson: true,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        if (responseData['success'] == true) {
          final HomeForYouApiResponse wishlist = HomeForYouApiResponse.fromJson(
            responseData,
          );
          return Right(wishlist);
        } else {
          final message =
              responseData['message']?.toString() ?? 'Unknown error occurred';
          return Left(Failure(message));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> toggleWishlist(
    Map<String, dynamic> wishlistData,
  ) async {
    try {
      final http.Response response = await _apiServices.post(
        AppConstant.addRemoveWishlist,
        wishlistData,
        isJson: true,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          // backend se "Item added / Item removed" jaisa message maan ke
          final msg = responseData['message']?.toString() ?? 'Wishlist updated';
          return Right(responseData);
        } else {
          final message =
              responseData['message']?.toString() ?? 'Unknown error occurred';
          return Left(Failure(message));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  String _extractErrorMessage(String responseBody) {
    try {
      final Map<String, dynamic> errorData = jsonDecode(responseBody);
      return errorData['message']?.toString() ?? 'Unknown error occurred';
    } catch (e) {
      return 'Something goes wrong';
    }
  }
}
