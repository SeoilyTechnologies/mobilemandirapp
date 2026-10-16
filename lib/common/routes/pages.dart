import 'package:mandirapp/pages/notification/presentation/bloc/notification_bloc.dart';
import 'package:mandirapp/pages/sewa_module/seva_status/bloc/seva_status_bloc.dart';
import 'package:mandirapp/pages/sewa_module/thankyou_seva/presentation/bloc/thankyou_sewa_page_bloc.dart';
import 'package:mandirapp/pages/temple_detail/presentation/ui/temple_detail_screen.dart';

import '../network/app_constant.dart';
import '../../pages/global_search/presentation/ui/gloable_search_page.dart';
import '../../pages/god_detail/presentation/bloc/god_details_bloc.dart';
import '../../pages/god_detail/presentation/ui/god_detail_screen.dart';
import '../../pages/god_detail/presentation/ui/god_detail_wrapper.dart';
import '../../pages/muhurat_lagan/presentation/ui/muhurat_lagan_page.dart';
import '../../pages/muhurat_lagan/presentation/ui/muhurat_detail_page.dart';
import '../../pages/festival_event/presentation/ui/festival_event_page.dart';
import '../../pages/festival_event/presentation/ui/festival_detail_page.dart';
import '../../pages/dynamic_tab/presentation/ui/dynamic_page_screen.dart';
import '../../pages/sharad_pitarpaksh/presentation/ui/sharad_pitarpaksh_page.dart';
import '../../pages/sharad_pitarpaksh/presentation/ui/sharad_pitarpaksh_detail_page.dart';
import '../../pages/sharad_pitarpaksh/presentation/bloc/pitru_paksha_bloc.dart';
import '../../pages/sharad_pitarpaksh/presentation/bloc/pitru_paksha_detail_bloc.dart';
import '../../pages/chadava/presentation/ui/chadava_page.dart';
import '../../pages/chadava/presentation/bloc/chadava_bloc.dart';
import '../../pages/chadava_detail/presentation/ui/chadava_detail_page.dart';
import '../../pages/chadava_detail/presentation/bloc/chadava_detail_bloc.dart';
import '../../pages/chadava_sankalp/presentation/ui/chadava_sankalp_page.dart';
import '../../pages/chadava_sankalp/presentation/bloc/chadava_sankalp_bloc.dart';
import '../../pages/new_calendar/presentation/ui/panchang_screen.dart';
import '../../pages/notification/presentation/ui/notificaiotn_page.dart';
import '../../pages/sewa_module/book_sewa/bloc/book_sewa_page_bloc.dart';
import '../../pages/sewa_module/book_sewa/presentation/ui/book_sewa_page.dart';
import '../../pages/sewa_module/sewa_video_proof/presentation/bloc/video_proof_bloc.dart';
import '../../pages/sewa_module/thankyou_seva/presentation/ui/sewa_booking_success_page.dart';
import '../../pages/sewa_module/select_category/ui/bloc/select_category_bloc.dart';
import '../../pages/sewa_module/select_category/ui/select_cateogry.dart';
import '../../pages/sewa_module/seva_status/presentation/ui/sewa_status_page.dart';
import '../../pages/sewa_module/sewa_page/presentation/bloc/seva_page_bloc.dart';
import '../../pages/sewa_module/sewa_page/presentation/ui/seva_page_ui.dart';
import '../../pages/sewa_module/sewa_video_proof/presentation/ui/sewa_video_proof_page.dart';
import '../../pages/seva_history/presentation/ui/seva_history.dart';
import '../../pages/seva_history/presentation/ui/subscription_detail/seva_subscription_detail_page.dart';
import '../../pages/seva_history/presentation/bloc/seva_history_bloc.dart';
import '../../pages/temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../pages/temple_detail/presentation/ui/temple_detail_page.dart';
import '../analytics/analytics_services.dart';
import 'exports.dart' hide TempleDetailPage;

