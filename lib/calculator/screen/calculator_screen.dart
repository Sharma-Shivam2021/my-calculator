import 'package:calculator/calculator/widgets/calculator_buttons.dart';
import 'package:calculator/calculator/widgets/input_screen.dart';
import 'package:calculator/common_widgets/top_bar.dart';
import 'package:calculator/common_widgets/white_dividing_line.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routeName = '/calculator';
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white10,
                Colors.black12,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TopBar(),
              SizedBox(height: 10),
              InputScreen(),
              WhiteDividingLine(),
              SizedBox(height: 5),
              CalculatorButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
