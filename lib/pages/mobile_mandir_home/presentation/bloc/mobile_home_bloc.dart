import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/pages/mobile_mandir_home/data/entity/bannerEntity/banner_model.dart';

import '../../../../common/current_location/location_service.dart';
import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../../../common/utils/date_utils.dart';
import '../../../../common/utils/utils.dart';
import '../../../aarti_chalisa_list/data/entity/aarti_model.dart'
    hide TempleModel;
import '../../../aarti_chalisa_list/domain/usecase/aarti_chalisa_katha_usecase.dart';

import '../../../auth/signin/domain/usecase/login_usecase.dart';
import '../../../sewa_module/select_category/data/entity/categories_list_response.dart';
import '../../../sewa_module/select_category/domain/usecase/categoreis_usecase.dart';
import '../../../wishlist/domain/usecase/wishlist_usecase.dart';
import '../../data/entity/calendaevent/calendar_day_model.dart';
import '../../data/entity/home_foryou/home_for_your_api_response.dart';
import '../../data/entity/home_god/home_god_api_response.dart';
import '../../data/entity/home_temple/home_temple_list_response.dart';
import '../../data/entity/panchang_day/panchangDay.dart';
import '../../data/entity/panchang_day/static_panchang_response.dart';
import '../../domain/usecase/mobile_home_usecase.dart';
import 'mobile_home_event.dart';
import 'mobile_home_state.dart';

class MobileHomeBloc extends Bloc<MobileHomeEvent, MobileHomeState> {
  final String _sessionToken = Random().nextInt(999999).toString();
  final CategoreisUsecase _categoreisUsecase = getIt<CategoreisUsecase>();
  final SharedPrefs sharedPrefs = getIt<SharedPrefs>();
  final WishlistUsecase _wishlistUsecase = getIt<WishlistUsecase>();
  final LoginUsecase _signupUsecase = getIt<LoginUsecase>();
  final MobileHomeUsecase _mobileHomeUsecase = getIt<MobileHomeUsecase>();
  final AartiChalisaKathaUsecase _aartiChalisaKathaRepositery =
      getIt<AartiChalisaKathaUsecase>();

  String get _currentLang {
    final lang = sharedPrefs.getString(AppConstant.localeKey);
    return lang.isNotEmpty ? lang : 'en';
  }

  MobileHomeBloc() : super(MobileHomeState.initial()) {
    on<CategorySelected>(_onCategorySelected);
    on<Proceed>(_onProceed);
    on<GetCategoriesList>(getCategroiesList);
    on<ChangePopularTempleDistance>(_onChangePopularTempleDistance);
    on<GetPopularTempleList>(_onGetPopularTempleList);
    on<EditProfileShowHideLocationListEvent>(_onShowHideLocationList);

    on<CurrentDetectLocation>(_oncurentDetectCurrentLocation);
    on<EditProfileLocationChanged>(_onLocationChange);
    on<DetectLocation>(_onDetectCurrentLocation);
    on<EditProfileLocationLatLong>(_onLatLongChange);
    on<EditProfileSelectLocation>(_onSelectLocation);
    on<EditProfileFetchLocationSuggestions>(_onFetchLocationSuggestions);

    on<SearchTempleByLocation>(_onSearchTempleByLocation);
    on<SearchHomeTemple>(_onSearchHomeTemple);
    on<GetHomeTempleDataList>(_onGetHomeTempleList);
    on<SelectDate>(_onSelectDate);
    on<GetNewGodDataList>(_onGetHomeGodList);
    on<SearchNewHomeGod>(_onSearchHomeGod);
    on<SelectCalendarDay>(_onSelectCalendarDay);

    on<GetDayAccordingAartiChalisa>(_onGetDayAccordingAartiChalisa);
    on<RewardSelectedTabEvent>(rewardTabSelect);
    on<HomeMantra>(getHomeBackgroundMantra);
    on<HomeGetTemple>(_onLoadTempleData);
    on<HomeGetGetAartiChalisaGodWise>(_onGetDGodWiseAartiChalisaAarti);
    on<HomeGetNextThreeDayAarti>(_onGetNextThreeDayAarti);
    on<HomeGetBanner>(getBannerData);
    on<LoadPanchang>(_loadPanchang);
    on<SelectHomeTab>(_onSelectHomeTab);
    on<SelectHomeForYouTab>(_onSelectHomeForTab);
    on<SelectHomeGodTab>(_onSelectHomeGodTab);
    on<ResetGodSearchHome>(_onResetGodSearch);
    on<ChangeTopTab>(_onChangeTopTab);
    on<GetCalendarEvent>(_onGetCalendarEvent);
    on<HomeGetSantList>(_getSantList);
    on<GetYoutubePlaylistVideos>(_onGetYoutubePlaylistVideos);
    on<SearchAartiChalisa>(_onSearchAartiChalisa);
    on<ClearSearch>(_onClearSearch);
    on<HomeIsSearchClear>(_isSearchClearEvent);
    on<HomeBannerIndex>(_onBannerIndexChanged);
    on<HomeBannerIndexThird>(_onBannerIndexChangedThird);

    on<ToggleWishlistHome>(_onToggleWishlist);
    on<BhajanWishlistHomeEvent>(_onBhajanToggleWishlist);

    on<GoodWishlistHoneEvent>(_onGodToggleWishlist);
    on<MobileHomeFilterByAlphabet>(_onFilterByAlphabet);

    on<TempleWishlistHomeEvent>(_onTempleToggleWishlist);

    on<SantWishlistHomeEvent>(_onSantToggleWishlist);
    on<GetHomeForYouData>(_onGetHomeForYouData);
    on<SearchHomeForYou>(_onSearchHomeForYou);
    on<ResetSearchForYou>(_resetSearchForYou);
    on<ResetTempleSearchForYou>(_resetTempleSearchForYou);
    on<GetPopularGodList>(_ongetPopularGodList);

    on<GetRewardOverViewEvent>(_onGetRewardOverView);

    on<TrackListenEvent>(_onTrackListen);
  }

