import 'package:units_converter/units_converter.dart';

class CalculateWeight {
  late String inputValue;
  late String fromUnit;
  late String toUnit;
  late double result;

  CalculateWeight({
    required this.inputValue,
    required this.fromUnit,
    required this.toUnit,
  });

  MASS stringToMassUnit(String unit) {
    if (unit == 'g') {
      return MASS.grams;
    }
    if (unit == 'hg') {
      return MASS.ettograms;
    }
    if (unit == 'kg') {
      return MASS.kilograms;
    }
    if (unit == 'lb') {
      return MASS.pounds;
    }
    if (unit == 'oz') {
      return MASS.ounces;
    }
    if (unit == '[q]') {
      return MASS.quintals;
    }
    if (unit == 't') {
      return MASS.tons;
    }
    if (unit == 'mg') {
      return MASS.milligrams;
    }
    if (unit == 'fg') {
      return MASS.femtograms;
    }
    if (unit == 'pg') {
      return MASS.picograms;
    }
    if (unit == 'ng') {
      return MASS.nanograms;
    }
    if (unit == 'µg') {
      return MASS.micrograms;
    }
    if (unit == 'dg') {
      return MASS.decigrams;
    }

    return MASS.grams;
  }

  String convert() {
    MASS from = stringToMassUnit(fromUnit);
    MASS to = stringToMassUnit(toUnit);
    result = double.parse(inputValue).convertFromTo(from, to)!;
    return result.toString();
  }
}
