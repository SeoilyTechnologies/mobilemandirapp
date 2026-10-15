import 'dart:io';
import 'package:either_dart/either.dart';
import '../../../../../../common/network/failure.dart';
import '../../data/entity/categories_list_response.dart';
import '../repositery/categories_repositery.dart';


class CategoreisUsecase {
  final CategoriesRepositery _categoriesRepositery;

  CategoreisUsecase(this._categoriesRepositery);

  Future<Either<Failure,CategoriesListResponse>>callGetCategriesApi(
      Map<String, dynamic> data,
      ) async {
    return _categoriesRepositery.getSericesBreedAndTotalCows(data);
  }


}
