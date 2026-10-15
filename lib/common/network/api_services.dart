
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';

import '../../main.dart';
import '../../pages/mobile_mandir_home/data/entity/youtubevideo/youtube_video_player_model.dart';
import '../local/SharedPrefs.dart';
import '../service_locator/setivelocator.dart';
import '../values/app_color.dart';
import 'network_eport.dart';
import 'package:http/http.dart' as http;
import  'package:path/path.dart' as path;


import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:path/path.dart' as path;

import '../../main.dart';
import '../../pages/mobile_mandir_home/data/entity/youtubevideo/youtube_video_player_model.dart';
import '../local/SharedPrefs.dart';
import '../service_locator/setivelocator.dart';
import '../values/app_color.dart';

class ApiServices {
  final String apiBaseUri;
  final Duration requestTimeout;

  ApiServices(
      this.apiBaseUri, {
        this.requestTimeout = const Duration(minutes: 10),
      });

  /// =========================================================
  /// API LOGGER
  /// =========================================================

  void _logApiRequest({
    required String method,
    required Uri url,
    Map<String, String>? headers,
    dynamic body,
    Map<String, dynamic>? queryParams,
  }) {
    final StringBuffer curlSb = StringBuffer();
    curlSb.write("curl --location --request $method '$url'");
    if (headers != null && headers.isNotEmpty) {
      headers.forEach((key, value) {
        curlSb.write(" \\\n  --header '$key: $value'");
      });
    }
    if (body != null) {
      final bodyStr = body is String ? body : jsonEncode(body);
      curlSb.write(" \\\n  --data-raw '$bodyStr'");
    }

    Utils.LogPrint("""
══════════════════════════════════════════════════════════════════
🚀 [API REQUEST] $method $url
cURL COMMAND (Ready to run):
${curlSb.toString()}
══════════════════════════════════════════════════════════════════
""");
  }

  void _logApiResponse({
    required String method,
    required Uri url,
    required int statusCode,
    required dynamic response,
    Map<String, String>? headers,
    required Duration duration,
  }) {
    String prettyResponse = "$response";
    try {
      if (response is String) {
        final decoded = jsonDecode(response);
        prettyResponse = const JsonEncoder.withIndent('  ').convert(decoded);
      } else {
        prettyResponse = const JsonEncoder.withIndent('  ').convert(response);
      }
    } catch (_) {}

    if (prettyResponse.length > 2500) {
      prettyResponse = "${prettyResponse.substring(0, 2500)}\n... [TRUNCATED - Total Length: ${prettyResponse.length} chars]";
    }

    Utils.LogPrint("""
══════════════════════════════════════════════════════════════════
📥 [API RESPONSE] ($statusCode) [${duration.inMilliseconds} ms]
URL: $url
RESPONSE BODY:
$prettyResponse
══════════════════════════════════════════════════════════════════
""");
  }

  void _logApiError({
    required String method,
    required Uri url,
    required dynamic error,
    required Duration duration,
  }) {
    Utils.LogPrint("""
══════════════════════════════════════════════════════════════════
❌ [API ERROR] [${duration.inMilliseconds} ms]
URL: $url
ERROR: $error
══════════════════════════════════════════════════════════════════
""");
  }

  void _logMultipart({
    required Uri url,
    required Map<String, String>? headers,
    required Map<String, dynamic>? fields,
    required List<String> files,
  }) {
    Utils.LogPrint("""
╔═══════════════════════════════════════════════
║             MULTIPART REQUEST
╠═══════════════════════════════════════════════
║ FULL URL     : $url
║ HEADERS      : ${headers != null ? jsonEncode(headers) : "N/A"}
║ FIELDS       : ${fields != null ? jsonEncode(fields) : "N/A"}
║ FILES        : ${files.join(", ")}
╚═══════════════════════════════════════════════
""");
  }

  /// =========================================================
  /// MAIN REQUEST METHOD
  /// =========================================================

