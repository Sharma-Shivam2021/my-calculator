import 'package:calculator/calculator/model/calculator_input_model.dart';
import 'package:calculator/common_widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:provider/provider.dart';

class CalculatorButtons extends StatefulWidget {
  const CalculatorButtons({super.key});

  @override
  State<CalculatorButtons> createState() => _CalculatorButtonsState();
}

class _CalculatorButtonsState extends State<CalculatorButtons> {
  bool extraButtons = false;

  List<dynamic> buttonText = [
    'C',
    Icons.backspace_outlined,
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    Icons.delete_rounded,
    '0',
    '.',
    '='
  ];

  void clearInputHistory() {
    Provider.of<CalculatorInputModel>(context, listen: false)
        .clearUserInputHistory();
  }

  void clearInputString() {
    Provider.of<CalculatorInputModel>(context, listen: false)
        .clearInputString();
  }

  void backSpace() {
    Provider.of<CalculatorInputModel>(context, listen: false).backSpace();
  }

  void updateInputString(String inputString) {
    Provider.of<CalculatorInputModel>(context, listen: false)
        .updateInputString(inputString);
  }

  String resultString() {
    String resString = Provider.of<CalculatorInputModel>(context, listen: false)
        .getInputString
        .replaceAll('x', '*');
    return resString;
  }

  double evaluateInputString() {
    String resString = resultString();
    Parser p = Parser();
    Expression expression = p.parse(resString);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    return eval;
  }

  void _handlePercentage() {
    double eval = evaluateInputString();
    double percentage = eval / 100.0;
    clearInputString();
    updateInputString(percentage.toString());
  }

  void updateUserInputHistory(String resString) {
    Provider.of<CalculatorInputModel>(context, listen: false)
        .updateUserInputHistory(resString);
  }

  void _handleEqual() {
    double eval = evaluateInputString();
    updateUserInputHistory(resultString());
    clearInputString();
    updateInputString(eval.toString());
  }

  void onButtonPress(dynamic updatedString, int index) {
    switch (index) {
      case 0:
        clearInputString();
        break;
      case 1:
        backSpace();
        break;
      case 2:
        _handlePercentage();
        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 17:
      case 18:
        updateInputString(updatedString);
        break;
      case 19:
        _handleEqual();
        break;
      case 16:
        clearInputHistory();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          crossAxisCount: 4,
        ),
        itemCount: buttonText.length,
        itemBuilder: (context, index) {
          return CalculatorButton(
            text: buttonText[index],
            onPressed: () {
              setState(() {
                onButtonPress(buttonText[index], index);
              });
            },
            index: index,
          );
        },
      ),
    );
  }
}
