import 'package:week_number/iso.dart';

void main() {
  final date = DateTime.now();
  print(date.weekNumber); // Get the iso week number
  print(date.ordinalDate); // Get the ordinal date
  print(date.isLeapYear); // Is this a leap year?

  final DateTime dateFromWeekNumber =
      dateTimeFromWeekNumber(2023, 1, DateTime.monday);
  print(dateFromWeekNumber); // 2023-01-02
}