  Future<http.Response> _request(
      String method,
      String url, {
        Map<String, String>? headers,
        Map<String, dynamic>? body,
        http.MultipartFile? file,
        Map<String, dynamic>? queryParams,
        bool isJson = false,
        bool useDefaultHeaders = false,
      }) async {
    final stopwatch = Stopwatch()..start();

    /// 🌐 AUTOMATIC LANGUAGE INJECTION
    String currentLang = 'en';
    try {
      final savedLang = await getIt<SharedPrefs>().getString(AppConstant.localeKey);
      if (savedLang.isNotEmpty) {
        currentLang = savedLang;
      }
    } catch (_) {}

    Uri parsedUrl = Uri.parse(apiBaseUri + url);

    final mergedParams = Map<String, String>.from(parsedUrl.queryParameters);
    if (queryParams != null) {
      queryParams.forEach((k, v) => mergedParams[k] = v.toString());
    }
    mergedParams['lang'] = currentLang;
    parsedUrl = parsedUrl.replace(queryParameters: mergedParams);

    if (method == 'POST' || method == 'PUT' || method == 'PATCH') {
      body = Map<String, dynamic>.from(body ?? {});
      body['lang'] = currentLang;
    }

    final apiUrl = parsedUrl;

    headers ??= {};

    /// DEFAULT HEADERS
    if (useDefaultHeaders) {
      final defaultHeaders = await _defaultHeaders();
      headers.addAll(defaultHeaders);

      if (isJson) {
        headers['Content-Type'] = 'application/json';
      }
    }

    /// REQUEST LOG
    _logApiRequest(
      method: method,
      url: apiUrl,
      headers: headers,
      body: body,
      queryParams: queryParams,
    );

    try {
      http.Response response;

      /// MULTIPART POST
      if (method == 'POST' && file != null) {
        _logMultipart(
          url: apiUrl,
          headers: headers,
          fields: body,
          files: [file.filename ?? "unknown_file"],
        );

        final request = http.MultipartRequest('POST', apiUrl)
          ..headers.addAll(headers)
          ..fields.addAll(_convertBodyToFields(body));

        request.files.add(file);

        final streamedResponse =
        await request.send().timeout(requestTimeout);

        response = await http.Response.fromStream(streamedResponse);
      }

      /// NORMAL POST
      else if (method == 'POST') {
        response = await http
            .post(
          apiUrl,
          headers: headers,
          body: isJson
              ? jsonEncode(body)
              : _convertBodyToFields(body),
        )
            .timeout(requestTimeout);
      }

      /// GET REQUEST
      else {
        final request = http.Request(
          'GET',
          apiUrl,
        )..headers.addAll(headers);

        response = await http.Response.fromStream(await request.send());
      }

      stopwatch.stop();

      /// RESPONSE LOG
      _logApiResponse(
        method: method,
        url: apiUrl,
        statusCode: response.statusCode,
        response: response.body,
        headers: response.headers,
        duration: stopwatch.elapsed,
      );
      if (response.statusCode == 401) {
        final json = jsonDecode(response.body);

        if (json["message"] ==
            "Session has expired due to new login on another device.") {

          // Yaha refresh token API call karenge
          refreshToken();
        }
      }
      return response;
    } catch (e) {
      stopwatch.stop();

      /// ERROR LOG
      _logApiError(
        method: method,
        url: apiUrl,
        error: e,
        duration: stopwatch.elapsed,
      );

      throw Exception("Failed to make $method request: $e");
    }
  }

  Future<bool> refreshToken() async {
    try {

      final refreshToken =
      await getIt<SharedPrefs>().getString(AppConstant.refreshToekn);
      // final response = await http.post(
      //   Uri.parse("$apiBaseUri/auth/refresh-token"),
      //   headers: {
      //     "Content-Type": "application/json",
      //   },
      //   body: jsonEncode({
      //     "refreshToken": refreshToken,
      //   }),
      // );
      //
      // print(response.body);
      //
      // if (response.statusCode == 200) {
      //
      //
      //   return true;
      // }

      return false;
    } catch (e) {
      return false;
    }
  }

  /// =========================================================
  /// BODY CONVERTER
  /// =========================================================

  Map<String, String> _convertBodyToFields(
      Map<String, dynamic>? body,
      ) {

    if (body == null) return {};

    return body.map(
          (key, value) => MapEntry(
        key,
        value.toString(),
      ),
    );
  }

  /// =========================================================
  /// GET
  /// =========================================================

  Future<http.Response> get(
      String url, {
        bool useDefaultHeaders = false,
      }) async {
    return _request(
      'GET',
      url,
      useDefaultHeaders: useDefaultHeaders,
    );
  }

