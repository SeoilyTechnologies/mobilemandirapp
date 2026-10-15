import 'package:either_dart/either.dart';
import '../../../../common/network/failure.dart';
import '../../data/entity/pitru_paksha_detail_response.dart';
import '../../data/entity/pitru_paksha_response.dart';
import '../repo/pitru_paksha_repo.dart';

class PitruPakshaUsecase {
  final PitruPakshaRepo _repo;

  PitruPakshaUsecase(this._repo);

  Future<Either<Failure, PitruPakshaResponse>> call(
    Map<String, dynamic> queryData,
  ) {
    return _repo.getPitruPakshaData(queryData);
  }

  Future<Either<Failure, PitruPakshaResponse>> callGetPitruPakshaData(
    Map<String, dynamic> queryData,
  ) {
    return _repo.getPitruPakshaData(queryData);
  }

  Future<Either<Failure, PitruPakshaDetailResponse>> callGetPitruPakshaDetail(
    Map<String, dynamic> queryData,
  ) {
    return _repo.getPitruPakshaDetailData(queryData);
  }
}
