import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_links/app_links.dart';
import 'package:mandirapp/main.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/service_locator/setivelocator.dart';
import 'package:mandirapp/common/local/SharedPrefs.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';

// Blocs and Events
import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import 'package:mandirapp/pages/sewa_module/seva_status/bloc/seva_status_bloc.dart';
import 'package:mandirapp/pages/sewa_module/seva_status/bloc/seva_status_event.dart';
import 'package:mandirapp/pages/application/presentatioin/bloc/app_bloc.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import 'package:mandirapp/pages/lyrics/bloc/aartiplayer_bloc.dart';
import 'package:mandirapp/pages/lyrics/bloc/aartiplayer_event.dart';
import 'package:mandirapp/pages/sewa_module/sewa_video_proof/presentation/bloc/video_proof_bloc.dart';
import 'package:mandirapp/pages/sewa_module/sewa_video_proof/presentation/bloc/video_proof_event.dart';

/// Singleton service responsible for handling incoming deep links from:
/// - App closed (terminated state via initial link)
/// - Background state (via stream)
/// - Foreground state (via stream)
/// - Notification deep links
/// - Shared links
///
/// Supported Domains:
/// - Production: https://mobilemandirapp.com
/// - Development: https://release.mobilemandirapp.com
///
/// ─────────────────────────────────────────────
/// SUPPORTED ROUTES   ( /go/<slug> )
/// ─────────────────────────────────────────────
/// /go/god      → Home bottom-tab (index 0) + Home top-tab "God" (index 3)
///                → triggers god listing API (GetNewGodDataList)
///
/// /go/sant     → Home bottom-tab (index 0) + Home top-tab "Sant" (index 5)
///                → triggers sant list API
///
/// /go/temple   → Home bottom-tab (index 0) + Home top-tab "Temples" (index 2)
///                → triggers temple list API
///
/// /go/seva     → Bottom-tab index 3 (JaapPageOne)
///                → triggers seva categories-list API
///
/// /go/aarti    → Bottom-tab index 1 (AartiChalisaListPage)
///                → selects category index 0 ("aarti"), triggers data API
///
/// /go/bhajan   → Bottom-tab index 1 → category index 1 ("bhajan")
/// /go/chalisa  → Bottom-tab index 1 → category index 2 ("chalisa")
/// /go/katha    → Bottom-tab index 1 → category index 3 ("katha")
/// /go/mantra   → Bottom-tab index 1 → category index 4 ("mantra")
/// /go/stuti    → Bottom-tab index 1 → category index 5 ("stuti")
/// ─────────────────────────────────────────────
class DeepLinkService {
  static final DeepLinkService _instance = DeepLinkService._internal();

  factory DeepLinkService() => _instance;

  static DeepLinkService get instance => _instance;

  DeepLinkService._internal();

  final AppLinks _appLinks = AppLinks();
  StreamSubscription<Uri>? _linkSubscription;

  bool _isAppInitialized = false;
  Uri? _pendingDeepLinkUri;
  String? _currentRoute;
  bool _navigationLock = false;

  /// Update the active route from RouteObserver to prevent duplicate pushes
  void updateCurrentRoute(String? routeName) {
    _currentRoute = routeName;
  }

  /// Initialize deep link listeners for both terminated and active states.
  Future<void> init() async {
    try {
      // 1. Check if launched from a deep link while App Closed (Terminated)
      final Uri? initialUri = await _appLinks.getInitialLink();
      if (initialUri != null) {
        await handleDeepLink(initialUri);
      }

      // 2. Listen to incoming deep links while in Background or Foreground
      _linkSubscription?.cancel();
      _linkSubscription = _appLinks.uriLinkStream.listen(
        (Uri? uri) async {
          if (uri != null) {
            await handleDeepLink(uri);
          }
        },
        onError: (err) {
        },
      );
    } catch (e) {
    }
  }

  /// Handle incoming URI by either queuing for cold start or executing immediately.
  Future<void> handleDeepLink(Uri uri) async {
    if (!_isAppInitialized) {
      _pendingDeepLinkUri = uri;
      return;
    }

    if (_navigationLock) {
      return;
    }

    _navigationLock = true;
    try {
      await _executeDeepLinkNavigation(uri);
    } catch (e) {
    } finally {
      await Future.delayed(const Duration(milliseconds: 500));
      _navigationLock = false;
    }
  }

  /// Parse the URI path and execute navigation to the matching screen.
  Future<void> _executeDeepLinkNavigation(Uri uri) async {
    final context = navigatorKey.currentState?.context;
    if (context == null) {
      return;
    }

    await _routeBySlug(context, uri);
  }

