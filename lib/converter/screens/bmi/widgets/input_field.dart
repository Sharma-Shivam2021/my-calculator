import 'package:calculator/common_widgets/white_dividing_line.dart';
import 'package:calculator/converter/data/conversion_model.dart';
import 'package:calculator/converter/screens/bmi/widgets/input_row.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Provider.of<ConversionModel>(context).isHeightSelected
                  ? Colors.deepOrangeAccent
                  : null,
            ),
            child: const InputRow(isHeight: true),
          ),
          const WhiteDividingLine(),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: !Provider.of<ConversionModel>(context).isHeightSelected
                  ? Colors.deepOrangeAccent
                  : null,
            ),
            child: const InputRow(isHeight: false),
          ),
          const WhiteDividingLine(),
        ],
      ),
    );
  }
}
