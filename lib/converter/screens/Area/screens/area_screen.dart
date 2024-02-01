import 'package:calculator/converter/data/conversion_model.dart';
import 'package:calculator/converter/screens/Area/widgets/input_fields.dart';
import 'package:calculator/converter/widgets/converter_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AreaScreen extends StatefulWidget {
  static const String routeName = '/area';
  const AreaScreen({super.key});

  @override
  State<AreaScreen> createState() => _AreaScreenState();
}

class _AreaScreenState extends State<AreaScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<ConversionModel>(context).updateType('area');
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
          title: const Text('Area'),
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
