import 'package:units_converter/units_converter.dart';

class CalculateArea {
  late String inputValue;
  late String fromUnit;
  late String toUnit;
  late double result;

  CalculateArea({
    required this.inputValue,
    required this.fromUnit,
    required this.toUnit,
  });
  AREA stringUnitToAreaUnit(String unit) {
    if (unit == 'km\u00B2') {
      return AREA.squareKilometers;
    }
    if (unit == 'ha') {
      return AREA.hectares;
    }
    if (unit == 'yd\u00B2') {
      return AREA.squareYard;
    }
    if (unit == 'in\u00B2') {
      return AREA.squareInches;
    }
    if (unit == 'ft\u00B2') {
      return AREA.squareFeet;
    }
    if (unit == 'mile\u00B2') {
      return AREA.squareMiles;
    }
    if (unit == 'ac') {
      return AREA.acres;
    }
    if (unit == 'mm\u00B2') {
      return AREA.squareMillimeters;
    }
    if (unit == 'cm\u00B2') {
      return AREA.squareCentimeters;
    }
    if (unit == 'm\u00B2') {
      return AREA.squareMeters;
    }
    return AREA.squareKilometers;
  }

  String convert() {
    AREA from = stringUnitToAreaUnit(fromUnit);
    AREA to = stringUnitToAreaUnit(toUnit);
    result = double.parse(inputValue).convertFromTo(from, to)!;
    return result.toString();
  }
}
