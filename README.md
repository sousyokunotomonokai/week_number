# week_number

This package is forked from [https://github.com/KadaDev/week_of_year v2.2.0](https://github.com/KadaDev/week_of_year/tree/v2.2.0).

Fast dependency-free extension methods to get week number from a dart DateTime object.
Supported systems are:

* ISO 8601
* Western Traditional

Also includes a function to create a DateTime from a year and week number.

```dart
import 'package:week_number/iso.dart';

void main() {
  final date = DateTime.now();
  print(date.weekNumber); // Get the iso week number
  print(date.ordinalDate); // Get the ordinal date
  print(date.isLeapYear); // Is this a leap year?

  final DateTime dateFromWeekNumber = dateTimeFromWeekNumber(2023, 1, DateTime.monday);
  print(dateFromWeekNumber); // 2023-01-02
}
```
