import 'package:calculator/converter/data/conversion_model.dart';
import 'package:calculator/converter/widgets/converter_button.dart';
import 'package:calculator/converter/widgets/side_action_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConverterButtons extends StatefulWidget {
  const ConverterButtons({super.key});

  @override
  State<ConverterButtons> createState() => _ConverterButtonsState();
}

class _ConverterButtonsState extends State<ConverterButtons> {
  List<dynamic> buttonText = [
    '7',
    '8',
    '9',
    '4',
    '5',
    '6',
    '1',
    '2',
    '3',
    '',
    '0',
    '.',
  ];

  void onButtonPress(String updatedString) {
    Provider.of<ConversionModel>(context, listen: false)
        .updateInitialString(updatedString);
    Provider.of<ConversionModel>(context, listen: false).getConversion();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 4,
              crossAxisSpacing: 3,
              crossAxisCount: 3,
            ),
            itemCount: buttonText.length,
            itemBuilder: (context, index) {
              return ConverterButton(
                text: buttonText[index],
                onPressed: () {
                  onButtonPress(buttonText[index]);
                },
                index: index,
              );
            },
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.22,
          child: Column(
            children: [
              Expanded(
                child: SideActionButton(
                  text: 'AC',
                  onPressed: () {
                    Provider.of<ConversionModel>(context, listen: false)
                        .allClear();
                  },
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: SideActionButton(
                  text: Icons.backspace_outlined,
                  onPressed: () {
                    Provider.of<ConversionModel>(context, listen: false)
                        .backSpace();
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
