import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mandirapp/pages/auth/profile/presentation/bloc/profile_bloc.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_state.dart';
import 'package:mandirapp/pages/notification/presentation/bloc/notification_event.dart';
import 'package:mandirapp/pages/wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../auth/profile/presentation/bloc/profile_event.dart';
import '../../../auth/signin/data/entity/login_response.dart';

import '../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../naamjaap/jaap_history/presentation/bloc/jaap_history_bloc.dart';
import '../../../naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../../naamjaap/jaappage_one/presentation/bloc/jaap_event.dart';
import '../../../notification/presentation/bloc/notification_bloc.dart';
import '../../../sant/presentation/bloc/sant_bloc.dart';
import '../../../wishlist/presentation/bloc/wishlist_event.dart';
import '../../../god_detail/presentation/bloc/god_details_bloc.dart';
import '../../../god_detail/presentation/bloc/god_details_event.dart';
import '../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_event.dart';


class AppInitializer {
  static bool _hasLoaded = false;

  static Future<void> loadInitialData(
    BuildContext context, {
    bool force = false,
    bool isLanguageChange = false,
  }) async {
    if (_hasLoaded && !force) {
      return;
    }
    _hasLoaded = true;
    final mobileHomeBloc = context.read<MobileHomeBloc>();
    final aartiBloc = context.read<AartiChalisaLsitBloc>();
    final appBloc = context.read<AppBloc>();
    final jaapBloc = context.read<JaapBloc>();

    /// 1. App Bloc
    appBloc.add(ForceUpdateEvent());
    if (!isLanguageChange) {
      appBloc.add(TriggerAppEvent(0));
    }
    appBloc.add(UserDataUpdate());

    /// 2. CRITICAL HOME SCREEN DATA (Fired first to avoid network congestion)
    mobileHomeBloc.add(const MobileHomeEvent.loadHomeTabs());
    mobileHomeBloc.add(HomeGetBanner());
    mobileHomeBloc.add(GetDayAccordingAartiChalisa(type: "all"));
    mobileHomeBloc.add(const GetCategoriesList());
    mobileHomeBloc.add(const MobileHomeEvent.loadPanchang());
    if (!isLanguageChange) {
      mobileHomeBloc.add(MobileHomeEvent.changeTopTab(0));
      mobileHomeBloc.add(MobileHomeEvent.selectHomeForYouTab(index: 0));
    }

    if (!isLanguageChange) {
      // Wait for critical Home Screen data (Top Banner + Panchang + Today's Aarti)
      final Completer<void> homeDataCompleter = Completer<void>();

      bool checkBannerReady(MobileHomeState s) =>
          s.filterBasedBanners.isNotEmpty ||
          s.panchangBanner != null ||
          s.bannerResponse.data.isNotEmpty;

      bool checkAartiReady(MobileHomeState s) =>
          s.dayAccordingAartiChalisaResponse.data.isNotEmpty;

      if (checkBannerReady(mobileHomeBloc.state) && checkAartiReady(mobileHomeBloc.state)) {
        if (!homeDataCompleter.isCompleted) homeDataCompleter.complete();
      } else {
        bool bannerReady = checkBannerReady(mobileHomeBloc.state);
        bool aartiReady = checkAartiReady(mobileHomeBloc.state);
        bool aartiWasLoading = false;

        late StreamSubscription sub;
        sub = mobileHomeBloc.stream.listen((state) {
          if (checkBannerReady(state)) {
            bannerReady = true;
          }
          if (state.isLoadingonGetDayAccordingAartiChalisa) {
            aartiWasLoading = true;
          }
          if (checkAartiReady(state) ||
              (aartiWasLoading && !state.isLoadingonGetDayAccordingAartiChalisa)) {
            aartiReady = true;
          }
          if (bannerReady && aartiReady && !homeDataCompleter.isCompleted) {
            homeDataCompleter.complete();
            sub.cancel();
          }
        });

        // Safety timeout so splash never blocks
        Future.delayed(const Duration(seconds: 4), () {
          if (!homeDataCompleter.isCompleted) {
            homeDataCompleter.complete();
            sub.cancel();
          }
        });
      }

      // Await critical home data before launching secondary background requests
      await homeDataCompleter.future;
    }

    /// 3. SECONDARY DATA (Loads in background without blocking Home screen critical view)
    final now = DateTime.now();
    mobileHomeBloc.add(const MobileHomeEvent.getRewardOverView());
    mobileHomeBloc.add(
      const MobileHomeEvent.getHomeForYouData(type: "aartibhajan"),
    );
    mobileHomeBloc.add(const CurrentDetectLocation());
    mobileHomeBloc.add(const GetPopularTempleList(false));
    mobileHomeBloc.add(const GetHomeTempleDataList(false));
    mobileHomeBloc.add(const GetPopularGodList(false));
    mobileHomeBloc.add(const MobileHomeEvent.getNewGodData(false));
    mobileHomeBloc.add(
      MobileHomeEvent.getCalendarEvent(month: now.month, year: now.year),
    );
    mobileHomeBloc.add(
      MobileHomeEvent.selectDate(selectedDate: now, focusedDate: now),
    );
    mobileHomeBloc.add(MobileHomeEvent.getSantList());
    mobileHomeBloc.add(MobileHomeEvent.getYoutubePlaylistVideos());
    mobileHomeBloc.add(const HomeGetNextThreeDayAarti());
    mobileHomeBloc.add(HomeMantra("mantra"));

    /// Aarti & Chalisa
    final currentAartiType = aartiBloc.state.type.isNotEmpty ? aartiBloc.state.type : "aarti";
    // 1️⃣ Sabse pehle Aarti data API call
    aartiBloc.add(GetAartiChalisaByType(currentAartiType));
    aartiBloc.add(RelatedGetAartiChalisaByType(currentAartiType));
    // 2️⃣ Phir filters/lookups (God, Festival, Tithi)
    aartiBloc.add(GetGodList());
    aartiBloc.add(GetFestivalList());
    aartiBloc.add(GetTithiList());
    if (!isLanguageChange) {
      aartiBloc.add(StoreType("aarti"));
    }

    /// Jaap
    jaapBloc.add(GetGodData());

    /// History
    context.read<JaapHistoryBloc>().add(const LoadHistory());

    /// Sant
    final santBloc = context.read<SantBloc>();
    santBloc.add(const SantEvent.getAllSantList());
    if (isLanguageChange && santBloc.state.santDetailResponse.data.id.isNotEmpty) {
      santBloc.add(SantEvent.getSantDetailById(santBloc.state.santDetailResponse.data.id));
    }

    /// God & Temple Details (if currently open)
    if (isLanguageChange) {
      try {
        final godBloc = context.read<GodDetailsBloc>();
        final currentGodId = godBloc.state.godDetailApiResponse.data.id;
        if (currentGodId.isNotEmpty) {
          godBloc.add(GodDetailsEvent.getGodDetailById(id: currentGodId));
        }
      } catch (_) {}

      try {
        final templeBloc = context.read<TempleDetailNewBloc>();
        final currentTempleId = templeBloc.state.templeDetailApiResponse.data.id;
        if (currentTempleId.isNotEmpty) {
          templeBloc.add(TempleDetailNewEvent.getTempleDetailById(id: currentTempleId));
        }
      } catch (_) {}
    }

    /// Profile
    context.read<ProfileBloc>().add(const ProfileEvent.loadProfile());

    /// Explore
    context.read<NotificationBloc>().add(
      NotificationEvent.fetch(isRefresh: false),
    );
    BlocProvider.of<AppBloc>(context).add(GetUnreadNotificationCountEvent());
    /// User Specific APIs
    final prefs = getIt<SharedPrefs>();

    final LoginResponse? userData = prefs.getModel<LoginResponse>(
      AppConstant.userModel,
      (json) => LoginResponse.fromJson(json),
    );

    try {
      FirebaseMessaging.instance.subscribeToTopic("test_notification").catchError((_) {});
      FirebaseMessaging.instance.subscribeToTopic("all_users").catchError((_) {});
      FirebaseMessaging.instance.subscribeToTopic("hanuman").catchError((_) {});
      FirebaseMessaging.instance.subscribeToTopic("aarti").catchError((_) {});

      if (userData != null) {
        final userId = userData.user.id.toString();
        FirebaseMessaging.instance.subscribeToTopic("${userId}_user").catchError((_) {});
        FirebaseMessaging.instance.subscribeToTopic(userId).catchError((_) {});

        context.read<WishlistBloc>().add(
          GetWishlist(userId: "${userData.user.id}"),
        );
        jaapBloc.add(GetWishlistMantra(userId: "${userData.user.id}"));
      }
    } catch (e) {
    }
  }
}
