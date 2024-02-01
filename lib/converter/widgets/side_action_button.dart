import 'package:flutter/material.dart';

class SideActionButton extends StatelessWidget {
  final dynamic text;
  final VoidCallback onPressed;
  const SideActionButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double buttonSize = MediaQuery.of(context).size.width * 0.25;
    return Container(
      height: buttonSize,
      width: buttonSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.white30,
        ),
      ),
      margin: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          alignment: Alignment.center,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        onPressed: onPressed,
        child: text is IconData
            ? Center(
                child: Icon(
                  text,
                  color: Colors.white,
                ),
              )
            : Center(
                child: Text(
                  text.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
      ),
    );
  }
}
