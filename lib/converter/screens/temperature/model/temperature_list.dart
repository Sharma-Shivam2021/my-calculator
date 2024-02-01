class TemperatureList {
  final List<String> _tempUnitInBottomModal = [
    'Fahrenheit',
    'Celsius',
    'Kelvin',
  ];

  final List<String> _tempUnit = [
    '°F',
    '°C',
    'K',
  ];

  String getUnitName(int index) {
    return _tempUnitInBottomModal[index];
  }

  String getUnitSymbol(int index) {
    return _tempUnit[index];
  }

  int getLength() {
    return _tempUnitInBottomModal.length;
  }
}
