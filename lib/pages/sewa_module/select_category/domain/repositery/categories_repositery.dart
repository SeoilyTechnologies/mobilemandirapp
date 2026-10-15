
import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../../sewa_page/data/entity/sewa_personal_message/price_tax_api_response/price_tax_api_response.dart';
import '../../data/entity/categories_list_response.dart';

abstract class CategoriesRepositery{
  Future<Either<Failure,CategoriesListResponse>> getSericesBreedAndTotalCows(Map<String, dynamic> data);




}