import 'package:flutter/material.dart';

class driver_contact_options extends StatefulWidget {
  Icon icon;
  driver_contact_options({super.key, required this.icon});

  @override
  State<driver_contact_options> createState() => _driver_contact_optionsState();
}

class _driver_contact_optionsState extends State<driver_contact_options> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromRGBO(254, 187, 27, 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: widget.icon,
    );
  }
}
