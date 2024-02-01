import 'package:calculator/converter/data/conversion_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BMIResult extends StatefulWidget {
  final String bmi;
  final String bmiLevel;
  const BMIResult({
    super.key,
    required this.bmi,
    required this.bmiLevel,
  });

  @override
  State<BMIResult> createState() => _BMIResultState();
}

class _BMIResultState extends State<BMIResult> {
  void onClose() {
    Provider.of<ConversionModel>(context, listen: false).resetBMI();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            shape: BoxShape.rectangle,
            color: Colors.white12,
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.bmi,
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'BMI',
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          widget.bmiLevel,
                          style: TextStyle(
                            color: widget.bmiLevel == 'Underweight'
                                ? Colors.blue
                                : widget.bmiLevel == 'Healthy'
                                    ? Colors.green
                                    : widget.bmiLevel == 'Overweight'
                                        ? Colors.deepOrange
                                        : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.white30, thickness: 3),
              const Expanded(
                child: Text(
                  'Information',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/bmi_information/bmi-back.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
        Positioned(
            child: IconButton(
          onPressed: onClose,
          icon: const Icon(Icons.close),
        ))
      ],
    );
  }
}
