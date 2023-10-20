import '../date_extensions.dart';

extension DateWeekExtensions on DateTime {
  /// The week number based on western traditional system.
  /// The week contains January 1st corresponds to week number 1.
  int get weekNumber {
    return (ordinalDate - weekdayFromSunday + 13) ~/ 7;
  }

  /// weekday started from Sunday : Sunday = 1, Monday = 2, ... Saturday = 7
  int get weekdayFromSunday {
    var weekdaySun = weekday + 1;
    if (weekdaySun > 7) {
      weekdaySun = 1;
    }
    return weekdaySun;
  }
}
