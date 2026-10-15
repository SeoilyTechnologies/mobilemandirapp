import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';


import '../../../../common/routes/exports.dart';
import '../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../sewa_module/seva_status/bloc/seva_status_bloc.dart';
import '../../../sewa_module/seva_status/bloc/seva_status_event.dart';
import '../../data/entity/seva_history_response.dart';
import '../../data/entity/seva_subscription_response.dart';
import '../bloc/seva_history_bloc.dart';
import '../bloc/seva_history_event.dart';
import '../bloc/seva_history_state.dart';
import '../bloc/seva_subscription_bloc.dart';
import 'component/history_seva_card.dart';
import 'component/seva_card.dart';
import 'component/subscription_card.dart';

class SevaHistory extends StatefulWidget {
  const SevaHistory({super.key});

  @override
  State<SevaHistory> createState() => _SevaHistoryState();
}

class _SevaHistoryState extends State<SevaHistory> {
  int _selectedTabIndex = 0; // 0: One Time Payment, 1: Monthly Payment
  late final SevaSubscriptionBloc _subscriptionBloc;

  @override
  void initState() {
    super.initState();
    _subscriptionBloc = SevaSubscriptionBloc();

    // Request subscription history from API immediately
    _subscriptionBloc.add(GetSubscriptionsEvent(page: 1, limit: 50));

    // Ensure One-Time Seva history is requested if bloc is in initial state
    final oneTimeState = context.read<SevaHistoryBloc>().state;
    oneTimeState.maybeWhen(
      initial: () {
        context.read<SevaHistoryBloc>().add(
              const SevaHistoryEvent.getSevaHistory(),
            );
      },
      orElse: () {},
    );
  }

  @override
  void dispose() {
    _subscriptionBloc.close();
    super.dispose();
  }

  void _onTabChanged(int index) {
    if (_selectedTabIndex != index) {
      setState(() {
        _selectedTabIndex = index;
      });
      if (index == 1 &&
          (_subscriptionBloc.state is SevaSubscriptionInitial ||
              _subscriptionBloc.state is SevaSubscriptionError)) {
        _subscriptionBloc.add(GetSubscriptionsEvent(page: 1, limit: 50));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      appBar: MandirAppBar(
        title: context.l10n.sevaHistory,
        onBackTap: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          /// Content according to selected tab
          Expanded(
            child: _selectedTabIndex == 0
                ? _buildOneTimePaymentView()
                : _buildMonthlyPaymentView(),
          ),
        ],
      ),
    );
  }

