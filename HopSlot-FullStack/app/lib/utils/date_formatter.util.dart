import 'package:intl/intl.dart';

class DateFormatter {
  static String formatDate(DateTime date) {
    return DateFormat('d MMM y').format(date);
  }

  static String formatTime(DateTime time) {
    return DateFormat('h:mm a').format(time);
  }

  static String formatDateTime(DateTime time) {
    return DateFormat('d MMM y - h:mm a').format(time);
  }

  static String getMonthName(int month) {
    return DateFormat('MMMM').format(DateTime(2021, month));
  }

  static String getWeekDayName(int weekDay) {
    return DateFormat('EEEE').format(DateTime(2021, 1, weekDay));
  }

  static String getWeekDayShortName(int weekDay) {
    return DateFormat('E').format(DateTime(2021, 1, weekDay));
  }

  static DateTime getStartingWeekDate(int week, int year) {
    return DateTime.utc(year, 1, 1).add(Duration(days: (week - 1) * 7));
  }

  static int getCurrentWeek(DateTime date) {
    final dayOfYear = int.parse(DateFormat('D').format(date));
    return ((dayOfYear - date.weekday + 10) / 7).floor();
  }

  static int getCurrentWeekOfMonth(DateTime date) {
    return ((date.day - 1) / 7).floor() + 1;
  }
}
