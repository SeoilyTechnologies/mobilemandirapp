import 'dart:convert';
import 'dart:io';
import 'package:either_dart/src/either.dart';
import 'package:http/http.dart' as http;
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/data/entity/aarti_model.dart';
import 'package:mandirapp/pages/auth/signup/data/entity/signup_response.dart';
import 'package:mandirapp/pages/mobile_mandir_home/data/entity/sant/sant_list/sant_list_response.dart';
import 'package:mandirapp/pages/mobile_mandir_home/domain/repo/mobile_home_repo.dart';
import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../common/routes/exports.dart';
import '../entity/bannerEntity/banner_model.dart';
import '../entity/calendaevent/calendar_day_model.dart';
import '../entity/day_according_aarti_chalisa_response.dart';
import '../entity/home_god/home_god_api_response.dart';
import '../entity/home_popular/home_popular_temple_list.dart';
import '../entity/home_temple/home_temple_list_response.dart';
import '../entity/penchang_by_date/panchang_by_date_response.dart';
import '../entity/popular_god/popular_god_api_response.dart';
import '../entity/reward_entity/overview/reward_overview_api_response.dart';
import '../entity/sant/sant_detail/sant_detail_response.dart';
import '../entity/youtubevideo/youtube_video_player_model.dart';
import '../global_search/gloable_search_api_response.dart';

class MobileHomeRepImpl implements MobileHomeRepo {
  final ApiServices _apiServices = getIt<ApiServices>();

  MobileHomeRepImpl();

