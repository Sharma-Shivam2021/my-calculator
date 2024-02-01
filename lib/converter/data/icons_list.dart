import 'package:calculator/converter/data/icon_data.dart';

class IconsList {
  List<IconsData> icons = [
    IconsData(iconName: 'Area', iconImage: 'assets/converter_icons/area.png'),
    IconsData(iconName: 'BMI', iconImage: 'assets/converter_icons/bmi.png'),
    IconsData(
        iconName: 'Length', iconImage: 'assets/converter_icons/length.png'),
    IconsData(
        iconName: 'Weight', iconImage: 'assets/converter_icons/weight.png'),
    IconsData(
        iconName: 'Temperature', iconImage: 'assets/converter_icons/temp.png'),
    IconsData(iconName: 'Time', iconImage: 'assets/converter_icons/time.png'),
  ];

  int getLength() {
    return icons.length;
  }

  String getIconName(int index) {
    return icons[index].iconName;
  }

  String getIconImageName(int index) {
    return icons[index].iconImage;
  }
}
