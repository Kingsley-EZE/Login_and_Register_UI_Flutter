import 'package:flutter/material.dart';

class BuildPasswordInputField extends StatelessWidget {

  BuildPasswordInputField({required this.isPressed, this.labelText, required this.isPasswordVisible});

  String? labelText;
  bool isPasswordVisible;
  Function isPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 20.0),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: isPasswordVisible,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: (){
              isPressed();
            },
            icon: isPasswordVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          ),
          border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFDEDEDE),
              )
          ),
          labelText: labelText,
        ),
      ),
    );
  }
}