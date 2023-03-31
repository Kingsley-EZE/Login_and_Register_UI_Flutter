import 'package:flutter/material.dart';
import 'package:flutter_mid/constants.dart';

class BuildCustomInputField extends StatelessWidget {

  BuildCustomInputField({required this.labelText, required this.inputType});

  String labelText;
  TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 42.0, bottom: 20.0),
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