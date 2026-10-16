import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../aarti_chalisa_list/presentation/ui/component/category_rail.dart';
import '../../../sewa_module/select_category/data/entity/categories_list_response.dart';
import '../../data/entity/calendaevent/calendar_day_model.dart';

part 'mobile_home_event.freezed.dart';

@freezed
abstract class MobileHomeEvent with _$MobileHomeEvent {
  const factory MobileHomeEvent.selectedRewardTab(int tabno) =
      RewardSelectedTabEvent;

  const factory MobileHomeEvent.currentdetectLocation() = CurrentDetectLocation;

  const factory MobileHomeEvent.getHomeMantra(String type) = HomeMantra;

  const factory MobileHomeEvent.getTemple(String type) = HomeGetTemple;

  const factory MobileHomeEvent.getGodWiseAartiChalisa(String id, String type) =
      HomeGetGetAartiChalisaGodWise;

  const factory MobileHomeEvent.getNextThreeDayAarti() =
      HomeGetNextThreeDayAarti;

  const factory MobileHomeEvent.getBannerData() = HomeGetBanner;

  const factory MobileHomeEvent.isSearchClear(bool isClear) = HomeIsSearchClear;

  const factory MobileHomeEvent.getSantList() = HomeGetSantList;

  const factory MobileHomeEvent.updateBannerIndex(int index) = HomeBannerIndex;

  const factory MobileHomeEvent.updateBannerIndexThird(int index) =
      HomeBannerIndexThird;

  const factory MobileHomeEvent.loadPanchang() = LoadPanchang;

  const factory MobileHomeEvent.resetSearForYou() = ResetSearchForYou;

  const factory MobileHomeEvent.resetTempleSearch() = ResetTempleSearchForYou;

  const factory MobileHomeEvent.selectCalendarDay({
    required CalendarDayModel day,
  }) = SelectCalendarDay;

  const factory MobileHomeEvent.getCalendarEvent({
    required int month,
    required int year,
  }) = GetCalendarEvent;

  const factory MobileHomeEvent.selectDate({
    required DateTime selectedDate,
    required DateTime focusedDate,
  }) = SelectDate;

  const factory MobileHomeEvent.getPanchangByDate({
    required int day,
    required int month,
    required int year,
  }) = GetPanchangByDate;

  const factory MobileHomeEvent.searchAartiChalisa({required String query}) =
      SearchAartiChalisa;

  const factory MobileHomeEvent.clearSearch() = ClearSearch;

  const factory MobileHomeEvent.getYoutubePlaylistVideos() =
      GetYoutubePlaylistVideos;

  const factory MobileHomeEvent.selectHomeTab({
    required int index,
    required String day,
  }) = SelectHomeTab;

  const factory MobileHomeEvent.selectHomeForYouTab({required int index}) =
      SelectHomeForYouTab;

  const factory MobileHomeEvent.selectHomeGodTab({required int index}) =
      SelectHomeGodTab;

  /// Switch to the n-th *built-in* tab (0 all … 6 reward), wherever it is now.
  const factory MobileHomeEvent.changeTopTab(int index) = ChangeTopTab;

  /// Tab bar tap: index in the current (possibly admin-configured) tab list.
  const factory MobileHomeEvent.selectTopTab(int index) = SelectTopTab;

  /// Load admin-configured tabs (cache first, then network).
  const factory MobileHomeEvent.loadHomeTabs() = LoadHomeTabs;

  const factory MobileHomeEvent.getDayAccordingAartiChalisa({
    @Default('') String type,
  }) = GetDayAccordingAartiChalisa;

  const factory MobileHomeEvent.searchNewHomeGod(String searchText) =
      SearchNewHomeGod;

  const factory MobileHomeEvent.toggleWishlist({
    required String itemId,
    required String itemModel, // e.g. aarti / chalisa / temple / mantra
  }) = ToggleWishlistHome;

  const factory MobileHomeEvent.toggleSantWishlist({
    required String itemId,
    required String itemModel,
  }) = ToggleSantWishlistHome;

  const factory MobileHomeEvent.bhajanToggleWishlist({
    required String itemId,
    required String itemModel,
  }) = BhajanWishlistHomeEvent;

  const factory MobileHomeEvent.getNewGodData(bool isLoadMore) =
      GetNewGodDataList;

  //home temple

  const factory MobileHomeEvent.searchTempleByLocation(String location) =
      SearchTempleByLocation;

  const factory MobileHomeEvent.searchHomeTemple(String searchText) =
      SearchHomeTemple;

  const factory MobileHomeEvent.getHomeTempleData(bool isLoadMore) =
      GetHomeTempleDataList;

  const factory MobileHomeEvent.getPopularTempleList(bool isLoadMore) =
      GetPopularTempleList;

  const factory MobileHomeEvent.changePopularTempleDistance(double distance) =
      ChangePopularTempleDistance;

  //temple location search
  const factory MobileHomeEvent.detectLocation() = DetectLocation;
  const factory MobileHomeEvent.resetGodSearhHome() = ResetGodSearchHome;

  const factory MobileHomeEvent.locationChanged(String location) =
      EditProfileLocationChanged;

  const factory MobileHomeEvent.setLatLong(String latitude, String longitude) =
      EditProfileLocationLatLong;

  const factory MobileHomeEvent.fetchLocationSuggestions(String query) =
      EditProfileFetchLocationSuggestions;

  const factory MobileHomeEvent.selectLocation({
    required String description,
    required String placeId,
  }) = EditProfileSelectLocation;

  const factory MobileHomeEvent.showHideLocationList(bool showHide) =
      EditProfileShowHideLocationListEvent;

  //sewa category events
  const factory MobileHomeEvent.categorySelected(CategoryItem category) =
      CategorySelected;

  const factory MobileHomeEvent.proceed() = Proceed;

  const factory MobileHomeEvent.getCateroiesList() = GetCategoriesList;

  //god add wishlist
  const factory MobileHomeEvent.godtoggleWishlist({
    required String itemId,
    required String itemModel,
  }) = GoodWishlistHoneEvent;

  const factory MobileHomeEvent.templeToggleWishlist({
    required String itemId,
    required String itemModel,
  }) = TempleWishlistHomeEvent;

  const factory MobileHomeEvent.santToggleWishlist({
    required String itemId,
    required String itemModel,
  }) = SantWishlistHomeEvent;

  const factory MobileHomeEvent.getHomeForYouData({required String type}) =
      GetHomeForYouData;

  const factory MobileHomeEvent.searchHomeForYou(String searchText) =
      SearchHomeForYou;

  const factory MobileHomeEvent.getPopularGodList(bool isLoadMore) =
      GetPopularGodList;

  const factory MobileHomeEvent.getRewardOverView() = GetRewardOverViewEvent;

  const factory MobileHomeEvent.trackListen({
    required String contentId,
    required int listenedSeconds,
    required bool completed,
  }) = TrackListenEvent;

  /// 🔤 Filter Sant by Alphabet (A–Z)
  const factory MobileHomeEvent.filterByAlphabet(String alphabet) = MobileHomeFilterByAlphabet;
}
