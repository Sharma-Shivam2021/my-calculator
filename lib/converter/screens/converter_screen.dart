import 'package:calculator/common_widgets/top_bar.dart';
import 'package:calculator/converter/widgets/converter_list.dart';
import 'package:flutter/material.dart';

class ConverterScreen extends StatefulWidget {
  static const String routeName = '/converter';
  const ConverterScreen({super.key});

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(5),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TopBar(),
              SizedBox(height: 25),
              ConverterList(),
            ],
          ),
        ),
      ),
    );
  }
}
