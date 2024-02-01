import 'package:calculator/calculator/widgets/input_history.dart';
import 'package:calculator/calculator/widgets/input_text.dart';
import 'package:calculator/common_widgets/white_dividing_line.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InputHistory(),
          WhiteDividingLine(),
          InputText(),
        ],
      ),
    );
  }
}
