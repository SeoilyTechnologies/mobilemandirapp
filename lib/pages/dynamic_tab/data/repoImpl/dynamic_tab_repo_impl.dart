import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;

import '../../../../common/network/api_services.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/network/failure.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../domain/repo/dynamic_tab_repo.dart';
import '../entity/dynamic_tab_models.dart';

class DynamicTabRepoImpl implements DynamicTabRepo {
  final ApiServices _apiServices = getIt<ApiServices>();

  // Home must never wait long on optional config.
  static const Duration _tabsTimeout = Duration(seconds: 8);
  static const Duration _pageTimeout = Duration(seconds: 20);

  @override
  Future<Either<Failure, HomeTabListResponse>> getHomeTabs() async {
    try {
      final http.Response response = await _apiServices
          .get(AppConstant.homeTabList, useDefaultHeaders: true)
          .timeout(_tabsTimeout);
      if (response.statusCode != 200) {
        return Left(Failure(_extractErrorMessage(response.body)));
      }
      final Map<String, dynamic> body = jsonDecode(response.body);
      if (body['success'] != true) {
        return Left(Failure(body['message']?.toString() ?? 'Home tabs failed'));
      }
      return Right(HomeTabListResponse.fromJson(body));
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, DynamicPageModel>> getPage(String slug) async {
    try {
      final http.Response response = await _apiServices
          .get(AppConstant.homeTabPage(slug), useDefaultHeaders: true)
          .timeout(_pageTimeout);
      if (response.statusCode != 200) {
        return Left(Failure(_extractErrorMessage(response.body)));
      }
      final Map<String, dynamic> body = jsonDecode(response.body);
      final page = DynamicPageResponse.fromJson(body);
      if (!page.success || page.data == null) {
        return Left(Failure(body['message']?.toString() ?? 'Page not found'));
      }
      return Right(page.data!);
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, List<PageTagModel>>> getPageTags() async {
    try {
      final http.Response response = await _apiServices
          .get(AppConstant.homeTabPageTags, useDefaultHeaders: true)
          .timeout(_pageTimeout);
      if (response.statusCode != 200) {
        return Left(Failure(_extractErrorMessage(response.body)));
      }
      final Map<String, dynamic> body = jsonDecode(response.body);
      final tags = PageTagListResponse.fromJson(body);
      if (!tags.success) {
        return Left(Failure(body['message']?.toString() ?? 'Tags failed'));
      }
      return Right(tags.data);
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, PageListResponse>> getPages({String tag = '', int year = 0, int month = 0}) async {
    try {
      final http.Response response = await _apiServices
          .getWithQuery(
            AppConstant.homeTabPages,
            queryParams: {
              if (tag.isNotEmpty) 'tag': tag,
              // Sent together: one month at a time.
              if (year != 0 && month != 0) ...{'year': year, 'month': month},
            },
            useDefaultHeaders: true,
          )
          .timeout(_pageTimeout);
      if (response.statusCode != 200) {
        return Left(Failure(_extractErrorMessage(response.body)));
      }
      final Map<String, dynamic> body = jsonDecode(response.body);
      final pages = PageListResponse.fromJson(body);
      if (!pages.success) {
        return Left(Failure(body['message']?.toString() ?? 'Pages failed'));
      }
      return Right(pages);
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
}
