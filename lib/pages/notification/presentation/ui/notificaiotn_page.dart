import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../common/component/mm_vendor_appbar.dart';
import '../../../../common/routes/routes.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../data/entity/notification_api_response.dart';
import '../bloc/notification_bloc.dart';
import '../bloc/notification_event.dart';
import '../bloc/notification_state.dart';
import 'component/notification_card.dart';
import 'component/notification_section_header.dart';

// Blocs needed for pre-navigation actions (mirrors coordinator logic)
import '../../../../pages/lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../pages/lyrics/bloc/aartiplayer_event.dart';
import '../../../../pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../pages/mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../../pages/naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../../../pages/naamjaap/jaappage_one/presentation/bloc/jaap_event.dart'
    hide GetGodData;
import '../../../../pages/sewa_module/seva_status/bloc/seva_status_bloc.dart';
import '../../../../pages/sewa_module/seva_status/bloc/seva_status_event.dart';
import '../../../../pages/sewa_module/sewa_page/presentation/bloc/seva_page_bloc.dart';
import '../../../../pages/sewa_module/sewa_page/presentation/bloc/seva_page_event.dart';

class NotificaiotnPage extends StatefulWidget {
  const NotificaiotnPage({super.key});

  @override
  State<NotificaiotnPage> createState() => _NotificaiotnPageState();
}

