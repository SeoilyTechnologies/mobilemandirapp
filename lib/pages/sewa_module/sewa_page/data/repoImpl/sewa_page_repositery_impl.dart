import 'dart:convert';
import 'dart:developer' as developer;
import 'package:either_dart/src/either.dart';
import 'package:http/http.dart' as http;
import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../domain/repositery/sewa_page_repositery.dart';
import '../entity/order_save/order_save_api_response.dart';
import '../entity/seva_status/seva_status_api_response.dart';
import '../entity/sewa_page/sewa_page_api_response.dart';
import '../entity/sewa_personal_message/price_tax_api_response/price_tax_api_response.dart';
import '../entity/thankyou_sewa/thankyou_seva_api_response.dart';
import '../entity/schedule_preview/schedule_preview_api_response.dart';
import '../entity/video_proof/video_proof_api_response.dart';

class SewaPageRepositeryImpl implements SewaPageRepositery {
  final ApiServices _apiServices = getIt<ApiServices>();

  SewaPageRepositeryImpl();

  String get _currentLang {
    try {
      final code = getIt<SharedPrefs>().getString(AppConstant.localeKey);
      return code.isNotEmpty ? code : 'en';
    } catch (_) {
      return 'en';
    }
  }

  @override
  Future<Either<Failure, SchedulePreviewApiResponse>> getSchedulePreview(
    Map<String, dynamic> queryParams,
  ) async {
    try {
      final Map<String, dynamic> params = Map<String, dynamic>.from(queryParams);
      params['lang'] ??= _currentLang;

      http.Response response = await _apiServices.getWithQuery(
        AppConstant.getSchedulePreview,
        queryParams: params,
        useDefaultHeaders: true,
      );


      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          final SchedulePreviewApiResponse schedulePreviewApiResponse =
              SchedulePreviewApiResponse.fromJson(responseData);
          return Right(schedulePreviewApiResponse);
        } else {
          return Left(Failure(responseData['message'] ?? 'Failed to fetch schedule preview'));
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
  Future<Either<Failure, SewaPageApiResponse>> getSewaPriceList(
    String categoryId,
  ) async
  {
    try {

      http.Response response = await _apiServices.get(
        "${AppConstant.getSewaPriceList}/$categoryId?lang=$_currentLang",
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final SewaPageApiResponse sewaPageApiResponse =
              SewaPageApiResponse.fromJson(responseData);
          return Right(sewaPageApiResponse);
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
  Future<Either<Failure, PriceTaxApiResponse>> getTax(String price) async {
    try {

      http.Response response = await _apiServices.get(
        "${AppConstant.getPricingTax}?amount=$price&lang=$_currentLang",
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final PriceTaxApiResponse sewaPageApiResponse =
              PriceTaxApiResponse.fromJson(responseData);
          return Right(sewaPageApiResponse);
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
  Future<Either<Failure, OrderSaveApiResponse>> saveOrder(
    Map<String, dynamic> data,
  ) async
  {
    try {
      final Map<String, dynamic> requestData = Map<String, dynamic>.from(data);
      requestData['lang'] ??= _currentLang;


      http.Response response = await _apiServices.post(
        "${AppConstant.sevaOrderBook}?lang=$_currentLang",
        requestData,
        useDefaultHeaders: true,
        isJson: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final OrderSaveApiResponse orderSaveApiResponse =
              OrderSaveApiResponse.fromJson(responseData);
          return Right(orderSaveApiResponse);
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
  Future<Either<Failure, OrderSaveApiResponse>> saveSubscription(
    Map<String, dynamic> data,
  ) async {
    try {
      final Map<String, dynamic> requestData = Map<String, dynamic>.from(data);
      requestData['lang'] ??= _currentLang;


      http.Response response = await _apiServices.post(
        "${AppConstant.sevaSubscriptionBook}?lang=$_currentLang",
        requestData,
        useDefaultHeaders: true,
        isJson: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final Map<String, dynamic> dataMap =
              Map<String, dynamic>.from(responseData['data'] ?? {});
          final String subId =
              dataMap['subscriptionId'] ?? dataMap['_id'] ?? '';
          final Map<String, dynamic> razorpayMap =
              Map<String, dynamic>.from(dataMap['razorpay'] ?? {});
          final String rzpSubId = razorpayMap['subscriptionId'] ?? '';

          dataMap['sevaId'] = subId;
          if (rzpSubId.isNotEmpty) {
            razorpayMap['orderId'] = rzpSubId;
          }
          dataMap['razorpay'] = razorpayMap;

          final Map<String, dynamic> normalizedResponse =
              Map<String, dynamic>.from(responseData);
          normalizedResponse['data'] = dataMap;

          final OrderSaveApiResponse orderSaveApiResponse =
              OrderSaveApiResponse.fromJson(normalizedResponse);
          return Right(orderSaveApiResponse);
        } else {
          return Left(Failure(responseData['message'] ?? 'Subscription creation failed'));
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
  Future<Either<Failure, dynamic>> verifyOrder(
    Map<String, dynamic> data,
    String id,
  ) async {
    try {
      final Map<String, dynamic> requestData = Map<String, dynamic>.from(data);
      requestData['lang'] ??= _currentLang;


      final bool isSubscription = data.containsKey("razorpay_subscription_id");
      final String verifyEndpoint = isSubscription
          ? "user/seva/subscriptions/$id/verify-payment?lang=$_currentLang"
          : "${AppConstant.verifyOrder}$id/verify-payment?lang=$_currentLang";


      http.Response response = await _apiServices.post(
        verifyEndpoint,
        requestData,
        useDefaultHeaders: true,
        isJson: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final Map<String, dynamic> dataMap =
              Map<String, dynamic>.from(responseData['data'] ?? {});
          final String subId =
              dataMap['subscriptionId'] ?? dataMap['_id'] ?? dataMap['sevaId'] ?? '';
          dataMap['sevaId'] = subId;

          final Map<String, dynamic> normalizedResponse =
              Map<String, dynamic>.from(responseData);
          normalizedResponse['data'] = dataMap;

          final OrderSaveApiResponse orderSaveApiResponse =
              OrderSaveApiResponse.fromJson(normalizedResponse);
          return Right(orderSaveApiResponse);
        } else {
          final msg = responseData['message'] is String
              ? responseData['message']
              : "Verification failed";
          return Left(Failure(msg));
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
  Future<Either<Failure, dynamic>> approveVideo(
    Map<String, dynamic> data,
    String id,
  ) async {
    try {


      http.Response response = await _apiServices.post(
        AppConstant.verifyOrder + "$id" + "/approve",
        data,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final OrderSaveApiResponse orderSaveApiResponse =
              OrderSaveApiResponse.fromJson(responseData);
          return Right(orderSaveApiResponse);
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
  Future<Either<Failure, dynamic>> raiseConcern(
    Map<String, dynamic> data,
    String id,
  ) async {
    try {


      http.Response response = await _apiServices.post(
        AppConstant.verifyOrder + "$id" + "/issue",
        data,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final OrderSaveApiResponse orderSaveApiResponse =
              OrderSaveApiResponse.fromJson(responseData);
          return Right(orderSaveApiResponse);
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
  Future<Either<Failure, ThankYouSevaApiResponse>> getThankyouData(
    String id,
  ) async {
    try {

      http.Response response = await _apiServices.get(
        "${AppConstant.verifyOrder}$id/thank-you?lang=$_currentLang",
        useDefaultHeaders: true,
      );

      Map<String, dynamic> responseData = {};
      bool isSuccess = false;

      if (response.statusCode == 200) {
        responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          isSuccess = true;
        }
      }

      if (!isSuccess) {
        final String subUrl = "user/seva/subscriptions/$id/thank-you?lang=$_currentLang";
        final subResponse = await _apiServices.get(
          subUrl,
          useDefaultHeaders: true,
        );

        if (subResponse.statusCode == 200) {
          responseData = jsonDecode(subResponse.body);
          if (responseData['success'] == true) {
            isSuccess = true;
          }
        }
      }

      if (isSuccess) {
        final ThankYouSevaApiResponse thankYouSevaApiResponse =
            ThankYouSevaApiResponse.fromJson(responseData);
        return Right(thankYouSevaApiResponse);
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, SevaStatusApiResponse>> getSevaStatus(
    String id,
  ) async {
    final String fullUrl = "${AppConstant.baseUrl}${AppConstant.verifyOrder}$id/track?lang=$_currentLang";
    String token = "";
    try {
      token = getIt<SharedPrefs>().getString(AppConstant.token);
    } catch (_) {}

    try {
      // 1. Log full cURL command before sending request
      _logCompleteCurlAndResponse(
        title: "SEVA STATUS (TRACK)",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
      );

      http.Response response = await _apiServices.get(
        "${AppConstant.verifyOrder}$id/track?lang=$_currentLang",
        useDefaultHeaders: true,
      );

      // 2. Log full HTTP response body
      _logCompleteCurlAndResponse(
        title: "SEVA STATUS (TRACK)",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
        response: response,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          final SevaStatusApiResponse sevaStatusApiResponse =
              SevaStatusApiResponse.fromJson(responseData);
          return Right(sevaStatusApiResponse);
        } else {
          return Left(Failure(responseData['message'] ?? 'Failed to load seva status'));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      _logCompleteCurlAndResponse(
        title: "SEVA STATUS (TRACK)",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
        error: e,
      );
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, VideoProofApiResponse>> getVideoProof(
    String id,
  ) async {
    final String fullUrl = "${AppConstant.baseUrl}${AppConstant.verifyOrder}$id/proof?lang=$_currentLang";
    String token = "";
    try {
      token = getIt<SharedPrefs>().getString(AppConstant.token);
    } catch (_) {}

    try {
      _logCompleteCurlAndResponse(
        title: "SEVA VIDEO PROOF",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
      );

      http.Response response = await _apiServices.get(
        "${AppConstant.verifyOrder}$id/proof?lang=$_currentLang",
        useDefaultHeaders: true,
      );

      _logCompleteCurlAndResponse(
        title: "SEVA VIDEO PROOF",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
        response: response,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          final VideoProofApiResponse videoProofApiResponse =
              VideoProofApiResponse.fromJson(responseData);
          return Right(videoProofApiResponse);
        } else {
          return Left(Failure(responseData['message'] ?? 'Failed to load video proof'));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      _logCompleteCurlAndResponse(
        title: "SEVA VIDEO PROOF",
        method: "GET",
        fullUrl: fullUrl,
        token: token,
        error: e,
      );
      return Left(Failure("$e"));
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
      sb.write(" \\\n  --header 'Authorization: $authHeader'");
      sb.write(" \\\n  --header 'Accept: application/json'");
      sb.write(" \\\n  --header 'Content-Type: application/json'");
      if (body != null && body.isNotEmpty) {
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

  String _extractErrorMessage(String responseBody) {
    try {
      final Map<String, dynamic> errorData = jsonDecode(responseBody);
      return errorData['message'] ?? 'Unknown error occurred';
    } catch (e) {
      return 'Something goes wrong';
    }
  }
}
