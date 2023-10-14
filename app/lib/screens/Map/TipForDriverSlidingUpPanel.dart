import 'dart:convert';

import 'package:app/components/bottom_navigationbar.dart';
import 'package:app/screens/Map/ChooseDestination.dart';
import 'package:app/screens/Map/components/driver_contact_options.dart';
import 'package:app/screens/Map/components/driver_tip_options.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class TipForDriverSlidingUpPanel extends StatefulWidget {
  final ScrollController controller;

  const TipForDriverSlidingUpPanel({super.key, required this.controller});

  @override
  State<TipForDriverSlidingUpPanel> createState() =>
      _TipForDriverSlidingUpPanelState();
}

class _TipForDriverSlidingUpPanelState
    extends State<TipForDriverSlidingUpPanel> {
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
                Text(
                  "Tip for Driver",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
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
                  height: 30,
                ),
                Text(
                  "Wow 5 Star!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Do you want to add additional tip for Daniel?"),
                const SizedBox(
                  height: 20,
                ),
                TipOptions(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "No, Thanks!",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(254, 187, 27, 1),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: GestureDetector(
                            onTap: () {
                              // "Forgot the password?" metnine tıklanınca yapılacak işlem
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return BottomNavigationbar(); // Yönlendirilecek sayfanın adını ekleyin
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "Pay Tip",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      );
}
