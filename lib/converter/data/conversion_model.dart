import 'package:calculator/converter/data/calculate_conversion.dart';
import 'package:calculator/converter/screens/bmi/model/calculate_bmi.dart';
import 'package:flutter/material.dart';

class ConversionModel extends ChangeNotifier {
  String _initialString = '';

  String _toConvertedValue = '';

  String _type = '';

  String fromUnit = '';

  String toUnit = '';

  void updateType(String updatedType) {
    _type = updatedType;
  }

  void updateFromUnit(String unit) {
    fromUnit = unit;
    getConversion();
    notifyListeners();
  }

  void updateToUnit(String unit) {
    toUnit = unit;
    getConversion();
    notifyListeners();
  }

  void getConversion() {
    if (_initialString.isNotEmpty) {
      CalculateConversion calculateConversion = CalculateConversion(
        inputValue: _initialString,
        fromUnit: fromUnit,
        toUnit: toUnit,
        type: _type,
      );
      _toConvertedValue = calculateConversion.convert();
    }
  }

  String getInitialString() => _initialString;
  String getConvertedString() => _toConvertedValue;

  void updateInitialString(String value) {
    if (_initialString.length <= 10) {
      _initialString += value;
      notifyListeners();
    }
  }

  String _removeCharacter() {
    return _initialString.substring(
        0, _initialString.isNotEmpty ? _initialString.length - 1 : 0);
  }

  void backSpace() {
    if (_initialString.isNotEmpty) {
      _initialString = _removeCharacter();
      getConversion();
    }
    if (_initialString.isEmpty) {
      _toConvertedValue = '';
    }
    notifyListeners();
  }

  void allClear() {
    _initialString = '';
    _toConvertedValue = '';
    notifyListeners();
  }

  String _weight = '';
  String _height = '';
  String _bmi = '';
  String _bmiLevel = '';
  String _heightType = 'cm';
  String _weightType = 'kg';
  bool isHeightSelected = true;

  String getWeight() => _weight;
  String getHeight() => _height;
  String getBMI() => _bmi;
  String getBMILevel() => _bmiLevel;

  void calculateBMI() {
    CalculateBMI calculateBMI = CalculateBMI(
      height: _height,
      heightUnit: _heightType,
      weight: _weight,
      weightUnit: _weightType,
    );
    _bmi = calculateBMI.calculateBMI();
    _bmiLevel = calculateBMI.getBMILevel(_bmi);
    notifyListeners();
  }

  void updatedSelectedField(bool isHeight) {
    isHeightSelected = isHeight;
    notifyListeners();
  }

  String getHeightType() => _heightType;
  String getWeightType() => _weightType;

  void updateWeight(String updatedWeight) {
    _weight += updatedWeight;
    notifyListeners();
  }

  void updateHeight(String updatedHeight) {
    _height += updatedHeight;
    notifyListeners();
  }

  void updateHeightType(String updatedHeightType) {
    _heightType = updatedHeightType;
    notifyListeners();
  }

  void updateWeightType(String updatedWeightType) {
    _weightType = updatedWeightType;
    notifyListeners();
  }

  String _removeWeight() {
    return _weight.substring(0, _weight.isNotEmpty ? _weight.length - 1 : 0);
  }

  String _removeHeight() {
    return _height.substring(0, _height.isNotEmpty ? _height.length - 1 : 0);
  }

  void backSpaceHeight() {
    if (_height.isNotEmpty) {
      _height = _removeHeight();
      // getConversion();
    }
    if (_height.isEmpty) {
      _height = '';
    }
    notifyListeners();
  }

  void backSpaceWeight() {
    if (_weight.isNotEmpty) {
      _weight = _removeWeight();
      // getConversion();
    }
    if (_weight.isEmpty) {
      _weight = '';
    }
    notifyListeners();
  }

  void allBMIClear() {
    _height = '';
    _weight = '';
    notifyListeners();
  }

  void resetBMI() {
    _bmi = '';
    _bmiLevel = '';
    notifyListeners();
  }
}
