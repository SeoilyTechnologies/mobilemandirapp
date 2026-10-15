import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

class DateTimeHelper {
  static DateTime? _tryParse(String input) {
    input = input.trim();

    // ISO style
    try {
      return DateTime.parse(input);
    } catch (_) {}

    // API style: 2026-02-04 0:00:00
    try {
      return DateFormat('yyyy-MM-dd H:m:s').parse(input);
    } catch (_) {}

    return null;
  }
  /// Generic formatter
  static String format(String dateString, String pattern) {
    try {
      DateTime date = DateTime.parse(dateString);
      return DateFormat(pattern).format(date);
    } catch (e) {
      return dateString; // return original on error
    }
  }

  /// Output: 20 March 2026
  static String formatToProofDate(String dateString) {
    return format(dateString, 'd MMMM yyyy');
  }

  /// Output: 04:30 PM Today
  static String formatToProofTime(String dateString, [BuildContext? context]) {
    final date = _tryParse(dateString);
    if (date == null) return "";

    final target = date.toLocal();
    final now = DateTime.now();

    final todayLabel = context != null ? context.l10n.today : "Today";
    final tomorrowLabel = context != null ? context.l10n.tomorrow : "Tomorrow";
    final processingLabel = context != null ? context.l10n.inProgress : "Processing";

    // Past date
    if (target.isBefore(now)) {
      return processingLabel;
    }

    final today = DateTime(now.year, now.month, now.day);
    final targetDay = DateTime(target.year, target.month, target.day);

    final diffDays = targetDay.difference(today).inDays;

    if (diffDays == 0) {
      return "${DateFormat('hh:mm a').format(target)} $todayLabel";
    }

    if (diffDays == 1) {
      return "${DateFormat('hh:mm a').format(target)} $tomorrowLabel";
    }

    return "${DateFormat('hh:mm a').format(target)} ${DateFormat('EEE').format(target)}";
  }

  /// dd-MM-yyyy
  static String formatToDate(String dateString) {
    return format(dateString, 'dd-MM-yyyy');
  }

  /// dd-MM-yyyy - HH:mm:ss
  static String formatToDateTime(String dateString) {
    return format(dateString, 'dd-MM-yyyy - HH:mm:ss');
  }

  /// dd MMM yyyy (ex: 25 Jan 2024)
  static String formatToReadableDate(String dateString) {
    return format(dateString, 'dd MMM yyyy');
  }

  /// HH:mm:ss
  static String formatToTime(String dateString) {
    return format(dateString, 'HH:mm:ss');
  }

  /// 12-hour format → hh:mm a (ex: 06:40 AM)
  static String formatToTime12Hour(String dateString) {
    return format(dateString, 'hh:mm a');
  }

  /// 12-hour format → dd-MM-yyyy hh:mm a (ex: 25-01-2024 06:40 AM)
  static String formatToDateTime12Hour(String dateString) {
    return format(dateString, 'dd-MM-yyyy hh:mm a');
  }

  /// yyyy-MM-dd
  static String formatToServerDate(String dateString) {
    return format(dateString, 'yyyy-MM-dd');
  }
  static String getTodayFormattedDate() {
    final now = DateTime.now();
    final formattedDate = DateFormat('dd-MM-yyyy').format(now);
    return formattedDate;
  }

  String getTodayDayName() {
    return DateFormat('EEEE').format(DateTime.now());
  }


  String getFormattedHeaderDate() {
    final now = DateTime.now();
    final formatted = DateFormat('EEEE dd MMMM, yyyy').format(now);
    return formatted;
  }
  /// Mon, 2 Feb 2026

  static String formatToMuhuratDate(String dateString) {
    try {
      final date = _tryParse(dateString);
      if (date == null) return dateString;

      return DateFormat('EEE, d MMM yyyy').format(date);
    } catch (_) {
      return dateString;
    }
  }


  /// Output:
  /// In ~12 hours
  /// In ~2 days
  /// In ~45 minutes
  /// Expired
  static String getRemainingTime(String dateString, [BuildContext? context]) {
    final date = _tryParse(dateString);
    if (date == null) return "";

    // Same timezone
    final target = date.toLocal();
    final now = DateTime.now();

    final diff = target.difference(now);
    final isHindi = context != null && Localizations.localeOf(context).languageCode == 'hi';

    if (diff.inSeconds <= 0) {
      return isHindi ? "~प्रक्रिया में" : "~Processing";
    }

    if (diff.inDays > 0) {
      return isHindi ? "~${diff.inDays} दिन में" : "In ~${diff.inDays} day${diff.inDays > 1 ? "s" : ""}";
    }

    if (diff.inHours > 0) {
      return isHindi ? "~${diff.inHours} घंटे में" : "In ~${diff.inHours} hour${diff.inHours > 1 ? "s" : ""}";
    }

    if (diff.inMinutes > 0) {
      return isHindi ? "~${diff.inMinutes} मिनट में" : "In ~${diff.inMinutes} minute${diff.inMinutes > 1 ? "s" : ""}";
    }

    return isHindi ? "कुछ ही सेकंड में" : "In a few seconds";
  }

  static String formatToTime12Hourr(String dateString) {
    final date = _tryParse(dateString);
    if (date == null) return "";

    return DateFormat('hh:mm:ss a').format(date.toLocal());
  }

  static String formatTimelineDate(String dateString, [BuildContext? context]) {
    final date = _tryParse(dateString);
    final waitingText = context != null ? context.l10n.waiting : "Waiting";
    if (date == null) return waitingText;

    final target = date.toLocal();
    final now = DateTime.now();

    final today = DateTime(now.year, now.month, now.day);
    final targetDay = DateTime(target.year, target.month, target.day);

    final diff = targetDay.difference(today).inDays;

    final time = DateFormat('hh:mm a').format(target);

    final todayText = context != null ? context.l10n.today : "Today";
    final tomorrowText = context != null ? context.l10n.tomorrow : "Tomorrow";
    final yesterdayText = context != null ? context.l10n.yesterday : "Yesterday";

    if (diff == 0) {
      return "$todayText $time";
    }

    if (diff == 1) {
      return "$tomorrowText $time";
    }

    if (diff == -1) {
      return "$yesterdayText $time";
    }

    return "${DateFormat('d MMM').format(target)} $time";
  }
}
