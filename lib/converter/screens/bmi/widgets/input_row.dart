import 'package:calculator/converter/data/conversion_model.dart';
import 'package:calculator/converter/screens/bmi/model/drop_down_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputRow extends StatefulWidget {
  const InputRow({super.key, this.isHeight = false});
  final bool isHeight;

  @override
  State<InputRow> createState() => _InputRowState();
}

class _InputRowState extends State<InputRow> {
  late final DropDownOptions _dropDownOptions = DropDownOptions();
  String height = 'cm';
  String weight = 'kg';

  String heightInput = '';
  String weightInput = '';

  void _showUnitPicker() {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.only(top: 10),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  _selectUnit(
                    widget.isHeight
                        ? _dropDownOptions.getHeight(index)
                        : _dropDownOptions.getWeight(index),
                  );
                  Navigator.pop(context);
                  Provider.of<ConversionModel>(context, listen: false)
                      .updatedSelectedField(widget.isHeight ? true : false);
                },
                title: Text(
                  widget.isHeight
                      ? _dropDownOptions.getHeight(index)
                      : _dropDownOptions.getWeight(index),
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
      if (widget.isHeight) {
        height = unit;
        actionOnSelectingHeight();
      } else {
        weight = unit;
        actionOnSelectingWeight();
      }
    });
  }

  void actionOnSelectingHeight() {
    Provider.of<ConversionModel>(context, listen: false)
        .updateHeightType(height);
  }

  void actionOnSelectingWeight() {
    Provider.of<ConversionModel>(context, listen: false)
        .updateWeightType(weight);
  }

  @override
  Widget build(BuildContext context) {
    String heightInput = Provider.of<ConversionModel>(context).getHeight();
    String weightInput = Provider.of<ConversionModel>(context).getWeight();
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
                  Text(widget.isHeight ? height : weight),
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
              widget.isHeight ? heightInput : weightInput,
              style: const TextStyle(fontSize: 18, letterSpacing: 0.5),
              overflow: TextOverflow.clip,
              maxLines: 1,
            ),
          ),
        )
      ],
    );
  }
}
