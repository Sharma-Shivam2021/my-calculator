import 'package:calculator/converter/screens/Area/model/calculate_area.dart';
import 'package:calculator/converter/screens/Length/model/calculate_length.dart';
import 'package:calculator/converter/screens/Weight/model/calculate_weight.dart';
import 'package:calculator/converter/screens/temperature/model/calculate_temperature.dart';
import 'package:calculator/converter/screens/time/model/calculate_time.dart';

class CalculateConversion {
  late String inputValue;
  late String fromUnit;
  late String toUnit;
  late String type;
  late String result;

  CalculateConversion({
    required this.type,
    required this.inputValue,
    required this.fromUnit,
    required this.toUnit,
  });

  String convert() {
    if (type == 'area') {
      CalculateArea calculateArea = CalculateArea(
          inputValue: inputValue, fromUnit: fromUnit, toUnit: toUnit);
      result = calculateArea.convert();
    }
    if (type == 'length') {
      CalculateLength calculateLength = CalculateLength(
          inputValue: inputValue, fromUnit: fromUnit, toUnit: toUnit);
      result = calculateLength.convert();
    }
    if (type == 'mass') {
      CalculateWeight calculateWeight = CalculateWeight(
          inputValue: inputValue, fromUnit: fromUnit, toUnit: toUnit);
      result = calculateWeight.convert();
    }
    if (type == 'temperature') {
      CalculateTemperature calculateTemperature = CalculateTemperature(
          inputValue: inputValue, fromUnit: fromUnit, toUnit: toUnit);
      result = calculateTemperature.convert();
    }
    if (type == 'time') {
      CalculateTime calculateTime = CalculateTime(
          inputValue: inputValue, fromUnit: fromUnit, toUnit: toUnit);
      result = calculateTime.convert();
    }
    return result;
  }
}
