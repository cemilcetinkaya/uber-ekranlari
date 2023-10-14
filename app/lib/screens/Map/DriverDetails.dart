import 'package:app/screens/Inbox/MessageScreen.dart';
import 'package:app/screens/Map/CallDriver.dart';
import 'package:flutter/material.dart';

class DriverDetails extends StatefulWidget {
  const DriverDetails({super.key});

  @override
  State<DriverDetails> createState() => _DriverDetailsState();
}

class _DriverDetailsState extends State<DriverDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          leading: BackButton(), // Geri tuşunu ekliyoruz
          title: Text(
            'Driver Details',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "assets/images/profilepic2.png",
                    height: 130,
                    width: 130,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Daniel Austin",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "+1-2222-222-22",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(40),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(254, 187, 27, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              width: 70,
                              height: 70,
                              child: Icon(
                                Icons.star_half,
                                size: 35,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "4.8",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "Ratings",
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(254, 187, 27, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              width: 70,
                              height: 70,
                              child: Icon(
                                Icons.car_crash_outlined,
                                size: 35,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "279",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "Trips",
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(254, 187, 27, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              width: 70,
                              height: 70,
                              child: Icon(
                                Icons.lock_clock,
                                size: 35,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "4.8",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "Ratings",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Member Since",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            Text(
                              "Member Since",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Car Model",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                              Text(
                                "Mercede-Benz E-Class",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Plate Number",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            Text(
                              "HSW 4736",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(254, 187, 27, 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: 70,
                      height: 70,
                      child: GestureDetector(
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
                        child: Icon(
                          Icons.messenger_outline_sharp,
                          size: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(254, 187, 27, 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: 70,
                      height: 70,
                      child: GestureDetector(
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
                        child: Icon(
                          Icons.phone_enabled,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
