import 'package:flutter/material.dart';

class TipOptions extends StatefulWidget {
  @override
  _TipOptionsState createState() => _TipOptionsState();
}

class _TipOptionsState extends State<TipOptions> {
  int selectedContainerIndex = -1; // Varsayılan olarak hiçbiri seçilmedi.

  List<String> tipValues = ["2", "4", "6", "8"];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(tipValues.length, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = index;
            });
          },
          child: Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: selectedContainerIndex == index
                  ? Color.fromRGBO(254, 187, 27, 1)
                  : null,
              border: Border.all(color: Color.fromRGBO(254, 187, 27, 1)),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                '\$' + tipValues[index],
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
