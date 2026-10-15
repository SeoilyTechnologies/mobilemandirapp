import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/analytics/analytics_services.dart';
import 'package:mandirapp/common/analytics/facebook_analytics.dart';
import 'package:mandirapp/common/analytics/facebook_events.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/utils/seva_date_helper.dart';
import 'package:mandirapp/pages/application/presentatioin/ui/voice_listening_dialog.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/muhurat_lagan/presentation/ui/component/dashed_container.dart';
import '../bloc/pitru_paksha_bloc.dart';
import '../bloc/pitru_paksha_event.dart';
import '../bloc/pitru_paksha_state.dart';
import '../../data/entity/pitru_paksha_response.dart';

class SharadPitarpakshPage extends StatefulWidget {
  const SharadPitarpakshPage({super.key});

  @override
  State<SharadPitarpakshPage> createState() => _SharadPitarpakshPageState();
}

class _SharadPitarpakshPageState extends State<SharadPitarpakshPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final lang = context.read<LanguageBloc>().state.locale.languageCode;
      context.read<PitruPakshaBloc>().add(PitruPakshaEvent.loadData(lang: lang));
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LanguageBloc, LanguageState>(
      listener: (context, langState) {
        context.read<PitruPakshaBloc>().add(
              PitruPakshaEvent.loadData(lang: langState.locale.languageCode),
            );
      },
      child: BlocBuilder<PitruPakshaBloc, PitruPakshaState>(
        builder: (context, state) {
          final isHindi = Localizations.localeOf(context).languageCode == 'hi';
          final data = state.response?.data;
          final filteredItems = state.filteredItems;

          return Scaffold(
            backgroundColor: AppColor.pitruBg,
            body: RefreshIndicator(
              color: AppColor.goldDark,
              backgroundColor: Colors.white,
              onRefresh: () async {
                final lang = context.read<LanguageBloc>().state.locale.languageCode;
                context.read<PitruPakshaBloc>().add(PitruPakshaEvent.loadData(lang: lang));
              },
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  // 1. TOP HEADER WITH GRADIENT, TITLE, SUBTITLE & SEARCH BAR
                  SliverToBoxAdapter(
                    child: _buildHeader(context, state, data, isHindi),
                  ),

                  // 2. MAIN BODY CONTENT
                  if (state.isLoading && state.response == null)
                    const SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: CircularProgressIndicator(color: AppColor.goldDark),
                      ),
                    )
                  else if (state.errorMessage.isNotEmpty && state.response == null)
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                state.errorMessage,
                                textAlign: TextAlign.center,
                                style: AppTextStyle.gilroyMedium(14, color: AppColor.goldDark),
                              ),
                              const SizedBox(height: 12),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.goldDark,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                onPressed: () {
                                  final lang = context.read<LanguageBloc>().state.locale.languageCode;
                                  context.read<PitruPakshaBloc>().add(PitruPakshaEvent.loadData(lang: lang));
                                },
                                child: Text(
                                  isHindi ? "पुनः प्रयास करें" : "Retry",
                                  style: const TextStyle(color: Colors.white, fontFamily: AppFont.gilroyBold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  else
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 18),

                            // Featured Maroon Card (Today Tithi / Sarva Pitru Amavasya)
                            _buildFeaturedCard(context, data?.todayCard, data?.period, isHindi),

                            const SizedBox(height: 22),

                            // Section Title Row ("16 Shraadh Tithi (6–21 Sept)" + "Select Date")
                            _buildSectionTitleRow(context, state, data?.period, isHindi),

                            const SizedBox(height: 14),

                            // Cards List
                            if (filteredItems.isEmpty)
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 40),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        isHindi ? "कोई श्राद्ध तिथि नहीं मिली" : "No Shraadh Tithi found",
                                        style: AppTextStyle.gilroySemiBold(15, color: AppColor.goldDark),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        isHindi
                                            ? "खोज या दिनांक फ़िल्टर हटाकर पुनः प्रयास करें"
                                            : "Try clearing your search or date filter",
                                        style: AppTextStyle.gilroyMedium(12, color: AppColor.newGreyy),
                                      ),
                                      const SizedBox(height: 12),
                                      TextButton(
                                        onPressed: () {
                                          _searchController.clear();
                                          context.read<PitruPakshaBloc>().add(const PitruPakshaEvent.clearFilter());
                                        },
                                        child: Text(
                                          isHindi ? "फ़िल्टर हटाएं" : "Clear Filters",
                                          style: AppTextStyle.gilroyBold(13, color: AppColor.goldDark),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            else
                              ListView.builder(
                                itemCount: filteredItems.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  final item = filteredItems[index];
                                  return _buildShraadhCard(context, item, isHindi);
                                },
                              ),

                            const SizedBox(height: 28),
                          ],
                        ),
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

  // ===========================================================================
  // 🌟 1. HEADER (Gradient, Back Button, Title, Subtitle, Search + Mic)
  // ===========================================================================
  Widget _buildHeader(BuildContext context, PitruPakshaState state, PitruPakshaData? data, bool isHindi) {
    final title = data?.header?.title.isNotEmpty == true
        ? data!.header!.title
        : (isHindi ? 'शरद एवं पितृ पक्ष' : 'Sharad & Pitru Paksha');
    final subtitle = data?.header?.subtitle.isNotEmpty == true
        ? data!.header!.subtitle
        : (isHindi ? 'पितरों का तर्पण, श्राद्ध और सम्मान' : 'Pitron ka tarpan, shraddha aur samman');

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, 0.76),
          end: Alignment(1.19, -0.15),
          colors: [Color(0xFF793C01), Color(0xFFE7B124)],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row: Back Button & Title / Subtitle
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      width: 28,
                      height: 28,
                      margin: const EdgeInsets.only(top: 2),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.70),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xFF793C01),
                        size: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: AppFont.gilroyBold,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: AppFont.gilroyMedium,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Search Bar with Search Icon, Text Field, Divider & Mic Icon
              Container(
                height: 42,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.95),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 14),
                    Image.asset(
                      "assets/new_design/icon/Search.png",
                      width: 14,
                      height: 14,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.search,
                        size: 15,
                        color: Color(0xFF616161),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        onChanged: (val) {
                          context.read<PitruPakshaBloc>().add(PitruPakshaEvent.search(val));
                        },
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 13,
                          fontFamily: AppFont.gilroyMedium,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: isHindi ? '“तिथि” खोजें...' : 'Search for “Tithi”',
                          hintStyle: const TextStyle(
                            color: Color(0xFF616161),
                            fontSize: 12,
                            fontFamily: AppFont.gilroyMedium,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                    if (_searchController.text.isNotEmpty)
                      GestureDetector(
                        onTap: () {
                          _searchController.clear();
                          context.read<PitruPakshaBloc>().add(const PitruPakshaEvent.search(''));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Icon(Icons.close, size: 16, color: Color(0xFF616161)),
                        ),
                      ),
                    // Vertical divider
                    Container(
                      width: 1,
                      height: 22,
                      color: const Color(0xFFDCDCDC),
                    ),
                    // Voice Mic Icon
                    GestureDetector(
                      onTap: () {
                        showVoiceListeningDialog(context).then((spokenText) {
                          if (!context.mounted) return;
                          if (spokenText != null && spokenText.trim().isNotEmpty) {
                            _searchController.text = spokenText.trim();
                            context.read<PitruPakshaBloc>().add(
                                  PitruPakshaEvent.search(spokenText.trim()),
                                );
                          }
                        });
                      },
                      behavior: HitTestBehavior.opaque,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Image.asset(
                          "assets/new_design/icon/icon-park-solid_voice.png",
                          width: 18,
                          height: 18,
                          errorBuilder: (context, error, stackTrace) => const Icon(
                            Icons.mic,
                            size: 18,
                            color: Color(0xFF333333),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // 🌟 2. FEATURED CARD (Maroon Gradient, Today Tithi Badge, Kutup Muhurat)
  // ===========================================================================
  Widget _buildFeaturedCard(
    BuildContext context,
    PitruTodayCard? todayCard,
    PitruPeriod? period,
    bool isHindi,
  ) {
    final title = todayCard?.title.isNotEmpty == true
        ? todayCard!.title
        : (period?.label.isNotEmpty == true
            ? period!.label
            : (isHindi ? 'पितृ पक्ष 2026' : 'Pitar Paksha 2026'));

    final dateLine = SevaDateHelper.formatFeaturedDateLine(
      todayCard?.date,
      todayCard?.shraddhaTitle,
      isHindi: isHindi,
      fallbackDateLine: todayCard?.dateLine,
    );

    final badge = todayCard?.badge.isNotEmpty == true
        ? todayCard!.badge
        : (isHindi ? 'आज की तिथि' : 'Today Tithi');

    final muhuratLabel = todayCard?.kutupMuhurat?.label.isNotEmpty == true
        ? todayCard!.kutupMuhurat!.label
        : (isHindi ? 'कुतुप मुहूर्त' : 'Kutup Muhurat');
    final muhuratDisplay = todayCard?.kutupMuhurat?.display.isNotEmpty == true
        ? '$muhuratLabel - ${todayCard!.kutupMuhurat!.display}'
        : '$muhuratLabel - 11:47 AM - 12:30 PM';

    return GestureDetector(
      onTap: () {
        final state = context.read<PitruPakshaBloc>().state;
        final period = state.response?.data?.period;
        final year = period?.year ?? 2026;
        final slug = (todayCard?.shraddhaType.isNotEmpty == true)
            ? todayCard!.shraddhaType.replaceAll('_', '-')
            : 'sarva-pitru-amavasya';
        final date = (todayCard?.date.isNotEmpty == true)
            ? todayCard!.date
            : '2026-09-26';
        final titleText = todayCard?.shraddhaTitle.isNotEmpty == true
            ? todayCard!.shraddhaTitle
            : title;

        AnalyticsService.pitruPaksha(
          action: 'today_card_click',
          slug: slug,
          title: titleText,
        );
        FacebookAnalytics.logEvent(
          FacebookEvents.pitruPaksha,
          parameters: {
            'action': 'today_card_click',
            'slug': slug,
            'title': titleText,
          },
        );

        Navigator.of(context).pushNamed(
          AppRoutes.SHARAD_PITARPAKSH_DETAIL_PAGE,
          arguments: {
            'slug': slug,
            'date': date,
            'year': year,
            'title': titleText,
            'lat': state.latitude,
            'lon': state.longitude,
          },
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.02, 1.00),
            end: Alignment(0.96, 0.07),
            colors: [Color(0xFF43152A), Color(0xFF941B4C)],
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF43152A).withValues(alpha: 0.25),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFFE4AE23),
                      fontSize: 12,
                      fontFamily: AppFont.gilroySemiBold,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 6),
                  SizedBox(
                    width: context.screenWidth * 0.62,
                    child: Text(
                      dateLine,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: AppFont.gilroyBold,
                        fontWeight: FontWeight.w400,
                        height: 1.36,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEBD9),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Text(
                      muhuratDisplay,
                      style: const TextStyle(
                        color: Color(0xFF793C01),
                        fontSize: 10,
                        fontFamily: AppFont.gilroySemiBold,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Today Tithi Badge
            Positioned(
              right: 12,
              top: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3.5),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.00, 0.50),
                    end: Alignment(1.00, 0.50),
                    colors: [Color(0xFF9F0000), Color(0xFFB80202)],
                  ),
                  border: Border.all(width: 0.4, color: Colors.white),
                  borderRadius: BorderRadius.circular(9.77),
                ),
                child: Text(
                  badge,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFFFDFE00),
                    fontSize: 10,
                    fontFamily: AppFont.gilroySemiBold,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // 🌟 3. SECTION TITLE ROW ("16 Shraadh Tithi (6–21 Sept)" & "Select Date")
  // ===========================================================================
  Widget _buildSectionTitleRow(
    BuildContext context,
    PitruPakshaState state,
    PitruPeriod? period,
    bool isHindi,
  ) {
    final rangeLabel = period?.rangeLabel.isNotEmpty == true
        ? period!.rangeLabel
        : (isHindi ? '१६ श्राद्ध तिथि' : '16 Shraadh Tithi');

    final selectedDate = state.selectedDateFilter;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            rangeLabel,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: AppFont.gilroySemiBold,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () async {
            final initialYear = period?.year ?? 2026;
            final picked = await showDatePicker(
              context: context,
              initialDate: selectedDate ?? DateTime(initialYear, 9, 26),
              firstDate: DateTime(2020),
              lastDate: DateTime(2035),
              builder: (dialogContext, child) {
                return Theme(
                  data: Theme.of(dialogContext).copyWith(
                    colorScheme: const ColorScheme.light(
                      primary: Color(0xFF793C01),
                      onPrimary: Colors.white,
                      onSurface: Colors.black,
                    ),
                  ),
                  child: child!,
                );
              },
            );
            if (picked != null && context.mounted) {
              context.read<PitruPakshaBloc>().add(PitruPakshaEvent.filterByDate(picked));
            }
          },
          behavior: HitTestBehavior.opaque,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xFF793C01),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  selectedDate != null
                      ? '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'
                      : (isHindi ? 'तिथि चुनें' : 'Select Date'),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: AppFont.gilroyMedium,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 4),
                if (selectedDate != null)
                  GestureDetector(
                    onTap: () {
                      context.read<PitruPakshaBloc>().add(const PitruPakshaEvent.filterByDate(null));
                    },
                    child: const Icon(
                      Icons.close,
                      size: 12,
                      color: Colors.white,
                    ),
                  )
                else
                  const Icon(
                    Icons.calendar_month_outlined,
                    size: 11,
                    color: Colors.white,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // ===========================================================================
  // 🌟 4. SHRAADH TITHI CARD (Moon icon, Badge, Title, Date, Aparahna Kaal)
  // ===========================================================================
  Widget _buildShraadhCard(BuildContext context, PitruItem item, bool isHindi) {
    final isVishesh = item.category.toLowerCase() == 'vishesh';
    final badgeColor = isVishesh ? const Color(0xFFF9E0C8) : const Color(0xFFF9E0C7);
    final badgeText = item.categoryLabel.isNotEmpty
        ? item.categoryLabel
        : (isHindi ? (isVishesh ? 'विशेष' : 'साधारण') : (isVishesh ? 'Special' : 'Regular'));

    final aparahnaLabel = item.aparahnaKaal?.label.isNotEmpty == true
        ? item.aparahnaKaal!.label
        : (isHindi ? 'अपराह्न काल' : 'Aparahna Kaal');
    final aparahnaTime = item.aparahnaKaal?.display.isNotEmpty == true
        ? item.aparahnaKaal!.display
        : (item.kutupMuhurat?.display ?? '01:22 PM – 03:46 PM');

    final displayDate = SevaDateHelper.formatFullDateWithDay(
      item.date,
      isHindi: isHindi,
      fallback: item.dateDisplay,
    );

    return GestureDetector(
      onTap: () {
        final state = context.read<PitruPakshaBloc>().state;
        final period = state.response?.data?.period;
        final year = period?.year ?? 2026;

        AnalyticsService.pitruPaksha(
          action: 'list_item_click',
          slug: item.slug,
          title: item.title,
        );
        FacebookAnalytics.logEvent(
          FacebookEvents.pitruPaksha,
          parameters: {
            'action': 'list_item_click',
            'slug': item.slug,
            'title': item.title,
          },
        );

        Navigator.of(context).pushNamed(
          AppRoutes.SHARAD_PITARPAKSH_DETAIL_PAGE,
          arguments: {
            'slug': item.slug,
            'date': item.date,
            'year': year,
            'title': item.title,
            'lat': state.latitude,
            'lon': state.longitude,
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 0.50,
            color: const Color(0xFFE4AE23),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x248E8E8E),
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row: Moon icon container, Title & Date column, Category Badge
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Moon icon container
                Container(
                  width: 43,
                  height: 43,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFECCC),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/new_design/background/sharadpitrachandimg.png",
                    width: 28,
                    height: 28,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 10),
                // Title and Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: AppFont.gilroyBold,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        displayDate,
                        style: const TextStyle(
                          color: Color(0xFF793C01),
                          fontSize: 12,
                          fontFamily: AppFont.gilroySemiBold,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 6),
                // Category Badge (Sadharan / Vishesh)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3.5),
                  decoration: BoxDecoration(
                    color: badgeColor,
                    borderRadius: BorderRadius.circular(11.50),
                  ),
                  child: Text(
                    badgeText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF793C01),
                      fontSize: 10,
                      fontFamily: AppFont.gilroySemiBold,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // Short Description
            if (item.shortDescription.isNotEmpty) ...[
              Text(
                item.shortDescription,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: AppFont.gilroyMedium,
                  fontWeight: FontWeight.w400,
                  height: 1.42,
                ),
              ),
              const SizedBox(height: 10),
            ],

            // Dashed Aparahna Kaal Timing Box
            DashedContainer(
              color: const Color(0xFFFFF4E2),
              strokeColor: const Color(0xFF793C01),
              strokeWidth: 1.0,
              gap: 4.0,
              dashLength: 5.0,
              borderRadius: 4.0,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    aparahnaLabel,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: AppFont.gilroySemiBold,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    aparahnaTime,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: Color(0xFF793C01),
                      fontSize: 12,
                      fontFamily: AppFont.gilroySemiBold,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
