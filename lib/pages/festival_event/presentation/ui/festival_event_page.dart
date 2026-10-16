import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mandirapp/common/analytics/analytics_services.dart';
import 'package:mandirapp/common/analytics/facebook_analytics.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/panchang_common/common_category_filter_bar.dart';
import 'package:mandirapp/common/component/panchang_common/common_module_header.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:shimmer/shimmer.dart';

import '../../../dynamic_tab/data/entity/dynamic_tab_models.dart';
import '../../../dynamic_tab/presentation/ui/widgets/dynamic_image.dart';
import '../bloc/festival_event_bloc.dart';
import '../bloc/festival_event_event.dart';
import '../bloc/festival_event_state.dart';

const Color _primary = Color(0xFF793C01);
const Color _secondary = Color(0xFFE4AE23);
const List<String> _monthNames = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

/// "Festival & Event" — admin-tagged inner pages (Figma 3447:18506).
/// Tapping a card opens the same dynamic inner page by slug.
class FestivalEventPage extends StatelessWidget {
  const FestivalEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FestivalEventBloc()..add(const FestivalEventEvent.load()),
      child: const _FestivalEventView(),
    );
  }
}

class _FestivalEventView extends StatefulWidget {
  const _FestivalEventView();

  @override
  State<_FestivalEventView> createState() => _FestivalEventViewState();
}

class _FestivalEventViewState extends State<_FestivalEventView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _openPage(BuildContext context, PageListItemModel item) {
    final params = {'title': item.title, 'slug': item.slug};
    AnalyticsService.logEvent(eventName: 'festival_event_click', parameters: params);
    FacebookAnalytics.logEvent('festival_event_click', parameters: params);
    Navigator.of(context).pushNamed(AppRoutes.DYNAMIC_PAGE, arguments: {'slug': item.slug});
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FestivalEventBloc>();

