import 'package:either_dart/either.dart';
import '../../../../common/network/failure.dart';
import '../../data/entity/pitru_paksha_detail_response.dart';
import '../../data/entity/pitru_paksha_response.dart';

abstract class PitruPakshaRepo {
  Future<Either<Failure, PitruPakshaResponse>> getPitruPakshaData(
    Map<String, dynamic> queryData,
  );

  Future<Either<Failure, PitruPakshaDetailResponse>> getPitruPakshaDetailData(
    Map<String, dynamic> queryData,
  );
}
