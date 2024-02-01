import 'package:units_converter/units_converter.dart';

class CalculateBMI {
  final String height;
  final String heightUnit;
  final String weight;
  final String weightUnit;
  late double result;
  late String bmiLevel;

  CalculateBMI({
    required this.height,
    required this.heightUnit,
    required this.weight,
    required this.weightUnit,
  });

  double? heightInMeter;
  double? weightInKg;
  String calculateBMI() {
    if (weightUnit == 'lbs') {
      weightInKg =
          double.parse(weight).convertFromTo(MASS.pounds, MASS.kilograms)!;
    }
    if (weightUnit == 'kg') {
      weightInKg = double.parse(weight);
    }
    if (heightUnit == 'cm') {
      heightInMeter = double.parse(height)
          .convertFromTo(LENGTH.centimeters, LENGTH.meters)!;
    }
    if (heightUnit == 'feet') {
      heightInMeter =
          double.parse(height).convertFromTo(LENGTH.feet, LENGTH.meters)!;
    }
    result = (weightInKg! / (heightInMeter! * heightInMeter!));
    return result.toStringAsFixed(1);
  }

  String getBMILevel(String bmi) {
    double bmiValue = double.parse(bmi);

    if (bmiValue <= 18.5) {
      return 'Underweight';
    } else if (bmiValue > 18.5 && bmiValue <= 24.9) {
      return 'Healthy';
    } else if (bmiValue > 24.9 && bmiValue <= 29.9) {
      return 'Overweight';
    } else {
      return 'Above Obesity';
    }
  }
}
