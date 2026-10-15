import 'package:either_dart/either.dart';
import '../../../../../common/network/failure.dart';
import '../../data/entity/god_detail_api_response.dart';
import '../../data/entity/temple_detail/temple_detail_api_response.dart';
import '../repositery/god_detail_repositery.dart';

class GodDetailUsecase {
  final GodDetailRepositery _detailRepositery;

  GodDetailUsecase(this._detailRepositery);

  /// Get god detail by MongoDB ObjectId (normal navigation)
  Future<Either<Failure, GodDetailApiResponse>> callAPiGetGodDetails(
    String godId,
  ) async {
    return _detailRepositery.getGodDetails(godId);
  }

  /// Get god detail by slug (deep-link navigation: /go/god/shiv-ji)
  /// Requires backend endpoint: GET god/god-by-slug/:slug
  Future<Either<Failure, GodDetailApiResponse>> callGetGodDetailBySlug(
    String slug,
  ) async {
    return _detailRepositery.getGodDetailBySlug(slug);
  }

  /// Get temple detail by MongoDB ObjectId (normal navigation)
  Future<Either<Failure, TempleDetailApiResponse>> callGetTempleDetail(String templeId) async {
    return _detailRepositery.getTempleDetail(templeId);
  }

  /// Get temple detail by slug (deep-link navigation: /go/temple/vishnu-temple)
  /// Requires backend endpoint: GET temple/temple-by-slug/:slug
  Future<Either<Failure, TempleDetailApiResponse>> callGetTempleDetailBySlug(String slug) async {
    return _detailRepositery.getTempleDetailBySlug(slug);
  }
}
