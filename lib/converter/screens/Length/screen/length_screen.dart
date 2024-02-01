import 'package:calculator/converter/data/conversion_model.dart';
import 'package:calculator/converter/screens/Length/widgets/input_fields.dart';
import 'package:calculator/converter/widgets/converter_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LengthScreen extends StatefulWidget {
  static const String routeName = '/length';
  const LengthScreen({super.key});

  @override
  State<LengthScreen> createState() => _LengthScreenState();
}

class _LengthScreenState extends State<LengthScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<ConversionModel>(context).updateType('length');
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
          title: const Text('Length'),
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
