import 'package:flutter/material.dart';



class CustomMainButton extends StatelessWidget {
  CustomMainButton({required this.buttonText, required this.isPressed});

  final String buttonText;
  final Function isPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
      child: ElevatedButton(
          onPressed: (){
            isPressed();
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0,),
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          )),
    );
  }
}