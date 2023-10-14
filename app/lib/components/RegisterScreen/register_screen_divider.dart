import 'package:flutter/material.dart';

class RegisterDivider extends StatelessWidget {
  String title;
  RegisterDivider({super.key, required this.title});

  @override
  var blackColor = Color.fromRGBO(33, 33, 33, 1);

  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: blackColor,
          ),
        ),
        SizedBox(height: 35),
        Text(
          title,
          style: TextStyle(
            color: blackColor,
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: blackColor,
          ),
        )
      ],
    );
  }
}
