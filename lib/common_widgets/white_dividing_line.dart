import 'package:flutter/material.dart';

class WhiteDividingLine extends StatelessWidget {
  const WhiteDividingLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 0.9,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white12,
      ),
    );
  }
}
