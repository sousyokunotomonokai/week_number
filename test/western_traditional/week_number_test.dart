import 'package:test/test.dart';

import 'package:week_number/western_traditional.dart';

void testWeekNumber(int year, int month, int day, int expected) {
  test('$year/$month/$day -> $expected', () {
    expect(DateTime(year, month, day).weekNumber, expected);
  });
}

void main() {
  // 2023
  testWeekNumber(2023, 1, 1, 1);
  testWeekNumber(2023, 1, 7, 1);
  testWeekNumber(2023, 1, 8, 2);
  testWeekNumber(2023, 2, 1, 5);
  testWeekNumber(2023, 2, 5, 6);
  testWeekNumber(2023, 12, 1, 48);
  testWeekNumber(2023, 12, 30, 52);
  testWeekNumber(2023, 12, 31, 1);

  // 2024
  testWeekNumber(2024, 1, 1, 1);
  testWeekNumber(2024, 1, 6, 1);
  testWeekNumber(2024, 1, 7, 2);
  testWeekNumber(2024, 2, 1, 5);
  testWeekNumber(2024, 2, 4, 6);
  testWeekNumber(2024, 3, 1, 9);
  testWeekNumber(2024, 12, 1, 49);
  testWeekNumber(2024, 12, 28, 52);
  testWeekNumber(2024, 12, 29, 1);
  testWeekNumber(2024, 12, 31, 1);

  // 2025
  testWeekNumber(2025, 1, 1, 1);
  testWeekNumber(2025, 1, 4, 1);
  testWeekNumber(2025, 1, 5, 2);
  testWeekNumber(2025, 12, 27, 52);
  testWeekNumber(2025, 12, 28, 1);
  testWeekNumber(2025, 12, 31, 1);
}
