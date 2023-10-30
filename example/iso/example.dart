import 'package:week_number/iso.dart';

void main() {
  final date = DateTime.now();
  print(date.weekNumber); // Get the iso week number
  print(date.ordinalDate); // Get the ordinal date
  print(date.isLeapYear); // Is this a leap year?

  final DateTime dateFromWeekNumber = dateTimeFromWeekNumber(2023, 2);
  print(dateFromWeekNumber); // 2023-01-09
  print(dateTimeFromOrdinalDate(2023, 365)); // 2023-12-31
  print(dateTimeFromOrdinalDate(2024, 366)); // 2024-12-31
}
