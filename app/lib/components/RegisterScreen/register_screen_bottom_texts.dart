import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  String text;
  BottomText({super.key, required this.text});

  @override
  var blackColor = Color.fromRGBO(33, 33, 33, 1);

  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: blackColor,
        fontSize: 10,
      ),
    );
  }
}
