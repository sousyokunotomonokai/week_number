import 'package:test/test.dart';

import 'package:week_number/western_traditional.dart';

void main() {
  test('dateTime weekNumber roundtrip test', () {
    final year = 2023;
    for (var weekNumber = 1; weekNumber <= 54; ++weekNumber) {
      for (var weekday = 1; weekday <= 7; ++weekday) {
        final date = dateTimeFromWeekNumber(year, weekNumber, weekday);
        if (date.year != year) {
          continue;
        }
        expect(date.weekday, weekday);
        expect(date.weekNumber, weekNumber);
      }
    }
  });
}
