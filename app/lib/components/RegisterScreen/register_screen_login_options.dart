import 'package:flutter/material.dart';

class RegisterLoginButtons extends StatefulWidget {
  String title;
  String logoName;
  RegisterLoginButtons(
      {super.key, required this.title, required this.logoName});

  @override
  State<RegisterLoginButtons> createState() => _RegisterLoginButtonsState();
}

class _RegisterLoginButtonsState extends State<RegisterLoginButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Color.fromRGBO(238, 236, 238, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/" + widget.logoName + ".png",
            width: 20,
          ),
          SizedBox(width: 8),
          Text(
            widget.title,
            style: TextStyle(
              color: Color.fromRGBO(21, 19, 21, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
