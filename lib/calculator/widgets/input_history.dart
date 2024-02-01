import 'package:calculator/calculator/model/calculator_input_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputHistory extends StatefulWidget {
  const InputHistory({super.key});

  @override
  State<InputHistory> createState() => _InputHistoryState();
}

class _InputHistoryState extends State<InputHistory> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    List<String> inputHistory =
        Provider.of<CalculatorInputModel>(context).getUserInputHistory;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
    return Expanded(
      child: ListView.builder(
        controller: _scrollController,
        reverse: true,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.bottomRight,
            child: Text(
              inputHistory[index],
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 15,
                letterSpacing: 0.5,
              ),
              overflow: TextOverflow.clip,
            ),
          );
        },
        itemCount: inputHistory.length,
      ),
    );
  }
}
