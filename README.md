# Week Number

This package is forked from [https://github.com/KadaDev/week_of_year v2.2.0](https://github.com/KadaDev/week_of_year/tree/v2.2.0).

Fast dependency-free extension methods to get week number from a dart DateTime object.
Supported systems are:

* ISO 8601
* Western Traditional

Also includes a function to create a DateTime from a year and week number or an ordinal date.

Cited from [https://en.wikipedia.org/wiki/Week](https://en.wikipedia.org/wiki/Week)

| System              | First day of week | First week of year contains |              |                  |
| :------------------ | :---------------- | :-------------------------- | :----------- | :--------------- |
| ISO 8601            | Monday            | 4 January                   | 1st Thursday | 4-7 days of year |
| Western Traditional | Sunday            | 1 January                   | 1st Saturday | 1-7 days of year |

## ISO 8601

```dart
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
```

## Western Traditional

```dart
import 'package:week_number/western_traditional.dart';

void main() {
  final date = DateTime.now();
  print(date.weekNumber); // Get the western traditional week number
  print(date.ordinalDate); // Get the ordinal date
  print(date.isLeapYear); // Is this a leap year?
  print(date.weekdayFromSunday); // sunday = 1, monday = 2, ...

  final DateTime dateFromWeekNumber = dateTimeFromWeekNumber(2023, 2);
  print(dateFromWeekNumber); // 2023-01-08
  print(dateTimeFromOrdinalDate(2023, 365)); // 2023-12-31
  print(dateTimeFromOrdinalDate(2024, 366)); // 2024-12-31
}
```

## Our products using this package

* [DidRoku : A Life logging app](https://play.google.com/store/apps/details?id=com.sousyokunotomonokai.didlog)
