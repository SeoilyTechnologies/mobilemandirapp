import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class SevaDateHelper {
  static const Map<int, String> _hindiMonthsFull = {
    1: 'जनवरी',
    2: 'फ़रवरी',
    3: 'मार्च',
    4: 'अप्रैल',
    5: 'मई',
    6: 'जून',
    7: 'जुलाई',
    8: 'अगस्त',
    9: 'सितंबर',
    10: 'अक्टूबर',
    11: 'नवंबर',
    12: 'दिसंबर',
  };

  static const Map<int, String> _englishMonthsFull = {
    1: 'January',
    2: 'February',
    3: 'March',
    4: 'April',
    5: 'May',
    6: 'June',
    7: 'July',
    8: 'August',
    9: 'September',
    10: 'October',
    11: 'November',
    12: 'December',
  };

  static const Map<int, String> _englishMonthsShort = {
    1: 'Jan',
    2: 'Feb',
    3: 'Mar',
    4: 'Apr',
    5: 'May',
    6: 'Jun',
    7: 'Jul',
    8: 'Aug',
    9: 'Sep',
    10: 'Oct',
    11: 'Nov',
    12: 'Dec',
  };

  static const Map<int, String> _hindiDaysFull = {
    DateTime.monday: 'सोमवार',
    DateTime.tuesday: 'मंगलवार',
    DateTime.wednesday: 'बुधवार',
    DateTime.thursday: 'गुरुवार',
    DateTime.friday: 'शुक्रवार',
    DateTime.saturday: 'शनिवार',
    DateTime.sunday: 'रविवार',
  };

  static const Map<int, String> _englishDaysFull = {
    DateTime.monday: 'Monday',
    DateTime.tuesday: 'Tuesday',
    DateTime.wednesday: 'Wednesday',
    DateTime.thursday: 'Thursday',
    DateTime.friday: 'Friday',
    DateTime.saturday: 'Saturday',
    DateTime.sunday: 'Sunday',
  };

  static const Map<int, String> _hindiDaysShort = {
    DateTime.monday: 'सोम',
    DateTime.tuesday: 'मंगल',
    DateTime.wednesday: 'बुध',
    DateTime.thursday: 'गुरु',
    DateTime.friday: 'शुक्र',
    DateTime.saturday: 'शनि',
    DateTime.sunday: 'रवि',
  };

  static const Map<int, String> _englishDaysShort = {
    DateTime.monday: 'Mon',
    DateTime.tuesday: 'Tue',
    DateTime.wednesday: 'Wed',
    DateTime.thursday: 'Thu',
    DateTime.friday: 'Fri',
    DateTime.saturday: 'Sat',
    DateTime.sunday: 'Sun',
  };

  static DateTime? tryParse(String? raw) {
    if (raw == null) return null;
    final trimmed = raw.trim();
    if (trimmed.isEmpty) return null;

    try {
      return DateTime.parse(trimmed).toLocal();
    } catch (_) {}

    try {
      return DateFormat('yyyy-MM-dd H:m:s').parse(trimmed).toLocal();
    } catch (_) {}

    try {
      return DateFormat('d MMMM yyyy, EEEE').parse(trimmed).toLocal();
    } catch (_) {}

    try {
      return DateFormat('d MMMM yyyy').parse(trimmed).toLocal();
    } catch (_) {}

    try {
      return DateFormat('d MMM, yyyy').parse(trimmed).toLocal();
    } catch (_) {}

    try {
      return DateFormat('d MMM yyyy').parse(trimmed).toLocal();
    } catch (_) {}

    try {
      return DateFormat('EEE, d MMM yyyy').parse(trimmed).toLocal();
    } catch (_) {}

    if (trimmed.contains('·')) {
      final part = trimmed.split('·').first.trim();
      return tryParse(part);
    }

    return null;
  }

  /// Formats date to "25 Sep, 2026" (English) or "25 सितंबर, 2026" (Hindi)
  static String formatSevaDate(String? rawDate, {required bool isHindi}) {
    if (rawDate == null || rawDate.trim().isEmpty) return '';
    final date = tryParse(rawDate);
    if (date == null) return rawDate;
    final day = date.day;
    final month = isHindi
        ? (_hindiMonthsFull[date.month] ?? '${date.month}')
        : (_englishMonthsShort[date.month] ?? '${date.month}');
    final year = date.year;
    return '$day $month, $year';
  }

  /// Helper with BuildContext
  static String formatSevaDateWithContext(String? rawDate, BuildContext context) {
    final isHindi = Localizations.localeOf(context).languageCode == 'hi';
    return formatSevaDate(rawDate, isHindi: isHindi);
  }

  /// Formats occurrence date to "Fri, 25 Sep 2026" (English) or "शुक्र, 25 सितंबर 2026" (Hindi)
  static String formatOccurrenceDate(String? rawDate, {required bool isHindi}) {
    if (rawDate == null || rawDate.trim().isEmpty) return '';
    final date = tryParse(rawDate);
    if (date == null) return rawDate;
    final dayName = isHindi
        ? (_hindiDaysShort[date.weekday] ?? '')
        : (_englishDaysShort[date.weekday] ?? '');
    final day = date.day;
    final month = isHindi
        ? (_hindiMonthsFull[date.month] ?? '${date.month}')
        : (_englishMonthsShort[date.month] ?? '${date.month}');
    final year = date.year;
    return '$dayName, $day $month $year';
  }

  /// Calculates next renewal date (+1 day from cycleEndAt) formatted cleanly
  static String calculateNextRenewal(
    String? cycleEndAt,
    String? status, {
    required bool isHindi,
  }) {
    if (status?.toLowerCase().trim() == 'cancelled') {
      return '—';
    }
    if (cycleEndAt == null || cycleEndAt.trim().isEmpty) {
      return isHindi ? '24 सितंबर, 2026' : '24 Sep, 2026';
    }
    final date = tryParse(cycleEndAt);
    if (date == null) return cycleEndAt;
    final nextDay = date.add(const Duration(days: 1));
    return formatSevaDate(nextDay.toIso8601String(), isHindi: isHindi);
  }

  /// Formats date to "26 September 2026, Saturday" (English) or "26 सितंबर 2026, शनिवार" (Hindi)
  static String formatFullDateWithDay(
    String? rawDate, {
    required bool isHindi,
    String? fallback,
  }) {
    if (rawDate == null || rawDate.trim().isEmpty) return fallback ?? '';
    final date = tryParse(rawDate);
    if (date == null) return fallback ?? rawDate;
    final day = date.day;
    final year = date.year;
    if (isHindi) {
      final month = _hindiMonthsFull[date.month] ?? '${date.month}';
      final dayName = _hindiDaysFull[date.weekday] ?? '';
      return '$day $month $year, $dayName';
    } else {
      final month = _englishMonthsFull[date.month] ?? '${date.month}';
      final dayName = _englishDaysFull[date.weekday] ?? '';
      return '$day $month $year, $dayName';
    }
  }

  /// Formats featured card date line, avoiding duplication like "Monday · Monday"
  static String formatFeaturedDateLine(
    String? rawDate,
    String? shraddhaTitle, {
    required bool isHindi,
    String? fallbackDateLine,
  }) {
    final parsedDate = tryParse(rawDate) ?? tryParse(fallbackDateLine);
    if (parsedDate != null) {
      final fullDate = formatFullDateWithDay(
        parsedDate.toIso8601String(),
        isHindi: isHindi,
      );
      final title = (shraddhaTitle ?? '').trim();
      final titleLower = title.toLowerCase();
      // Avoid repeating day name (e.g. "Monday · Monday")
      final isDayName = titleLower == 'monday' ||
          titleLower == 'tuesday' ||
          titleLower == 'wednesday' ||
          titleLower == 'thursday' ||
          titleLower == 'friday' ||
          titleLower == 'saturday' ||
          titleLower == 'sunday' ||
          titleLower == 'सोमवार' ||
          titleLower == 'मंगलवार' ||
          titleLower == 'बुधवार' ||
          titleLower == 'गुरुवार' ||
          titleLower == 'शुक्रवार' ||
          titleLower == 'शनिवार' ||
          titleLower == 'रविवार';

      if (title.isNotEmpty && !isDayName) {
        return '$fullDate · $title';
      }
      return fullDate;
    }
    return fallbackDateLine ?? rawDate ?? '';
  }

  /// Localizes Kaal / Muhurat names
  static String localizeKaalName(String? label, {required bool isHindi}) {
    if (label == null || label.trim().isEmpty) return '';
    if (!isHindi) return label;
    final l = label.trim().toLowerCase();
    if (l.contains('kutup')) return 'कुतुप मुहूर्त';
    if (l.contains('rohin') || l.contains('rauhin')) return 'रौहिण मुहूर्त';
    if (l.contains('aparahna') || l.contains('aprahan')) return 'अपराह्न काल';
    if (l.contains('rahu')) return 'राहु काल';
    return label;
  }

  /// Replaces English month abbreviations in range strings like "१६ श्राद्ध तिथि (26 Sep – 10 Oct)"
  static String localizeDateRange(String? text, {required bool isHindi}) {
    if (text == null || text.trim().isEmpty) return '';
    if (!isHindi) return text;
    return text
        .replaceAll('Jan', 'जनवरी')
        .replaceAll('Feb', 'फ़रवरी')
        .replaceAll('Mar', 'मार्च')
        .replaceAll('Apr', 'अप्रैल')
        .replaceAll('May', 'मई')
        .replaceAll('Jun', 'जून')
        .replaceAll('Jul', 'जुलाई')
        .replaceAll('Aug', 'अगस्त')
        .replaceAll('Sep', 'सितंबर')
        .replaceAll('Oct', 'अक्टूबर')
        .replaceAll('Nov', 'नवंबर')
        .replaceAll('Dec', 'दिसंबर');
  }

  static String localizeDayName(String? day, {required bool isHindi}) {
    if (day == null || day.trim().isEmpty) return '';
    if (!isHindi) return day;
    final d = day.trim().toLowerCase();
    if (d.contains('shani') || d.contains('sat')) return 'शनिवार';
    if (d.contains('ravi') || d.contains('sun')) return 'रविवार';
    if (d.contains('som') || d.contains('mon')) return 'सोमवार';
    if (d.contains('mangal') || d.contains('tue')) return 'मंगलवार';
    if (d.contains('budh') || d.contains('wed')) return 'बुधवार';
    if (d.contains('guru') || d.contains('brihaspati') || d.contains('thu')) return 'गुरुवार';
    if (d.contains('shukra') || d.contains('fri')) return 'शुक्रवार';
    return day;
  }

  static String localizePakshaName(String? paksha, {required bool isHindi}) {
    if (paksha == null || paksha.trim().isEmpty) return '';
    if (!isHindi) return paksha;
    final p = paksha.trim().toLowerCase();
    if (p.contains('shukla')) return 'शुक्ल पक्ष';
    if (p.contains('krishna')) return 'कृष्ण पक्ष';
    return paksha;
  }

  static String localizeTithiName(String? tithi, {required bool isHindi}) {
    if (tithi == null || tithi.trim().isEmpty) return '';
    if (!isHindi) return tithi;
    final t = tithi.trim().toLowerCase();
    if (t.contains('purnima') || t.contains('poornima')) return 'पूर्णिमा';
    if (t.contains('amavasya') || t.contains('amavas')) return 'अमावस्या';
    if (t.contains('pratipada') || t.contains('prathama') || t.contains('padwa')) return 'प्रतिपदा';
    if (t.contains('dwitiya') || t.contains('dvitiya') || t.contains('dooj')) return 'द्वितीया';
    if (t.contains('tritiya') || t.contains('teej')) return 'तृतीया';
    if (t.contains('chaturthi') || t.contains('chauth')) return 'चतुर्थी';
    if (t.contains('panchami')) return 'पंचमी';
    if (t.contains('shashthi') || t.contains('shashti') || t.contains('chhat')) return 'षष्ठी';
    if (t.contains('saptami')) return 'सप्तमी';
    if (t.contains('ashtami')) return 'अष्टमी';
    if (t.contains('navami')) return 'नवमी';
    if (t.contains('dashami')) return 'दशमी';
    if (t.contains('ekadashi')) return 'एकादशी';
    if (t.contains('dwadashi') || t.contains('dvadashi')) return 'द्वादशी';
    if (t.contains('trayodashi') || t.contains('teras')) return 'त्रयोदशी';
    if (t.contains('chaturdashi')) return 'चतुर्दशी';
    return tithi;
  }

  static String localizeNakshatraName(String? nakshatra, {required bool isHindi}) {
    if (nakshatra == null || nakshatra.trim().isEmpty) return '';
    if (!isHindi) return nakshatra;
    final n = nakshatra.trim().toLowerCase();
    if (n.contains('purva bhadra') || n.contains('poorvabhadra') || n.contains('purva bhadrapada')) return 'पूर्वाभाद्रपद';
    if (n.contains('uttara bhadra') || n.contains('uttarabhadra') || n.contains('uttara bhadrapada')) return 'उत्तराभाद्रपद';
    if (n.contains('purva ashadha') || n.contains('poorvashadha')) return 'पूर्वाषाढ़ा';
    if (n.contains('uttara ashadha') || n.contains('uttarashadha')) return 'उत्तराषाढ़ा';
    if (n.contains('purva phalguni') || n.contains('poorvaphalguni')) return 'पूर्वाफाल्गुनी';
    if (n.contains('uttara phalguni') || n.contains('uttaraphalguni')) return 'उत्तराफाल्गुनी';
    if (n.contains('ashwini') || n.contains('aswini')) return 'अश्विनी';
    if (n.contains('bharani')) return 'भरणी';
    if (n.contains('krittika') || n.contains('kritika')) return 'कृत्तिका';
    if (n.contains('rohini')) return 'रोहिणी';
    if (n.contains('mrigashirsha') || n.contains('mrigshira')) return 'मृगशिरा';
    if (n.contains('ardra')) return 'आर्द्रा';
    if (n.contains('punarvasu')) return 'पुनर्वसु';
    if (n.contains('pushya')) return 'पुष्य';
    if (n.contains('ashlesha')) return 'अश्लेषा';
    if (n.contains('magha')) return 'मघा';
    if (n.contains('hasta')) return 'हस्त';
    if (n.contains('chitra')) return 'चित्रा';
    if (n.contains('swati')) return 'स्वाति';
    if (n.contains('vishakha')) return 'विशाखा';
    if (n.contains('anuradha')) return 'अनुराधा';
    if (n.contains('jyeshtha') || n.contains('jyeshta')) return 'ज्येष्ठा';
    if (n.contains('mula') || n.contains('moola')) return 'मूल';
    if (n.contains('shravana') || n.contains('shravan')) return 'श्रवण';
    if (n.contains('dhanishta')) return 'धनिष्ठा';
    if (n.contains('shatabhisha') || n.contains('shatataraka')) return 'शतभिषा';
    if (n.contains('revati')) return 'रेवती';
    return nakshatra;
  }

  static String localizeYogaName(String? yoga, {required bool isHindi}) {
    if (yoga == null || yoga.trim().isEmpty) return '';
    if (!isHindi) return yoga;
    final y = yoga.trim().toLowerCase();
    if (y.contains('vishkambha') || y.contains('vishkambh')) return 'विष्कुम्भ योग';
    if (y.contains('priti')) return 'प्रीति योग';
    if (y.contains('ayushman')) return 'आयुष्मान योग';
    if (y.contains('saubhagya')) return 'सौभाग्य योग';
    if (y.contains('shobhana') || y.contains('shobhan')) return 'शोभन योग';
    if (y.contains('atiganda') || y.contains('atigand')) return 'अतिगण्ड योग';
    if (y.contains('sukarma')) return 'सुकर्मा योग';
    if (y.contains('dhriti')) return 'धृति योग';
    if (y.contains('shoola') || y.contains('shool')) return 'शूल योग';
    if (y.contains('ganda') || y.contains('gand')) return 'गण्ड योग';
    if (y.contains('vriddhi')) return 'वृद्धि योग';
    if (y.contains('dhruva')) return 'ध्रुव योग';
    if (y.contains('vyaghata') || y.contains('vyaghat')) return 'व्याघात योग';
    if (y.contains('harshana') || y.contains('harshan')) return 'हर्षण योग';
    if (y.contains('vajra')) return 'वज्र योग';
    if (y.contains('siddhi')) return 'सिद्धि योग';
    if (y.contains('vyatipata') || y.contains('vyatipat')) return 'व्यतीपात योग';
    if (y.contains('variyan')) return 'वरीयान् योग';
    if (y.contains('parigha') || y.contains('parigh')) return 'परिघ योग';
    if (y.contains('shiva')) return 'शिव योग';
    if (y.contains('siddha')) return 'सिद्ध योग';
    if (y.contains('sadhya')) return 'साध्य योग';
    if (y.contains('shubha') || y.contains('shubh')) return 'शुभ योग';
    if (y.contains('shukla')) return 'शुक्ल योग';
    if (y.contains('brahma')) return 'ब्रह्म योग';
    if (y.contains('indra')) return 'इन्द्र योग';
    if (y.contains('vaidhriti')) return 'वैधृति योग';
    return yoga;
  }

  static String localizeKaranName(String? karan, {required bool isHindi}) {
    if (karan == null || karan.trim().isEmpty) return '';
    if (!isHindi) return karan;
    final k = karan.trim().toLowerCase();
    if (k.contains('bava')) return 'बव';
    if (k.contains('balava') || k.contains('baalav')) return 'बालव';
    if (k.contains('kaulava')) return 'कौलव';
    if (k.contains('taitila') || k.contains('taitil')) return 'तैतिल';
    if (k.contains('gara') || k.contains('gar')) return 'गर';
    if (k.contains('vanija') || k.contains('vanij')) return 'वणिज';
    if (k.contains('vishti') || k.contains('bhadra')) return 'विष्टि (भद्रा)';
    if (k.contains('shakuni')) return 'शकुनि';
    if (k.contains('chatushpada')) return 'चतुष्पद';
    if (k.contains('naga')) return 'नाग';
    if (k.contains('kintughna')) return 'किंस्तुघ्न';
    return karan;
  }
}
