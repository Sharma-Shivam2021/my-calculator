import 'package:units_converter/units_converter.dart';

class CalculateTemperature {
  late String inputValue;
  late String fromUnit;
  late String toUnit;
  late double result;

  CalculateTemperature({
    required this.inputValue,
    required this.fromUnit,
    required this.toUnit,
  });

  TEMPERATURE stringToTempUnit(String unit) {
    if (unit == '°F') {
      return TEMPERATURE.fahrenheit;
    }
    if (unit == '°C') {
      return TEMPERATURE.celsius;
    }
    if (unit == 'K') {
      return TEMPERATURE.kelvin;
    }
    return TEMPERATURE.celsius;
  }

  String convert() {
    TEMPERATURE from = stringToTempUnit(fromUnit);
    TEMPERATURE to = stringToTempUnit(toUnit);
    result = double.parse(inputValue).convertFromTo(from, to)!;
    return result.toString();
  }
}
