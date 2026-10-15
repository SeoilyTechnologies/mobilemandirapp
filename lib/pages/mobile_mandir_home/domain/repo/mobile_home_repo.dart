import 'package:either_dart/either.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/data/entity/aarti_model.dart';
import 'package:mandirapp/pages/auth/signup/data/entity/signup_response.dart';
import 'package:mandirapp/pages/mobile_mandir_home/data/entity/sant/sant_detail/sant_detail_response.dart';
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
import '../../data/entity/youtubevideo/youtube_video_player_model.dart';
import '../../data/global_search/gloable_search_api_response.dart';

abstract class MobileHomeRepo{
  Future<Either<Failure,AartiResponse>> getdayAccordingAartiChalisa(Map<String, dynamic> dayData);
  Future<Either<Failure,BannerResponse>> getBanner(Map<String, dynamic> dayData);
  Future<Either<Failure,CalendarResponse>> getCalendarEvent(Map<String, dynamic> calendarData);
  Future<Either<Failure,SantListResponse>> getSantList(Map<String, dynamic> santData);
  Future<Either<Failure,SantListResponse>> getSantListFilter(Map<String, dynamic> santData);
  Future<Either<Failure,SantListResponse>> getSantListFilterWithAlphabets(Map<String, dynamic> santData);
  Future<Either<Failure,SantDetailResponse>> getSantDetailById(Map<String, dynamic> santData);
  Future<Either<Failure, List<YouTubePlaylistVideoModel>>> getYoutubePlaylistVideos();
  Future<Either<Failure, AartiResponse>> searchAartiChalisaMantra(Map<String, dynamic> searchData);
  Future<Either<Failure, HomeGodApiResponse>> getNewHomeGodList(Map<String, dynamic> getGodDaa);
  Future<Either<Failure, HomeTempleListResponse>> getNewHomeTempleList(Map<String, dynamic> templeData);
  Future<Either<Failure, HomePopularTempleListResponse>> getPopularHomeTempleList(Map<String, dynamic> templeData);
  Future<Either<Failure, PopularGodApiResponse>> getPopularGod(Map<String, dynamic> templeData);
  Future<Either<Failure, GloableSearchApiResponse>> gloabSearch(Map<String, dynamic> searchQueryData);
  Future<Either<Failure, PanchangByDateResponse>> getPanchangByDate(
      Map<String, dynamic> dateData);

  Future<Either<Failure, dynamic>> trackListen(
      Map<String, dynamic> trackData);

  Future<Either<Failure, RewardOverviewApiResponse>> getRewardOverView();

}