  Future<void> _onTrackListen(
    TrackListenEvent event,
    Emitter<MobileHomeState> emit,
  ) async {
    final result = await _mobileHomeUsecase.calltrackListenApi({
      "contentId": event.contentId,
      "listenedSeconds": event.listenedSeconds,
      "completed": event.completed,
    });

    result.fold((failure) {}, (response) {
      add(const MobileHomeEvent.getRewardOverView());
    });
  }

  Future<void> _onGetRewardOverView(
    GetRewardOverViewEvent event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isRewardOverViewLoading: true,
        rewardOverviewerrorMessage: '',
        rewardOverviewsuccessMessage: '',
      ),
    );

    final result = await _mobileHomeUsecase.callgetRewardOverViewApi();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isRewardOverViewLoading: false,
            rewardOverviewerrorMessage: failure.message,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            isRewardOverViewLoading: false,
            rewardOverviewApiResponse: response,
            rewardOverviewsuccessMessage: response.message,
            rewardOverviewerrorMessage: '',
          ),
        );
      },
    );
  }

  Future<void> _onSearchHomeForYou(
    SearchHomeForYou event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(homeForYouSearchText: event.searchText));

    add(
      GetHomeForYouData(type: _getHomeForYouType(state.selectedForYouTabIndex)),
    );
  }

  String _getHomeForYouType(int index) {
    switch (index) {
      case 1:
        return 'god';
      case 2:
        return 'temple';
      case 3:
        return 'sant';
      // case 4:
      //   return 'seva';
      default:
        return 'aartibhajan';
    }
  }

  Future<void> _onGetHomeForYouData(
    GetHomeForYouData event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, apiErrorMessage: ''));

    final Map<String, dynamic> query = {"type": event.type};

    if (state.homeForYouSearchText.trim().isNotEmpty) {
      query["q"] = state.homeForYouSearchText.trim();
    }

    final result = await _wishlistUsecase.callGetWishListNewApi(query);

    result.fold(
      (failure) {
        emit(
          state.copyWith(isLoading: false, apiErrorMessage: failure.message),
        );
      },
      (response) {
        emit(state.copyWith(isLoading: false, homeForYouResponse: response));
      },
    );
  }

  Future<void> _onSantToggleWishlist(
    SantWishlistHomeEvent event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isWishlistLoading: true,
        apiErrorMessage: '',
        wishlistMessage: '',
      ),
    );

    final result = await _wishlistUsecase.toggleWishlist({
      "itemId": event.itemId,
      "itemModel": event.itemModel,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isWishlistLoading: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        final String action = response["action"] ?? "";
        final String message = response["message"] ?? "";

        final bool isAdded = action.toLowerCase() == "added";

        final updatedSantList = state.santListResponse.data.map((sant) {
          if (sant.id == event.itemId) {
            return sant.copyWith(isAddedInWishlist: isAdded);
          }
          return sant;
        }).toList();

        emit(
          state.copyWith(
            isWishlistLoading: false,
            wishlistMessage: message,
            santListResponse: state.santListResponse.copyWith(
              data: updatedSantList,
            ),
            homeForYouResponse: _updateHomeForYouWishlistStatus(
              itemId: event.itemId,
              isAdded: isAdded,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onTempleToggleWishlist(
    TempleWishlistHomeEvent event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isWishlistLoading: true,
        apiErrorMessage: '',
        wishlistMessage: '',
      ),
    );

    final result = await _wishlistUsecase.toggleWishlist({
      "itemId": event.itemId,
      "itemModel": event.itemModel,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isWishlistLoading: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        final String action = response["action"] ?? "";
        final String message = response["message"] ?? "";

        final bool isAdded = action.toLowerCase() == "added";

        final updatedItems = state.homeTempleListResponse.data.items.map((
          item,
        ) {
          if (item.id == event.itemId) {
            return item.copyWith(isWishlist: isAdded);
          }
          return item;
        }).toList();

        emit(
          state.copyWith(
            isWishlistLoading: false,
            wishlistMessage: message,
            homeTempleListResponse: state.homeTempleListResponse.copyWith(
              data: state.homeTempleListResponse.data.copyWith(
                items: updatedItems,
              ),
            ),
            homeForYouResponse: _updateHomeForYouWishlistStatus(
              itemId: event.itemId,
              isAdded: isAdded,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onGodToggleWishlist(
    GoodWishlistHoneEvent event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(
      state.copyWith(
        godisWishlistLoading: true,
        apiErrorMessage: '',
        godwishlistMessage: '',
      ),
    );

    final result = await _wishlistUsecase.toggleWishlist({
      "itemId": event.itemId,
      "itemModel": event.itemModel,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            godisWishlistLoading: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        final String action = response["action"] ?? "";
        final String message = response["message"] ?? "";

        final bool isAdded = action.toLowerCase() == "added";

        /// LOCAL UPDATE
        final updatedItems = state.homeGodApiResponse.data.items.map((item) {
          if (item.id == event.itemId) {
            return item.copyWith(isWishlist: isAdded);
          }

          return item;
        }).toList();

        emit(
          state.copyWith(
            godisWishlistLoading: false,
            godwishlistMessage: message,
            homeGodApiResponse: state.homeGodApiResponse.copyWith(
              data: state.homeGodApiResponse.data.copyWith(items: updatedItems),
            ),
            homeForYouResponse: _updateHomeForYouWishlistStatus(
              itemId: event.itemId,
              isAdded: isAdded,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onSelectCalendarDay(
    SelectCalendarDay event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(selectedCalendarDay: event.day));
  }

  Future<void> rewardTabSelect(
    RewardSelectedTabEvent event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(selectedRewardTab: event.tabno));
  }

  Future<void> _onToggleWishlist(
    ToggleWishlistHome event,
    Emitter<MobileHomeState> emit,
  ) async {
    //  //print("dddd${event.itemModel}");
    emit(
      state.copyWith(
        isWishlistLoading: true,
        apiErrorMessage: '',
        wishlistMessage: '',
      ),
    );

    final result = await _wishlistUsecase.toggleWishlist({
      "itemId": event.itemId,
      "itemModel": event.itemModel,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isWishlistLoading: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        // 🔑 BACKEND ACTION
        final String action = response['action'] ?? '';
        final String message = response['message'] ?? '';

        final bool isAdded = action == 'added';

        // 🔥 LOCAL UPDATE (NO API CALL)
        final updatedList = state.dayAccordingAartiChalisaResponse.data.map((
          item,
        ) {
          if (item.id == event.itemId) {
            return item.copyWith(isAddedInWishlist: isAdded);
          }
          return item;
        }).toList();

        emit(
          state.copyWith(
            isWishlistLoading: false,
            wishlistMessage: message,
            apiSuccessMessage: message,
            dayAccordingAartiChalisaResponse: state
                .dayAccordingAartiChalisaResponse
                .copyWith(data: updatedList),
            homeForYouResponse: _updateHomeForYouWishlistStatus(
              itemId: event.itemId,
              isAdded: isAdded,
            ),
          ),
        );

        //print("dddddWISHLIST ${action.toUpperCase()} FOR ITEM ${event.itemId}");
      },
    );
  }

  Future<void> _onBhajanToggleWishlist(
    BhajanWishlistHomeEvent event,
    Emitter<MobileHomeState> emit,
  ) async {
    //print("here is event coming ${event.itemModel}");

    emit(
      state.copyWith(
        isWishlistLoading: true,
        apiErrorMessage: '',
        wishlistMessage: '',
      ),
    );

    final result = await _wishlistUsecase.toggleWishlist({
      "itemId": event.itemId,
      "itemModel": event.itemModel,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isWishlistLoading: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        final String action = response['action'] ?? '';
        final String message = response['message'] ?? '';
        final bool isAdded = action == 'added';

        final updatedList = state.dayAccordingAartiChalisaResponse.data.map((
          item,
        ) {
          //print("ITEM ADDDED IN WISHLIST");
          if (item.id == event.itemId) {
            return item.copyWith(isAddedInWishlist: isAdded);
          }
          return item;
        }).toList();
        final updatedDayList = state.dayAccordingAartiChalisaResponse.copyWith(
          data: updatedList,
        );
        emit(
          state.copyWith(
            isWishlistLoading: false,
            wishlistMessage: message,
            apiSuccessMessage: message,
            dayAccordingAartiChalisaResponse: updatedDayList,
            searchAartiChalisaResponse: _patchAartiWishlistInResponse(
              state.searchAartiChalisaResponse,
              event.itemId,
              isAdded,
            ),
            mantraHomePageResponsegodwise: _patchAartiWishlistInResponse(
              state.mantraHomePageResponsegodwise,
              event.itemId,
              isAdded,
            ),
            homeForYouResponse: _updateHomeForYouWishlistStatus(
              itemId: event.itemId,
              isAdded: isAdded,
            ),
          ),
        );
      },
    );
  }

  AartiResponse _patchAartiWishlistInResponse(
    AartiResponse source,
    String itemId,
    bool isAdded,
  ) {
    final updated = source.data.map((item) {
      if (item.id == itemId) {
        return item.copyWith(isAddedInWishlist: isAdded);
      }
      return item;
    }).toList();

    return source.copyWith(data: updated);
  }

  void _onBannerIndexChangedThird(
    HomeBannerIndexThird event,
    Emitter<MobileHomeState> emit,
  ) {
    emit(state.copyWith(BannerIndexthirdbanner: event.index));
  }

  void _onBannerIndexChanged(
    HomeBannerIndex event,
    Emitter<MobileHomeState> emit,
  ) {
    emit(state.copyWith(BannerIndex: event.index));
  }

  void _resetSearchForYou(
    ResetSearchForYou event,
    Emitter<MobileHomeState> emit,
  ) {
    //print("THIS EVENT IS CALLING HERE-------");
    emit(
      state.copyWith(
        homeForYouSearchText: "",
        isLoadingSearch: false,
        isSearchFieldClear: false,
      ),
    );
  }

  void _resetTempleSearchForYou(
    ResetTempleSearchForYou event,
    Emitter<MobileHomeState> emit,
  ) {
    //print("THIS EVENT IS CALLING HERE-------");
    emit(
      state.copyWith(
        location: "",
        showHideLocationList: false,
        homeTempleSearchText: "",
        homeTempleLocationSearchText: "",
        longitude: "",
        latitidue: "",
        isLoadingSearch: false,
        isSearchFieldClear: false,
      ),
    );
  }

  void _onClearSearch(ClearSearch event, Emitter<MobileHomeState> emit) {
    //print("THIS EVENT IS CALLING HERE-------");
    emit(
      state.copyWith(
        searchAartiChalisaResponse: const AartiResponse(),
        isLoadingSearch: false,
        isSearchFieldClear: true,
      ),
    );
  }

  void _isSearchClearEvent(
    HomeIsSearchClear event,
    Emitter<MobileHomeState> emit,
  ) {
    //print("THIS EVENT IS CALLING HERE-------");
    emit(state.copyWith(isSearchFieldClear: event.isClear));
  }

  Future<void> _onSearchAartiChalisa(
    SearchAartiChalisa event,
    Emitter<MobileHomeState> emit,
  ) async {
    if (event.query.trim().isEmpty) {
      emit(
        state.copyWith(
          isSearchFieldClear: false,
          searchAartiChalisaResponse: const AartiResponse(),
          isLoadingSearch: false,
        ),
      );
      return;
    }

    emit(state.copyWith(isLoadingSearch: true));

    final lang = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';

    final result = await _mobileHomeUsecase.callSearchAartiChalisaMantra({
      "q": event.query,
      "lang": lang,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingSearch: false,
            searchAartiChalisaResponse: const AartiResponse(),
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            isLoadingSearch: false,
            searchAartiChalisaResponse: response,
          ),
        );
      },
    );
  }

  Future<void> _onGetYoutubePlaylistVideos(
    GetYoutubePlaylistVideos event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingYoutube: true,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );

    //print("CALLING YOTUBE VIDEO API");
    final result = await _mobileHomeUsecase.callGetYoutubePlaylistVideos({});

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingYoutube: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (videos) {
        emit(
          state.copyWith(
            isLoadingYoutube: false,
            youtubeVideos: videos,
            apiSuccessMessage: "YouTube videos loaded successfully",
          ),
        );
      },
    );
  }

  void _onChangeTopTab(ChangeTopTab event, Emitter<MobileHomeState> emit) {
    emit(state.copyWith(topTabIndex: event.index));
  }

  Future<void> _onSelectHomeTab(
    SelectHomeTab event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(selectedTabIndex: event.index));
  }

  Future<void> _onSelectHomeForTab(
    SelectHomeForYouTab event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(selectedForYouTabIndex: event.index));
  }

  Future<void> _loadPanchang(
    LoadPanchang event,
    Emitter<MobileHomeState> emit,
  ) async {
    final response = staticPanchangResponse; // your API JSON

    final Map<DateTime, PanchangDay> map = {};

    for (final item in response['panchang']) {
      final date = DateTime.utc(
        response['year'],
        response['month'],
        item['day'],
      );

      map[date] = PanchangDay(
        tithi: item['tithi'],
        nak: item['nak'],
        sunrise: (item['sunrise'] as num).toDouble(),
        sunSetTime: (item['sunSetTime'] as num).toDouble(),
      );
    }

    emit(state.copyWith(panchangMap: map));
  }

  Future<void> _onLoadTempleData(
    HomeGetTemple event,
    Emitter<MobileHomeState> emit,
  ) async {
    try {} catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _onGetDGodWiseAartiChalisaAarti(
    HomeGetGetAartiChalisaGodWise event,
    Emitter<MobileHomeState> emit,
  ) async {
    // body prepare karo - agar day empty hai to empty map bhej do
    final Map<String, dynamic> body = {};
    //print("GOD ID IS THIS---${event.id}");
    final result = await _aartiChalisaKathaRepositery
        .callgetGodWiseAartiChalisaMantra({
          "godId": event.id,
          "lang": _currentLang,
          "type": "all",
        });
    //print(
    //   "CLICK IS WORKING HERE HERE HERE HERE HERE///////////${event.type}  ${event.id}",
    // );

    result.fold(
      (failure) {
        //print("GETTING HERE DJ SJSJSJSJS ${failure.message}");
        emit(
          state.copyWith(
            isSuccess: false,
            apiErrorMessage: failure.message,
            apiSuccessMessage: '',
            // agar error pe previous data clear karna hai to:
            mantraHomePageResponsegodwise: const AartiResponse(),
          ),
        );
      },
      (response) {
        //print("GETTING HERE DJ SJSJSJSJS ${response}");
        emit(
          state.copyWith(
            isSuccess: true,
            apiErrorMessage: '',
            apiSuccessMessage: "ssss",
            mantraHomePageResponsegodwise: response,
          ),
        );
      },
    );
  }

  String getTodayDate() {
    final now = DateTime.now();
    return "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";
  }

  Future<void> _onGetNextThreeDayAarti(
    HomeGetNextThreeDayAarti event,
    Emitter<MobileHomeState> emit,
  ) async {
    // body prepare karo - agar day empty hai to empty map bhej do
    final Map<String, dynamic> body = {};
    // //print(
    //   "_onGetDGodWiseAartiChalisaAarti _onGetDGodWiseAartiChalisaAarti---${getTodayDate()}",
    // );
    final result = await _aartiChalisaKathaRepositery.callgetNextThreeDayAarti({
      "date": getTodayDate(),
      "lang": _currentLang,
      "type": "aarti",
      "days": 3,
    });
    //print(
    //  "_onGetDGodWiseAartiChalisaAarti _onGetDGodWiseAartiChalisaAarti _onGetDGodWiseAartiChalisaAarti",
    // );

    result.fold(
      (failure) {
        //print("GETTING HERE DJ SJSJSJSJS ${failure.message}");
        emit(
          state.copyWith(
            isSuccess: false,
            apiErrorMessage: failure.message,
            apiSuccessMessage: '',
            // agar error pe previous data clear karna hai to:
            nextThreeDaymantraHomePageResponse: const AartiResponse(),
          ),
        );
      },
      (response) {
        //print("GETTING HERE DJ SJSJSJSJS ${response}");
        emit(
          state.copyWith(
            isSuccess: true,
            apiErrorMessage: '',
            apiSuccessMessage: "ssss",
            nextThreeDaymantraHomePageResponse: response,
          ),
        );
      },
    );
  }

  /// ============================
  /// HANDLER: Get Day-wise Aarti/Chalisa
  /// ============================
  Future<void> _onGetDayAccordingAartiChalisa(
    GetDayAccordingAartiChalisa event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(isLoadingonGetDayAccordingAartiChalisa: true));
    String dayName = DateFormat('EEEE').format(DateTime.now());
    // body prepare karo - agar day empty hai to empty map bhej do
    final Map<String, dynamic> body = {};

    final result = await _mobileHomeUsecase.callgetdayAccordingAartiChalisa({
      "day": DateUtilsHelper.currentDay(),
      "month": DateUtilsHelper.currentMonth(),
      "lang": _currentLang,
      "type": "${event.type ?? "all"}",
    });
    //print("CLICK IS WORKING HERE HERE HERE HERE HERE///////////${event.type}");

    result.fold(
      (failure) {
        //print("GETTING HERE DJ SJSJSJSJS ${failure.message}");
        emit(
          state.copyWith(
            isLoadingonGetDayAccordingAartiChalisa: false,
            isSuccess: false,
            apiErrorMessage: failure.message,
            apiSuccessMessage: '',
            // agar error pe previous data clear karna hai to:
            dayAccordingAartiChalisaResponse: const AartiResponse(),
          ),
        );
      },
      (response) {
        //print("GETTING HERE DJ SJSJSJSJS ${response}");
        emit(
          state.copyWith(
            isLoadingonGetDayAccordingAartiChalisa: false,
            isSuccess: true,
            apiErrorMessage: '',
            apiSuccessMessage: "ssss",
            dayAccordingAartiChalisaResponse: response,
          ),
        );
      },
    );
  }

  Future<void> _getSantList(
    HomeGetSantList event,
    Emitter<MobileHomeState> emit,
  ) async
  {
    // body prepare karo - agar day empty hai to empty map bhej do
    final lang = sharedPrefs.getString(AppConstant.localeKey);
    final selectedLang = (lang != null && lang.isNotEmpty) ? lang : 'en';

    final result = await _mobileHomeUsecase.callGetSantList({
      "lang": "$selectedLang",
    });

    result.fold(
      (failure) {
        //print("GETTING HERE DJ SJSJSJSJS ${failure.message}");
        emit(
          state.copyWith(
            isSuccess: false,
            apiErrorMessage: failure.message,
            apiSuccessMessage: '',
          ),
        );
      },
      (response) {
        //print("GETTING sant response here ${response}");
        emit(
          state.copyWith(
            selectedLetter:"",
            isSuccess: true,
            apiErrorMessage: '',
            apiSuccessMessage: "ssss",
            santListResponse: response,
          ),
        );
      },
    );
  }


  /// Filter by Alphabet (A–Z)
  Future<void> _onFilterByAlphabet(
      MobileHomeFilterByAlphabet event,
      Emitter<MobileHomeState> emit,
      ) async
  {
    emit(
      state.copyWith(
        isLoading: true,
        isSuccess: false,
        selectedLetter: event.alphabet,
        errorMessage: "",
      ),
    );
    final lang = sharedPrefs.getString(AppConstant.localeKey);
    final selectedLang = (lang != null && lang.isNotEmpty) ? lang : 'en';

    final result = await _mobileHomeUsecase.callGetSantListFilterWithAlphabets({
      "alphabet": event.alphabet,
      "lang": selectedLang,
    });

    result.fold(
          (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: false,
            errorMessage: "No Sant Found",
          ),
        );
      },
          (response) {
        final bool isEmpty = response.total == 0;

        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            santListResponse: response,
            errorMessage: isEmpty ? "" : "",
          ),
        );
      },
    );
  }



  Future<void> _onSelectDate(
    SelectDate event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedDate: event.selectedDate,
        focusedDate: event.focusedDate,
      ),
    );
  }

  Future<void> getHomeBackgroundMantra(
    HomeMantra event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadinggetHomeBackgroundMantra: true,
        isSuccess: false,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );
    final code = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';
    final Map<String, dynamic> body = {
      "type": "${event.type}",
      "lang": "$code",
    };

    final result = await _aartiChalisaKathaRepositery.callHomeMantraApi(body);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadinggetHomeBackgroundMantra: false,
            apiErrorMessage: failure.message,
            mantraHomePageResponse: AartiResponse(),
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            isLoadinggetHomeBackgroundMantra: false,
            isSuccess: true,
            mantraHomePageResponse: response,
            apiSuccessMessage: "Data fetched successfully",
          ),
        );
      },
    );
  }

  Future<void> _onGetCalendarEvent(
    GetCalendarEvent event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(isLoadingCalendar: true, apiErrorMessage: ''));

    final result = await _mobileHomeUsecase.callgetCalendarEvent({
      "month": event.month,
      "year": event.year,
    });

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingCalendar: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        final now = state.selectedDate ?? DateTime.now();

        CalendarDayModel selectedDay = const CalendarDayModel();

        try {
          selectedDay = response.data.firstWhere((e) {
            final date = DateTime.parse(e.date);

            return date.year == now.year &&
                date.month == now.month &&
                date.day == now.day;
          });
        } catch (_) {
          if (response.data.isNotEmpty) {
            selectedDay = response.data.first;
          }
        }

        emit(
          state.copyWith(
            isLoadingCalendar: false,
            calendarResponse: response,
            selectedCalendarDay: selectedDay,
          ),
        );
      },
    );
  }

  Future<void> getBannerData(
    HomeGetBanner event,
    Emitter<MobileHomeState> emit,
  ) async
  {
    final lang = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';

    final result = await _mobileHomeUsecase.callgetBannerApi({
      "lang": lang,
      "day": "Monday", // ← yahan actual selected day bhejna
      "tithi": "Chaturthi",
      "month": "Shravan",
    });

    result.fold(
      (failure) {
        //print("CALLING ERROR OF  OF BANER API------${failure.message}");
        emit(
          state.copyWith(isLoading: false, apiErrorMessage: failure.message),
        );
      },
      (response) {
        //print("CALLING INSUCCESESS OF BANER API-------");
        final all = response.data;

        final panchangBanner = all.cast<BannerItem?>().firstWhere(
          (e) =>
              e?.bannerType == 'panchang' && e?.panchangdata.isNotEmpty == true,
          orElse: () => null,
        );

        //seva banner ke liye
        final vendorSevaList = all
            .where((e) => e.bannerType == 'seva')
            .expand((e) => e.seva?.vendorSeva ?? <VendorSevaModel>[])
            .toList();

        // 🔥 TYPE 1 – FILTER BASED (data_driven + auto content)
        final filterBased = all
            .where(
              (b) => b.bannerType == 'data_driven' || b.bannerType == 'content',
            )
            .toList();

        //print("CHECKING HERE FILTERBASED TYEP 1 $filterBased");
        // 🔥 TYPE 2 – NAAM JAAP
        final jaap = all
            .where((b) => b.bannerType == 'cta_button_jaap')
            .toList();
        //print("jaap banner is here $jaap");
        // 🔥 TYPE 3 – AARTI / CHALISA
        final aartiChalisa = all
            .where((b) => b.bannerType == 'aarti_chalisa_banmer')
            .toList();

        // 🔥 TYPE 4 – EVENTS
        final events = all
            .where((b) => b.bannerType == 'event_banner')
            .toList();

        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            bannerResponse: response,
            panchangBanner: panchangBanner,
            filterBasedBanners: filterBased,
            vendorSevaList: vendorSevaList,
            jaapBanners: jaap,
            aartiChalisaBanners: aartiChalisa,
            eventBanners: events,

            apiSuccessMessage: "Banners loaded",
          ),
        );
      },
    );
  }

  void _emitLoading(Emitter<MobileHomeState> emit) {
    emit(
      state.copyWith(
        isLoading: true,
        isSuccess: false,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );
  }

  //new home god functionality
  Future<void> _onSelectHomeGodTab(
    SelectHomeGodTab event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedGodTabIndex: event.index,
        homeGodCurrentPage: 1,
        hasMoreHomeGodData: true,
        homeGodApiResponse: const HomeGodApiResponse(),
      ),
    );

    add(const GetNewGodDataList(false));
  }


  Future<void> _onResetGodSearch(
      ResetGodSearchHome event,
      Emitter<MobileHomeState> emit,
      ) async {
    emit(
      state.copyWith(
        selectedGodTabIndex: 0,
        homeNewGodSearchText: "", // search clear
        homeGodCurrentPage: 1,
        hasMoreHomeGodData: true, // true hona chahiye
        isLoadingMoreHomeGod: false,
        homeGodApiResponse: const HomeGodApiResponse(),
      ),
    );

    add(const GetNewGodDataList(false)); // page 1 load
  }

  Future<void> _onSearchHomeGod(
    SearchNewHomeGod event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(
      state.copyWith(
        homeNewGodSearchText: event.searchText,
        homeGodCurrentPage: 1,
        hasMoreHomeGodData: true,
        homeGodApiResponse: const HomeGodApiResponse(),
      ),
    );

    add(const GetNewGodDataList(false));
  }

  Future<void> _onGetHomeGodList(
    GetNewGodDataList event,
    Emitter<MobileHomeState> emit,
  ) async
  {
    if (event.isLoadMore &&
        (state.isLoadingMoreHomeGod || !state.hasMoreHomeGodData)) {
      return;
    }

    final page = event.isLoadMore ? state.homeGodCurrentPage + 1 : 1;

    emit(
      state.copyWith(
        isLoadingHomeGod: !event.isLoadMore,
        isLoadingMoreHomeGod: event.isLoadMore,
      ),
    );

    //print("GET GOD API IS CALLING HERE --------");
    final Map<String, dynamic> query = {
      "page": page,
      "limit": 20,
      "lang": _currentLang,
    };

    if (state.homeNewGodSearchText.trim().isNotEmpty) {
      query["q"] = state.homeNewGodSearchText.trim();
    }
    String category = "";

    switch (state.selectedGodTabIndex) {
      case 0:
        category = "All";
        break;
      case 1:
        //god
        category = "69e0ad21d6e540bb1beba6a6";
        break;
      case 2:
        //69e0be12d6e540bb1bebdb36 - devta
        category = "69e0be12d6e540bb1bebdb36";
        break;
      case 3:
        // 69e0be25d6e540bb1bebdbf3 devi
        category = "69e0be25d6e540bb1bebdbf3";
        break;
      case 4:
        // 69f58d7a119fb6fa5229df70 - Epic Characters
        category = "69f58d7a119fb6fa5229df70";
        break;
    }
    if (category != "All") {
      query["category"] = category;
    }

    final result = await _mobileHomeUsecase.callgetNewHomeGodList(query);

    result.fold(
      (failure) {
        //print("HOME GOD API RESPONSE  Failure is IS ${failure.message}");
        emit(
          state.copyWith(isLoadingHomeGod: false, isLoadingMoreHomeGod: false),
        );
      },
      (response) {
        //print("HOME GOD API RESPONSE IS ${response.data}");
        final updatedItems = event.isLoadMore
            ? [...state.homeGodApiResponse.data.items, ...response.data.items]
            : response.data.items;

        emit(
          state.copyWith(
            isLoadingHomeGod: false,
            isLoadingMoreHomeGod: false,
            homeGodCurrentPage: page,
            hasMoreHomeGodData:
                response.data.pagination.page <
                response.data.pagination.totalPages,
            homeGodApiResponse: response.copyWith(
              data: response.data.copyWith(items: updatedItems),
            ),
          ),
        );
      },
    );
  }

  //new home temple functionality

  Future<void> _onSearchTempleByLocation(
    SearchTempleByLocation event,
    Emitter<MobileHomeState> emit,
  ) async
  {
    emit(
      state.copyWith(
        homeTempleLocationSearchText: event.location,
        homeTempleCurrentPage: 1,
        hasMoreHomeTempleData: true,
        homeTempleListResponse: const HomeTempleListResponse(),
      ),
    );

    add(const GetHomeTempleDataList(false));
  }

  Future<void> _onSearchHomeTemple(
    SearchHomeTemple event,
    Emitter<MobileHomeState> emit,
  ) async
  {
    emit(
      state.copyWith(
        homeTempleSearchText: event.searchText,
        homeTempleCurrentPage: 1,
        hasMoreHomeTempleData: true,
        homeTempleListResponse: const HomeTempleListResponse(),
      ),
    );

    add(const GetHomeTempleDataList(false));
  }

  Future<void> _onGetHomeTempleList(
    GetHomeTempleDataList event,
    Emitter<MobileHomeState> emit,
  ) async
  {
    if (event.isLoadMore &&
        (state.isLoadingMoreHomeTemple || !state.hasMoreHomeTempleData)) {
      return;
    }

    final page = event.isLoadMore ? state.homeTempleCurrentPage + 1 : 1;

    emit(
      state.copyWith(
        isLoadingHomeTemple: !event.isLoadMore,
        isLoadingMoreHomeTemple: event.isLoadMore,
      ),
    );

    final Map<String, dynamic> query = {"page": page, "limit": 6, "lang": _currentLang};

    if (state.homeTempleSearchText.trim().isNotEmpty) {
      query["q"] = state.homeTempleSearchText.trim();
    }

    if (state.homeTempleLocationSearchText.trim().isNotEmpty) {
      query["place"] = state.homeTempleLocationSearchText.trim();
    }
    if (state.latitidue.isNotEmpty &&
        state.longitude.isNotEmpty &&
        state.latitidue != "0.0" &&
        state.longitude != "0.0") {
      query["lat"] = state.latitidue;
      query["lng"] = state.longitude;
    }
    //latitue state.latitude
    //longitude state.longitude

    final result = await _mobileHomeUsecase.callgetNewHomeTempleList(query);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingHomeTemple: false,
            isLoadingMoreHomeTemple: false,
          ),
        );
      },
      (response) {
        final updatedItems = event.isLoadMore
            ? [
                ...state.homeTempleListResponse.data.items,
                ...response.data.items,
              ]
            : response.data.items;

        emit(
          state.copyWith(
            isLoadingHomeTemple: false,
            isLoadingMoreHomeTemple: false,

            homeTempleCurrentPage: page,

            hasMoreHomeTempleData:
                response.data.pagination.page <
                response.data.pagination.totalPages,

            homeTempleListResponse: response.copyWith(
              data: response.data.copyWith(items: updatedItems),
            ),
          ),
        );
      },
    );
  }


  void _onLocationChange(
    EditProfileLocationChanged event,
    Emitter<MobileHomeState> emit,
  ) {
    emit(
      state.copyWith(
        location: event.location,
        showHideLocationList: true,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
        isSuccess: false,
      ),
    );

    if (event.location.isNotEmpty) {
      add(EditProfileFetchLocationSuggestions(event.location));
    }
  }

  void _onShowHideLocationList(
    EditProfileShowHideLocationListEvent event,
    Emitter<MobileHomeState> emit,
  ) {
    emit(state.copyWith(showHideLocationList: event.showHide));
  }

  Future<void> _onFetchLocationSuggestions(
    EditProfileFetchLocationSuggestions event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(isPlaceLoading: true));

    final result = await _signupUsecase.fetchPlaceSuggestions(
      event.query,
      _sessionToken,
    );

    result.fold(
      (_) => emit(state.copyWith(isPlaceLoading: false, placeSuggestions: [])),
      (suggestions) => emit(
        state.copyWith(isPlaceLoading: false, placeSuggestions: suggestions),
      ),
    );
  }

  void _onLatLongChange(
    EditProfileLocationLatLong event,
    Emitter<MobileHomeState> emit,
  ) {
    emit(state.copyWith(latitidue: event.latitude, longitude: event.longitude));
  }

  Future<void> _onSelectLocation(
    EditProfileSelectLocation event,
    Emitter<MobileHomeState> emit,
  ) async {
    //print("SELECTED LOCATION NAME IS ${event.description}");
    emit(
      state.copyWith(
        location: event.description,
        showHideLocationList: false,
        placeSuggestions: [],
      ),
    );
    // Temple list refresh
    add(SearchTempleByLocation(event.description));
    final result = await _signupUsecase.fetchLatLng(
      event.placeId,
      _sessionToken,
    );

    result.fold(
      (_) {},
      (location) => emit(
        state.copyWith(
          latitidue: location['lat'].toString(),
          longitude: location['lng'].toString(),
        ),
      ),
    );
  }

  void _onDetectCurrentLocation(
    DetectLocation event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(currentLocationLoading: true));

    try {
      final location = await getIt<LocationService>().getCurrentLocation();
      emit(
        state.copyWith(
          currentLatitidue: location.latitude.toString(),
          currentLongitude: location.longitude.toString(),
          currentLocationName: location.address,
          location: location.address,
          currentLocationLoading: false,
          longitude: location.longitude.toString(),
          latitidue: location.latitude.toString(),
          isSuccess: false,
        ),
      );
      add(SearchTempleByLocation(location.address));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _oncurentDetectCurrentLocation(
    CurrentDetectLocation event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(currentLocationLoading: true));

    try {
      final location = await getIt<LocationService>().getCurrentLocation();
      emit(
        state.copyWith(
          currentLocationLatitidue: location.latitude.toString(),
          currentLocationLongitude: location.longitude.toString(),

          isSuccess: false,
        ),
      );
      add(const GetPopularTempleList(false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _onChangePopularTempleDistance(
    ChangePopularTempleDistance event,
    Emitter<MobileHomeState> emit,
  ) {
    emit(state.copyWith(popularTempleDistance: event.distance));

    // Agar API hit karni ho
    add(const GetPopularTempleList(false));
  }

  Future<void> _onGetPopularTempleList(
    GetPopularTempleList event,
    Emitter<MobileHomeState> emit,
  ) async {
    if (event.isLoadMore &&
        (state.isLoadingMorePopularTemple || !state.hasMorePopularTempleData)) {
      return;
    }

    final page = event.isLoadMore ? state.popularTempleCurrentPage + 1 : 1;

    emit(
      state.copyWith(
        isLoadingPopularTemple: !event.isLoadMore,
        isLoadingMorePopularTemple: event.isLoadMore,
      ),
    );
    //print("LAT => ${state.currentLocationLatitidue}");
    //print("LNG => ${state.currentLocationLongitude}");
    //print("RADIUS => ${state.popularTempleDistance}");
    final query = {"page": page, "limit": 6, "lang": _currentLang};

    if (state.currentLocationLatitidue.isNotEmpty &&
        state.currentLocationLongitude.isNotEmpty &&
        state.currentLocationLatitidue != "0.0" &&
        state.currentLocationLongitude != "0.0") {
      query.addAll({
        "lat": state.currentLocationLatitidue,
        "lng": state.currentLocationLongitude,
        "radius": state.popularTempleDistance, // default 3.0
      });
    }

    final result = await _mobileHomeUsecase.callgetPopularHomeTempleList(query);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingPopularTemple: false,
            isLoadingMorePopularTemple: false,
          ),
        );
      },
      (response) {
        final updatedItems = event.isLoadMore
            ? [
                ...state.popularTempleListResponse.data.items,
                ...response.data.items,
              ]
            : response.data.items;

        emit(
          state.copyWith(
            isLoadingPopularTemple: false,
            isLoadingMorePopularTemple: false,

            popularTempleCurrentPage: page,

            hasMorePopularTempleData:
                response.data.pagination.page <
                response.data.pagination.totalPages,

            popularTempleListResponse: response.copyWith(
              data: response.data.copyWith(items: updatedItems),
            ),
          ),
        );
      },
    );
  }

  /// 🔹 Category Select
  void _onCategorySelected(
    CategorySelected event,
    Emitter<MobileHomeState> emit,
  ) {
    if (!event.category.isActive) return;

    /// ✅ Toggle logic
    if (state.selectedCategory?.id == event.category.id) {
      /// same item tap → unselect
      emit(
        state.copyWith(
          selectedCategory: null,
          errorMessage: '',
          isProceedSuccess: false,
        ),
      );
    } else {
      /// new selection
      emit(
        state.copyWith(
          selectedCategory: event.category,
          errorMessage: '',
          isProceedSuccess: false,
        ),
      );
    }
  }

  ///  Continue Button Click
  void _onProceed(Proceed event, Emitter<MobileHomeState> emit) {
    if (state.selectedCategory == null) {
      emit(
        state.copyWith(
          errorMessage: 'Please select a seva category',
          isProceedSuccess: false, //  ensure false
        ),
      );
    } else {
      emit(state.copyWith(errorMessage: '', isProceedSuccess: true));
    }
  }

  ///  get servies breed and cow type data
  Future<void> getCategroiesList(
    GetCategoriesList event,
    Emitter<MobileHomeState> emit,
  ) async {
    final categoriesListApiResponse = await _categoreisUsecase
        .callGetCategriesApi({});
    categoriesListApiResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            errorMessage: failure.message,
            isProceedSuccess: false,
            categoriesListApiResponse: CategoriesListResponse(),
          ),
        );
      },
      (success) {
        emit(
          state.copyWith(
            errorMessage: "",
            isProceedSuccess: false,
            categoriesListApiResponse: success,
          ),
        );
      },
    );
  }

  HomeForYouApiResponse _updateHomeForYouWishlistStatus({
    required String itemId,
    required bool isAdded,
  }) {
    final updatedData = state.homeForYouResponse.data.map((item) {
      final sant = item.santData;
      if (sant != null && (sant.id == itemId || item.contentId == itemId)) {
        return item.copyWith(
          santData: sant.copyWith(isAddedInWishlist: isAdded),
        );
      }

      final god = item.godData;
      if (god != null && god.id == itemId) {
        return item.copyWith(godData: god.copyWith(isWishlist: isAdded));
      }

      final temple = item.templeData;
      if (temple != null && temple.id == itemId) {
        return item.copyWith(templeData: temple.copyWith(isWishlist: isAdded));
      }

      final mantra = item.mantraData;
      if (mantra != null && mantra.id == itemId) {
        return item.copyWith(
          mantraData: mantra.copyWith(isAddedInWishlist: isAdded),
        );
      }

      return item;
    }).toList();

    return state.homeForYouResponse.copyWith(data: updatedData);
  }

  Future<void> _ongetPopularGodList(
    GetPopularGodList event,
    Emitter<MobileHomeState> emit,
  ) async {
    emit(state.copyWith(isLoadingHomeGod: true, apiErrorMessage: ''));

    final query = {"page": 1, "limit": 30, "lang": _currentLang};

    final result = await _mobileHomeUsecase.callgetPopularGod(query);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingHomeGod: false,
            apiErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        emit(state.copyWith(isLoadingHomeGod: false, popularGodList: response));
      },
    );
  }
}
