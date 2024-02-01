class DropDownOptions {
  final List<String> _height = ['cm', 'feet'];
  final List<String> _weight = ['kg', 'lbs'];

  String getHeight(int index) {
    return _height[index];
  }

  String getWeight(int index) {
    return _weight[index];
  }
}
