import 'package:calculator/common_widgets/white_dividing_line.dart';
import 'package:flutter/material.dart';
import 'package:calculator/converter/screens/time/widget/input_row.dart';

class InputFields extends StatefulWidget {
  const InputFields({super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'From',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.deepOrangeAccent,
            ),
          ),
          InputRow(),
          WhiteDividingLine(),
          SizedBox(height: 10),
          Text(
            'To',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.deepOrangeAccent,
            ),
          ),
          InputRow(isInputAble: false),
          WhiteDividingLine(),
        ],
      ),
    );
  }
}
