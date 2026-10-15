import 'dart:convert';
import 'dart:developer' as developer;
import 'package:either_dart/src/either.dart';
import 'package:http/http.dart' as http;
import 'package:mandirapp/pages/aarti_chalisa_list/data/entity/tithi_response/tithi_api_response.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../domain/repositery/aarti_chalisa_katha_repositery.dart';
import '../entity/aarti_model.dart';
import '../entity/festival_list/festival_list.dart';
import '../entity/god/god_data_list.dart';

class AartiChalisaKathaRepositeryImpl implements AartiChalisaKathaRepositery {
  final ApiServices _apiServices = getIt<ApiServices>();

  AartiChalisaKathaRepositeryImpl();

  @override
  Future<Either<Failure, AartiResponse>> getAartiChalisa(
    Map<String, dynamic> type,
  ) async {
    final Map<String, dynamic> requestBody = Map<String, dynamic>.from(type);
    final String endpoint;
    if (requestBody.containsKey('page') || requestBody.containsKey('limit')) {
      final int limit = requestBody['limit'] is int
          ? requestBody['limit']
          : int.tryParse("${requestBody['limit']}") ?? 10;
      final int page = requestBody['page'] is int
          ? requestBody['page']
          : int.tryParse("${requestBody['page']}") ?? 1;
      requestBody['limit'] = limit;
      requestBody['page'] = page;
      endpoint = "${AppConstant.getAartiChalisaWithType}?page=$page&limit=$limit";
    } else {
      endpoint = AppConstant.getAartiChalisaWithType;
    }
    final String fullUrl = "${AppConstant.baseUrl}$endpoint";
    String token = "";
    try {
      token = getIt<SharedPrefs>().getString(AppConstant.token);
    } catch (_) {}

    try {
      _logCompleteCurlAndResponse(
        title: "GET AARTI CHALISA LIST",
        method: "POST",
        fullUrl: fullUrl,
        token: token,
        body: requestBody,
      );

      http.Response response = await _apiServices.post(
        endpoint,
        requestBody,
        isJson: true,
        useDefaultHeaders: true,
      );

      _logCompleteCurlAndResponse(
        title: "GET AARTI CHALISA LIST",
        method: "POST",
        fullUrl: fullUrl,
        token: token,
        body: requestBody,
        response: response,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true || responseData['success'] == 1) {
          final AartiResponse user = AartiResponse.fromJson(responseData);
          return Right(user);
        } else {
          return Left(Failure(responseData['message'] ?? 'Failed to get data'));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      _logCompleteCurlAndResponse(
        title: "GET AARTI CHALISA LIST",
        method: "POST",
        fullUrl: fullUrl,
        token: token,
        body: requestBody,
        error: e,
      );
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, AartiResponse>> getHomeMantra(
    Map<String, dynamic> type,
  ) async {
    final Map<String, dynamic> requestBody = Map<String, dynamic>.from(type);
    final String endpoint = AppConstant.getAartiChalisaWithType;
    final String fullUrl = "${AppConstant.baseUrl}$endpoint";
    String token = "";
    try {
      token = getIt<SharedPrefs>().getString(AppConstant.token);
    } catch (_) {}

    try {
      _logCompleteCurlAndResponse(
        title: "GET HOME MANTRA",
        method: "POST",
        fullUrl: fullUrl,
        token: token,
        body: requestBody,
      );

      http.Response response = await _apiServices.post(
        endpoint,
        requestBody,
        isJson: true,
        useDefaultHeaders: true,
      );

      _logCompleteCurlAndResponse(
        title: "GET HOME MANTRA",
        method: "POST",
        fullUrl: fullUrl,
        token: token,
        body: requestBody,
        response: response,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true || responseData['success'] == 1) {
          final AartiResponse user = AartiResponse.fromJson(responseData);
          return Right(user);
        } else {
          return Left(Failure(responseData['message'] ?? 'Failed to get data'));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      _logCompleteCurlAndResponse(
        title: "GET HOME MANTRA",
        method: "POST",
        fullUrl: fullUrl,
        token: token,
        body: type,
        error: e,
      );
      return Left(Failure("$e"));
    }
  }


  @override
  Future<Either<Failure, AartiResponse>> getNextThreeDayAarti(
    Map<String, dynamic> type,
  ) async {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.getNextThreeDayAarti,
        type,
        isJson: true,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
       // print("CODE IS URINNG responseData $responseData");
        if (responseData['success']) {
          final AartiResponse user = AartiResponse.fromJson(responseData);
          return Right(user);
        } else {
          //print(responseData);
          return Left(Failure(responseData['success']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, AartiResponse>> getAartiById(
    Map<String, dynamic> type,
  ) async {
    final String fullUrl = "${AppConstant.baseUrl}${AppConstant.getAartiById}";
    String token = "";
    try {
      token = getIt<SharedPrefs>().getString(AppConstant.token);
    } catch (_) {}

    final Map<String, dynamic> requestBody = Map<String, dynamic>.from(type);
    if (requestBody.containsKey('aartiId')) {
      String idVal = requestBody['aartiId']?.toString().trim() ?? '';
      if (idVal.startsWith('/aarti/')) {
        idVal = idVal.substring(7);
      } else if (idVal.startsWith('aarti/')) {
        idVal = idVal.substring(6);
      } else if (idVal.startsWith('/')) {
        idVal = idVal.replaceFirst(RegExp(r'^/+'), '');
      }
      requestBody['aartiId'] = idVal;
    }

    try {
      // 1. Log full cURL command before sending request
      _logCompleteCurlAndResponse(
        title: "GET AARTI BY ID / SLUG",
        method: "POST",
        fullUrl: fullUrl,
        token: token,
        body: requestBody,
      );

      http.Response response = await _apiServices.post(
        AppConstant.getAartiById,
        requestBody,
        isJson: true,
        useDefaultHeaders: true,
      );

      // 2. Log full HTTP response body
      _logCompleteCurlAndResponse(
        title: "GET AARTI BY ID / SLUG",
        method: "POST",
        fullUrl: fullUrl,
        token: token,
        body: requestBody,
        response: response,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          final AartiResponse user = AartiResponse.fromJson(responseData);
          return Right(user);
        }
      }

      // Fallback: If not found on release server, attempt admin server
      if (!fullUrl.contains("admin.mobilemandirapp.com")) {
        final String adminUrl = "https://admin.mobilemandirapp.com/api/api/${AppConstant.getAartiById}";
        _logCompleteCurlAndResponse(
          title: "GET AARTI BY ID / SLUG (FALLBACK TO ADMIN)",
          method: "POST",
          fullUrl: adminUrl,
          token: token,
          body: requestBody,
        );

        final adminResponse = await http.post(
          Uri.parse(adminUrl),
          headers: {
            "Content-Type": "application/json",
            "accept": "application/json",
            if (token.isNotEmpty) "Authorization": "Bearer $token",
          },
          body: jsonEncode(requestBody),
        );

        _logCompleteCurlAndResponse(
          title: "GET AARTI BY ID / SLUG (FALLBACK TO ADMIN)",
          method: "POST",
          fullUrl: adminUrl,
          token: token,
          body: requestBody,
          response: adminResponse,
        );

        if (adminResponse.statusCode == 200) {
          final Map<String, dynamic> adminData = jsonDecode(adminResponse.body);
          if (adminData['success'] == true) {
            final AartiResponse user = AartiResponse.fromJson(adminData);
            return Right(user);
          }
        }
      }

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        return Left(Failure(responseData['message'] ?? responseData['success']?.toString() ?? "Failed"));
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      _logCompleteCurlAndResponse(
        title: "GET AARTI BY ID / SLUG",
        method: "POST",
        fullUrl: fullUrl,
        token: token,
        body: type,
        error: e,
      );
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, AartiResponse>> getGodWiseAartiChalisaMantra(
    Map<String, dynamic> type,
  ) async {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.getChalisaAartiGodWise,
        type,
        isJson: true,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        // print(
        //   " calling api for get filterd data using chalisaaarti/all-filter-chalisa-manta  $type ",
        // );
        final Map<String, dynamic> responseData = jsonDecode(response.body);
       // print("CODE IS URINNG responseData $responseData");
        if (responseData['success']) {
          final AartiResponse user = AartiResponse.fromJson(responseData);
          return Right(user);
        } else {
         // print(responseData);
          return Left(Failure(responseData['success']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
     // print("CODE IS URINNG CATHCKKK $e");
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, GodDataListResponse>> getGodData(
    Map<String, dynamic> type,
  ) async {
    try {
      http.Response response = await _apiServices.get(
        AppConstant.godListdata,
        // type,
        // isJson: true,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
     //   print("GIVING  RESPONSE IS THIS---${response.body}");
     //    print(
     //      "asdsdsdsdsds calling api for get filterd data using chalisaaarti/all-filter-chalisa-manta  $type ",
     //    );
        final Map<String, dynamic> responseData = jsonDecode(response.body);
       // print("CODE IS URINNG responseData $responseData");
        if (responseData['success']) {
          final GodDataListResponse user = GodDataListResponse.fromJson(
            responseData,
          );

       //   print(" response language type is   ${user.lang}");

          return Right(user);
        } else {
       //   print("GIVING ERROR RESPONSE IS THIS---${responseData}");
         // print(responseData);
          return Left(Failure(responseData['success']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, FestivalListResponse>> getFestivalData(
    Map<String, dynamic> type,
  ) async
  {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.festivalDataList,
        type,
        isJson: true,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final FestivalListResponse user = FestivalListResponse.fromJson(
            responseData,
          );
          return Right(user);
        } else {
          return Left(Failure(responseData['success']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }



  @override
  Future<Either<Failure, TithiApiResponse>> getTithiApiResponse(
      Map<String, dynamic> type,
      ) async
  {
    try {
      http.Response response = await _apiServices.get(
        AppConstant.getTithiLIst,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final TithiApiResponse user = TithiApiResponse.fromJson(
            responseData,
          );
          return Right(user);
        } else {
          return Left(Failure(responseData['success']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  String _extractErrorMessage(String responseBody) {
    try {
      final Map<String, dynamic> errorData = jsonDecode(responseBody);
      return errorData['message'] ?? 'Unknown error occurred';
    } catch (e) {
      return 'Something goes wrong';
    }
  }

  static void _logCompleteCurlAndResponse({
    required String title,
    required String method,
    required String fullUrl,
    required String token,
    Map<String, dynamic>? body,
    http.Response? response,
    dynamic error,
  }) {
    final String authHeader =
        token.isNotEmpty ? "Bearer $token" : "Bearer <TOKEN>";

    final StringBuffer sb = StringBuffer();
    if (response == null && error == null) {
      sb.writeln("\n══════════════════════════════════════════════════════════════════");
      sb.writeln("🚀 [$title] cURL COMMAND (Ready to run):");
      sb.write("curl --location --request $method '$fullUrl'");
      if (token.isNotEmpty) {
        sb.write(" \\\n  --header 'Authorization: $authHeader'");
      }
      sb.write(" \\\n  --header 'Accept: application/json'");
      if (body != null && body.isNotEmpty) {
        sb.write(" \\\n  --header 'Content-Type: application/json'");
        sb.write(" \\\n  --data-raw '${jsonEncode(body)}'");
      }
      sb.writeln("\n══════════════════════════════════════════════════════════════════\n");
    }

    if (response != null) {
      sb.writeln("\n══════════════════════════════════════════════════════════════════");
      sb.writeln("📥 [$title] HTTP RESPONSE (${response.statusCode}):");
      sb.writeln("URL: $fullUrl");
      sb.writeln("STATUS CODE: ${response.statusCode}");
      sb.writeln("RESPONSE BODY:");
      try {
        final decoded = jsonDecode(response.body);
        final prettyJson = const JsonEncoder.withIndent('  ').convert(decoded);
        sb.writeln(prettyJson);
      } catch (_) {
        sb.writeln(response.body);
      }
      sb.writeln("══════════════════════════════════════════════════════════════════\n");
    }

    if (error != null) {
      sb.writeln("\n══════════════════════════════════════════════════════════════════");
      sb.writeln("❌ [$title] ERROR / EXCEPTION:");
      sb.writeln("$error");
      sb.writeln("══════════════════════════════════════════════════════════════════\n");
    }

    final fullLog = sb.toString();

    // 1. Send complete untruncated string to developer log / DevTools

    // 2. Print chunk-by-chunk so terminal and logcat buffer never truncates
    const int maxChunk = 800;
    for (final line in fullLog.split('\n')) {
      if (line.length <= maxChunk) {
        // ignore: avoid_print
      } else {
        for (int i = 0; i < line.length; i += maxChunk) {
          final end =
              (i + maxChunk < line.length) ? i + maxChunk : line.length;
          // ignore: avoid_print
        }
      }
    }
  }
}
