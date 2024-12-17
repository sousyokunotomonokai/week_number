import 'package:test/test.dart';

import 'package:week_number/western_traditional.dart';

void testcase(int year, int weekNumber, int weekday, DateTime date) {
  test('$year weeknumber:$weekNumber, weekday:$weekday -> $date', () {
    expect(dateTimeFromWeekNumber(year, weekNumber, weekday), date);
  });
}

void main() {
  // 2023
  testcase(2023, 1, DateTime.sunday, DateTime(2023, 1, 1));
  testcase(2023, 1, DateTime.saturday, DateTime(2023, 1, 7));
  testcase(2023, 2, DateTime.sunday, DateTime(2023, 1, 8));
  testcase(2023, 5, DateTime.wednesday, DateTime(2023, 2, 1));
  testcase(2023, 6, DateTime.sunday, DateTime(2023, 2, 5));
  testcase(2023, 48, DateTime.friday, DateTime(2023, 12, 1));
  testcase(2023, 53, DateTime.sunday, DateTime(2023, 12, 31));
  testcase(2023, 53, DateTime.monday, DateTime(2024, 1, 1));
  testcase(2023, 54, DateTime.sunday, DateTime(2024, 1, 7)); // overflow

  // 2024
  testcase(2024, 1, DateTime.sunday, DateTime(2023, 12, 31));
  testcase(2024, 1, DateTime.monday, DateTime(2024, 1, 1));
  testcase(2024, 1, DateTime.saturday, DateTime(2024, 1, 6));
  testcase(2024, 2, DateTime.sunday, DateTime(2024, 1, 7));
  testcase(2024, 5, DateTime.thursday, DateTime(2024, 2, 1));
  testcase(2024, 9, DateTime.thursday, DateTime(2024, 2, 29));
  testcase(2024, 49, DateTime.sunday, DateTime(2024, 12, 1));
  testcase(2024, 52, DateTime.saturday, DateTime(2024, 12, 28));
  testcase(2024, 53, DateTime.sunday, DateTime(2024, 12, 29));
  testcase(2024, 53, DateTime.tuesday, DateTime(2024, 12, 31));
  testcase(2024, 53, DateTime.wednesday, DateTime(2025, 1, 1));

  // 2025
  testcase(2025, 1, DateTime.sunday, DateTime(2024, 12, 29));
  testcase(2025, 1, DateTime.saturday, DateTime(2025, 1, 4));
  testcase(2025, 52, DateTime.sunday, DateTime(2025, 12, 21));
  testcase(2025, 52, DateTime.saturday, DateTime(2025, 12, 27));
  testcase(2025, 53, DateTime.sunday, DateTime(2025, 12, 28));
  testcase(2025, 53, DateTime.wednesday, DateTime(2025, 12, 31));
  testcase(2025, 53, DateTime.thursday, DateTime(2026, 1, 1));
}
