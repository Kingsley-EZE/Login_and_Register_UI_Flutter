import 'package:flutter/material.dart';
import 'package:flutter_mid/constants.dart';

class BuildCustomInputField extends StatelessWidget {

  BuildCustomInputField({
    required this.labelText,
    required this.inputType,
    required this.marginTop,
    required this.marginBottom,
    required this.marginLeft,
    required this.marginRight
  });

  String labelText;
  TextInputType inputType;
  double marginTop = 0.0;
  double marginBottom = 0.0;
  double marginLeft = 0.0;
  double marginRight = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: marginLeft, right: marginRight, top: marginTop, bottom: marginBottom),
      child: TextField(
        keyboardType: inputType,
        decoration: InputDecoration(
          border: kInputBorderStyle,
          labelText: labelText,
        ),
      ),
    );
  }
}