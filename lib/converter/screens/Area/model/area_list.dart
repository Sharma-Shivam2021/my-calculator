class AreaList {
  final List<String> _areaUnitsInBottomModal = [
    'Square Kilometer km\u00B2',
    'Hectare ha',
    'Square meter m\u00B2',
    'Square centimeter cm\u00B2',
    'Square millimeter mm\u00B2',
    'Acre ac',
    'Square miles mile\u00B2',
    'Square foot ft\u00B2',
    'Square inch in\u00B2',
    'Square yard yd\u00B2',
  ];
  final List<String> _areaUnits = [
    'km\u00B2',
    'ha',
    'm\u00B2',
    'cm\u00B2',
    'mm\u00B2',
    'ac',
    'mile\u00B2',
    'ft\u00B2',
    'in\u00B2',
    'yd\u00B2',
  ];

  String getUnitName(int index) {
    return _areaUnitsInBottomModal[index];
  }

  String getUnitSymbol(int index) {
    return _areaUnits[index];
  }

  int getLength() {
    return _areaUnitsInBottomModal.length;
  }
}
