import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandirapp/pages/mobile_mandir_home/data/entity/home_temple/home_temple_list_response.dart';
import 'package:mandirapp/pages/mobile_mandir_home/data/entity/penchang_by_date/calendar_day_model.dart';
import 'package:mandirapp/pages/mobile_mandir_home/data/entity/sant/sant_list/sant_list_response.dart';
import '../../../aarti_chalisa_list/data/entity/aarti_model.dart'
    hide TempleModel;
import '../../../aarti_chalisa_list/presentation/ui/component/category_rail.dart';

import '../../../dynamic_tab/data/entity/dynamic_tab_models.dart';
import '../../../sewa_module/select_category/data/entity/categories_list_response.dart';
import '../../../templelist/data/entity/temple_model.dart';
import '../../data/entity/bannerEntity/banner_model.dart';
import '../../data/entity/calendaevent/calendar_day_model.dart';
import '../../data/entity/category_item.dart';
import '../../data/entity/home_foryou/home_for_your_api_response.dart';
import '../../data/entity/home_god/home_god_api_response.dart';
import '../../data/entity/home_popular/home_popular_temple_list.dart';
import '../../data/entity/panchang_day/panchangDay.dart';
import '../../data/entity/popular_god/popular_god_api_response.dart';
import '../../data/entity/reward_entity/overview/reward_overview_api_response.dart';
import '../../data/entity/youtubevideo/youtube_video_player_model.dart';

part 'mobile_home_state.freezed.dart';

@freezed
abstract class MobileHomeState with _$MobileHomeState {
  const factory MobileHomeState({
    @Default(0) int selectedRewardTab,
    @Default(3.0) double popularTempleDistance,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingonGetDayAccordingAartiChalisa,
    @Default(false) bool isLoadinggetHomeBackgroundMantra,
    @Default(false) bool isSuccess,
    @Default(false) bool isSearchFieldClear,
    @Default(0) int BannerIndex,
    @Default(0) int BannerIndexthirdbanner,
    @Default('') String rashiData,
    @Default('') String selectedRashiId,
    @Default("") String selectedLetter,

  final DateTime? selectedDate,
  final DateTime? focusedDate,

    @Default(false) bool godisWishlistLoading,
    @Default('') String godwishlistMessage,

    @Default(CalendarDayModel()) CalendarDayModel selectedCalendarDay,
    @Default(HomeForYouApiResponse()) HomeForYouApiResponse homeForYouResponse,

    @Default({}) Map<DateTime, PanchangDay> panchangMap,
    @Default(0) int selectedTabIndex,
    @Default(0) int selectedForYouTabIndex,
    @Default('') String homeForYouSearchText,
    @Default(0) int selectedGodTabIndex,
    @Default(0) int topTabIndex,
    // Admin-configured tabs; empty → built-in tabs (see HomeTabsStateX.tabs).
    @Default([]) List<HomeTabModel> homeTabs,

    @Default(false) bool isWishlistLoading,
    @Default('') String wishlistMessage,

    @Default(false) bool isSantWishlistLoading,
    @Default('') String santwishlistMessage,

    @Default(false) bool isLoadingSearch,
    @Default(AartiResponse()) AartiResponse searchAartiChalisaResponse,

    @Default(false) bool isLoadingYoutube,
    @Default([]) List<YouTubePlaylistVideoModel> youtubeVideos,

    @Default(CalendarResponse()) CalendarResponse calendarResponse,
    @Default(false) bool isLoadingCalendar,

    @Default(null) BannerItem? panchangBanner,
    @Default([]) List<VendorSevaModel> vendorSevaList,
    // 🔥 4 FILTERED LISTS
    @Default([]) List<BannerItem> filterBasedBanners, // type 1
    @Default([]) List<BannerItem> jaapBanners, // type 2
    @Default([]) List<BannerItem> aartiChalisaBanners, // type 3
    @Default([]) List<BannerItem> eventBanners, // type 4
    /* ================= Banner Groups ================= */
    @Default([]) List<BannerItem> type1DataDrivenBanners,
    @Default([]) List<BannerItem> type2JaapBanners,
    @Default([]) List<BannerItem> type3AartiChalisaBanners,
    @Default([]) List<BannerItem> type4EventBanners,

    @Default(CalendarDayModell()) CalendarDayModell selectedPanchangDay,
    @Default(false) bool isLoadingPanchangByDate,

    @Default('') String apiErrorMessage,
    @Default('') String apiSuccessMessage,
    @Default(AartiResponse()) AartiResponse mantraHomePageResponse,
    @Default(AartiResponse()) AartiResponse mantraHomePageResponsegodwise,
    @Default(AartiResponse()) AartiResponse nextThreeDaymantraHomePageResponse,
    @Default(BannerResponse()) BannerResponse bannerResponse,
    @Default(SantListResponse()) SantListResponse santListResponse,
    @Default([]) List<TempleModel> templeList,
    @Default(AartiResponse()) AartiResponse dayAccordingAartiChalisaResponse,

    @Default("") String homeNewGodSearchText,
    @Default(false) bool isLoadingHomeGod,
    @Default(false) bool isLoadingMoreHomeGod,
    @Default(1) int homeGodCurrentPage,
    @Default(true) bool hasMoreHomeGodData,
    @Default(HomeGodApiResponse()) HomeGodApiResponse homeGodApiResponse,
    @Default(PopularGodApiResponse()) PopularGodApiResponse popularGodList,

    //popular temple
    @Default(false) bool isLoadingPopularTemple,
    @Default(false) bool isLoadingMorePopularTemple,

    @Default(1) int popularTempleCurrentPage,
    @Default(true) bool hasMorePopularTempleData,

    @Default(HomePopularTempleListResponse())
    HomePopularTempleListResponse popularTempleListResponse,

    //temple
    @Default("") String location,
    @Default(false) bool isPlaceLoading,
    @Default([]) List<dynamic> placeSuggestions,
    @Default(false) bool showHideLocationList,

    @Default('') String latitidue,
    @Default('') String longitude,

    @Default('') String currentLatitidue,
    @Default('') String currentLongitude,
    @Default('') String currentLocationName,
    @Default(false) bool currentLocationLoading,

    @Default('') String currentLocationLatitidue,
    @Default('') String currentLocationLongitude,

    @Default("") String homeTempleLocationSearchText,
    @Default("") String homeTempleSearchText,

    @Default(false) bool isLoadingHomeTemple,
    @Default(false) bool isLoadingMoreHomeTemple,

    @Default(1) int homeTempleCurrentPage,

    @Default(true) bool hasMoreHomeTempleData,

    @Default(HomeTempleListResponse())
    HomeTempleListResponse homeTempleListResponse,

    //sewa listing
    CategoryItem? selectedCategory,
    @Default(CategoriesListResponse())
    CategoriesListResponse categoriesListApiResponse,
    @Default('') String errorMessage,
    @Default(false) bool isProceedSuccess,

    //reward section related state

    @Default(RewardOverviewApiResponse())
    RewardOverviewApiResponse rewardOverviewApiResponse,
    @Default('') String rewardOverviewerrorMessage,
    @Default('') String rewardOverviewsuccessMessage,
    @Default(false) bool isRewardOverViewLoading
  }) = _MobileHomeState;

  factory MobileHomeState.initial() => const MobileHomeState();
}
