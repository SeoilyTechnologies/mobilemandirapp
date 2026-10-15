

import 'package:either_dart/either.dart';
import 'package:mandirapp/pages/god_detail/data/entity/god_detail_api_response.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/temple_detail/temple_detail_api_response.dart';

abstract class GodDetailRepositery {
  Future<Either<Failure, GodDetailApiResponse>> getGodDetails(
   String godId
  );

  /// Slug-based lookup — calls backend `god/god-by-slug/:slug`
  Future<Either<Failure, GodDetailApiResponse>> getGodDetailBySlug(
   String slug
  );

  Future<Either<Failure, TempleDetailApiResponse>> getTempleDetail(String templeId);

  /// Slug-based lookup — calls backend `temple/temple-by-slug/:slug`
  Future<Either<Failure, TempleDetailApiResponse>> getTempleDetailBySlug(String slug);
}
