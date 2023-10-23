import 'package:week_number/western_traditional.dart';

void main() {
  final date = DateTime.now();
  print(date.weekNumber); // Get the iso week number
  print(date.ordinalDate); // Get the ordinal date
  print(date.isLeapYear); // Is this a leap year?
  print(date.weekdayFromSunday); // sunday = 1, monday = 2, ...

  final DateTime dateFromWeekNumber = dateTimeFromWeekNumber(2023, 2);
  print(dateFromWeekNumber); // 2023-01-08
}