  /// ─── TAB SWITCHER (One Time Payment vs Monthly Payment) ────────────────
  Widget _buildPaymentTypeTabs() {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 0.04 * screenWidth,
        vertical: 0.0148 * screenHeight,
      ),
      height: 0.0605 * screenHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.0187 * screenWidth),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F717171),
            blurRadius: 20,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 0.0133 * screenWidth,
        vertical: 0.0049 * screenHeight,
      ),
      child: Row(
        children: [
          /// One Time Payment Tab
          Expanded(
            child: GestureDetector(
              onTap: () => _onTabChanged(0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _selectedTabIndex == 0
                      ? const Color(0xFF793C01)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(
                    0.0131 * screenWidth,
                  ),
                ),
                child: Text(
                  context.l10n.oneTimePayment,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.gilroySemiBold(
                    0.0374 * screenWidth,
                    color: _selectedTabIndex == 0 ? Colors.white : Colors.black,
                    height: 1.18,
                  ),
                ),
              ),
            ),
          ),

          /// Monthly Payment Tab
          Expanded(
            child: GestureDetector(
              onTap: () => _onTabChanged(1),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _selectedTabIndex == 1
                      ? const Color(0xFF793C01)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(
                    0.0131 * screenWidth,
                  ),
                ),
                child: Text(
                  context.l10n.monthlyPayment,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.gilroySemiBold(
                    0.0374 * screenWidth,
                    color: _selectedTabIndex == 1 ? Colors.white : Colors.black,
                    height: 1.18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// ─── ONE TIME PAYMENT VIEW ──────────────────────────────────────────────
  Widget _buildOneTimePaymentView() {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<SevaHistoryBloc, SevaHistoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(child: Text(message)),
          loaded: (
            response,
            accumulatedSevaList,
            currentStatus,
            isFiltering,
            isLoadingMore,
          ) {
            final data = response.data;
            final summary = data.summary;
            final fullList = data.list;

            return NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollInfo) {
                if (scrollInfo is ScrollEndNotification &&
                    scrollInfo.metrics.pixels >=
                        scrollInfo.metrics.maxScrollExtent) {
                  if (!isLoadingMore && !isFiltering) {
                    final pagination = data.pagination;
                    if (pagination.hasNextPage) {
                      context.read<SevaHistoryBloc>().add(
                            SevaHistoryEvent.getSevaHistory(
                              status: currentStatus,
                              page: pagination.page + 1,
                            ),
                          );
                    }
                  }
                }
                return false;
              },
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    /// Tab switcher inside scrollable or at top
                    _buildPaymentTypeTabs(),

                    /// Top 4 Summary Cards (2x2) with exact Figma gradients
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 0.0267 * screenWidth,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SevaCard(
                              title: context.l10n.totalSeva,
                              badgeText: '${summary.total.count} ${context.l10n.seva}',
                              value: summary.total.formattedAmount.isNotEmpty
                                  ? summary.total.formattedAmount
                                  : '₹${summary.total.amount}',
                              gradient: const LinearGradient(
                                begin: Alignment(0.09, 0.06),
                                end: Alignment(0.92, 0.97),
                                colors: [Color(0xFFC3FBBE), Color(0xFF9BCD97)],
                              ),
                              rightImageAsset:
                                  'assets/new_design/icon/nn_seva.png',
                            ),
                          ),
                          Expanded(
                            child: SevaCard(
                              title: context.l10n.completed,
                              badgeText: '${summary.completed.count} ${context.l10n.seva}',
                              value: summary.completed.formattedAmount.isNotEmpty
                                  ? summary.completed.formattedAmount
                                  : '₹${summary.completed.amount}',
                              gradient: const LinearGradient(
                                begin: Alignment(0.09, 0.06),
                                end: Alignment(0.92, 0.97),
                                colors: [Color(0xFFCAD6E7), Color(0xFFAEC4E2)],
                              ),
                              rightImageAsset:
                                  'assets/new_design/icon/seva_completed_tick.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 0.0074 * screenHeight),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 0.0267 * screenWidth,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SevaCard(
                              title: summary.inReview.actionCount > 0
                                  ? '${context.l10n.inReview} (${summary.inReview.actionCount})'
                                  : summary.inReview.count > 0
                                      ? '${context.l10n.inReview} (${summary.inReview.count})'
                                      : context.l10n.inReview,
                              badgeText: '${summary.inReview.count} ${context.l10n.seva}',
                              value: summary.inReview.formattedAmount.isNotEmpty
                                  ? summary.inReview.formattedAmount
                                  : '₹${summary.inReview.amount}',
                              gradient: const LinearGradient(
                                begin: Alignment(0.08, 0.07),
                                end: Alignment(0.90, 0.96),
                                colors: [Color(0xFFF4DCC4), Color(0xFFECC39A)],
                              ),
                              rightImageAsset:
                                  'assets/new_design/icon/ddddd.png',
                            ),
                          ),
                          Expanded(
                            child: SevaCard(
                              title: summary.refunded.count > 0
                                  ? '${context.l10n.refunded} (${summary.refunded.count})'
                                  : context.l10n.refunded,
                              badgeText: '${summary.refunded.count} ${context.l10n.seva}',
                              value: summary.refunded.formattedAmount.isNotEmpty
                                  ? summary.refunded.formattedAmount
                                  : '₹${summary.refunded.amount}',
                              gradient: const LinearGradient(
                                begin: Alignment(0.12, 0.04),
                                end: Alignment(0.92, 1.00),
                                colors: [Color(0xFFFFDADB), Color(0xFFFFAFAF)],
                              ),
                              rightImageAsset:
                                  'assets/new_design/icon/seva_refunded-icon.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 0.0246 * screenHeight),

                    /// Lower Section with warm cream background #FFF3E8
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFF3E8),
                      ),
                      padding: EdgeInsets.only(
                        top: 0.0246 * screenHeight,
                        bottom: 0.0369 * screenHeight,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Header: "One Time Seva History" + Black line & dot
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 0.04 * screenWidth,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  context.l10n.oneTimeSevaHistory,
                                  style: AppTextStyle.gilroyBold(
                                    0.048 * screenWidth,
                                    color: Colors.black,
                                    height: 1.11,
                                  ),
                                ),
                                SizedBox(width: 0.0213 * screenWidth),
                                Container(
                                  width: 0.1707 * screenWidth,
                                  height: 0.0018 * screenHeight,
                                  color: Colors.black,
                                ),
                                Container(
                                  width: 0.016 * screenWidth,
                                  height: 0.016 * screenWidth,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 0.0197 * screenHeight),

                          /// Status Filter Buttons (Horizontal)
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(
                              horizontal: 0.04 * screenWidth,
                            ),
                            child: Row(
                              children: [
                                _buildFilterButton(
                                  context,
                                  context.l10n.all,
                                  'all',
                                  currentStatus,
                                ),
                                SizedBox(width: 0.0213 * screenWidth),
                                _buildFilterButton(
                                  context,
                                  context.l10n.completed,
                                  'completed',
                                  currentStatus,
                                ),
                                SizedBox(width: 0.0213 * screenWidth),
                                _buildFilterButton(
                                  context,
                                  context.l10n.pending,
                                  'pending',
                                  currentStatus,
                                ),
                                SizedBox(width: 0.0213 * screenWidth),
                                _buildFilterButton(
                                  context,
                                  context.l10n.review,
                                  'review',
                                  currentStatus,
                                ),
                                SizedBox(width: 0.0213 * screenWidth),
                                _buildFilterButton(
                                  context,
                                  context.l10n.refunded,
                                  'returned',
                                  currentStatus,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 0.0246 * screenHeight),

                          /// Active Filter Heading + Count + Primary colored line & dot
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 0.04 * screenWidth,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '${_getFilterLabel(context, currentStatus)} (${_getFilterCount(currentStatus, summary)})',
                                  style: AppTextStyle.gilroyBold(
                                    0.0427 * screenWidth,
                                    color: const Color(0xFF793C01),
                                    height: 1.25,
                                  ),
                                ),
                                SizedBox(width: 0.0213 * screenWidth),
                                Container(
                                  width: 0.12 * screenWidth,
                                  height: 0.0018 * screenHeight,
                                  color: const Color(0xFF793C01),
                                ),
                                Container(
                                  width: 0.016 * screenWidth,
                                  height: 0.016 * screenWidth,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF793C01),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 0.0172 * screenHeight),

                          /// List or Empty state
                          if (isFiltering)
                            Center(
                              child: Padding(
                                padding: EdgeInsets.all(
                                  0.0853 * screenWidth,
                                ),
                                child: const CircularProgressIndicator(),
                              ),
                            )
                          else if (accumulatedSevaList.isEmpty)
                            Center(
                              child: Padding(
                                padding: EdgeInsets.all(
                                  0.0853 * screenWidth,
                                ),
                                child: Text(
                                  context.l10n.noHistoryFound,
                                  style: AppTextStyle.gilroyMedium(
                                    0.0373 * screenWidth,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            )
                          else
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: accumulatedSevaList.length,
                              itemBuilder: (context, index) {
                                final seva = accumulatedSevaList[index];

                                // Find matching detailed item from fullList to retrieve donorName, proof etc.
                                SevaHistoryItem? matchedItem;
                                try {
                                  matchedItem = fullList.firstWhere(
                                    (e) => e.id == seva.id,
                                  );
                                } catch (_) {
                                  matchedItem = null;
                                }

                                final donorName = matchedItem?.donorName ?? '';
                                final hasVideoProof =
                                    matchedItem?.proof.available ?? false;
                                final liveStatusSubtitle =
                                    matchedItem != null &&
                                            matchedItem.liveStatus.isNotEmpty
                                        ? matchedItem.liveStatus.last.subtitle
                                        : '';

                                return HistorySevaCard(
                                  id: seva.id,
                                  thumbnailUrl: seva.thumbnailUrl,
                                  sevaName: seva.sevaName,
                                  donorName: donorName,
                                  addedAt: seva.addedAt,
                                  amount: seva.formattedFinalPayment.isNotEmpty
                                      ? seva.formattedFinalPayment
                                      : seva.formattedAmount.isNotEmpty
                                          ? seva.formattedAmount
                                          : '₹${seva.amount}',
                                  status: seva.status,
                                  statusLabel: seva.statusLabel,
                                  liveStatusSubtitle: liveStatusSubtitle,
                                  hasVideoProof: hasVideoProof,
                                  onTap: () {
                                    final statusBloc = BlocProvider.of<SevaStatusBloc>(context);
                                    statusBloc.reset();
                                    statusBloc.add(GetStatus(id: seva.id));
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.SEWA_STATUS_PAGE,
                                      arguments: seva.id,
                                    );
                                  },
                                  onVideoProofTap: () {
                                    final statusBloc = BlocProvider.of<SevaStatusBloc>(context);
                                    statusBloc.reset();
                                    statusBloc.add(GetStatus(id: seva.id));
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.SEWA_STATUS_PAGE,
                                      arguments: seva.id,
                                    );
                                  },
                                );
                              },
                            ),
                          if (isLoadingMore)
                            Padding(
                              padding: EdgeInsets.all(
                                0.0427 * screenWidth,
                              ),
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  /// ─── MONTHLY PAYMENT VIEW (Subscriptions) ──────────────────────────────
  Widget _buildMonthlyPaymentView() {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<SevaSubscriptionBloc, SevaSubscriptionState>(
      bloc: _subscriptionBloc,
      builder: (context, state) {
        int activeCount = 0;
        int cancelCount = 0;
        List<SevaSubscriptionItem> displayList = [];
        bool isLoadingMore = false;
        bool hasNextPage = false;
        int currentPage = 1;

        if (state is SevaSubscriptionLoaded) {
          displayList = state.list;
          activeCount = displayList.where((e) {
            final st = e.status.toLowerCase();
            return st == 'active' || st == 'completed' || st == 'success';
          }).length;

          cancelCount = displayList.where((e) {
            final st = e.status.toLowerCase();
            return st == 'cancelled' ||
                st == 'canceled' ||
                st == 'failed' ||
                st == 'expired';
          }).length;

          isLoadingMore = state.isLoadingMore;
          hasNextPage = state.pagination.hasNextPage;
          currentPage = state.pagination.page;
        }

        return NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollInfo) {
            if (scrollInfo is ScrollEndNotification &&
                scrollInfo.metrics.pixels >=
                    scrollInfo.metrics.maxScrollExtent) {
              if (state is SevaSubscriptionLoaded &&
                  !isLoadingMore &&
                  hasNextPage) {
                _subscriptionBloc.add(
                  GetSubscriptionsEvent(
                    page: currentPage + 1,
                    limit: 50,
                  ),
                );
              }
            }
            return false;
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /// Tab Switcher
                _buildPaymentTypeTabs(),

                /// Top 2 Summary Cards (Active Subscription & Cancel Subscription)
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.0267 * screenWidth,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SevaCard(
                          title: context.l10n.activeSubscription,
                          value: '$activeCount',
                          customHeight: 0.0924 * screenHeight,
                          gradient: const LinearGradient(
                            begin: Alignment(0.09, 0.06),
                            end: Alignment(0.92, 0.97),
                            colors: [
                              Color(0xFFC3FBBE),
                              Color(0xFF9BCD97),
                            ],
                          ),
                          rightImageAsset:
                              'assets/new_design/icon/seva_completed_tick.png',
                        ),
                      ),
                      Expanded(
                        child: SevaCard(
                          title: context.l10n.cancelSubscription,
                          value: '$cancelCount',
                          customHeight: 0.0924 * screenHeight,
                          gradient: const LinearGradient(
                            begin: Alignment(0.09, 0.06),
                            end: Alignment(0.92, 0.97),
                            colors: [
                              Color(0xFFFFD8D8),
                              Color(0xFFFA9494),
                            ],
                          ),
                          rightImageAsset:
                              'assets/new_design/icon/seva_refunded-icon.png',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0.0246 * screenHeight),

                /// Lower Section with warm cream background #FFF3E8
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFF3E8),
                  ),
                  padding: EdgeInsets.only(
                    top: 0.0246 * screenHeight,
                    bottom: 0.0369 * screenHeight,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Header: "Subscription Seva History" + Black line & dot
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 0.04 * screenWidth,
                        ),
                        child: Row(
                          children: [
                            Text(
                              context.l10n.subscriptionSevaHistory,
                              style: AppTextStyle.gilroyBold(
                                0.048 * screenWidth,
                                color: Colors.black,
                                height: 1.11,
                              ),
                            ),
                            SizedBox(width: 0.0213 * screenWidth),
                            Container(
                              width: 0.1707 * screenWidth,
                              height: 0.0018 * screenHeight,
                              color: Colors.black,
                            ),
                            Container(
                              width: 0.016 * screenWidth,
                              height: 0.016 * screenWidth,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 0.0197 * screenHeight),

                      /// If loading initial
                      if (state is SevaSubscriptionInitial ||
                          state is SevaSubscriptionLoading)
                        Padding(
                          padding: EdgeInsets.all(0.0853 * screenWidth),
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFF793C01),
                            ),
                          ),
                        )
                      else if (state is SevaSubscriptionError)
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(0.064 * screenWidth),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.error_outline_rounded,
                                  size: 0.12 * screenWidth,
                                  color: const Color(0xFF793C01),
                                ),
                                SizedBox(height: 0.0148 * screenHeight),
                                Text(
                                  state.message.isNotEmpty
                                      ? state.message
                                      : context.l10n.subscriptionsNotFound,
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.gilroyMedium(
                                    0.0373 * screenWidth,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 0.0197 * screenHeight),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF793C01),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        0.0213 * screenWidth,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    _subscriptionBloc.add(
                                      GetSubscriptionsEvent(
                                        page: 1,
                                        limit: 50,
                                      ),
                                    );
                                  },
                                  child: Text(
                                    context.l10n.retry,
                                    style: AppTextStyle.gilroySemiBold(
                                      0.0373 * screenWidth,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      else if (displayList.isEmpty)
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(0.0853 * screenWidth),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_today_outlined,
                                  size: 0.12 * screenWidth,
                                  color: const Color(0xFF793C01),
                                ),
                                SizedBox(height: 0.0148 * screenHeight),
                                Text(
                                  context.l10n.noSubscriptionsFound,
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.gilroyBold(
                                    0.0427 * screenWidth,
                                    color: const Color(0xFF793C01),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      else ...[
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: displayList.length,
                          itemBuilder: (context, index) {
                            final item = displayList[index];
                            final bool proofAvailable =
                                item.proofAvailable && item.completedOccurrences > 0;
                            return SubscriptionCard(
                              item: item,
                              hasVideoProof: proofAvailable,
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  AppRoutes.SEVA_SUBSCRIPTION_DETAIL_PAGE,
                                  arguments: {
                                    'id': item.id,
                                    'item': item,
                                  },
                                );
                              },
                              onVideoProofTap: () {
                                if (item.id.isNotEmpty) {
                                  final statusBloc = BlocProvider.of<SevaStatusBloc>(context);
                                  statusBloc.reset();
                                  statusBloc.add(GetStatus(id: item.id));
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.SEWA_STATUS_PAGE,
                                    arguments: item.id,
                                  );
                                }
                              },
                            );
                          },
                        ),
                        if (isLoadingMore)
                          Padding(
                            padding: EdgeInsets.all(0.0427 * screenWidth),
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// ─── FILTER BUTTON WIDGET ──────────────────────────────────────────────
  Widget _buildFilterButton(
    BuildContext context,
    String label,
    String status,
    String currentStatus,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSelected = status == currentStatus;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          context.read<SevaHistoryBloc>().add(
                SevaHistoryEvent.getSevaHistory(status: status),
              );
        }
      },
      child: Container(
        height: 0.0311 * screenHeight,
        padding: EdgeInsets.symmetric(
          horizontal: 0.0373 * screenWidth,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF793C01) : Colors.transparent,
          border: Border.all(
            color: const Color(0xFF793C01),
            width: 0.0024 * screenWidth,
          ),
          borderRadius: BorderRadius.circular(0.0096 * screenWidth),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: isSelected
              ? AppTextStyle.gilroySemiBold(
                  0.032 * screenWidth,
                  color: Colors.white,
                  height: 1.91,
                )
              : AppTextStyle.gilroyMedium(
                  0.032 * screenWidth,
                  color: const Color(0xFF793C01),
                  height: 1.91,
                ),
        ),
      ),
    );
  }

  String _getFilterLabel(BuildContext context, String status) {
    switch (status) {
      case 'completed':
        return context.l10n.completed;
      case 'pending':
        return context.l10n.pending;
      case 'review':
        return context.l10n.review;
      case 'returned':
        return context.l10n.refunded;
      case 'all':
      default:
        return context.l10n.all;
    }
  }

  int _getFilterCount(String status, dynamic summary) {
    switch (status) {
      case 'completed':
        return summary.completed.count;
      case 'pending':
        return summary.pending.count;
      case 'review':
        return summary.inReview.count;
      case 'returned':
        return summary.refunded.count;
      case 'all':
      default:
        return summary.total.count;
    }
  }
}
