import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../common/values/fonts.dart';
import '../../../../common/deep_link/deep_link_service.dart';
import '../../../../common/utils/seva_date_helper.dart';
import '../../../language/bloc/language_bloc.dart';
import '../../data/entity/pitru_paksha_detail_response.dart';
import '../../data/entity/pitru_paksha_response.dart';
import '../bloc/pitru_paksha_detail_bloc.dart';
import '../bloc/pitru_paksha_detail_event.dart';
import '../bloc/pitru_paksha_detail_state.dart';

class SharadPitarpakshDetailPage extends StatefulWidget {
  final String title;

  const SharadPitarpakshDetailPage({
    super.key,
    this.title = "Sarva Pitru Amavasya",
  });

  @override
  State<SharadPitarpakshDetailPage> createState() =>
      _SharadPitarpakshDetailPageState();
}

class _SharadPitarpakshDetailPageState
    extends State<SharadPitarpakshDetailPage> {
  bool _isInit = true;
  String _slug = 'sarva-pitru-amavasya';
  String _date = '2026-10-10';
  int _year = 2026;
  String _title = 'Sarva Pitru Amavasya';
  double? _lat;
  double? _lon;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isInit) {
      _isInit = false;
      final args = ModalRoute.of(context)?.settings.arguments;

      if (args is Map<String, dynamic>) {
        _slug = args['slug']?.toString() ?? _slug;
        _date = args['date']?.toString() ?? _date;
        _year = (args['year'] is int)
            ? args['year']
            : (int.tryParse(args['year']?.toString() ?? '') ?? _year);
        _title = args['title']?.toString() ?? widget.title;
        _lat = args['lat'] as double?;
        _lon = args['lon'] as double?;
      } else if (args is String && args.isNotEmpty) {
        _title = args;
      } else {
        _title = widget.title;
      }

      final lang = context.read<LanguageBloc>().state.locale.languageCode;
      context.read<PitruPakshaDetailBloc>().add(
            PitruPakshaDetailEvent.loadDetail(
              slug: _slug,
              date: _date,
              year: _year,
              lang: lang,
              lat: _lat,
              lon: _lon,
            ),
          );
    }
  }

  void _retry() {
    final lang = context.read<LanguageBloc>().state.locale.languageCode;
    context.read<PitruPakshaDetailBloc>().add(
          PitruPakshaDetailEvent.loadDetail(
            slug: _slug,
            date: _date,
            year: _year,
            lang: lang,
            lat: _lat,
            lon: _lon,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LanguageBloc, LanguageState>(
      listener: (context, langState) {
        context.read<PitruPakshaDetailBloc>().add(
              PitruPakshaDetailEvent.loadDetail(
                slug: _slug,
                date: _date,
                year: _year,
                lang: langState.locale.languageCode,
                lat: _lat,
                lon: _lon,
              ),
            );
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFBF6ED),
        body: BlocBuilder<PitruPakshaDetailBloc, PitruPakshaDetailState>(
          builder: (context, state) {
            final isHindi = Localizations.localeOf(context).languageCode == 'hi';
            final data = state.response?.data;
            final pageTitle = data?.title.isNotEmpty == true
                ? data!.title
                : (isHindi ? 'श्राद्ध विवरण' : _title);
            final pageDate = data?.date.isNotEmpty == true ? data!.date : _date;

            return Column(
              children: [
                _buildHeader(context, pageTitle, date: pageDate, isHindi: isHindi),
                Expanded(
                  child: _buildBody(context, state, isHindi),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  // ===========================================================================
  // 🌟 TOP HEADER (Gradient + Back Button + Centered Title)
  // ===========================================================================
  Widget _buildHeader(BuildContext context, String title, {String? date, bool isHindi = false}) {
    final formattedDate = SevaDateHelper.formatFullDateWithDay(
      date,
      isHindi: isHindi,
    );

    return Container(
      width: double.infinity,
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
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
          child: Row(
            children: [
              // Back Button
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                behavior: HitTestBehavior.opaque,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    color: Colors.white.withValues(alpha: 0.70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.66),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 13,
                      color: Color(0xFF793C01),
                    ),
                  ),
                ),
              ),
              // Centered Title and Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: AppFont.gilroyBold,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    if (formattedDate.isNotEmpty) ...[
                      const SizedBox(height: 2),
                      Text(
                        formattedDate,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xFFFFEBD9),
                          fontSize: 11,
                          fontFamily: AppFont.gilroyMedium,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              // Symmetrical spacer for balance
              const SizedBox(width: 24),
            ],
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // 🌟 BODY (Loading, Error, or Dynamic Content)
  // ===========================================================================
  Widget _buildBody(BuildContext context, PitruPakshaDetailState state, bool isHindi) {
    if (state.isLoading) {
      return _buildSkeletonLoading();
    }

    if (state.errorMessage.isNotEmpty && state.response?.data == null) {
      return _buildErrorWidget(state.errorMessage, _retry, isHindi);
    }

    final data = state.response?.data;
    if (data == null) {
      return Center(
        child: Text(
          isHindi ? 'कोई विवरण उपलब्ध नहीं है' : 'No details available',
          style: const TextStyle(
            fontSize: 14,
            fontFamily: AppFont.gilroyMedium,
            color: Color(0xFF793C01),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Muhurats Card (Kutup, Rohina, Aparahna Kaal)
          _buildMuhuratsCard(context, data.muhurats, isHindi),

          // 2. Panchang Vivaran Grid (Tithi, Paksha, Nakshatra, Yoga, Karan, Day)
          _buildPanchangVivaranGrid(context, data.panchangVivaran, isHindi),

          // 3. Is Din Konsi Pooja Hoti Hai (Rituals)
          _buildRitualsCard(context, data.rituals, isHindi),

          // 4. Iska Mahatva (Significance)
          if (data.significance.isNotEmpty)
            _buildSignificanceCard(context, data.significance, isHindi),

          // 5. Shri Pitru Dev Aarti Banner
          _buildAartiCard(context, data.aarti, isHindi),

          // 6. Shraadh Karma Vidhi (Steps)
          if (data.vidhi.isNotEmpty) _buildVidhiCard(context, data.vidhi, isHindi),

          // 7. Karein aur na Karein (Dos, Don'ts & Rahu Kaal)
          _buildDosDontsCard(context, data.dos, data.donts, data.rahuKaal, isHindi),

          const SizedBox(height: 30),
        ],
      ),
    );
  }

  // ===========================================================================
  // 🌟 1. MUHURATS CARD (Kutup, Rohina, Aparahna Kaal)
  // ===========================================================================
  // ===========================================================================
  // 🌟 1. MUHURATS CARD (Kutup, Rohina, Aparahna Kaal)
  // ===========================================================================
  Widget _buildMuhuratsCard(
      BuildContext context, PitruDetailMuhurats? muhurats, bool isHindi) {
    final kutupLabel = muhurats?.kutupMuhurat?.label.isNotEmpty == true
        ? muhurats!.kutupMuhurat!.label
        : (isHindi ? 'कुतुप मुहूर्त' : 'Kutup Muhurat');
    final kutupTime = muhurats?.kutupMuhurat?.display.isNotEmpty == true
        ? muhurats!.kutupMuhurat!.display
        : '11:47 AM–12:36 PM';

    final rohinaLabel = muhurats?.rohinaMuhurat?.label.isNotEmpty == true
        ? muhurats!.rohinaMuhurat!.label
        : (isHindi ? 'रौहिण मुहूर्त' : 'Rohina Muhurat');
    final rohinaTime = muhurats?.rohinaMuhurat?.display.isNotEmpty == true
        ? muhurats!.rohinaMuhurat!.display
        : '11:47 AM–12:36 PM';

    final aparahnaLabel = muhurats?.aparahnaKaal?.label.isNotEmpty == true
        ? muhurats!.aparahnaKaal!.label
        : (isHindi ? 'अपराह्न काल' : 'Aparahna Kaal');
    final aparahnaTime = muhurats?.aparahnaKaal?.display.isNotEmpty == true
        ? muhurats!.aparahnaKaal!.display
        : '01:00–03:25 PM';

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isHindi ? 'शुभ मुहूर्त' : 'Auspicious Muhurat',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: AppFont.gilroyBold,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 12),
          _buildMuhuratRow(kutupLabel, kutupTime),
          const SizedBox(height: 10),
          _buildMuhuratRow(rohinaLabel, rohinaTime),
          const SizedBox(height: 10),
          _buildMuhuratRow(aparahnaLabel, aparahnaTime),
        ],
      ),
    );
  }

  Widget _buildMuhuratRow(String label, String time) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF4E2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: AppFont.gilroyMedium,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            time,
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
    );
  }

  // ===========================================================================
  // 🌟 2. PANCHANG VIVARAN GRID (Tithi, Paksha, Nakshatra, Yoga, Karan, Day)
  // ===========================================================================
  Widget _buildPanchangVivaranGrid(
      BuildContext context, PitruPanchangVivaran? vivaran, bool isHindi) {
    final tithi =
        vivaran?.tithi.isNotEmpty == true ? vivaran!.tithi : '-';
    final paksha =
        vivaran?.paksha.isNotEmpty == true ? vivaran!.paksha : '-';
    final nakshatra =
        vivaran?.nakshatra.isNotEmpty == true ? vivaran!.nakshatra : '-';
    final yoga =
        vivaran?.yoga.isNotEmpty == true ? vivaran!.yoga : '-';
    final karan =
        vivaran?.karan.isNotEmpty == true ? vivaran!.karan : '-';
    final day = vivaran?.day.isNotEmpty == true ? vivaran!.day : '-';

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isHindi ? 'पंचांग विवरण' : 'Panchang Vivaran',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: AppFont.gilroyBold,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildGridItem(
                  isHindi ? 'तिथि' : 'Tithi',
                  tithi,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _buildGridItem(
                  isHindi ? 'पक्ष' : 'Paksha',
                  paksha,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _buildGridItem(
                  isHindi ? 'नक्षत्र' : 'Nakshatra',
                  nakshatra,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _buildGridItem(
                  isHindi ? 'योग' : 'Yoga',
                  yoga,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _buildGridItem(
                  isHindi ? 'करण' : 'Karan',
                  karan,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _buildGridItem(
                  isHindi ? 'वार' : 'Day',
                  day,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF4E2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFFE4AE23),
              fontSize: 12,
              fontFamily: AppFont.gilroySemiBold,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: AppFont.gilroySemiBold,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // 🌟 3. IS DIN KONSI POOJA HOTI HAI (Rituals)
  // ===========================================================================
  Widget _buildRitualsCard(
      BuildContext context, List<PitruRitual> rituals, bool isHindi) {
    if (rituals.isEmpty) return const SizedBox.shrink();
    final list = rituals;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isHindi ? 'इस दिन कौन सी पूजा होती है' : 'Pooja performed on this day',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: AppFont.gilroyBold,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 12),
          for (int i = 0; i < list.length; i++) ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF4E2),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    list[i].title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: AppFont.gilroySemiBold,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    list[i].subtitle,
                    style: const TextStyle(
                      color: Color(0xFF616161),
                      fontSize: 12,
                      fontFamily: AppFont.gilroyMedium,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            if (i < list.length - 1) const SizedBox(height: 10),
          ],
        ],
      ),
    );
  }

  // ===========================================================================
  // 🌟 4. ISKA MAHATVA (Significance)
  // ===========================================================================
  Widget _buildSignificanceCard(
      BuildContext context, String significance, bool isHindi) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isHindi ? 'इसका महत्व' : 'Significance',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: AppFont.gilroyBold,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            significance,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: AppFont.gilroyMedium,
              fontWeight: FontWeight.w400,
              height: 1.67,
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // 🌟 5. SHRI PITRU DEV AARTI BANNER
  // ===========================================================================
  Widget _buildAartiCard(BuildContext context, PitruAarti? aarti, bool isHindi) {
    final title = isHindi && aarti?.titleHi.isNotEmpty == true
        ? aarti!.titleHi
        : (aarti?.title.isNotEmpty == true
            ? aarti!.title
            : (isHindi
                ? 'श्री पितृ देव आरती'
                : (aarti?.titleEn.isNotEmpty == true
                    ? aarti!.titleEn
                    : 'Shri Pitru Dev Aarti')));

    final slug = (aarti?.slug.isNotEmpty == true)
        ? aarti!.slug
        : '/aarti/shri-pitra-aarti';

    return GestureDetector(
      onTap: () {
        DeepLinkService.instance.playAartiBySlug(context, slug);
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(14),
        decoration: _cardDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: AppFont.gilroyBold,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Icon(
                  Icons.play_circle_fill_rounded,
                  color: Color(0xFF793C01),
                  size: 24,
                ),
              ],
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                "assets/new_design/background/ptradev_aarti_img.png",
                width: double.infinity,
                height: 146,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: double.infinity,
                  height: 146,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF4E2),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF793C01),
                        fontSize: 14,
                        fontFamily: AppFont.gilroyBold,
                      ),
                    ),
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
  // 🌟 6. SHRAADH KARMA VIDHI (Steps)
  // ===========================================================================
  Widget _buildVidhiCard(BuildContext context, List<String> vidhi, bool isHindi) {
    if (vidhi.isEmpty) return const SizedBox.shrink();
    final steps = vidhi;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isHindi ? 'श्राद्ध कर्म विधि' : 'Shraadh Karma Vidhi',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: AppFont.gilroyBold,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 14),
          for (int i = 0; i < steps.length; i++) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Number Circle
                Container(
                  width: 18,
                  height: 18,
                  margin: const EdgeInsets.only(top: 2),
                  decoration: const BoxDecoration(
                    color: Color(0xFF793C01),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '${i + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10.5,
                        fontFamily: AppFont.gilroySemiBold,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Step Text
                Expanded(
                  child: Text(
                    steps[i],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: AppFont.gilroyRegular,
                      fontWeight: FontWeight.w400,
                      height: 1.35,
                    ),
                  ),
                ),
              ],
            ),
            if (i < steps.length - 1)
              const Divider(
                color: Color(0xFFDCDCDC),
                height: 22,
                thickness: 0.8,
              ),
          ],
        ],
      ),
    );
  }

  // ===========================================================================
  // 🌟 7. KAREIN AUR NA KAREIN (Dos & Don'ts + Rahu Kaal)
  // ===========================================================================
  Widget _buildDosDontsCard(
    BuildContext context,
    List<String> dos,
    List<String> donts,
    MuhuratTiming? rahuKaal,
    bool isHindi,
  ) {
    if (dos.isEmpty && donts.isEmpty && rahuKaal == null) {
      return const SizedBox.shrink();
    }
    final dosList = dos;
    final dontsList = donts;

    final rahuDisplay = rahuKaal?.display.isNotEmpty == true
        ? rahuKaal!.display
        : '';

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isHindi ? 'करें और न करें' : 'Dos and Don\'ts',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: AppFont.gilroyBold,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Karein (Green)
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAF3EC),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isHindi ? 'करें' : 'Dos',
                        style: const TextStyle(
                          color: Color(0xFF2E6B45),
                          fontSize: 13,
                          fontFamily: AppFont.gilroySemiBold,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 8),
                      for (final item in dosList) ...[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('• ',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10)),
                            Expanded(
                              child: Text(
                                item,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: AppFont.gilroyRegular,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // Na Karein (Red)
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFBEAEA),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isHindi ? 'न करें' : 'Don\'ts',
                        style: const TextStyle(
                          color: Color(0xFFA63A3A),
                          fontSize: 13,
                          fontFamily: AppFont.gilroySemiBold,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 8),
                      for (final item in dontsList) ...[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('• ',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10)),
                            Expanded(
                              child: Text(
                                item,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: AppFont.gilroyRegular,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          // Rahu Kaal Box
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFF7E9E9),
              border: Border.all(
                color: const Color(0xFFB33A3A),
                width: 0.91,
              ),
              borderRadius: BorderRadius.circular(5.28),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  isHindi ? 'राहु काल' : 'Rahu Kaal',
                  style: const TextStyle(
                    color: Color(0xFFB74545),
                    fontSize: 12,
                    fontFamily: AppFont.gilroySemiBold,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  rahuDisplay,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color(0xFFB74545),
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
    );
  }

  // Common Card Box Decoration
  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6.44),
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
    );
  }

  // ===========================================================================
  // 🌟 SKELETON LOADING
  // ===========================================================================
  Widget _buildSkeletonLoading() {
    return Shimmer.fromColors(
      baseColor: const Color(0xFFEADBCA).withValues(alpha: 0.4),
      highlightColor: Colors.white.withValues(alpha: 0.8),
      child: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: 4,
        itemBuilder: (_, index) => Container(
          width: double.infinity,
          height: index == 0 ? 170 : 130,
          margin: const EdgeInsets.only(bottom: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.44),
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // 🌟 ERROR WIDGET
  // ===========================================================================
  Widget _buildErrorWidget(String message, VoidCallback onRetry, bool isHindi) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline_rounded,
              size: 48,
              color: Color(0xFF793C01),
            ),
            const SizedBox(height: 12),
            Text(
              message.isNotEmpty
                  ? message
                  : (isHindi ? 'विवरण लोड करने में विफल' : 'Failed to load details'),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: AppFont.gilroyMedium,
                color: Color(0xFF333333),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF793C01),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              ),
              child: Text(isHindi ? 'पुनः प्रयास करें' : 'Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