  /// =========================================================
  /// GET WITH QUERY
  /// =========================================================

  Future<http.Response> getWithQuery(
      String url, {
        Map<String, dynamic>? queryParams,
        Map<String, String>? headers,
        bool useDefaultHeaders = false,
      }) async {
    return _request(
      'GET',
      url,
      queryParams: queryParams,
      headers: headers,
      useDefaultHeaders: useDefaultHeaders,
    );
  }

  /// =========================================================
  /// POST
  /// =========================================================

  Future<http.Response> post(
      String url,
      Map<String, dynamic> body, {
        bool useDefaultHeaders = false,
        bool isJson = false,
      }) async {
    return _request(
      'POST',
      url,
      body: body,
      useDefaultHeaders: useDefaultHeaders,
      isJson: isJson,
    );
  }

  /// =========================================================
  /// SINGLE IMAGE MULTIPART
  /// =========================================================

  Future<http.Response> multiPartImage({
    File? image,
    required String url,
    String? fileName,
    Map<String, dynamic>? fields,
    Map<String, String>? headers,
    bool useDefaultHeaders = false,
  }) async {
   // print("callinnsndfndsf form here");

    http.MultipartFile? file;

    if (image != null) {

      String mimeType = _getMimeType(image.path);

      file = await http.MultipartFile.fromPath(
        fileName ?? 'file',
        image.path,
        contentType: MediaType.parse(mimeType),
      );
    }

    Map<String, String> finalHeaders = {};

    if (headers != null && headers.isNotEmpty) {
      finalHeaders.addAll(headers);
    }

    if (useDefaultHeaders) {
      finalHeaders.addAll(await _defaultHeaders());
    }

    if (file != null) {
      return _request(
        'POST',
        url,
        headers: useDefaultHeaders ? finalHeaders : null,
        body: fields ?? {},
        file: file,
      ).timeout(requestTimeout);
    } else {
      return _request(
        'POST',
        url,
        headers: useDefaultHeaders ? finalHeaders : null,
        body: fields ?? {},
      );
    }
  }

  /// =========================================================
  /// GOOGLE PLACE API
  /// =========================================================

  Future<http.Response> googlePlace(
      String input,
      _sessionToken,
      ) async {
    String baseURL =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json';

    String request =
        '$baseURL?input=$input&key=AIzaSyAbcVfeiTr0sdz1M8eCYzNeUKqyU4XDMIc&sessiontoken=$_sessionToken';

   // print(request);

    var response = await http.get(Uri.parse(request));

    return response;
  }

  /// =========================================================
  /// PLACE DETAILS API
  /// =========================================================

  Future<http.Response> getLatLngWithPlaceId(
      String placeId,
      _sessionToken,
      ) async {
    String baseURL =
        'https://maps.googleapis.com/maps/api/place/details/json';

    String request =
        '$baseURL?place_id=$placeId&key=AIzaSyAbcVfeiTr0sdz1M8eCYzNeUKqyU4XDMIc&sessiontoken=$_sessionToken';

   // print(request);

    var response = await http.get(Uri.parse(request));

    return response;
  }

  /// =========================================================
  /// YOUTUBE API
  /// =========================================================

  Future<http.Response> getYoutubePlaylistVideos() async
  {
    const String baseURL =
        'https://www.googleapis.com/youtube/v3/playlistItems';

    const String request =
        '$baseURL'
        '?part=snippet,contentDetails'
        '&playlistId=PLHn5tC8lfvOHjk2I5y72HXqKFdvhAkvzp'
        '&maxResults=50'
        '&key=AIzaSyAU5ollvZ3MrohVQJJFikNLJ7xXWXru0Nc';

    //print("▶️ YOUTUBE API CALLING:");
  //  print(request);

    try {
      final response = await http
          .get(Uri.parse(request))
          .timeout(const Duration(seconds: 15));

     // print("▶️ YOUTUBE STATUS: ${response.statusCode}");
     // print("▶️ YOUTUBE BODY: ${response.body}");

      return response;
    } catch (e) {
      rethrow;
    }
  }

  /// =========================================================
  /// MULTIPLE IMAGE MULTIPART
  /// =========================================================

