import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 16.0),
              height: 1.0,
              color: Color(0xFFDEDEDE),
            )),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7.0),
          child: const Text(
            'Or',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF191919),
            ),
          ),
        ),
        Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 16.0),
              height: 1.0,
              color: Color(0xFFDEDEDE),
            )),
      ],
    );
  }
}