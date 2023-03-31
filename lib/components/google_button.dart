import 'package:flutter/material.dart';
import 'package:flutter_mid/constants.dart';
import 'package:flutter_svg/svg.dart';


class GoogleButton extends StatelessWidget {

  GoogleButton({required this.buttonText});

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 42.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: kBorderBoxColor, width: 1.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/google_icon.svg'),
          const SizedBox(width: 10.0,),
           Text(
            buttonText,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF191919),
            ),
          )
        ],
      ),
    );
  }
}