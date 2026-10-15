import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/goddata/god_data.dart';
import '../../data/entity/jaap_history/jaap_history_response.dart';
import '../../data/entity/new_god_list/naam_jaap_new_god_list_response.dart';


abstract class JaapRepo {

  /// 🔹 Get God List
  Future<Either<Failure, NaamJaapNewGodListResponse>> getGodData(
      Map<String, dynamic> dayData,
      );

  /// 🔥 Start Jaap Session
  Future<Either<Failure, String>> createJaapSession({
    required int targetCount,
    String? mantraId,
  });

  /// 🔁 Update Jaap Progress (INCREMENT)
  Future<Either<Failure, Map<String, dynamic>>> updateJaapProgress(  Map<String, dynamic> body,);

  Future<Either<Failure, JaapHistoryResponse>> getJaapHistory(  Map<String, dynamic> body);
  Future<Either<Failure, dynamic>> getJaapComplete(  Map<String, dynamic> body);

  // /// 📜 Jaap History
  // Future<Either<Failure, List<Map<String, dynamic>>>> getJaapHistory();
}