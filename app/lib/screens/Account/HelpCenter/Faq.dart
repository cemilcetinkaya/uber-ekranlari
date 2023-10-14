import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatefulWidget {
  const ExpansionTileDemo({Key? key}) : super(key: key);

  @override
  State<ExpansionTileDemo> createState() => _ExpansionTileDemoState();
}

class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, i) {
        String titleText;
        String contentText;

        switch (i) {
          case 0:
            titleText = "What is Taxio?";
            contentText = "This is the content for Hello";
            break;
          case 1:
            titleText = "How to use Taxio?";
            contentText = "This is the content for Car";
            break;
          case 2:
            titleText = "How do I cancel a taxi booking?";
            contentText = "This is the content for Plane";
            break;
          case 3:
            titleText = "Is Taxio free to use?";

            contentText = "This is the content for Plane";
            break;
          default:
            titleText = "Is Taxio free to use?";
            contentText = "Default Content";
            break;
        }

        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
            side: const BorderSide(
              width: 0.4,
              style: BorderStyle.none,
            ),
          ),
          child: ExpansionTile(
            title: Text(titleText),
            children: <Widget>[
              Text(
                contentText,
              ),
            ],
          ),
        );
      },
    );
  }
}
