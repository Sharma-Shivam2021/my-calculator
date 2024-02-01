class TimeList {
  final List<String> _timeUnitInBottomModal = [
    'Seconds',
    'Deciseconds',
    'Centiseconds',
    'Milliseconds',
    'Microseconds',
    'Nanoseconds',
    'Minutes',
    'Hours',
    'Days',
    'Weeks',
    'Years365',
    'Decades',
    'Centuries',
    'Millennium',
  ];

  final List<String> _timeUnit = [
    's',
    'ds',
    'cs',
    'ms',
    'µs',
    'ns',
    'min',
    'h',
    'd',
    'w',
    'y',
    'c',
    'ky'
  ];

  String getUnitName(int index) {
    return _timeUnitInBottomModal[index];
  }

  String getUnitSymbol(int index) {
    return _timeUnit[index];
  }

  int getLength() {
    return _timeUnitInBottomModal.length;
  }
}