  Future<http.Response> multiPartImages({
    List<File>? images,
    required String url,
    Map<String, String>? fields,
    Map<String, String>? headers,
    bool useDefaultHeaders = false,
    String? fileName,
  }) async
  {

    List<http.MultipartFile> files = [];

    if (images != null) {
      for (var image in images) {
        if (await image.exists()) {
          String mimeType = _getMimeType(image.path);

          http.MultipartFile file =
          await http.MultipartFile.fromPath(
            fileName!,
            image.path,
            contentType: MediaType.parse(mimeType),
          ).timeout(requestTimeout);

          files.add(file);
        } else {
        }
      }
    }

    Map<String, String> finalHeaders = {};

    if (headers != null && headers.isNotEmpty) {
      finalHeaders.addAll(headers);
    }

    if (useDefaultHeaders) {
      finalHeaders.addAll(await _defaultHeaders());
    }

    String currentLang = 'en';
    try {
      final savedLang = await getIt<SharedPrefs>().getString(AppConstant.localeKey);
      if (savedLang.isNotEmpty) {
        currentLang = savedLang;
      }
    } catch (_) {}

    Uri parsedUrl = Uri.parse(apiBaseUri + url);
    final mergedParams = Map<String, String>.from(parsedUrl.queryParameters);
    mergedParams['lang'] = currentLang;
    parsedUrl = parsedUrl.replace(queryParameters: mergedParams);

    final finalFields = Map<String, String>.from(fields ?? {});
    finalFields['lang'] = currentLang;

    if (files.isNotEmpty) {
      final request = http.MultipartRequest(
        'POST',
        parsedUrl,
      )
        ..headers.addAll(finalHeaders)
        ..fields.addAll(finalFields);

      request.files.addAll(files);

      Utils.LogPrint("""
╔═══════════════════════════════════════════════
║          MULTIPLE FILES REQUEST
╠═══════════════════════════════════════════════
║ URL          : ${apiBaseUri + url}
║ FILE COUNT   : ${files.length}
║ HEADERS      : ${jsonEncode(finalHeaders)}
║ FIELDS       : ${jsonEncode(fields)}
╚═══════════════════════════════════════════════
""");

      final streamedResponse = await request.send();

      final response =
      await http.Response.fromStream(streamedResponse)
          .timeout(requestTimeout);

      Utils.LogPrint("""
╔═══════════════════════════════════════════════
║      MULTIPLE FILES RESPONSE
╠═══════════════════════════════════════════════
║ STATUS CODE  : ${response.statusCode}
║ RESPONSE     : ${response.body}
╚═══════════════════════════════════════════════
""");

      return response;
    } else {
      return _request(
        'POST',
        url,
        headers: useDefaultHeaders ? finalHeaders : null,
        body: fields ?? {},
      );
    }
  }

  /// =========================================================
  /// DEFAULT HEADERS
  /// =========================================================

  Future<Map<String, String>> _defaultHeaders() async {
    var token =
    await getIt<SharedPrefs>().getString(AppConstant.token);


    Map<String, String> headers = {};

    if (token != null && token.isNotEmpty) {
      headers['Authorization'] = "Bearer $token";
    }

    return headers;
  }

  /// =========================================================
  /// INTERNET CHECK
  /// =========================================================

  Future<bool> _hasInternetConnection() async {
    final connectivityResult =
    await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      return false;
    }

    return await InternetConnectionChecker.instance
        .hasConnection;
  }

  /// =========================================================
  /// MIME TYPE
  /// =========================================================

  String _getMimeType(String filePath) {
    final extension =
    path.extension(filePath).toLowerCase();

    switch (extension) {
      case '.jpg':
      case '.jpeg':
        return 'image/jpeg';

      case '.png':
        return 'image/png';

      case '.gif':
        return 'image/gif';

      case '.pdf':
        return 'application/pdf';

      case '.txt':
        return 'text/plain';

      case '.mp4':
        return 'video/mp4';

      case '.mov':
        return 'video/quicktime';

      case '.avi':
        return 'video/x-msvideo';

      case '.wmv':
        return 'video/x-ms-wmv';

      case '.flv':
        return 'video/x-flv';

      case '.webm':
        return 'video/webm';

      case '.mkv':
        return 'video/x-matroska';

      case '.3gp':
        return 'video/3gpp';

      case '.ts':
        return 'video/mp2t';

      default:
        return 'application/octet-stream';
    }
  }
}

