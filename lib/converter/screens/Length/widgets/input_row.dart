import 'package:calculator/converter/data/conversion_model.dart';
import 'package:calculator/converter/screens/Length/model/length_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputRow extends StatefulWidget {
  const InputRow({
    super.key,
    this.isInputAble = true,
  });
  final bool isInputAble;

  @override
  State<InputRow> createState() => _InputRowState();
}

class _InputRowState extends State<InputRow> {
  late final LengthList _lengthList = LengthList();
  String selectedUnit = 'm';

  void actionOnSelectingFromUnit() {
    Provider.of<ConversionModel>(context, listen: false)
        .updateFromUnit(selectedUnit);
    Provider.of<ConversionModel>(context, listen: false).getConversion();
  }

  void actionOnSelectingToUnit() {
    Provider.of<ConversionModel>(context, listen: false)
        .updateToUnit(selectedUnit);
    Provider.of<ConversionModel>(context, listen: false).getConversion();
  }

  void _showUnitPicker() {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.only(top: 10),
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _lengthList.getLength(),
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  _selectUnit(_lengthList.getUnitSymbol(index));
                  Navigator.pop(context);
                },
                title: Text(
                  _lengthList.getUnitName(index),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void _selectUnit(String unit) {
    setState(() {
      selectedUnit = unit;
      if (widget.isInputAble) {
        actionOnSelectingFromUnit();
      } else {
        actionOnSelectingToUnit();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String inputString =
        Provider.of<ConversionModel>(context).getInitialString();
    String convertedString =
        Provider.of<ConversionModel>(context).getConvertedString();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: _showUnitPicker,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  const Icon(Icons.arrow_drop_down_outlined),
                  Text(selectedUnit),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              widget.isInputAble ? inputString : convertedString,
              style: const TextStyle(
                fontSize: 18,
                letterSpacing: 0.5,
              ),
              overflow: TextOverflow.clip,
              maxLines: 2,
            ),
          ),
        ),
      ],
    );
  }
}
