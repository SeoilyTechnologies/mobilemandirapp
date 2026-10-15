import 'dart:convert';
import 'dart:developer' as developer;
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../domain/repository/seva_history_repository.dart';
import '../entity/seva_history_response.dart';
import '../entity/seva_subscription_detail_response.dart';
import '../entity/seva_subscription_response.dart';

class SevaHistoryRepositoryImpl implements SevaHistoryRepository {
  final ApiServices _apiServices = getIt<ApiServices>();

  String get _currentLang {
    try {
      final code = getIt<SharedPrefs>().getString(AppConstant.localeKey);
      return code.isNotEmpty ? code : 'en';
    } catch (_) {
      return 'en';
    }
  }

  @override
  Future<Either<Failure, SevaHistoryResponse>> getSevaHistory(String status, int page, int limit) async {
    final String fullUrl = '${AppConstant.baseUrl}user/seva/my?lang=$_currentLang&status=$status&page=$page&limit=$limit';
    String token = '';
    try {
      token = getIt<SharedPrefs>().getString(AppConstant.token);
    } catch (_) {}

    try {
      _logCompleteCurlAndResponse(
        title: 'SEVA HISTORY (ONE TIME)',
        method: 'GET',
        fullUrl: fullUrl,
        token: token,
      );

      final String url = 'user/seva/my?lang=$_currentLang&status=$status&page=$page&limit=$limit';
      http.Response response = await _apiServices.get(
        url,
        useDefaultHeaders: true,
      );

      _logCompleteCurlAndResponse(
        title: 'SEVA HISTORY (ONE TIME)',
        method: 'GET',
        fullUrl: fullUrl,
        token: token,
        response: response,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          final result = SevaHistoryResponse.fromJson(responseData);
          return Right(result);
        } else {
          return Left(Failure(responseData['message'] ?? 'Failed to fetch data'));
        }
      } else {
        return Left(Failure('Error: ${response.statusCode}'));
      }
    } catch (e) {
      _logCompleteCurlAndResponse(
        title: 'SEVA HISTORY (ONE TIME)',
        method: 'GET',
        fullUrl: fullUrl,
        token: token,
        error: e,
      );
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SevaSubscriptionResponse>> getSubscriptionHistory(int page, int limit) async {
    final String fullUrl = '${AppConstant.baseUrl}user/seva/subscriptions/my?status=all&lang=$_currentLang&page=$page&limit=$limit';
    String token = '';
    try {
      token = getIt<SharedPrefs>().getString(AppConstant.token);
    } catch (_) {}

    try {
      _logCompleteCurlAndResponse(
        title: 'SEVA SUBSCRIPTION HISTORY',
        method: 'GET',
        fullUrl: fullUrl,
        token: token,
      );

      final String url = 'user/seva/subscriptions/my?status=all&lang=$_currentLang&page=$page&limit=$limit';
      http.Response response = await _apiServices.get(
        url,
        useDefaultHeaders: true,
      );

      _logCompleteCurlAndResponse(
        title: 'SEVA SUBSCRIPTION HISTORY',
        method: 'GET',
        fullUrl: fullUrl,
        token: token,
        response: response,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          final result = SevaSubscriptionResponse.fromJson(responseData);
          return Right(result);
        } else {
          return Left(Failure(responseData['message'] ?? 'Failed to fetch subscriptions'));
        }
      } else {
        return Left(Failure('Error: ${response.statusCode}'));
      }
    } catch (e) {
      _logCompleteCurlAndResponse(
        title: 'SEVA SUBSCRIPTION HISTORY',
        method: 'GET',
        fullUrl: fullUrl,
        token: token,
        error: e,
      );
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SevaSubscriptionDetailResponse>> getSubscriptionDetail(String subscriptionId) async {
    final String fullUrl = '${AppConstant.baseUrl}user/seva/subscriptions/$subscriptionId/detail?lang=$_currentLang';
    String token = '';
    try {
      token = getIt<SharedPrefs>().getString(AppConstant.token);
    } catch (_) {}

    try {
      _logCompleteCurlAndResponse(
        title: 'SEVA SUBSCRIPTION DETAIL',
        method: 'GET',
        fullUrl: fullUrl,
        token: token,
      );

      final String url = 'user/seva/subscriptions/$subscriptionId/detail?lang=$_currentLang';
      http.Response response = await _apiServices.get(
        url,
        useDefaultHeaders: true,
      );

      _logCompleteCurlAndResponse(
        title: 'SEVA SUBSCRIPTION DETAIL',
        method: 'GET',
        fullUrl: fullUrl,
        token: token,
        response: response,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          final result = SevaSubscriptionDetailResponse.fromJson(responseData);
          return Right(result);
        } else {
          return Left(Failure(responseData['message'] ?? 'Failed to fetch subscription detail'));
        }
      } else {
        return Left(Failure('Error: ${response.statusCode}'));
      }
    } catch (e) {
      _logCompleteCurlAndResponse(
        title: 'SEVA SUBSCRIPTION DETAIL',
        method: 'GET',
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
    http.Response? response,
    dynamic error,
  }) {
    final String authHeader =
        token.isNotEmpty ? 'Bearer $token' : 'Bearer <TOKEN>';

    final StringBuffer sb = StringBuffer();
    if (response == null && error == null) {
      sb.writeln('\n══════════════════════════════════════════════════════════════════');
      sb.writeln('🚀 [$title] cURL COMMAND (Ready to run):');
      sb.write("curl --location --request $method '$fullUrl'");
      sb.write(" \\\n  --header 'Authorization: $authHeader'");
      sb.write(" \\\n  --header 'Accept: application/json'");
      sb.write(" \\\n  --header 'Content-Type: application/json'");
      sb.writeln('\n══════════════════════════════════════════════════════════════════\n');
    }

    if (response != null) {
      sb.writeln('\n══════════════════════════════════════════════════════════════════');
      sb.writeln('📥 [$title] HTTP RESPONSE (${response.statusCode}):');
      sb.writeln('URL: $fullUrl');
      sb.writeln('STATUS CODE: ${response.statusCode}');
      sb.writeln('RESPONSE BODY:');
      try {
        final decoded = jsonDecode(response.body);
        final prettyJson = const JsonEncoder.withIndent('  ').convert(decoded);
        sb.writeln(prettyJson);
      } catch (_) {
        sb.writeln(response.body);
      }
      sb.writeln('══════════════════════════════════════════════════════════════════\n');
    }

    if (error != null) {
      sb.writeln('\n══════════════════════════════════════════════════════════════════');
      sb.writeln('❌ [$title] ERROR / EXCEPTION:');
      sb.writeln('$error');
      sb.writeln('══════════════════════════════════════════════════════════════════\n');
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

