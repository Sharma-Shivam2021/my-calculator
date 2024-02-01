import 'package:units_converter/units_converter.dart';

class CalculateTime {
  late String inputValue;
  late String fromUnit;
  late String toUnit;
  late double result;

  CalculateTime({
    required this.inputValue,
    required this.fromUnit,
    required this.toUnit,
  });

  TIME stringToTimeUnit(String unit) {
    if (unit == 's') {
      return TIME.seconds;
    }
    if (unit == 'ds') {
      return TIME.deciseconds;
    }
    if (unit == 'cs') {
      return TIME.centiseconds;
    }
    if (unit == 'ms') {
      return TIME.milliseconds;
    }
    if (unit == 'µs') {
      return TIME.microseconds;
    }
    if (unit == 'ns') {
      return TIME.nanoseconds;
    }
    if (unit == 'min') {
      return TIME.minutes;
    }
    if (unit == 'h') {
      return TIME.hours;
    }
    if (unit == 'd') {
      return TIME.days;
    }
    if (unit == 'w') {
      return TIME.weeks;
    }
    if (unit == 'y') {
      return TIME.years365;
    }
    if (unit == 'c') {
      return TIME.centuries;
    }
    if (unit == 'ky') {
      return TIME.millennium;
    }
    return TIME.seconds;
  }

  String convert() {
    TIME from = stringToTimeUnit(fromUnit);
    TIME to = stringToTimeUnit(toUnit);
    result = double.parse(inputValue).convertFromTo(from, to)!;
    return result.toString();
  }
}