class AppPages {
  static List<PageEntitiy> routes() {
    return [
      PageEntitiy(
        route: AppRoutes.SPLASH,
        page: SplashPage(),
        bloc: BlocProvider(create: (_) => SplashBloc()),
      ),

      PageEntitiy(
        route: AppRoutes.ONBOARDIN,
        page: OnBoarding(),
        bloc: BlocProvider(create: (_) => OnboardingBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.SIGNIN,
        page: LoginScreen(),
        bloc: BlocProvider(create: (_) => LoginBloc()),
      ),

      //ab signup use nhi ho raha hai
      PageEntitiy(
        route: AppRoutes.SIGNUP,
        page: SignUpScreen(),
        bloc: BlocProvider(create: (_) => SignupBloc()),
      ),

      //ab password based hai hi nhi , otp baes hai isliye ye use nhi ho raha hi
      PageEntitiy(
        route: AppRoutes.FORGETPASSWORD,
        page: ForgotPassword(),
        bloc: BlocProvider(create: (_) => ForgetPasswordBloc()),
      ),

      //ye bhi use me nhi hai
      PageEntitiy(
        route: AppRoutes.RESETPASSWORD,
        page: ResetPassword(),
        bloc: BlocProvider(create: (_) => ResetpasswordBloc()),
      ),


      PageEntitiy(
        route: AppRoutes.CONFIRMOTP,
        page: OtpScreen(),
        bloc: BlocProvider(create: (_) => OtpBloc()),
      ),

      PageEntitiy(
        route: AppRoutes.COMPLETEPROFILE,
        page: CompleteProfile(),
        bloc: BlocProvider(create: (_) => CompleteProfileBloc()),
      ),

      PageEntitiy(
        route: AppRoutes.TERMSCONDITONABOUT,
        page: WebViewScreen(),
        bloc: BlocProvider(create: (_) => WebViewBloc()),
      ),

      //isko rakhna hai
      PageEntitiy(
        route: AppRoutes.LRC_GENERATE,
        page: WhisperLrcScreen(),
        // bloc: BlocProvider(create: (_) => SplashBloc()..add(StartTimerEvent())),
      ),

      PageEntitiy(
        route: AppRoutes.APPLICATION,
        page: ApplicationPage(),
        bloc: BlocProvider(create: (_) => AppBloc()),
      ),

      PageEntitiy(
        route: AppRoutes.TODAYS_AARTI_CHALISHA,
        page: TodayAartiChalisaSeeall(),
        bloc: BlocProvider(create: (_) => AartiChalisaLsitBloc()),
      ),

      PageEntitiy(
        route: AppRoutes.AARTI_CHALISA_MANTRA_LYRICS_PAGE,
        page: AartiChalishaLyricsPage(),
        bloc: BlocProvider(create: (_) => AartiPlayerBloc()),
      ),

      PageEntitiy(
        route: AppRoutes.AARTI_HTML_LYRICS_PAGE,
        page: AartiChalisaHtmlViewr(),
        bloc: BlocProvider(create: (_) => AartiPlayerBloc()),
      ),

//isko rakhna hai
      PageEntitiy(
        route: AppRoutes.PUJAPAGE,
        page: PujaPage(),
        bloc: BlocProvider(create: (_) => HomeBloc()),
      ),






      //-----
      // PageEntitiy(
      //   route: AppRoutes.AARTITRACKLIST,
      //   page: const TracksListScreen(),
      //   //bloc: BlocProvider(create: (_) => AartiPlayerBloc()),
      // ),
      PageEntitiy(
        route: AppRoutes.AARTIPLAYERSCREEN,
        page: const AartiPlayerScreen(),
        bloc: BlocProvider(create: (_) => AartiPlayerBloc()),
      ),

      //ye use me nhi hai
      PageEntitiy(
        route: AppRoutes.TEMPLE_LIST,
        page: const TempleList(),
        bloc: BlocProvider(create: (_) => TempleBloc()),
      ),

      //ye use me nhi hai
      PageEntitiy(
        route: AppRoutes.TEMPLE_DETAIL,
        page: const TempleDetailPage(),
        bloc: BlocProvider(create: (_) => TempleDetailBloc()),
      ),



      PageEntitiy(
        route: AppRoutes.MOBILE_HOME_UI_PAGE,
        page: MobileHome(),
        bloc: BlocProvider(create: (_) => MobileHomeBloc()),
      ),

      PageEntitiy(
        route: AppRoutes.USER_PROFILE,
        page: ProfileUi(),
        bloc: BlocProvider(create: (_) => ProfileBloc()),
      ),



      PageEntitiy(
        route: AppRoutes.SANTLISTPAGE,
        page: SantListUi(),
        bloc: BlocProvider(create: (_) => SantBloc()),
      ),


      PageEntitiy(
        route: AppRoutes.SANTDETAIL,
        page: SantDetailUi(),
        bloc: BlocProvider(create: (_) => SantBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.AARTI_CHALIS_LIST_PAGE,
        page: AartiChalisaListPage(),
        bloc: BlocProvider(create: (_) => AartiChalisaLsitBloc()),
      ),





      PageEntitiy(
        route: AppRoutes.MORE_UI_PAGE,
        page: const MoreUi(),
        // bloc: BlocProvider(create: (_) => ExploreBloc()),
      ),

      PageEntitiy(
        route: AppRoutes.MY_FAVOURITE_UI_PAGE,
        page: const WishlistPage(),
        bloc: BlocProvider(create: (_) => WishlistBloc()),
      ),
      // PageEntitiy(
      //   route: AppRoutes.ASTROLOGY_PAGE,
      //   page: const AstrologyPage(),
      //   // bloc: BlocProvider(create: (_) => ExploreBloc()),
      // ),


      PageEntitiy(
        route: AppRoutes.AARTI_PLAYER_PAGE,
        page: AartiPlayerPage(),
        bloc: BlocProvider(create: (_) => AartiPlayerBloc()),
      ),

      PageEntitiy(
        route: AppRoutes.JAAP_MALA_ONE_PAGE,
        page: JaapPageOne(),
        bloc: BlocProvider(create: (_) => JaapBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.JAAP_PAGE,
        page: JaapPage(),
        bloc: BlocProvider(create: (_) => JaapPageBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.GLOBAL_SEARCH_PAGE,
        page: const GloableSearchPage(),
      ),
      PageEntitiy(
        route: AppRoutes.JAAP_PAGE_HISTORY,
        page: JaapHistoryPage(),
        bloc: BlocProvider(create: (_) => JaapHistoryBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.UPLOAD_FORM,
        page: UploadForm(),
        //   bloc: BlocProvider(create: (_) => JaapHistoryBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.NOTIFICATIONPAGE,
        page: const NotificaiotnPage(),
        bloc: BlocProvider(create: (_) => NotificationBloc()),
      ),

      //vendor
      PageEntitiy(
        route: AppRoutes.SELECT_CATEGORY,
        page: SelectCateogry(),
      ),
      PageEntitiy(
        route: AppRoutes.SEVA_PAGE,
        page: SevaPageUi(),
        bloc: BlocProvider(create: (_) => SevaPageBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.BOOK_SEWA_PAGE,
        page: BookSewaPage(),
        bloc: BlocProvider(create: (_) => BookSewaPageBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.SEWA_BOOKING_SUCCESS_PAGE,
        page: const SewaBookingSuccessPage(),
        bloc: BlocProvider(create: (_) => ThankyouSewaPageBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.SEWA_STATUS_PAGE,
        page: SewaStatusPage(),
        bloc: BlocProvider(create: (_) => SevaStatusBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.SEVA_HISTORY_PAGE,
        page: const SevaHistory(),
        bloc: BlocProvider(create: (_) => SevaHistoryBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.SEWA_VIDEO_PROOF_PAGE,
        page: SewaVideoProofPage(),
        bloc: BlocProvider(create: (_) => VideoProofBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.SEVA_SUBSCRIPTION_DETAIL_PAGE,
        page: const SevaSubscriptionDetailPage(),
      ),

      PageEntitiy(
        route: AppRoutes.TEMPLE_DETAIL_PAGE,
        page: TempleDetailScreen(),
        bloc: BlocProvider(create: (_) => TempleDetailNewBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.GOD_DETAIL_PAGE,
        page: GodDetailWrapper(),
        bloc: BlocProvider(create: (_) => GodDetailsBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.NEW_CALENDAR_PAGE,
        page: PanchangScreenNew(),
      ),
      PageEntitiy(
        route: AppRoutes.SHUBH_MUHURATE_PAGE,
        page: const MuhuratLaganPage(),
      ),
      PageEntitiy(
        route: AppRoutes.MUHURAT_DETAIL_PAGE,
        page: const MuhuratDetailPage(),
      ),
      PageEntitiy(
        route: AppRoutes.FESTIVAL_EVENT_PAGE,
        page: const FestivalEventPage(),
      ),
      PageEntitiy(
        route: AppRoutes.FESTIVAL_DETAIL_PAGE_NEW,
        page: const FestivalDetailPage(),
      ),
      PageEntitiy(
        route: AppRoutes.DYNAMIC_PAGE,
        page: const DynamicPageScreen(),
      ),
      PageEntitiy(
        route: AppRoutes.SHARAD_PITARPAKSH_PAGE,
        page: const SharadPitarpakshPage(),
        bloc: BlocProvider(create: (_) => PitruPakshaBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.SHARAD_PITARPAKSH_DETAIL_PAGE,
        page: const SharadPitarpakshDetailPage(),
        bloc: BlocProvider(create: (_) => PitruPakshaDetailBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.CHADAVA_PAGE,
        page: const ChadavaPage(),
        bloc: BlocProvider(create: (_) => ChadavaBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.CHADAVA_DETAIL_PAGE,
        page: const ChadavaDetailPage(),
        bloc: BlocProvider(create: (_) => ChadavaDetailBloc()),
      ),
      PageEntitiy(
        route: AppRoutes.CHADAVA_SANKALP_PAGE,
        page: const ChadavaSankalpPage(),
        bloc: BlocProvider(create: (_) => ChadavaSankalpBloc()),
      ),
    ];
  }

  static List<dynamic> allblocProviders(BuildContext context) {
    List<dynamic> blocProvider = <dynamic>[];
    for (var blocEntity in routes()) {
      if (blocEntity.bloc != null) {
        blocProvider.add(blocEntity.bloc);
      }
    }
    return blocProvider;
  }

  static PageRoute GenerateRoutesSetting(RouteSettings settings) {
    AnalyticsService.logScreen(
      screenName: settings.name ?? "Unknown",
    );
    if (settings.name == '/') {
    }

    final String routeName = settings.name ?? "";

    // ── NATIVE DEEP LINK ROUTE INTERCEPTION ─────────────────────────────────
    if (routeName.startsWith('/go') ||
        routeName.startsWith('go/') ||
        routeName.contains('/go/') ||
        routeName.startsWith('http://') ||
        routeName.startsWith('https://')) {

      final PageRoute? resolvedRoute = _resolveDeepLinkRoute(routeName);
      if (resolvedRoute != null) {
        return resolvedRoute;
      }
    }

    var result = routes().where((element) => element.route == settings.name);
    if (result.isNotEmpty) {
      return PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation) =>
            result.first.page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween = Tween(
            begin: begin,
            end: end,
          ).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );
    } else {
    }

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          ApplicationPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  static PageRoute? _resolveDeepLinkRoute(String rawUrl) {
    try {
      final Uri? uri = Uri.tryParse(rawUrl.startsWith('http')
          ? rawUrl
          : "${AppConstant.domainBasseUrl}${rawUrl.startsWith('/') ? '' : '/'}$rawUrl");

      if (uri == null) return null;

      final List<String> rawSegments = uri.pathSegments
          .where((s) => s.trim().isNotEmpty)
          .toList();

      final List<String> segments =
          (rawSegments.isNotEmpty && rawSegments.first.toLowerCase() == "go")
              ? rawSegments.sublist(1)
              : rawSegments;

      final String slug = segments.isNotEmpty ? segments[0].toLowerCase() : "";

      // 1. GOD / DEVI / DEVTA / EPIC-CHARACTERS
      if (slug == "god" || slug == "devi" || slug == "devta" || slug == "epic-characters") {
        final String godName = segments.length >= 2 ? segments[1] : "";
        final String godSlug = godName.isNotEmpty ? "$slug/$godName" : "";

        if (godSlug.isNotEmpty) {
          final target = routes().firstWhere((e) => e.route == AppRoutes.GOD_DETAIL_PAGE);
          return PageRouteBuilder(
            settings: RouteSettings(
              name: AppRoutes.GOD_DETAIL_PAGE,
              arguments: {'godId': godSlug},
            ),
            transitionDuration: const Duration(milliseconds: 300),
            pageBuilder: (context, animation, secondaryAnimation) => target.page,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        }
      }

      // 2. TEMPLE
      if (slug == "temple") {
        final String templeSlug = segments.length >= 2 ? segments[1] : "";
        if (templeSlug.isNotEmpty) {
          final target = routes().firstWhere((e) => e.route == AppRoutes.TEMPLE_DETAIL_PAGE);
          return PageRouteBuilder(
            settings: RouteSettings(
              name: AppRoutes.TEMPLE_DETAIL_PAGE,
              arguments: {'templeSlug': templeSlug},
            ),
            transitionDuration: const Duration(milliseconds: 300),
            pageBuilder: (context, animation, secondaryAnimation) => target.page,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        }
      }

      // 3. SEVA
      if (slug == "seva" || slug == "sewa") {
        final String subAction = segments.length >= 2 ? segments[1].toLowerCase() : "";
        final String targetId = segments.length >= 3 ? segments[2] : "";

        if (subAction == "track" && targetId.isNotEmpty) {
          final target = routes().firstWhere((e) => e.route == AppRoutes.SEWA_STATUS_PAGE);
          return PageRouteBuilder(
            settings: RouteSettings(
              name: AppRoutes.SEWA_STATUS_PAGE,
              arguments: {'orderId': targetId},
            ),
            pageBuilder: (context, animation, secondaryAnimation) => target.page,
          );
        }

        if (subAction == "proof" && targetId.isNotEmpty) {
          final target = routes().firstWhere((e) => e.route == AppRoutes.SEWA_VIDEO_PROOF_PAGE);
          return PageRouteBuilder(
            settings: RouteSettings(
              name: AppRoutes.SEWA_VIDEO_PROOF_PAGE,
              arguments: {'proofId': targetId},
            ),
            pageBuilder: (context, animation, secondaryAnimation) => target.page,
          );
        }

        final target = routes().firstWhere((e) => e.route == AppRoutes.SEVA_PAGE);
        return PageRouteBuilder(
          settings: RouteSettings(name: AppRoutes.SEVA_PAGE),
          pageBuilder: (context, animation, secondaryAnimation) => target.page,
        );
      }
    } catch (e) {
    }

    return null;
  }
}

class PageEntitiy {
  String route;
  Widget page;
  dynamic bloc;

  PageEntitiy({required this.route, required this.page, this.bloc});
}