    return Scaffold(
      backgroundColor: const Color(0xFFFBF6ED),
      body: BlocBuilder<FestivalEventBloc, FestivalEventState>(
        builder: (context, state) {
          final chips = ['All', ...state.tags.map((t) => t.name)];
          final selectedLabel = state.selectedTag.isEmpty ? 'All' : state.tagName(state.selectedTag);
          final featured = state.featured;

          // Swipe anywhere below the header (even empty space) changes the month.
          final monthMode = state.search.trim().isEmpty;
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onHorizontalDragEnd: monthMode
                ? (d) {
                    final v = d.primaryVelocity ?? 0;
                    if (v.abs() < 250) return;
                    _shift(bloc, v < 0 ? 1 : -1);
                  }
                : null,
            child: RefreshIndicator(
              color: _primary,
              onRefresh: () async {
                bloc.add(const FestivalEventEvent.load());
                await bloc.stream.firstWhere((s) => !s.isLoading);
              },
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: CommonModuleHeader(
                      title: 'Festival & Event',
                      subtitle: 'All festivals, vrats and jayantis in one place',
                      controller: _searchController,
                      onChanged: (q) => bloc.add(FestivalEventEvent.search(q)),
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.fromLTRB(context.w(15), context.w(19), context.w(15), context.w(24)),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        CommonCategoryFilterBar(
                          categories: chips,
                          selectedCategory: selectedLabel,
                          onCategorySelected: (label) {
                            final key = label == 'All'
                                ? ''
                                : state.tags.firstWhere((t) => t.name == label, orElse: () => const PageTagModel()).key;
                            bloc.add(FestivalEventEvent.selectTag(key));
                          },
                        ),
                        SizedBox(height: context.w(21)),
                        if (state.isLoading && state.pages.isEmpty)
                          const _ListingSkeleton()
                        else if (state.error.isNotEmpty && state.pages.isEmpty)
                          _Message(
                            text: 'Could not load festivals',
                            actionLabel: 'Retry',
                            onAction: () => bloc.add(const FestivalEventEvent.load()),
                          )
                        else ...[
                          if (featured != null) ...[
                            _FeaturedCard(
                              item: featured,
                              subtitle: featured.tags.map(state.tagName).join(' • '),
                              onTap: () => _openPage(context, featured),
                            ),
                            SizedBox(height: context.w(20)),
                          ],
                          ..._buildGroups(context, state),
                        ],
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String _label(FestivalEventState state) => state.selectedTag.isEmpty ? 'Festivals' : state.tagName(state.selectedTag);

  List<Widget> _buildGroups(BuildContext context, FestivalEventState state) =>
      state.search.trim().isNotEmpty ? _buildSearch(context, state) : _buildMonth(context, state);

  /// Search: every tagged page (next date), grouped by month.
  List<Widget> _buildSearch(BuildContext context, FestivalEventState state) {
    final results = state.searchResults;
    final groups = <String, List<PageListItemModel>>{};
    for (final p in results) {
      final d = DateTime.tryParse(p.festivalDate);
      groups.putIfAbsent(d == null ? '' : '${d.year}-${d.month.toString().padLeft(2, '0')}', () => []).add(p);
    }
    final keys = groups.keys.where((k) => k.isNotEmpty).toList()..sort();
    if (groups.containsKey('')) keys.add('');

    if (keys.isEmpty) return [_Message(text: 'No match for "${state.search.trim()}"')];
    return [
      for (var i = 0; i < keys.length; i++) ...[
        if (i > 0) SizedBox(height: context.w(22)),
        _GroupHeader(title: keys[i].isEmpty ? 'More ${_label(state)}' : _monthTitle(keys[i], state)),
        SizedBox(height: context.w(18)),
        _FestivalGrid(items: groups[keys[i]]!, onTap: (item) => _openPage(context, item)),
      ],
    ];
  }

  String _monthTitle(String yearMonth, FestivalEventState state) {
    final parts = yearMonth.split('-');
    final year = int.parse(parts[0]);
    final month = _monthNames[int.parse(parts[1]) - 1];
    return year == DateTime.now().year ? '$month ${_label(state)}' : '$month $year ${_label(state)}';
  }

  /// One month at a time; swipe left = next month, right = previous.
  List<Widget> _buildMonth(BuildContext context, FestivalEventState state) {
    final bloc = context.read<FestivalEventBloc>();
    final key = '${state.viewYear}-${state.viewMonth.toString().padLeft(2, '0')}';
    final filters = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _FilterBox(
          label: '${state.viewYear}',
          options: {for (final y in state.years) y: '$y'},
          selected: state.viewYear,
          onSelected: (y) => _jump(bloc, state, y, state.viewMonth),
        ),
        SizedBox(width: context.w(8)),
        _FilterBox(
          label: _monthNames[state.viewMonth - 1].substring(0, 3),
          options: {for (var m = 1; m <= 12; m++) m: _monthNames[m - 1]},
          selected: state.viewMonth,
          onSelected: (m) => _jump(bloc, state, state.viewYear, m),
        ),
      ],
    );

    return [
      Row(
        children: [
          _MonthArrow(icon: Icons.chevron_left_rounded, enabled: state.canGoBack, onTap: () => _shift(bloc, -1)),
          Expanded(child: _GroupHeader(title: _monthTitle(key, state))),
          _MonthArrow(icon: Icons.chevron_right_rounded, enabled: state.canGoForward, onTap: () => _shift(bloc, 1)),
          SizedBox(width: context.w(6)),
          filters,
        ],
      ),
      SizedBox(height: context.w(18)),
      AnimatedSwitcher(
        duration: const Duration(milliseconds: 260),
        transitionBuilder: (child, anim) {
          final incoming = child.key == ValueKey(key);
          final dx = (incoming ? _slideDir : -_slideDir) * 0.25;
          return FadeTransition(
            opacity: anim,
            child: SlideTransition(
              position: Tween(begin: Offset(dx, 0), end: Offset.zero).animate(anim),
              child: child,
            ),
          );
        },
        layoutBuilder: (current, previous) => Stack(alignment: Alignment.topCenter, children: [...previous, ?current]),
        child: KeyedSubtree(key: ValueKey(key), child: _monthBody(context, state)),
      ),
    ];
  }

  Widget _monthBody(BuildContext context, FestivalEventState state) {
    final bloc = context.read<FestivalEventBloc>();
    final items = state.monthPages;
    final status = state.viewMonthStatus;
    final waiting = status == MonthStatus.loading || status == MonthStatus.pending || status.isEmpty;
    final monthName = '${_monthNames[state.viewMonth - 1]} ${state.viewYear}';

    if (items.isEmpty) {
      if (waiting && status != MonthStatus.pending) return const _GridSkeleton();
      if (status == MonthStatus.pending) {
        return _Message(text: 'Loading $monthName festival dates…', loading: true);
      }
      if (status == MonthStatus.error) {
        return _Message(
          text: 'Could not load $monthName festivals',
          actionLabel: 'Retry',
          onAction: () => bloc.add(const FestivalEventEvent.load()),
        );
      }
      return _Message(text: 'No ${_label(state).toLowerCase()} in $monthName\nSwipe to see other months');
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (status == MonthStatus.pending) ...[_PendingNote(label: monthName), SizedBox(height: context.w(14))],
        _FestivalGrid(items: items, onTap: (item) => _openPage(context, item)),
      ],
    );
  }

  /// +1 slides the new month in from the right, -1 from the left.
  int _slideDir = 1;

  void _shift(FestivalEventBloc bloc, int delta) {
    setState(() => _slideDir = delta);
    bloc.add(FestivalEventEvent.shiftMonth(delta));
  }

  void _jump(FestivalEventBloc bloc, FestivalEventState state, int year, int month) {
    final dir = (year * 12 + month).compareTo(state.viewYear * 12 + state.viewMonth);
    setState(() => _slideDir = dir == 0 ? 1 : dir);
    bloc.add(FestivalEventEvent.showMonth(year, month));
  }
}

class _MonthArrow extends StatelessWidget {
  final IconData icon;
  final bool enabled;
  final VoidCallback onTap;

  const _MonthArrow({required this.icon, required this.enabled, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: enabled ? onTap : null,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.w(2), vertical: context.w(4)),
        child: Icon(icon, size: context.w(22), color: enabled ? _primary : _primary.withValues(alpha: 0.25)),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Featured hero card (345×103, maroon gradient)
// ---------------------------------------------------------------------------

class _FeaturedCard extends StatelessWidget {
  final PageListItemModel item;
  final String subtitle;
  final VoidCallback onTap;

  const _FeaturedCard({required this.item, required this.subtitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final date = DateTime.tryParse(item.festivalDate);
    final days = item.daysLeft ?? 0;
    final daysText = days == 0
        ? 'Today'
        : days == 1
        ? '1 Day Left'
        : '$days Days Left';

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(minHeight: context.w(103)),
        padding: EdgeInsets.fromLTRB(context.w(14), context.w(15), context.w(20), context.w(15)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            // Figma: 11.64deg, #43152A → #941B4C
            begin: Alignment(-0.2, 1),
            end: Alignment(0.2, -1),
            colors: [Color(0xFF43152A), Color(0xFF941B4C)],
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (subtitle.isNotEmpty)
                    Text(subtitle, style: AppTextStyle.gilroyMedium(context.sp(12), color: _secondary)),
                  SizedBox(height: context.w(6)),
                  Text(
                    item.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroySemiBold(context.sp(13), color: Colors.white),
                  ),
                  if (date != null) ...[
                    SizedBox(height: context.w(12)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: context.w(9), vertical: context.w(5)),
                      decoration: BoxDecoration(color: const Color(0xFFFFECD9), borderRadius: BorderRadius.circular(3)),
                      child: Text(
                        DateFormat('d MMMM, y - EEEE').format(date),
                        style: AppTextStyle.gilroySemiBold(context.sp(10), color: _primary),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            SizedBox(width: context.w(10)),
            Container(
              constraints: BoxConstraints(minWidth: context.w(72)),
              height: context.w(22),
              padding: EdgeInsets.symmetric(horizontal: context.w(6)),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: _secondary, borderRadius: BorderRadius.circular(3)),
              child: Text(daysText, style: AppTextStyle.gilroySemiBold(context.sp(10), color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Group header + Year / Month dropdown boxes
// ---------------------------------------------------------------------------

class _GroupHeader extends StatelessWidget {
  final String title;

  const _GroupHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    // Long titles ("September 2025 Festivals") shrink instead of cutting off.
    return Align(
      alignment: Alignment.centerLeft,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(title, maxLines: 1, style: AppTextStyle.gilroySemiBold(context.sp(18), color: Colors.black)),
      ),
    );
  }
}

class _FilterBox extends StatelessWidget {
  final String label;
  final Map<int, String> options;
  final int selected;
  final ValueChanged<int> onSelected;

  const _FilterBox({required this.label, required this.options, required this.selected, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      onSelected: onSelected,
      color: Colors.white,
      position: PopupMenuPosition.under,
      itemBuilder: (_) => options.entries
          .map(
            (e) => PopupMenuItem<int>(
              value: e.key,
              height: 36,
              child: Text(
                e.value,
                style: e.key == selected
                    ? AppTextStyle.gilroySemiBold(context.sp(13), color: _primary)
                    : AppTextStyle.gilroyMedium(context.sp(13), color: Colors.black87),
              ),
            ),
          )
          .toList(),
      child: Container(
        height: context.w(21),
        padding: EdgeInsets.only(left: context.w(7), right: context.w(4)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: _primary, width: 0.5),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label, style: AppTextStyle.gilroySemiBold(context.sp(10), color: _primary)),
            SizedBox(width: context.w(6)),
            Icon(Icons.keyboard_arrow_down_rounded, size: context.w(14), color: _primary),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// 3-column grid: 105×129 white card, 58px circle image, title, ornament
// ---------------------------------------------------------------------------

class _FestivalGrid extends StatelessWidget {
  final List<PageListItemModel> items;
  final ValueChanged<PageListItemModel> onTap;

  const _FestivalGrid({required this.items, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final gap = context.w(15);
        final cardW = (constraints.maxWidth - gap * 2) / 3;
        return Wrap(
          spacing: gap,
          // Extra room for the date pill sitting on each card's top edge.
          runSpacing: context.w(25),
          children: [
            for (final item in items)
              SizedBox(
                width: cardW,
                child: _FestivalCard(item: item, onTap: () => onTap(item)),
              ),
          ],
        );
      },
    );
  }
}

class _FestivalCard extends StatelessWidget {
  final PageListItemModel item;
  final VoidCallback onTap;

  const _FestivalCard({required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Card is 105 wide in Figma; everything scales with it.
        final s = constraints.maxWidth / 105;
        final placeholder = Container(
          color: const Color(0xFFFFEDCC),
          alignment: Alignment.center,
          child: Icon(Icons.temple_hindu_rounded, color: const Color(0xFFB37A0B), size: 26 * s),
        );
        final date = DateTime.tryParse(item.festivalDate);
        final past = (item.daysLeft ?? 0) < 0;
        final card = Container(
          height: 129 * s,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7 * s),
            border: Border.all(color: const Color(0xFFE0E0E0)),
            boxShadow: const [BoxShadow(color: Color(0x40777777), blurRadius: 4, offset: Offset(0, 2))],
          ),
          child: Column(
            children: [
              SizedBox(height: 13 * s),
              ClipOval(
                child: SizedBox(
                  width: 58 * s,
                  height: 58 * s,
                  child: item.image == null || item.image!.url.isEmpty
                      ? placeholder
                      : DynamicImage.media(item.image, width: 58 * s, height: 58 * s, fallback: placeholder),
                ),
              ),
              SizedBox(height: 7 * s),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6 * s),
                  child: Center(
                    child: Text(
                      item.title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.gilroySemiBold(13 * s, color: _primary, height: 16 / 13),
                    ),
                  ),
                ),
              ),
              Image.asset('assets/dynamic/divider_ornament.png', width: 74 * s, height: 11 * s, fit: BoxFit.fill),
              SizedBox(height: 8 * s),
            ],
          ),
        );
        return GestureDetector(
          onTap: onTap,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              card,
              // Festival date on the card's top edge ("12 Oct"); grey once passed.
              if (date != null)
                Positioned(
                  top: -8 * s,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8 * s, vertical: 2.5 * s),
                      decoration: BoxDecoration(
                        color: past ? const Color(0xFFA1887F) : _primary,
                        borderRadius: BorderRadius.circular(10 * s),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Text(
                        DateFormat('d MMM').format(date),
                        style: AppTextStyle.gilroySemiBold(9.5 * s, color: Colors.white),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Loading / empty / error
// ---------------------------------------------------------------------------

class _ListingSkeleton extends StatelessWidget {
  const _ListingSkeleton();

  @override
  Widget build(BuildContext context) {
    final box = BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8));
    return Shimmer.fromColors(
      baseColor: const Color(0xFFEFE6D8),
      highlightColor: const Color(0xFFFFFBF4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: context.w(103), decoration: box),
          SizedBox(height: context.w(20)),
          Container(height: context.w(18), width: context.w(170), decoration: box),
          SizedBox(height: context.w(16)),
          const _GridSkeleton(shimmer: false),
        ],
      ),
    );
  }
}

class _GridSkeleton extends StatelessWidget {
  final bool shimmer;

  const _GridSkeleton({this.shimmer = true});

  @override
  Widget build(BuildContext context) {
    final grid = LayoutBuilder(
      builder: (context, c) {
        final gap = context.w(15);
        final cardW = (c.maxWidth - gap * 2) / 3;
        return Wrap(
          spacing: gap,
          runSpacing: context.w(17),
          children: List.generate(
            6,
            (_) => Container(
              width: cardW,
              height: cardW * 129 / 105,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
            ),
          ),
        );
      },
    );
    if (!shimmer) return grid;
    return Shimmer.fromColors(baseColor: const Color(0xFFEFE6D8), highlightColor: const Color(0xFFFFFBF4), child: grid);
  }
}

/// Shown above a partly loaded month while the rest of its dates are fetched.
class _PendingNote extends StatelessWidget {
  /// e.g. "October 2026"
  final String label;

  const _PendingNote({required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: context.w(12),
          height: context.w(12),
          child: const CircularProgressIndicator(strokeWidth: 1.5, color: _primary),
        ),
        SizedBox(width: context.w(8)),
        Expanded(
          child: Text(
            'Loading more $label dates…',
            style: AppTextStyle.gilroyMedium(context.sp(12), color: const Color(0xFF616161)),
          ),
        ),
      ],
    );
  }
}

class _Message extends StatelessWidget {
  final String text;
  final bool loading;
  final String? actionLabel;
  final VoidCallback? onAction;

  const _Message({required this.text, this.loading = false, this.actionLabel, this.onAction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.w(40)),
      child: Column(
        children: [
          if (loading) ...[
            SizedBox(
              width: context.w(22),
              height: context.w(22),
              child: const CircularProgressIndicator(strokeWidth: 2, color: _primary),
            ),
            SizedBox(height: context.w(12)),
          ],
          Text(
            text,
            textAlign: TextAlign.center,
            style: AppTextStyle.gilroyMedium(context.sp(14), color: const Color(0xFF616161)),
          ),
          if (actionLabel != null) ...[
            SizedBox(height: context.w(12)),
            TextButton(
              onPressed: onAction,
              child: Text(actionLabel!, style: AppTextStyle.gilroySemiBold(context.sp(14), color: _primary)),
            ),
          ],
        ],
      ),
    );
  }
}
