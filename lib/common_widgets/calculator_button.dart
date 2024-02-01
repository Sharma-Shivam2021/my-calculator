import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final dynamic text;
  final VoidCallback onPressed;
  final int index;
  const CalculatorButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    double buttonSize = MediaQuery.of(context).size.width * 0.4;
    return Container(
      height: buttonSize,
      width: buttonSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white30,
        ),
      ),
      margin: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          // splashFactory: MaterialStateProperty.all(Colors.transparent),
          shape: const CircleBorder(),
          alignment: Alignment.center,
          backgroundColor: index == 0 ||
                  index == 1 ||
                  index == 2 ||
                  index == 3 ||
                  index == 7 ||
                  index == 11 ||
                  index == 15
              ? const Color.fromRGBO(54, 54, 54, 1)
              : index == 19 || index == 16
                  ? Colors.deepOrangeAccent
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
