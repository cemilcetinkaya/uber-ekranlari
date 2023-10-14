import 'package:app/components/bottom_navigationbar.dart';
import 'package:app/screens/MyBookings/ActiveNowNoBooking.dart';
import 'package:app/screens/MyBookings/ActiveNowActiveDrives.dart';
import 'package:app/screens/MyBookings/MyBookingsCompleted.dart';
import 'package:app/screens/MyBookings/MyBookingsCanceled.dart';
import 'package:flutter/material.dart';

class MyBookingsTabs extends StatefulWidget {
  const MyBookingsTabs({Key? key});

  @override
  State<MyBookingsTabs> createState() => _MyBookingsTabsState();
}

class _MyBookingsTabsState extends State<MyBookingsTabs> {
  int _selectedIndex = 0;

  // Renkleri tutmak için bir dizi oluşturun
  List<Color> iconColors = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Booking",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(254, 187, 27, 1),
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    "Active Now",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(254, 187, 27, 1),
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Completed",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(254, 187, 27, 1),
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Canceled",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(254, 187, 27, 1),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ActiveNowActiveDrives(),
                  MyBookingsCompleted(),
                  MyBookingsCanceled(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
