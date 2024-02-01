import 'package:calculator/converter/data/conversion_model.dart';
import 'package:calculator/converter/screens/bmi/widgets/bmi_buttons.dart';
import 'package:calculator/converter/screens/bmi/widgets/bmi_result.dart';
import 'package:calculator/converter/screens/bmi/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BMIScreen extends StatefulWidget {
  static const String routeName = '/bmi';
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  @override
  Widget build(BuildContext context) {
    String bmi = Provider.of<ConversionModel>(context).getBMI();
    String bmiLevel = Provider.of<ConversionModel>(context).getBMILevel();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
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
          ),
          centerTitle: true,
          title: const Text('BMI'),
        ),
        body: Container(
          padding: const EdgeInsets.all(5),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const InputFields(),
              bmi.isEmpty
                  ? const BMIButtons()
                  : BMIResult(
                      bmi: bmi,
                      bmiLevel: bmiLevel,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
