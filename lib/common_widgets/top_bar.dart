import 'package:calculator/calculator/screen/calculator_screen.dart';
import 'package:calculator/converter/screens/converter_screen.dart';
import 'package:flutter/material.dart';

int page = 0;

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  void onPress() {
    setState(() {
      if (page == 0) {
        page = 1;
      } else {
        page = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.orange),
                  onPressed: () {
                    onPress();
                    Navigator.pushNamed(context, CalculatorScreen.routeName);
                  },
                  child: Text(
                    'Calculator',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: page == 0 ? Colors.deepOrangeAccent : Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: page == 0 ? Colors.deepOrangeAccent : Colors.white12,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.orange),
                  onPressed: () {
                    onPress();
                    Navigator.pushNamed(context, ConverterScreen.routeName);
                  },
                  child: Text(
                    'Converter',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: page == 1 ? Colors.deepOrangeAccent : Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: page == 1 ? Colors.deepOrangeAccent : Colors.white12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
