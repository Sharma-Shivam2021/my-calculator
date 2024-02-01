import 'package:calculator/converter/data/conversion_model.dart';
import 'package:calculator/converter/widgets/converter_button.dart';
import 'package:calculator/converter/widgets/side_action_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BMIButtons extends StatefulWidget {
  const BMIButtons({super.key});

  @override
  State<BMIButtons> createState() => _BMIButtonsState();
}

class _BMIButtonsState extends State<BMIButtons> {
  List<String> buttonText = [
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

  void onButtonPress(String number) {
    if (Provider.of<ConversionModel>(context, listen: false).isHeightSelected) {
      Provider.of<ConversionModel>(context, listen: false).updateHeight(number);
    } else {
      Provider.of<ConversionModel>(context, listen: false).updateWeight(number);
    }
  }

  void onPressingGo() {
    Provider.of<ConversionModel>(context, listen: false).calculateBMI();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 3,
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
                        .allBMIClear();
                  },
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: SideActionButton(
                  text: Icons.backspace_outlined,
                  onPressed: () {
                    if (Provider.of<ConversionModel>(context, listen: false)
                        .isHeightSelected) {
                      Provider.of<ConversionModel>(context, listen: false)
                          .backSpaceHeight();
                    } else {
                      Provider.of<ConversionModel>(context, listen: false)
                          .backSpaceWeight();
                    }
                  },
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: SideActionButton(
                  text: 'Go',
                  onPressed: () {
                    onPressingGo();
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
