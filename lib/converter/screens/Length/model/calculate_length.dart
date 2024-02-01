import 'package:units_converter/units_converter.dart';

class CalculateLength {
  late String inputValue;
  late String fromUnit;
  late String toUnit;
  late double result;

  CalculateLength({
    required this.inputValue,
    required this.fromUnit,
    required this.toUnit,
  });

  LENGTH stringUnitToLengthUnit(String unit) {
    if (unit == 'm') {
      return LENGTH.meters;
    }
    if (unit == 'cm') {
      return LENGTH.centimeters;
    }
    if (unit == 'in') {
      return LENGTH.inches;
    }
    if (unit == 'ft') {
      return LENGTH.feet;
    }
    if (unit == 'NM') {
      return LENGTH.nauticalMiles;
    }
    if (unit == 'yd') {
      return LENGTH.yards;
    }
    if (unit == 'miles') {
      return LENGTH.miles;
    }
    if (unit == 'mm') {
      return LENGTH.millimeters;
    }
    if (unit == 'μm') {
      return LENGTH.micrometers;
    }
    if (unit == 'nm') {
      return LENGTH.nanometers;
    }
    if (unit == 'A') {
      return LENGTH.angstroms;
    }
    if (unit == 'pm') {
      return LENGTH.picometers;
    }
    if (unit == 'km') {
      return LENGTH.kilometers;
    }
    if (unit == 'au') {
      return LENGTH.astronomicalUnits;
    }
    if (unit == 'ly') {
      return LENGTH.lightYears;
    }
    return LENGTH.meters;
  }

  String convert() {
    LENGTH from = stringUnitToLengthUnit(fromUnit);
    LENGTH to = stringUnitToLengthUnit(toUnit);
    result = double.parse(inputValue).convertFromTo(from, to)!;
    return result.toString();
  }
}
