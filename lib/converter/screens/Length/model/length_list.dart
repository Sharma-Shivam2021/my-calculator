class LengthList {
  final List<String> _lengthUnitsInBottomModal = [
    'Meters',
    'Centimeters',
    'Inches',
    'Feet',
    'nauticalMiles',
    'Yards',
    'Miles',
    'Millimeters',
    'Micrometers',
    'Nanometers',
    'Angstroms',
    'Picometers',
    'Kilometers',
    'AstronomicalUnits',
    'LightYears',
  ];
  final List<String> _lengthUnits = [
    'm',
    'cm',
    'in',
    'ft',
    'NM',
    'yd',
    'miles',
    'mm',
    'μm',
    'nm',
    'A',
    'pm',
    'km',
    'au',
    'ly',
  ];

  String getUnitName(int index) {
    return _lengthUnitsInBottomModal[index];
  }

  String getUnitSymbol(int index) {
    return _lengthUnits[index];
  }

  int getLength() {
    return _lengthUnitsInBottomModal.length;
  }
}