  @override
  Future<Either<Failure, List<YouTubePlaylistVideoModel>>>
  getYoutubePlaylistVideos() async {
    try {
      // print("[][][000000000000000000000000000]");

      final response = await _apiServices.getYoutubePlaylistVideos();
      // print("[][][0000000000bbbbbbbbbbbbbbbbb00000000000000000]");
      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body);
        //  print(decoded);
        final List items = decoded['items'] ?? [];

        final videos = items
            .map((e) => YouTubePlaylistVideoModel.fromJson(e))
            .toList();

        return Right(videos);
      } else {
        return Left(Failure("YouTube API Error: ${response.statusCode}"));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SantDetailResponse>> getSantDetailById(
    Map<String, dynamic> santData,
  ) async {
    try {
      //print("👤 CALLING getSantDetailById with: $santData");

      http.Response response = await _apiServices.post(
        AppConstant.getSantById, // "sant/get-sant-by-id"
        santData,
        isJson: true,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // print("👤 PARSED RESPONSE getSantDetailById: $responseData");
        // LogPrint(responseData);

        if (responseData['success'] == true) {
          final SantDetailResponse santDetailResponse =
              SantDetailResponse.fromJson(responseData);
          return Right(santDetailResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SantListResponse>> getSantListFilterWithAlphabets(
    Map<String, dynamic> santData,
  ) async {
    try {
      //   print("🔤 CALLING getSantListFilterWithAlphabets with: $santData");

      http.Response response = await _apiServices.post(
        AppConstant.getSantListByAlphabet, // "sant/filter-by-alphabet"
        santData,
        isJson: true,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // print(
        //   "🔤 PARSED RESPONSE getSantListFilterWithAlphabets: $responseData",
        // );
        // LogPrint(responseData);

        if (responseData['success'] == true) {
          final SantListResponse santListResponse = SantListResponse.fromJson(
            responseData,
          );
          return Right(santListResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e, stack) {
      // print("❌ ERROR in getSantListFilterWithAlphabets: $e");
      // print("❌ STACK: $stack");
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SantListResponse>> getSantListFilter(
    Map<String, dynamic> santData,
  ) async {
    try {
      //  print("🔍 CALLING getSantListFilter with: $santData");

      http.Response response = await _apiServices.post(
        AppConstant.getSantListByName, // "sant/search-sant-by-name"
        santData,
        isJson: true,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // print("🔍 PARSED RESPONSE getSantListFilter: $responseData");
        //  LogPrint(responseData);

        if (responseData['success'] == true) {
          final SantListResponse santListResponse = SantListResponse.fromJson(
            responseData,
          );
          return Right(santListResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e, stack) {
      // print("❌ STACK: $stack");
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SantListResponse>> getSantList(
    Map<String, dynamic> santData,
  ) async {
    try {
      //  print("📅 CALLING getCalendarEvent with: $santData");

      http.Response response = await _apiServices.post(
        AppConstant.getSantList, // 🔥 API endpoint
        santData,
        isJson: true,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        //    print("📅 PARSED RESPONSE SantListResponse: $responseData");
        // print("============================\n\n");
        // LogPrint(responseData);
        //   print("============================\n\n");
        if (responseData['success'] == true) {
          final SantListResponse calendarResponse = SantListResponse.fromJson(
            responseData,
          );
          return Right(calendarResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e, stack) {
      // print("❌ ERROR in getCalendarEvent: $e");
      // print("❌ STACK: $stack");
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, AartiResponse>> searchAartiChalisaMantra(
    Map<String, dynamic> searchData,
  ) async {
    try {
      // print("🔍 CALLING searchAartiChalisaMantra with: $searchData");

      final query = _buildQuery(searchData);

      final String url = query.isNotEmpty
          ? "${AppConstant.getSearchAartiChalisa}?$query"
          : AppConstant.getSearchAartiChalisa;

      // print("🔍 SEARCH URL => $url");

      http.Response response = await _apiServices.get(
        url,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // print("🔍 PARSED RESPONSE searchAartiChalisaMantra: $responseData");
        //  LogPrint(responseData);

        if (responseData['success'] == true) {
          final AartiResponse aartiResponse = AartiResponse.fromJson(
            responseData,
          );
          return Right(aartiResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e, stack) {
      //  print("❌ ERROR in searchAartiChalisaMantra: $e");
      //print("❌ STACK: $stack");
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GloableSearchApiResponse>> gloabSearch(
    Map<String, dynamic> searchQueryData,
  ) async {
    try {
      final query = _buildQuery(searchQueryData);

      final String url = query.isNotEmpty
          ? "${AppConstant.gloablSearch}?$query"
          : AppConstant.gloablSearch;

      http.Response response = await _apiServices.get(
        url,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // print("🔍 PARSED RESPONSE searchAartiChalisaMantra: $responseData");
        // LogPrint(responseData);

        if (responseData['success'] == true) {
          final GloableSearchApiResponse aartiResponse =
              GloableSearchApiResponse.fromJson(responseData);
          return Right(aartiResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e, stack) {
      //  print("❌ ERROR in searchAartiChalisaMantra: $e");
      //print("❌ STACK: $stack");
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, RewardOverviewApiResponse>> getRewardOverView() async {
    try {
      // final query = _buildQuery(searchQueryData);

      //final String url = query.isNotEmpty
      //  ? "${AppConstant.gloablSearch}?$query"
      //: AppConstant.gloablSearch;

      http.Response response = await _apiServices.get(
        AppConstant.rewardOverview,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
 

        if (responseData['success'] == true) {
          final RewardOverviewApiResponse rewardOverviewApiResponse =
              RewardOverviewApiResponse.fromJson(responseData);
          return Right(rewardOverviewApiResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e, stack) {
      //  print("❌ ERROR in searchAartiChalisaMantra: $e");
      //print("❌ STACK: $stack");
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PanchangByDateResponse>> getPanchangByDate(
    Map<String, dynamic> dateData,
  ) async {
    try {

      http.Response response = await _apiServices.post(
        AppConstant.getPanchangByDate, // 👈 naya constant
        dateData,
        isJson: true,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // print("📆 PARSED RESPONSE getPanchangByDate: $responseData");
        // LogPrint(responseData);

        if (responseData['success'] == true) {
          final PanchangByDateResponse model = PanchangByDateResponse.fromJson(
            responseData,
          );

          return Right(model);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e, stack) {
      // print("❌ STACK: $stack");
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, dynamic>> trackListen(
    Map<String, dynamic> trackData,
  ) async {
    try {

      http.Response response = await _apiServices.post(
        AppConstant.rewardTrackListen,
        trackData,
        isJson: true,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);


        if (responseData['success'] == true) {
          return Right(responseData);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e, stack) {
      // print("❌ STACK: $stack");
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CalendarResponse>> getCalendarEvent(
    Map<String, dynamic> calendarData,
  ) async {
    try {
      //  print("📅 CALLING getCalendarEvent with: $calendarData");

      http.Response response = await _apiServices.post(
        AppConstant.getCalendarEvents, // 🔥 API endpoint
        calendarData,
        isJson: true,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        // print("getCalendarEvent......response start========");
        // print(
        //   "====${AppConstant.baseUrl + AppConstant.getCalendarEvents}=====/n",
        // );
        // Utils.LogPrint(responseData);
        //  print("getCalendarEvent......response end========");
        //  print("📅 PARSED RESPONSE: $responseData");
        //  print("============================\n\n");
        //LogPrint(responseData);
        //  print("============================\n\n");
        if (responseData['success'] == true) {
          final CalendarResponse calendarResponse = CalendarResponse.fromJson(
            responseData,
          );
          return Right(calendarResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }


  @override
  Future<Either<Failure, AartiResponse>> getdayAccordingAartiChalisa(
    Map<String, dynamic> dayData,
  ) async {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.getChalisaAartiDayWise,
        dayData,
        isJson: true,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        // print("CODE IS URINNG getdayAccordingAartiChalisa $responseData");
        if (responseData['success'] == true) {
          final AartiResponse geetaResponse = AartiResponse.fromJson(
            responseData,
          );
          return Right(geetaResponse);
        } else {
          //  print(responseData);
          return Left(Failure(responseData['message']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  String _buildQuery(Map<String, dynamic> params) {
    return params.entries
        .where((e) => e.value != null && e.value.toString().isNotEmpty)
        .map(
          (e) =>
              "${Uri.encodeQueryComponent(e.key)}=${Uri.encodeQueryComponent(e.value.toString())}",
        )
        .join("&");
  }

  @override
  Future<Either<Failure, BannerResponse>> getBanner(
    Map<String, dynamic> dayData,
  ) async {
    try {
      final query = _buildQuery(dayData);
      final String url = query.isNotEmpty
          ? "${AppConstant.getBannerList}?$query"
          : AppConstant.getBannerList;
      // print("HERE IS URL getBanner getBanner GOING======$url");
      final String lang = dayData['lang'] ?? 'en';

      http.Response response = await _apiServices.get(
        url,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        // print("CODE IS URINNG getBanner $dayData");
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        //print("CODE IS URINNG getBanner $responseData");
        if (responseData['success'] == true) {
          final BannerResponse bannerResponse = BannerResponse.fromJson(
            responseData,
          );
          return Right(bannerResponse);
        } else {
          //  print("RUNNING   IN ELS SNSJSJSJS");
          //  print(responseData);
          return Left(Failure(responseData['message']));
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
      //print(responseBody);
      // print(responseBody);
      final Map<String, dynamic> errorData = jsonDecode(responseBody);
      return errorData['message'] ?? 'Unknown error occurred';
    } catch (e) {
      return 'Something goes wrong';
    }
  }

  @override
  Future<Either<Failure, HomeGodApiResponse>> getNewHomeGodList(
    Map<String, dynamic> searchData,
  ) async {
    try {
      // print("🔍 CALLING searchAartiChalisaMantra with: $searchData");

      http.Response response = await _apiServices.getWithQuery(
        AppConstant.getGodHomeListApi,
        queryParams: searchData,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // print("🔍 PARSED RESPONSE searchAartiChalisaMantra: $responseData");
        //  LogPrint(responseData);

        if (responseData['success'] == true) {
          final HomeGodApiResponse godApiResponse = HomeGodApiResponse.fromJson(
            responseData,
          );
          return Right(godApiResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PopularGodApiResponse>> getPopularGod(
    Map<String, dynamic> searchData,
  ) async {
    try {

      http.Response response = await _apiServices.getWithQuery(
        AppConstant.getPopularGodList,
        queryParams: searchData,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        //  print("🔍 PARSED RESPONSE searchAartiChalisaMantra: $responseData");
        // LogPrint(responseData);

        if (responseData['success'] == true) {
          final PopularGodApiResponse popularGodApiResponse =
              PopularGodApiResponse.fromJson(responseData);
          return Right(popularGodApiResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, HomeTempleListResponse>> getNewHomeTempleList(
    Map<String, dynamic> templeData,
  ) async {
    try {

      http.Response response = await _apiServices.getWithQuery(
        AppConstant.getTempleHomeListAPi,
        queryParams: templeData,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // print("🔍 PARSED RESPONSE getNewHomeTempleList: $responseData");
        // LogPrint(responseData);

        if (responseData['success'] == true) {
          final HomeTempleListResponse templeListResponse =
              HomeTempleListResponse.fromJson(responseData);
          return Right(templeListResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, HomePopularTempleListResponse>>
  getPopularHomeTempleList(Map<String, dynamic> templeData) async {
    try {

      http.Response response = await _apiServices.getWithQuery(
        AppConstant.getTemplePopulrListApi,
        queryParams: templeData,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // print("🔍 PARSED RESPONSE getNewHomeTempleList: $responseData");
        // LogPrint(responseData);

        if (responseData['success'] == true) {
          final HomePopularTempleListResponse templeListResponse =
              HomePopularTempleListResponse.fromJson(responseData);
          return Right(templeListResponse);
        } else {
          return Left(
            Failure(responseData['message'] ?? "Something went wrong"),
          );
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
