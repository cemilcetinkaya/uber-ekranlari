import 'dart:convert';

import 'package:app/screens/Map/ChooseDestination.dart';
import 'package:app/screens/Map/components/driver_contact_options.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class TriptoDestinationSlidingUpPanel extends StatefulWidget {
  final ScrollController controller;

  const TriptoDestinationSlidingUpPanel({super.key, required this.controller});

  @override
  State<TriptoDestinationSlidingUpPanel> createState() =>
      _TriptoDestinationSlidingUpPanelState();
}

class _TriptoDestinationSlidingUpPanelState
    extends State<TriptoDestinationSlidingUpPanel> {
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
                      "Trip to Destination",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    Text("4.5 km"),
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
                Container(
                  margin: EdgeInsets.only(bottom: 25),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 218, 0, 1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.my_location,
                          color: Color.fromRGBO(21, 19, 21, 1),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Ankara Havalimanı",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Çankaya, Üniversite Cd. 2-1, Ankara..",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Text("0 km")),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 35),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 218, 0, 1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.location_on,
                          color: Color.fromRGBO(21, 19, 21, 1),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Yenimahalle Atatürk Cd.",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Yenimahalle, Üniversite Cd. 2-1, Ankara..",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Text("4.5 km"),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    driver_contact_options(
                      icon: Icon(FontAwesomeIcons.solidComment),
                    ),
                    driver_contact_options(
                      icon: Icon(Icons.phone),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      );
}