class _NotificaiotnPageState extends State<NotificaiotnPage> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    context.read<NotificationBloc>().add(
      const NotificationEvent.fetch(isRefresh: false),
    );
  }

  void _onScroll() {
    final state = context.read<NotificationBloc>().state;
    if (_isBottom && !state.isMoreLoading && !state.hasReachedMax) {
      context.read<NotificationBloc>().add(const NotificationEvent.fetchMore());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final current = _scrollController.offset;
    return current >= maxScroll - 200;
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------------------
  // Tap handler: mark-as-read (if unread) + navigate to related page
  // ---------------------------------------------------------------------------
  void _onNotificationTap({
    required NotificationItem item,
    required int globalIndex,
  }) {
    // Step 1: Mark as read if still unread
    if (!item.isRead && item.id.isNotEmpty && globalIndex != -1) {
      context.read<NotificationBloc>().add(
        NotificationEvent.markAsRead(
          notificationId: item.id,
          index: globalIndex,
        ),
      );
    }

    // Step 2: Navigate to the relevant page based on type
    _navigateByType(item);
  }

  /// Routes user to the correct detail page based on notification type.
  /// Mirrors the logic in NotificationNavigationCoordinator for consistency.
  void _navigateByType(NotificationItem item) {
    final type = item.type.toLowerCase().trim();
    final godId = item.godId ?? item.data?.godId ?? '';
    final aartiId = item.aartiId ?? item.data?.aartiId ?? '';
    final sevaId = item.sevaId ?? item.data?.sevaId ?? '';
    final vendorId = item.vendorId ?? item.data?.vendorId ?? '';
    final serviceId = item.serviceId ?? item.data?.serviceId ?? '';

    switch (type) {
      // ── Aarti / Daily Aarti ─────────────────────────────────────────────
      case 'daily_aarti':
      case 'aarti':
        if (aartiId.isNotEmpty) {
          try {
            context.read<AartiPlayerBloc>().add(
              GetAartiByAartiIdEventPlayer(aartiId),
            );
          } catch (_) {}
          try {
            context.read<MobileHomeBloc>().add(
              HomeGetGetAartiChalisaGodWise(godId, 'all'),
            );
          } catch (_) {}
        }
        Navigator.pushNamed(context, AppRoutes.AARTI_PLAYER_PAGE);
        if (context.mounted) {
          BlocProvider.of<AppBloc>(context)
              .add(GetUnreadNotificationCountEvent());
        }
        break;

      // ── Seva / Category ──────────────────────────────────────────────────
      case 'seva_type':
      case 'seva':
        if (sevaId.isNotEmpty) {
          try {
            context.read<SevaPageBloc>().add(
              SevaPageEvent.getSewaPriceList(
                categoryId: serviceId,
                categoryName: '',
                categoryDescription: '',
              ),
            );
          } catch (_) {}
        }
        Navigator.pushNamed(context, AppRoutes.SEVA_PAGE);
        if (context.mounted) {
          BlocProvider.of<AppBloc>(context)
              .add(GetUnreadNotificationCountEvent());
        }
        break;

      // ── Seva Status ──────────────────────────────────────────────────────
      case 'seva_status':
      case 'seva_history':
      case 'seva_time_out':
        if (sevaId.isNotEmpty) {
          try {
            context.read<SevaStatusBloc>().add(GetStatus(id: sevaId));
          } catch (_) {}
        }
        Navigator.pushNamed(context, AppRoutes.SEWA_STATUS_PAGE);
        if (context.mounted) {
          BlocProvider.of<AppBloc>(context)
              .add(GetUnreadNotificationCountEvent());
        }
        break;

      // ── Naam Jaap ────────────────────────────────────────────────────────
      case 'daily_jaap':
      case 'jaap':
        if (godId.isNotEmpty) {
          try {
            context.read<JaapBloc>().add(
              JaapEvent.getGodData(selectedGodId: godId),
            );
            context.read<JaapBloc>().add(JaapEvent.selectMantra('', '', ''));
            context.read<JaapBloc>().add(GetWishlistMantra(userId: ''));
          } catch (_) {}
        }
        Navigator.pushNamed(
          context,
          AppRoutes.JAAP_MALA_ONE_PAGE,
          arguments: {'godId': godId, 'fromNotification': true},
        );
        if (context.mounted) {
          BlocProvider.of<AppBloc>(context)
              .add(GetUnreadNotificationCountEvent());
        }
        break;

      // ── Coins / Reward ───────────────────────────────────────────────────
      case 'coins':
      case 'reward':
        Navigator.pushNamed(context, AppRoutes.ALLTRANSACTION);
        break;

      // ── God Detail ───────────────────────────────────────────────────────
      case 'god':
      case 'god_detail':
        if (godId.isNotEmpty) {
          Navigator.pushNamed(
            context,
            AppRoutes.GOD_DETAIL_PAGE,
            arguments: {'godId': godId},
          );
          if (context.mounted) {
            BlocProvider.of<AppBloc>(context)
                .add(GetUnreadNotificationCountEvent());
          }
        }
        break;

      // ── Vendor / Temple ──────────────────────────────────────────────────
      case 'vendor':
      case 'temple':
        if (vendorId.isNotEmpty) {
          Navigator.pushNamed(
            context,
            AppRoutes.TEMPLE_DETAIL_PAGE,
            arguments: vendorId,
          );
          if (context.mounted) {
            BlocProvider.of<AppBloc>(context)
                .add(GetUnreadNotificationCountEvent());
          }
        }
        break;

      // ── Default: no navigation (informational notifications) ─────────────
      default:
        // Nothing to navigate to — tap just marks as read (done above)
        break;
    }
  }

  // ---------------------------------------------------------------------------
  // Date grouping & formatting
  // ---------------------------------------------------------------------------

  Map<String, List<NotificationItem>> _groupByDate(
    List<NotificationItem> items,
    BuildContext context,
  ) {
    final now = DateTime.now();
    final todayDate = DateTime(now.year, now.month, now.day);
    final yesterdayDate = todayDate.subtract(const Duration(days: 1));
    final locale = Localizations.localeOf(context).languageCode;

    final grouped = <String, List<NotificationItem>>{};

    for (final item in items) {
      final date = item.createdAt;
      if (date == null) {
        grouped.putIfAbsent(context.l10n.older, () => []).add(item);
        continue;
      }
      final itemDate = DateTime(date.year, date.month, date.day);
      final String label;
      if (itemDate == todayDate) {
        label = context.l10n.today;
      } else if (itemDate == yesterdayDate) {
        label = context.l10n.yesterday;
      } else {
        label = DateFormat('d MMM, yyyy', locale).format(date);
      }
      grouped.putIfAbsent(label, () => []).add(item);
    }
    return grouped;
  }

  String _formatTime(DateTime? date, BuildContext context) {
    if (date == null) return '';
    final now = DateTime.now();
    final diff = now.difference(date);
    final locale = Localizations.localeOf(context).languageCode;
    if (diff.inMinutes < 1) return context.l10n.justNow;
    if (diff.inMinutes < 60) return '${diff.inMinutes} ${context.l10n.minAgo}';
    if (diff.inHours < 24) {
      return '${diff.inHours} ${context.l10n.hoursAgo}';
    }
    return DateFormat('d MMM, yyyy', locale).format(date);
  }

  // ---------------------------------------------------------------------------
  // Build
  // ---------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.newbackgroundColorHome,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          /// App Bar Header
          Container(
            width: double.infinity,
            height: context.screenHeight * .15,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/background_image/gradient_background.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: MmVendorAppbar(
              title: context.l10n.notifications2,
              onBackTap: () => Navigator.pop(context),
            ),
          ),

          /// Content Area
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffF7F7F7),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: BlocBuilder<NotificationBloc, NotificationState>(
                builder: (context, state) {
                  // Initial Loading
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Color(0xff8B4A00),
                        strokeWidth: 2.5,
                      ),
                    );
                  }

                  // Error with no data
                  if (state.errorMessage.isNotEmpty && state.items.isEmpty) {
                    return _ErrorView(
                      message: state.errorMessage,
                      onRetry: () => context.read<NotificationBloc>().add(
                        const NotificationEvent.fetch(isRefresh: false),
                      ),
                    );
                  }

                  // Empty State
                  if (state.items.isEmpty) {
                    return _EmptyView(
                      onRefresh: () => context.read<NotificationBloc>().add(
                        const NotificationEvent.fetch(isRefresh: true),
                      ),
                    );
                  }

                  // Grouped list
                  final grouped = _groupByDate(state.items, context);
                  final sectionKeys = grouped.keys.toList();

                  return RefreshIndicator(
                    color: const Color(0xff8B4A00),
                    backgroundColor: Colors.white,
                    onRefresh: () async {
                      context.read<NotificationBloc>().add(
                        const NotificationEvent.fetch(isRefresh: true),
                      );
                      await Future.delayed(const Duration(milliseconds: 800));
                    },
                    child: CustomScrollView(
                      controller: _scrollController,
                      physics: const AlwaysScrollableScrollPhysics(),
                      slivers: [
                        // Pagination-error banner (list has items but next page failed)
                        if (state.errorMessage.isNotEmpty)
                          SliverToBoxAdapter(
                            child: _ErrorBanner(message: state.errorMessage),
                          ),

                        // Date-grouped sections
                        for (final section in sectionKeys) ...[
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                20,
                                20,
                                20,
                                12,
                              ),
                              child: NotificationSectionHeader(title: section),
                            ),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate((
                                ctx,
                                index,
                              ) {
                                final item = grouped[section]![index];
                                // Map section-local index → global index in
                                // state.items for the BLoC optimistic update.
                                final globalIndex = state.items.indexOf(item);

                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: NotificationCard(
                                    title: item.title,
                                    description: item.body,
                                    time: _formatTime(item.createdAt, context),
                                    isRead: item.isRead,
                                    type: item.type,
                                    // Always tappable — reads AND navigates.
                                    onTap: () => _onNotificationTap(
                                      item: item,
                                      globalIndex: globalIndex,
                                    ),
                                  ),
                                );
                              }, childCount: grouped[section]!.length),
                            ),
                          ),
                        ],

                        // Pagination loader / end-of-list
                        SliverToBoxAdapter(
                          child: state.isMoreLoading
                              ? const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Center(
                                    child: SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(
                                        color: Color(0xff8B4A00),
                                        strokeWidth: 2,
                                      ),
                                    ),
                                  ),
                                )
                              : state.hasReachedMax && state.items.isNotEmpty
                              ? const Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 20,
                                  ),
                                  child: _EndOfListWidget(),
                                )
                              : const SizedBox(height: 20),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// Reusable widgets
