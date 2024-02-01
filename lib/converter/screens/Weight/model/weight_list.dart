class WeightList {
  final List<String> _weightUnitInBottomModal = [
    'Grams',
    'Ettograms',
    'Kilograms',
    'Pounds',
    'Ounces',
    'Quintals',
    'Tons',
    'milligrams',
    'Femtograms',
    'Picograms',
    'Nanograms',
    'Micrograms',
    'Decigrams',
  ];

  final List<String> _weightUnits = [
    'g',
    'hg',
    'kg',
    'lb',
    'oz',
    '[q]',
    't',
    'mg',
    'fg',
    'pg',
    'ng',
    'µg',
    'dg',
  ];

  String getUnitName(int index) {
    return _weightUnitInBottomModal[index];
  }

  String getUnitSymbol(int index) {
    return _weightUnits[index];
  }

  int getLength() {
    return _weightUnitInBottomModal.length;
  }
}
