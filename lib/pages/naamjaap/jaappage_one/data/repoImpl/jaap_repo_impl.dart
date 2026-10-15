import 'dart:convert';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;

import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../domain/repo/jaap_repo.dart';
import '../entity/goddata/god_data.dart';
import '../entity/jaap_history/jaap_history_response.dart';
import '../entity/new_god_list/naam_jaap_new_god_list_response.dart';

class JaapRepoImpl implements JaapRepo {
  final ApiServices _apiServices = getIt<ApiServices>();

  JaapRepoImpl();

  // ======================================================
  // 🔹 GET GOD DATA (already present)
  // ======================================================
  @override
  Future<Either<Failure, NaamJaapNewGodListResponse>> getGodData(
    Map<String, dynamic> type,
  ) async
  {
    try {
      http.Response response = await _apiServices.getWithQuery(
        AppConstant.getGodDataForNaamJaap,
        queryParams: type,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        if (responseData['success']) {
          NaamJaapNewGodListResponse naamJaapNewGodListResponse =
              NaamJaapNewGodListResponse.fromJson(responseData);
          return Right(naamJaapNewGodListResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        return Left(Failure(_extractErrorMessage(response.body)));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  // ======================================================
  // 🔥 CREATE JAAP SESSION
  // ======================================================
  @override
  Future<Either<Failure, String>> createJaapSession({
    required int targetCount,
    String? mantraId,
  }) async {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.createJaapSession, // "/api/jaap/create"
        {
          "targetCount": targetCount,
          if (mantraId != null && mantraId.isNotEmpty) "mantraId": mantraId,
        },
        useDefaultHeaders: true,
      );


      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        if (responseData['success']) {
          return Right(responseData['data']['sessionId']);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Failed to start jaap"),
          );
        }
      } else {
        return Left(Failure(_extractErrorMessage(response.body)));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  // ======================================================
  // 🔁 UPDATE JAAP PROGRESS (INCREMENT BASED)
  // ======================================================
  Future<Either<Failure, Map<String, dynamic>>> updateJaapProgress(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _apiServices.post(
        AppConstant.updateJaapProgress,
        body,
        isJson: true,
        useDefaultHeaders: true,
      );


      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);

        // 🔥 backend already guarantees success:true
        return Right(data);
      }

      return Left(Failure("Progress update failed (${response.statusCode})"));
    } catch (e) {
      return Left(Failure("Progress update failed"));
    }
  }

  // ======================================================
  // 🔁 COMPLETE JAAP PROGRESS (INCREMENT BASED)
  // ======================================================
  Future<Either<Failure, Map<String, dynamic>>> getJaapComplete(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _apiServices.post(
        AppConstant.getJaapComplete,
        body,
        isJson: true,
        useDefaultHeaders: true,
      );


      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);

        // 🔥 backend already guarantees success:true
        return Right(data);
      }

      return Left(Failure("Progress update failed (${response.statusCode})"));
    } catch (e) {
      return Left(Failure("Progress update failed"));
    }
  }

  // ======================================================
  // 🔁 GET JAAP HISTORY
  // ======================================================
  Future<Either<Failure, JaapHistoryResponse>> getJaapHistory(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _apiServices.getWithQuery(
        AppConstant.getJaapHistory,
        queryParams: body,
        useDefaultHeaders: true,
      );


      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // 🔥 backend already guarantees success:true
        if (responseData['success']) {
          final JaapHistoryResponse user = JaapHistoryResponse.fromJson(
            responseData,
          );
          return Right(user);
        } else {
          return Left(Failure(responseData['success']));
        }
      }

      return Left(Failure("Progress update failed (${response.statusCode})"));
    } catch (e) {
      return Left(Failure("Progress update failed"));
    }
  }

  // ======================================================
  // 🔸 COMMON ERROR PARSER
  // ======================================================
  String _extractErrorMessage(String responseBody) {
    try {
      final Map<String, dynamic> errorData = jsonDecode(responseBody);
      return errorData['message'] ?? 'Unknown error occurred';
    } catch (_) {
      return 'Something went wrong';
    }
  }
}
