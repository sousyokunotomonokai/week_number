import 'package:test/test.dart';

import 'package:week_number/western_traditional.dart';

void main() {
  test('dateTime weekNumber roundtrip test', () {
    for (var year = 1900; year <= 2100; ++year) {
      final firstDay = DateTime(year);
      final maxWeekNumber = (365 +
              /* add days from preceding year */ (firstDay.weekday % 7) +
              /* add leap-year day */ (isLeapYear(year) ? 1 : 0)) ~/
          7;
      for (var weekNumber = 1; weekNumber <= maxWeekNumber; ++weekNumber) {
        for (var weekday = 1; weekday <= 7; ++weekday) {
          final date = dateTimeFromWeekNumber(year, weekNumber, weekday);
          expect(date.weekday, weekday);
          expect(date.weekNumber, weekNumber);
        }
      }
    }
  });
}
