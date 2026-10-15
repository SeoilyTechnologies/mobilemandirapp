import 'package:intl/intl.dart';

class DateUtilsHelper {
  DateUtilsHelper._(); // 🔒 no instance

  /// Returns current day name (e.g. Monday / सोमवार)
  static String currentDay({String locale = 'en'}) {
    final now = DateTime.now();
    return DateFormat('EEEE', locale).format(now);
  }

  /// Returns current month name (e.g. March / मार्च)
  static String currentMonth({String locale = 'en'}) {
    final now = DateTime.now();
    return DateFormat('MMMM', locale).format(now);
  }
}
