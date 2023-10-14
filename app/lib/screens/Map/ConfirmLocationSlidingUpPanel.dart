import 'dart:convert';

import 'package:app/screens/Map/ChooseDestination.dart';
import 'package:app/screens/Map/SelectCar.dart';
import 'package:app/screens/Map/components/driver_contact_options.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class ConfirmLocationSlidingUpPanel extends StatefulWidget {
  final ScrollController controller;

  const ConfirmLocationSlidingUpPanel({super.key, required this.controller});

  @override
  State<ConfirmLocationSlidingUpPanel> createState() =>
      _ConfirmLocationSlidingUpPanelState();
}

class _ConfirmLocationSlidingUpPanelState
    extends State<ConfirmLocationSlidingUpPanel> {
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
                      "Distance",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    Text("4.5 km"),
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
                        child: GestureDetector(
                          onTap: () {
                            // "Forgot the password?" metnine tıklanınca yapılacak işlem
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return ChooseDestination(
                                    controller: ScrollController(),
                                  ); // Yönlendirilecek sayfanın adını ekleyin
                                },
                              ),
                            );
                          },
                          child: Icon(
                            Icons.edit,
                            color: Color.fromRGBO(254, 187, 27, 1),
                          ),
                        ),
                      ),
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
                        child: GestureDetector(
                          onTap: () {
                            // "Forgot the password?" metnine tıklanınca yapılacak işlem
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return ChooseDestination(
                                    controller: ScrollController(),
                                  ); // Yönlendirilecek sayfanın adını ekleyin
                                },
                              ),
                            );
                          },
                          child: Icon(
                            Icons.edit,
                            color: Color.fromRGBO(254, 187, 27, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  height: 45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(254, 187, 27, 1))),
                    onPressed: () {
                      // "Sign in" butonuna tıklandığında yapılacak işlem
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              SelectCar(), // Gitmek istediğiniz sayfanın adını buraya ekleyin
                        ),
                      );
                    },
                    child: Text(
                      "Continue to Order",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );
}
