import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:mandirapp/pages/naamjaap/jaappage_one/data/entity/jaap_history/jaap_history_response.dart';

import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../data/entity/goddata/god_data.dart';
import '../../data/entity/new_god_list/naam_jaap_new_god_list_response.dart';
import '../repo/jaap_repo.dart';

class JaapUsecase {
  final JaapRepo _jaapRepo;

  JaapUsecase(this._jaapRepo);

  // ======================================================
  // 🔹 Get God List
  // ======================================================
  Future<Either<Failure, NaamJaapNewGodListResponse>> callGetGodDataApi(
      Map<String, dynamic> dayData,
      ) async {
    return _jaapRepo.getGodData(dayData);
  }

  // ======================================================
  // 🔥 Create Jaap Session
  // ======================================================
  Future<Either<Failure, String>> createJaapSession({
    required int targetCount,
    String? mantraId,
  }) async {
    return _jaapRepo.createJaapSession(
      targetCount: targetCount,
      mantraId: mantraId,
    );
  }

  // ======================================================
  // 🔁 Update Jaap Progress (INCREMENT BASED)
  // ======================================================
  Future<Either<Failure, Map<String, dynamic>>> updateJaapProgress(
      Map<String, dynamic> body,
      ) {
    return _jaapRepo.updateJaapProgress(body);
  }

  Future<Either<Failure, dynamic>> getJaapCompleteApi(
      Map<String, dynamic> body,
      ) {
    return _jaapRepo.getJaapComplete(body);
  }

  Future<Either<Failure, JaapHistoryResponse>> getJaapHistoryApiCall(
      Map<String, dynamic> body,
      ) {
    return _jaapRepo.getJaapHistory(body);
  }



  Future<void> flushPendingJaap({String? activeSessionId}) async {
    // final prefs = getIt<SharedPrefs>();
    // final String raw = prefs.getString(AppConstant.pendingJaap);
    //
    // if (raw.isEmpty) return;
    //
    // final data = jsonDecode(raw);
    //
    // if (activeSessionId != null &&
    //     data["sessionId"] != activeSessionId) return;
    //
    // final result = await updateJaapProgress({
    //   "sessionId": data["sessionId"],
    //   "incrementBy": (data["pendingCount"] as num).toInt(),
    //   "durationSeconds": (data["durationSeconds"] as num).toInt(),
    // });
    //
    // result.fold(
    //       (_) {},
    //       (_) async => await prefs.remove(AppConstant.pendingJaap),
    // );
  }


  Future<void> savePendingJaap({
    required String sessionId,
    required int incrementBy,
    required int durationSeconds,
  }) async {
    final prefs = getIt<SharedPrefs>();

    int totalPending = incrementBy;

    final String raw = prefs.getString(AppConstant.pendingJaap);
    if (raw.isNotEmpty) {
      final old = jsonDecode(raw);
      if (old["sessionId"] == sessionId) {
        totalPending += (old["pendingCount"] as num).toInt();
      }
    }

    await prefs.setString(
      AppConstant.pendingJaap,
      jsonEncode({
        "sessionId": sessionId,
        "pendingCount": totalPending,
        "durationSeconds": durationSeconds,
      }),
    );
  }



}
