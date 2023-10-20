import 'date_week_extensions.dart';

/// Create a DateTime based on year, western traditional week number, and optional week day.
///
/// Allows overflowing/underflowing the week numbers. For example: year 2023,
/// week 54 doesn't exist and will overflow to year 2024, week 1
DateTime dateTimeFromWeekNumber(
  int year,
  int weekNumber, [
  int weekDay = DateTime.monday,
]) {
  final firstDayOfYear = DateTime(year, 1, 1);

  var weekDayFromSunday = weekDay + 1;
  if (weekDayFromSunday > 7) {
    weekDayFromSunday = 1;
  }

  // removing the weekdayFromSunday from January 1st returns the Sunday of week 1, which could be in the preceding year.
  final firstDayOfWeek1 = DateTime(year, 1, 1 - (firstDayOfYear.weekdayFromSunday - 1));

  // Not using DateTime.add() since that adds a duration which takes things such as daylight savings into account, which could introduce errors.
  return DateTime(
    firstDayOfWeek1.year,
    firstDayOfWeek1.month,
    firstDayOfWeek1.day + 7 * (weekNumber - 1) + (weekDayFromSunday - 1),
  );
}
