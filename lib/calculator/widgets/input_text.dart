import 'package:calculator/calculator/model/calculator_input_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputText extends StatefulWidget {
  const InputText({super.key});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    String inputText =
        Provider.of<CalculatorInputModel>(context).getInputString;
    return Container(
      alignment: Alignment.bottomRight,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        inputText,
        style: const TextStyle(
          fontSize: 30,
          letterSpacing: 0.5,
        ),
        overflow: TextOverflow.clip,
        maxLines: 2,
      ),
    );
  }
}
