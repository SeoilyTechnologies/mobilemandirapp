import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/data/entity/aarti_model.dart';
import 'package:mandirapp/pages/mobile_mandir_home/data/entity/sant/sant_list/sant_list_response.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/bannerEntity/banner_model.dart';
import '../../data/entity/calendaevent/calendar_day_model.dart';
import '../../data/entity/day_according_aarti_chalisa_response.dart';
import '../../data/entity/home_god/home_god_api_response.dart';
import '../../data/entity/home_popular/home_popular_temple_list.dart';
import '../../data/entity/home_temple/home_temple_list_response.dart';
import '../../data/entity/penchang_by_date/panchang_by_date_response.dart';
import '../../data/entity/popular_god/popular_god_api_response.dart';
import '../../data/entity/reward_entity/overview/reward_overview_api_response.dart';
import '../../data/entity/sant/sant_detail/sant_detail_response.dart';
import '../../data/entity/youtubevideo/youtube_video_player_model.dart';
import '../../data/global_search/gloable_search_api_response.dart';
import '../repo/mobile_home_repo.dart';

class MobileHomeUsecase {
  final MobileHomeRepo _mobileHomeRepo;

  MobileHomeUsecase(this._mobileHomeRepo);

  Future<Either<Failure, AartiResponse>> callgetdayAccordingAartiChalisa(
    Map<String, dynamic> dayData,
  ) async {
    return _mobileHomeRepo.getdayAccordingAartiChalisa(dayData);
  }

  Future<Either<Failure, BannerResponse>> callgetBannerApi(
    Map<String, dynamic> dayData,
  ) async {
    return _mobileHomeRepo.getBanner(dayData);
  }

  Future<Either<Failure, CalendarResponse>> callgetCalendarEvent(
    Map<String, dynamic> dayData,
  ) async {
    return _mobileHomeRepo.getCalendarEvent(dayData);
  }

  Future<Either<Failure, SantListResponse>> callGetSantList(
    Map<String, dynamic> santData,
  ) async {
    return _mobileHomeRepo.getSantList(santData);
  }

  /// 🔍 Search Sant by Name
  Future<Either<Failure, SantListResponse>> callGetSantListFilter(
    Map<String, dynamic> santData,
  ) async {
    return _mobileHomeRepo.getSantListFilter(santData);
  }

  /// 🔤 Filter Sant by Alphabet (A–Z)
  Future<Either<Failure, SantListResponse>> callGetSantListFilterWithAlphabets(
    Map<String, dynamic> santData,
  ) async {
    return _mobileHomeRepo.getSantListFilterWithAlphabets(santData);
  }

  Future<Either<Failure, SantDetailResponse>> callGetSantDetailById(
    Map<String, dynamic> santData,
  ) async {
    return _mobileHomeRepo.getSantDetailById(santData);
  }

  Future<Either<Failure, List<YouTubePlaylistVideoModel>>>
  callGetYoutubePlaylistVideos(Map<String, dynamic> santData) async {
    return _mobileHomeRepo.getYoutubePlaylistVideos();
  }

  Future<Either<Failure, AartiResponse>> callSearchAartiChalisaMantra(
    Map<String, dynamic> searchData,
  ) async {
    return _mobileHomeRepo.searchAartiChalisaMantra(searchData);
  }

  Future<Either<Failure, HomeGodApiResponse>> callgetNewHomeGodList(
    Map<String, dynamic> getGodDataList,
  ) async {
    return _mobileHomeRepo.getNewHomeGodList(getGodDataList);
  }

  Future<Either<Failure, HomeTempleListResponse>> callgetNewHomeTempleList(
    Map<String, dynamic> templeData,
  ) async {
    return _mobileHomeRepo.getNewHomeTempleList(templeData);
  }

  Future<Either<Failure, HomePopularTempleListResponse>>
  callgetPopularHomeTempleList(Map<String, dynamic> templeData) async {
    return _mobileHomeRepo.getPopularHomeTempleList(templeData);
  }

  Future<Either<Failure, PopularGodApiResponse>> callgetPopularGod(
    Map<String, dynamic> popularGodData,
  ) async {
    return _mobileHomeRepo.getPopularGod(popularGodData);
  }

  Future<Either<Failure, GloableSearchApiResponse>> callgloabSearchApi(
    Map<String, dynamic> searchQueryData,
  ) async {
    return _mobileHomeRepo.gloabSearch(searchQueryData);
  }

  Future<Either<Failure, RewardOverviewApiResponse>>
  callgetRewardOverViewApi() async {
    return _mobileHomeRepo.getRewardOverView();
  }

  Future<Either<Failure, dynamic>> calltrackListenApi(
    Map<String, dynamic> trackData,
  ) async {
    return _mobileHomeRepo.trackListen(trackData);
  }
}
