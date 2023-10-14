import 'dart:convert';

import 'package:app/screens/Inbox/MessageScreen.dart';
import 'package:app/screens/Map/CallDriver.dart';
import 'package:app/screens/Map/CancelDrive.dart';
import 'package:app/screens/Map/ChooseDestination.dart';
import 'package:app/screens/Map/components/driver_contact_options.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class DriverIsArrivingSlidingUpPanel extends StatefulWidget {
  final ScrollController controller;

  const DriverIsArrivingSlidingUpPanel({super.key, required this.controller});

  @override
  State<DriverIsArrivingSlidingUpPanel> createState() =>
      _DriverIsArrivingSlidingUpPanelState();
}

class _DriverIsArrivingSlidingUpPanelState
    extends State<DriverIsArrivingSlidingUpPanel> {
  TextEditingController _controller = TextEditingController();
  ScrollController acontroller = ScrollController();
  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Driver is Arriving",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    Text("2 mins"),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/profilepic2.png",
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Daniel Austin",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text("Mercedes Benz"),
                      ],
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("HSW 4736 XK"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // "Forgot the password?" metnine tıklanınca yapılacak işlem
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return CancelDrive(); // Yönlendirilecek sayfanın adını ekleyin
                            },
                          ),
                        );
                      },
                      child: driver_contact_options(
                        icon: Icon(FontAwesomeIcons.xmark),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // "Forgot the password?" metnine tıklanınca yapılacak işlem
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return MessageScreen(); // Yönlendirilecek sayfanın adını ekleyin
                            },
                          ),
                        );
                      },
                      child: driver_contact_options(
                        icon: Icon(FontAwesomeIcons.solidComment),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // "Forgot the password?" metnine tıklanınca yapılacak işlem
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return CallDriver(); // Yönlendirilecek sayfanın adını ekleyin
                            },
                          ),
                        );
                      },
                      child: driver_contact_options(
                        icon: Icon(Icons.phone),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      );
}
