import 'package:flutter/material.dart';

class ConverterButton extends StatelessWidget {
  final dynamic text;
  final VoidCallback onPressed;
  final int index;
  const ConverterButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    double buttonSize = MediaQuery.of(context).size.width * 0.25;
    return Container(
      height: buttonSize,
      width: buttonSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: index == 9 ? Colors.transparent : Colors.white30,
        ),
      ),
      margin: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          // splashFactory: MaterialStateProperty.all(Colors.transparent),
          shape: const CircleBorder(eccentricity: 0),
          alignment: Alignment.center,
          backgroundColor: index == 9
              ? Colors.transparent
              : const Color.fromRGBO(28, 28, 28, 1),
        ),
        onPressed: onPressed,
        child: text is IconData
            ? Icon(
                text,
                color: Colors.white,
              )
            : Text(
                text.toString(),
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
      ),
    );
  }
}
