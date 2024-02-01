import 'package:calculator/converter/data/icons_list.dart';
import 'package:calculator/converter/screens/Area/screens/area_screen.dart';
import 'package:calculator/converter/screens/Length/screen/length_screen.dart';
import 'package:calculator/converter/screens/Weight/screen/weight_screen.dart';
import 'package:calculator/converter/screens/bmi/screen/bmi_screen.dart';
import 'package:calculator/converter/screens/temperature/screen/temperature_screen.dart';
import 'package:calculator/converter/screens/time/screen/time_screen.dart';
import 'package:flutter/material.dart';

class ConverterList extends StatefulWidget {
  const ConverterList({super.key});

  @override
  State<ConverterList> createState() => _ConverterListState();
}

class _ConverterListState extends State<ConverterList> {
  final IconsList _iconsList = IconsList();

  void onTapPageResult(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, AreaScreen.routeName);
        break;
      case 1:
        Navigator.pushNamed(context, BMIScreen.routeName);
        break;
      case 2:
        Navigator.pushNamed(context, LengthScreen.routeName);
        break;
      case 3:
        Navigator.pushNamed(context, WeightScreen.routeName);
        break;
      case 4:
        Navigator.pushNamed(context, TemperatureScreen.routeName);
        break;
      case 5:
        Navigator.pushNamed(context, TimeScreen.routeName);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: MediaQuery.of(context).size.height * 0.07,
        ),
        itemCount: _iconsList.getLength(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onTapPageResult(index);
            },
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    _iconsList.getIconImageName(index),
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Text(
                    _iconsList.getIconName(index),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
