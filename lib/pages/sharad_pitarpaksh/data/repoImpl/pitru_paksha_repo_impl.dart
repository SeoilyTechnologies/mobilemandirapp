import 'dart:convert';
import 'dart:developer' as developer;
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;
import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/network/api_services.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/network/failure.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../domain/repo/pitru_paksha_repo.dart';
import '../entity/pitru_paksha_detail_response.dart';
import '../entity/pitru_paksha_response.dart';

class PitruPakshaRepoImpl implements PitruPakshaRepo {
  final ApiServices _apiServices = getIt<ApiServices>();

  PitruPakshaRepoImpl();

  @override
  Future<Either<Failure, PitruPakshaResponse>> getPitruPakshaData(
    Map<String, dynamic> queryData,
  ) async {
    final uri = Uri.parse("${AppConstant.baseUrl}${AppConstant.pitruPaksha}").replace(
      queryParameters: queryData.map((k, v) => MapEntry(k, v.toString())),
    );
    final String fullUrl = uri.toString();

    String token = "";
    try {
      token = getIt<SharedPrefs>().getString(AppConstant.token);
    } catch (_) {}

    try {
      // 1. Log full cURL command before sending request
      _logCompleteCurlAndResponse(
        title: "PITRU PAKSHA",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
      );

      http.Response response = await _apiServices.getWithQuery(
        AppConstant.pitruPaksha,
        queryParams: queryData,
        useDefaultHeaders: false,
      );

      // 2. Log full HTTP response body
      _logCompleteCurlAndResponse(
        title: "PITRU PAKSHA",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
        response: response,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        if (responseData['success'] == true) {
          final PitruPakshaResponse pitruPakshaResponse =
              PitruPakshaResponse.fromJson(responseData);
          return Right(pitruPakshaResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Failed to fetch Pitru Paksha data"),
          );
        }
      } else {
        try {
          final Map<String, dynamic> errorBody = jsonDecode(response.body);
          return Left(Failure(errorBody['message'] ?? "Server error: ${response.statusCode}"));
        } catch (_) {
          return Left(Failure("Server error: ${response.statusCode}"));
        }
      }
    } catch (e) {
      _logCompleteCurlAndResponse(
        title: "PITRU PAKSHA",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
        error: e,
      );
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PitruPakshaDetailResponse>> getPitruPakshaDetailData(
    Map<String, dynamic> queryData,
  ) async {
    final uri = Uri.parse("${AppConstant.baseUrl}${AppConstant.pitruPakshaDetail}").replace(
      queryParameters: queryData.map((k, v) => MapEntry(k, v.toString())),
    );
    final String fullUrl = uri.toString();

    String token = "";
    try {
      token = getIt<SharedPrefs>().getString(AppConstant.token);
    } catch (_) {}

    try {
      // 1. Log full cURL command before sending request
      _logCompleteCurlAndResponse(
        title: "PITRU PAKSHA DETAIL",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
      );

      http.Response response = await _apiServices.getWithQuery(
        AppConstant.pitruPakshaDetail,
        queryParams: queryData,
        useDefaultHeaders: false,
      );

      // 2. Log full HTTP response body
      _logCompleteCurlAndResponse(
        title: "PITRU PAKSHA DETAIL",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
        response: response,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        if (responseData['success'] == true) {
          final PitruPakshaDetailResponse detailResponse =
              PitruPakshaDetailResponse.fromJson(responseData);
          return Right(detailResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Failed to fetch Pitru Paksha detail data"),
          );
        }
      } else {
        try {
          final Map<String, dynamic> errorBody = jsonDecode(response.body);
          return Left(Failure(errorBody['message'] ?? "Server error: ${response.statusCode}"));
        } catch (_) {
          return Left(Failure("Server error: ${response.statusCode}"));
        }
      }
    } catch (e) {
      _logCompleteCurlAndResponse(
        title: "PITRU PAKSHA DETAIL",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
        error: e,
      );
      return Left(Failure(e.toString()));
    }
  }

  /// Print complete cURL and response logs without truncation
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