// =============================================================================

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF0E0),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Icon(
                Icons.wifi_off_rounded,
                color: Color(0xff8B4A00),
                size: 36,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Something went wrong',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff8B4A00),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
              ),
              child: Text(
                'Try Again',
                style: TextStyle(fontFamily: 'Gilroy', fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  final VoidCallback onRefresh;

  const _EmptyView({required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF8EE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.notifications_none_rounded,
                color: Color(0xff8B4A00),
                size: 42,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'No Notifications Yet',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff333333),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'You\'re all caught up! Check back later for updates.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: onRefresh,
              child: Text(
                'Refresh',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff8B4A00),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xff8B4A00),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ErrorBanner extends StatelessWidget {
  final String message;

  const _ErrorBanner({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF0E0),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFE8C89A)),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.warning_amber_rounded,
            color: Color(0xff8B4A00),
            size: 18,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'Failed to load more: $message',
              style: const TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 13,
                color: Color(0xff8B4A00),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _EndOfListWidget extends StatelessWidget {
  const _EndOfListWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey.shade300, thickness: 1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'You\'re all caught up',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 12,
              color: Colors.grey.shade400,
            ),
          ),
        ),
        Expanded(child: Divider(color: Colors.grey.shade300, thickness: 1)),
      ],
    );
  }
}