  /// Route logic based on /go/<slug> or /<slug> path segment.
  Future<void> _routeBySlug(BuildContext context, Uri uri) async {
    final List<String> rawSegments = uri.pathSegments
        .where((s) => s.trim().isNotEmpty)
        .toList();

    // Strip optional leading 'go' segment if present (e.g. /go/seva/track/<id> -> /seva/track/<id>)
    final List<String> segments =
        (rawSegments.isNotEmpty && rawSegments.first.toLowerCase() == "go")
            ? rawSegments.sublist(1)
            : rawSegments;

    final String slug = segments.isNotEmpty ? segments[0].toLowerCase() : "";


    switch (slug) {
      // ── GOD ──────────────────────────────────────────────────────────────
      // /go/god                       → Home + God top-tab (index 3) + god list API
      // /go/god/<slug>                 → GOD_DETAIL_PAGE with godId = "god/<slug>"
      // /go/devi/<slug>               → GOD_DETAIL_PAGE with godId = "devi/<slug>"
      // /go/devta/<slug>              → GOD_DETAIL_PAGE with godId = "devta/<slug>"
      // /go/epic-characters/<slug>    → GOD_DETAIL_PAGE with godId = "epic-characters/<slug>"
      case "god":
      // ── DEVI ─────────────────────────────────────────────────────────────
      case "devi":
      // ── DEVTA ────────────────────────────────────────────────────────────
      case "devta":
      // ── EPIC-CHARACTERS ──────────────────────────────────────────────────
      case "epic-characters":
        // godId = "<category>/<name>" — backend expects full path
        // e.g. /go/god/shiv-ji  → godId = "god/shiv-ji"
        //      /go/devi/lakshmi-mata → godId = "devi/lakshmi-mata"
        final String godName = segments.length >= 2 ? segments[1] : "";
        final String godSlug = godName.isNotEmpty ? "$slug/$godName" : "";

        if (godSlug.isNotEmpty) {
          // ─ /go/<category>/<name> → directly open GodDetailPage ──────────
          await _navigateWithBackStack(
            context,
            targetRoute: AppRoutes.GOD_DETAIL_PAGE,
            arguments: {'godId': godSlug},
            preNavigationActions: null,
          );
        } else if (slug == "god") {
          // ─ /go/god (no name) → God listing tab on Home ──────────────────
          await _navigateWithBackStack(
            context,
            targetRoute: AppRoutes.APPLICATION,
            arguments: null,
            preNavigationActions: () async {
              try {
                BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
                await Future.delayed(const Duration(milliseconds: 150));
                BlocProvider.of<MobileHomeBloc>(context).add(
                  const MobileHomeEvent.changeTopTab(3),
                );
                BlocProvider.of<MobileHomeBloc>(context).add(
                  const GetNewGodDataList(false),
                );
              } catch (e) {
              }
              await Future.delayed(const Duration(milliseconds: 150));
            },
          );
        } else {
          // /go/devi or /go/devta with no name → fallback to home
          await _navigateWithBackStack(
            context,
            targetRoute: AppRoutes.APPLICATION,
            arguments: null,
            preNavigationActions: null,
          );
        }
        break;

      // ── SANT ─────────────────────────────────────────────────────────────
      // /go/sant → Home (index 0) + top-tab Sant (index 5) + sant list API
      case "sant":
        await _navigateWithBackStack(
          context,
          targetRoute: AppRoutes.APPLICATION,
          arguments: null,
          preNavigationActions: () async {
            try {
              // Stay on Home bottom-bar tab (index 0)
              BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
              await Future.delayed(const Duration(milliseconds: 150));
              // Switch to "Sant" top-tab (index 5 in MobileHome)
              BlocProvider.of<MobileHomeBloc>(context).add(
                const MobileHomeEvent.changeTopTab(5),
              );
              // Trigger sant list API (same as what MobileHomeSantPage loads)
              BlocProvider.of<MobileHomeBloc>(context).add(
                const MobileHomeEvent.getSantList(),
              );
            } catch (e) {
            }
            await Future.delayed(const Duration(milliseconds: 150));
          },
        );
        break;

      // ── TEMPLE ───────────────────────────────────────────────────────────
      // /go/temple/<slug> → directly open TempleDetailPage with slug as templeId
      // /go/temple        → Home (index 0) + top-tab Temples (index 2) + temple list API
      case "temple":
        final String templeSlug = segments.length >= 2 ? segments[1] : "";

        if (templeSlug.isNotEmpty) {
          // ─ /go/temple/<slug> ─────────────────────────────────────────────
          // Navigate directly to TempleDetailPage.
          // TempleDetailPage reads arguments['templeId'] in initState and calls
          // GetTempleDetailById(id: templeSlug) → same API as normal detail page.
          await _navigateWithBackStack(
            context,
            targetRoute: AppRoutes.TEMPLE_DETAIL_PAGE,
            arguments: {'templeId': templeSlug},
            preNavigationActions: null,
          );
        } else {
          // ─ /go/temple ────────────────────────────────────────────────────
          // Open Home + switch to Temples top-tab + trigger temple list API.
          await _navigateWithBackStack(
            context,
            targetRoute: AppRoutes.APPLICATION,
            arguments: null,
            preNavigationActions: () async {
              try {
                // Stay on Home bottom-bar tab (index 0)
                BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
                await Future.delayed(const Duration(milliseconds: 150));
                // Switch to "Temples" top-tab (index 2 in MobileHome)
                BlocProvider.of<MobileHomeBloc>(context).add(
                  const MobileHomeEvent.changeTopTab(2),
                );
                // Trigger temple list API (same as what MobileHomeTemplePage loads)
                BlocProvider.of<MobileHomeBloc>(context).add(
                  const GetHomeTempleDataList(false),
                );
              } catch (e) {
              }
              await Future.delayed(const Duration(milliseconds: 150));
            },
          );
        }
        break;

      // ── SEVA ─────────────────────────────────────────────────────────────
      case "seva":
      case "sewa":
        final String action = segments.length >= 2 ? segments[1].toLowerCase() : "";
        final String sevaId = segments.length >= 3 ? segments[2] : "";

        if ((action == "status" || action == "track") && sevaId.isNotEmpty) {
          if (!_isUserLoggedIn()) {
            await _navigateWithBackStack(
              context,
              targetRoute: AppRoutes.SIGNIN,
              arguments: null,
              preNavigationActions: null,
            );
            return;
          }

          // /go/seva/track/<id> or /go/seva/status/<id> → Seva Status Page
          await _navigateWithBackStack(
            context,
            targetRoute: AppRoutes.SEWA_STATUS_PAGE,
            arguments: null,
            preNavigationActions: () async {
              BlocProvider.of<SevaStatusBloc>(context).add(GetStatus(id: sevaId));
              await Future.delayed(const Duration(milliseconds: 150));
            },
          );
        } else if (action == "proof" && sevaId.isNotEmpty) {
          if (!_isUserLoggedIn()) {
            await _navigateWithBackStack(
              context,
              targetRoute: AppRoutes.SIGNIN,
              arguments: null,
              preNavigationActions: null,
            );
            return;
          }

          // /go/seva/proof/<id> → Seva Video Proof Page
          await _navigateWithBackStack(
            context,
            targetRoute: AppRoutes.SEWA_VIDEO_PROOF_PAGE,
            arguments: null,
            preNavigationActions: () async {
              try {
                BlocProvider.of<VideoProofBloc>(context).add(ResetState());
                BlocProvider.of<VideoProofBloc>(context).add(GetVideoProof(id: sevaId));
              } catch (e) {
              }
              await Future.delayed(const Duration(milliseconds: 150));
            },
          );
        } else {
          // /go/seva or /go/seva/<category> or /seva  →  SelectCateogry (bottom-bar index 2)
          await _navigateWithBackStack(
            context,
            targetRoute: AppRoutes.APPLICATION,
            arguments: null,
            preNavigationActions: () async {
              try {
                // Switch to Seva / SelectCateogry bottom-bar tab (index 2)
                BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(2));
                await Future.delayed(const Duration(milliseconds: 150));
                // Trigger categories-list API so SelectCateogry has data ready
                BlocProvider.of<MobileHomeBloc>(context).add(
                  const MobileHomeEvent.getCateroiesList(),
                );
              } catch (e) {
              }
              await Future.delayed(const Duration(milliseconds: 150));
            },
          );
        }
        break;

      // ── AARTI ────────────────────────────────────────────────────────────
      case "aarti":
        await _handleAartiCategoryOrPlayer(context, segments: segments, categoryIndex: 0, type: "aarti");
        break;

      // ── BHAJAN ───────────────────────────────────────────────────────────
      case "bhajan":
        await _handleAartiCategoryOrPlayer(context, segments: segments, categoryIndex: 1, type: "bhajan");
        break;

      // ── CHALISA ──────────────────────────────────────────────────────────
      case "chalisa":
        await _handleAartiCategoryOrPlayer(context, segments: segments, categoryIndex: 2, type: "chalisa");
        break;

      // ── KATHA ────────────────────────────────────────────────────────────
      case "katha":
        await _handleAartiCategoryOrPlayer(context, segments: segments, categoryIndex: 3, type: "katha");
        break;

      // ── MANTRA ───────────────────────────────────────────────────────────
      case "mantra":
        await _handleAartiCategoryOrPlayer(context, segments: segments, categoryIndex: 4, type: "mantra");
        break;

      // ── STUTI ────────────────────────────────────────────────────────────
      case "stuti":
        await _handleAartiCategoryOrPlayer(context, segments: segments, categoryIndex: 5, type: "stuti");
        break;

      // ── PROFILE ──────────────────────────────────────────────────────────
      case "profile":
      case "user_profile":
        if (!_isUserLoggedIn()) {
          await _navigateWithBackStack(
            context,
            targetRoute: AppRoutes.SIGNIN,
            arguments: null,
            preNavigationActions: null,
          );
          return;
        }

        await _navigateWithBackStack(
          context,
          targetRoute: AppRoutes.USER_PROFILE,
          arguments: null,
          preNavigationActions: () async {
            await Future.delayed(const Duration(milliseconds: 100));
          },
        );
        break;

      // ── REWARDS ──────────────────────────────────────────────────────────
      case "rewards":
      case "reward":
        await _navigateWithBackStack(
          context,
          targetRoute: AppRoutes.APPLICATION,
          arguments: null,
          preNavigationActions: () async {
            try {
              BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
              BlocProvider.of<MobileHomeBloc>(context).add(
                const MobileHomeEvent.getRewardOverView(),
              );
              BlocProvider.of<MobileHomeBloc>(context).add(
                const MobileHomeEvent.changeTopTab(6),
              );
            } catch (e) {
            }
            await Future.delayed(const Duration(milliseconds: 150));
          },
        );
        break;

      // ── DEFAULT / FALLBACK ───────────────────────────────────────────────
      default:
        await _navigateWithBackStack(
          context,
          targetRoute: AppRoutes.APPLICATION,
          arguments: null,
          preNavigationActions: null,
        );
        break;
    }
  }

  /// Handles both category listing (/go/aarti) and player detail (/go/aarti/hanuman-ji-ki-aarti).
  Future<void> _handleAartiCategoryOrPlayer(
    BuildContext context, {
    required List<String> segments,
    required int categoryIndex,
    required String type,
  }) async {
    final String itemSlug = segments.length >= 2 ? segments[1] : "";

    if (itemSlug.isNotEmpty) {
      // /go/<type>/<slug> → Open AartiPlayerPage with slug as aartiId
      await _navigateWithBackStack(
        context,
        targetRoute: AppRoutes.AARTI_PLAYER_PAGE,
        arguments: null,
        preNavigationActions: () async {
          try {
            BlocProvider.of<AartiPlayerBloc>(context).add(
              GetAartiByAartiIdEventPlayer(itemSlug),
            );
          } catch (e) {
          }
          try {
            BlocProvider.of<MobileHomeBloc>(context).add(
              const HomeGetGetAartiChalisaGodWise("", "all"),
            );
          } catch (e) {
          }
          await Future.delayed(const Duration(milliseconds: 150));
        },
      );
    } else {
      // /go/<type> → Open AartiChalisaListPage tab with pre-selected category
      await _navigateToAartiChalisaCategory(context, index: categoryIndex, type: type);
    }
  }

  /// Plays an aarti directly using its slug URL (e.g. "/aarti/shri-pitra-aarti" -> "shri-pitra-aarti").
  /// This is the same functionality used for notifications and deep links.
  Future<void> playAartiBySlug(
    BuildContext context,
    String slugOrUrl, {
    bool preserveBackstack = true,
  }) async {
    String cleanSlug = slugOrUrl.trim();
    if (cleanSlug.contains('?')) {
      cleanSlug = cleanSlug.split('?').first;
    }
    // Strip leading domain or scheme if present
    if (cleanSlug.startsWith('http://') || cleanSlug.startsWith('https://')) {
      final parsed = Uri.tryParse(cleanSlug);
      if (parsed != null && parsed.path.isNotEmpty) {
        cleanSlug = parsed.path;
      }
    }
    // Strip optional leading 'go'
    if (cleanSlug.startsWith('/go/')) {
      cleanSlug = cleanSlug.substring(4);
    } else if (cleanSlug.startsWith('go/')) {
      cleanSlug = cleanSlug.substring(3);
    }
    // Strip leading '/aarti/' or 'aarti/'
    if (cleanSlug.startsWith('/aarti/')) {
      cleanSlug = cleanSlug.substring(7);
    } else if (cleanSlug.startsWith('aarti/')) {
      cleanSlug = cleanSlug.substring(6);
    } else if (cleanSlug.startsWith('/')) {
      cleanSlug = cleanSlug.replaceFirst(RegExp(r'^/+'), '');
    }
    cleanSlug = cleanSlug.replaceAll(RegExp(r'/+$'), '');

    if (cleanSlug.isEmpty) {
      cleanSlug = 'shri-pitra-aarti';
    }


    if (preserveBackstack) {
      try {
        BlocProvider.of<AartiPlayerBloc>(context).add(
          GetAartiByAartiIdEventPlayer(cleanSlug),
        );
      } catch (e) {
      }
      Navigator.of(context).pushNamed(AppRoutes.AARTI_PLAYER_PAGE);
    } else {
      await _navigateWithBackStack(
        context,
        targetRoute: AppRoutes.AARTI_PLAYER_PAGE,
        arguments: null,
        preNavigationActions: () async {
          try {
            BlocProvider.of<AartiPlayerBloc>(context).add(
              GetAartiByAartiIdEventPlayer(cleanSlug),
            );
          } catch (e) {
          }
          await Future.delayed(const Duration(milliseconds: 150));
        },
      );
    }
  }

  /// Helper: Navigate to AartiChalisaListPage (bottom-bar index 1) with a
  /// specific category pre-selected and its data fetched via API.
  ///
  /// [index]  → position in the CategoryRail (0=aarti, 1=bhajan, 2=chalisa,
  ///            3=katha, 4=mantra, 5=stuti)
  /// [type]   → API query type string (e.g. "aarti", "bhajan", etc.)
  Future<void> _navigateToAartiChalisaCategory(
    BuildContext context, {
    required int index,
    required String type,
  }) async {
    await _navigateWithBackStack(
      context,
      targetRoute: AppRoutes.APPLICATION,
      arguments: null,
      preNavigationActions: () async {
        try {
          // Switch to Aarti bottom-bar tab (index 1 = AartiChalisaListPage)
          BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(1));
          await Future.delayed(const Duration(milliseconds: 150));
          // Pre-select the correct category in the CategoryRail
          BlocProvider.of<AartiChalisaLsitBloc>(context).add(
            AartiChalisaListEvent.categorySelected(
              index: index,
              type: type,
            ),
          );
          // Trigger the same API that the page normally calls for this type
          BlocProvider.of<AartiChalisaLsitBloc>(context).add(
            AartiChalisaListEvent.getAartiChalisaByType(type),
          );
        } catch (e) {
        }
        await Future.delayed(const Duration(milliseconds: 150));
      },
    );
  }

  /// Navigates to the target page while ensuring the back-stack leads to Home (ApplicationPage).
  Future<void> _navigateWithBackStack(
    BuildContext context, {
    required String targetRoute,
    required dynamic arguments,
    required Future<void> Function()? preNavigationActions,
  }) async {
    final nav = navigatorKey.currentState;
    if (nav == null) return;

    if (_currentRoute == targetRoute) {
      nav.pop();
    }

    if (targetRoute == AppRoutes.APPLICATION) {
      if (preNavigationActions != null) {
        await preNavigationActions();
      }
      nav.pushNamedAndRemoveUntil(
        AppRoutes.APPLICATION,
        (route) => false,
        arguments: arguments,
      );
    } else {
      if (preNavigationActions != null) {
        await preNavigationActions();
      }
      // Reset backstack to Home (ApplicationPage) and immediately push targetRoute on top
      nav.pushNamedAndRemoveUntil(AppRoutes.APPLICATION, (route) => false);
      nav.pushNamed(targetRoute, arguments: arguments);
    }
  }

  /// Called when Splash Page is initialized and ready to transition.
  /// Returns true if a pending deep link was handled, false otherwise.
  Future<bool> onAppReadyToNavigate(BuildContext context) async {
    _isAppInitialized = true;

    if (_pendingDeepLinkUri != null) {
      final uri = _pendingDeepLinkUri!;
      _pendingDeepLinkUri = null;
      await handleDeepLink(uri);
      return true;
    }

    return false;
  }

  /// Checks whether user token exists and user is logged in (not guest).
  bool _isUserLoggedIn() {
    final prefs = getIt<SharedPrefs>();
    final String token = prefs.getString(AppConstant.token);
    final LoginResponse? userData = prefs.getModel<LoginResponse>(
      AppConstant.userModel,
      (json) => LoginResponse.fromJson(json),
    );

    if (token.trim().isEmpty || userData == null || userData.user.isGuest == true) {
      return false;
    }
    return true;
  }

  /// Clean up resources on disposal.
  void dispose() {
    _linkSubscription?.cancel();
  }
}
