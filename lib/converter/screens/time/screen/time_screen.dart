import 'package:calculator/converter/data/conversion_model.dart';
import 'package:calculator/converter/widgets/converter_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator/converter/screens/time/widget/input_fields.dart';

class TimeScreen extends StatefulWidget {
  static const String routeName = '/time';
  const TimeScreen({super.key});

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<ConversionModel>(context).updateType('time');
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
          title: const Text('Mass'),
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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InputFields(),
              ConverterButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
