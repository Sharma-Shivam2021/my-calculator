import 'package:flutter/material.dart';

class CalculatorInputModel extends ChangeNotifier {
  String _inputString = '';

  String get getInputString => _inputString;

  List<String> _userInputHistory = [];

  List<String> get getUserInputHistory => _userInputHistory;

  void updateInputString(String value) {
    _inputString += value;
    notifyListeners();
  }

  void clearInputString() {
    _inputString = '';
    notifyListeners();
  }

  void backSpace() {
    if (_inputString.isNotEmpty) {
      _inputString = _removeCharacter();
    }
    notifyListeners();
  }

  String _removeCharacter() {
    return _inputString.substring(
        0, _inputString.isNotEmpty ? _inputString.length - 1 : 0);
  }

  void updateUserInputHistory(String inputHistory) {
    _userInputHistory.add(inputHistory);
    notifyListeners();
  }

  void clearUserInputHistory() {
    _userInputHistory = [];
    notifyListeners();
  }
}
