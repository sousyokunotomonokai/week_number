import 'package:test/test.dart';

import 'package:week_number/iso.dart';

void main() {
  group('dateTimeFromOrdinalDate', () {
    test('sample case', () {
      expect(dateTimeFromOrdinalDate(2023, 1), DateTime(2023, 1, 1));
      expect(dateTimeFromOrdinalDate(2023, 32), DateTime(2023, 2, 1));
      expect(dateTimeFromOrdinalDate(2023, 365), DateTime(2023, 12, 31));

      // leap year
      expect(dateTimeFromOrdinalDate(2024, 366), DateTime(2024, 12, 31));
    });

    test('roundtrip test (common year)', () {
      for (var ordinalDate = 1; ordinalDate <= 365; ++ordinalDate) {
        final date = dateTimeFromOrdinalDate(2023, ordinalDate);
        expect(date.ordinalDate, ordinalDate);
      }
    });

    test('roundtrip test (leap year)', () {
      for (var ordinalDate = 1; ordinalDate <= 366; ++ordinalDate) {
        final date = dateTimeFromOrdinalDate(2024, ordinalDate);
        expect(date.ordinalDate, ordinalDate);
      }
    });

    test('handle overflowing', () {
      expect(dateTimeFromOrdinalDate(2023, 366), DateTime(2024, 1, 1));
    });

    test('overflowing ordinalDate roundtrip test', () {
      for (var ordinalDate = 365 + 1; ordinalDate <= 365 + 366; ++ordinalDate) {
        final date = dateTimeFromOrdinalDate(2023, ordinalDate);
        expect(date.ordinalDate, ordinalDate - 365);
      }
    });

    test('handle underflowing', () {
      expect(dateTimeFromOrdinalDate(2023, 0), DateTime(2022, 12, 31));
      expect(dateTimeFromOrdinalDate(2023, -1), DateTime(2022, 12, 30));
      expect(dateTimeFromOrdinalDate(2023, -364), DateTime(2022, 1, 1));
    });

    test('underflowing ordinalDate roundtrip test', () {
      for (var ordinalDate = 0; ordinalDate >= -364; --ordinalDate) {
        final date = dateTimeFromOrdinalDate(2023, ordinalDate);
        expect(date.year, 2022);
        expect(date.ordinalDate, 365 + ordinalDate);
      }
    });
  });
}
