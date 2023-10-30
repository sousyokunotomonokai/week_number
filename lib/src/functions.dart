/// True if a year is a leap year.
bool isLeapYear(int year) {
  return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
}

/// Create a DateTime from a ordinal date of year.
///
/// Allows overflowing/underflowing the ordinal date.
DateTime dateTimeFromOrdinalDate(int year, int ordinalDate) {
  const days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  // day is 1-based
  if (ordinalDate > 0) {
    var day = ordinalDate;
    while (true) {
      for (var month = 1; month <= 12; ++month) {
        var numberOfDays = days[month - 1];
        if (isLeapYear(year) && month == 2) {
          ++numberOfDays;
        }
        if (day <= numberOfDays) {
          return DateTime(year, month, day);
        }
        day -= numberOfDays;
      }
      ++year;
    }
  } else {
    // handle underflow
    var offset = ordinalDate.abs();
    while (true) {
      --year;
      for (var month = 12; month >= 1; --month) {
        var numberOfDays = days[month - 1];
        if (isLeapYear(year) && month == 2) {
          ++numberOfDays;
        }

        if (offset < numberOfDays) {
          return DateTime(year, month, numberOfDays - offset);
        }
        offset -= numberOfDays;
      }
    }
  }
}
