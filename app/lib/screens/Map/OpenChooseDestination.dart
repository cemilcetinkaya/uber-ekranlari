import 'dart:convert';

import 'package:app/screens/Map/ChooseDestination.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class OpenChooseDestination extends StatefulWidget {
  final ScrollController controller;

  const OpenChooseDestination({super.key, required this.controller});

  @override
  State<OpenChooseDestination> createState() => _OpenChooseDestinationState();
}

class _OpenChooseDestinationState extends State<OpenChooseDestination> {
  TextEditingController _controller = TextEditingController();
  ScrollController acontroller = ScrollController();
  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
            ),
            child: Container(
              width: 30,
              margin: EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[100],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Where would you go?"),
                    Spacer(),
                    Icon(Icons.location_on)
                  ],
                ),
                onPressed: () {
                  // Sayfa yönlendirmesi burada yapılacak
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChooseDestination(
                        controller: acontroller,
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      );
}
