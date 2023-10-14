import 'package:app/screens/Account/Account.dart';
import 'package:app/screens/Inbox/Inbox.dart';
import 'package:app/screens/Map/HomepageMap.dart';
import 'package:app/screens/MyBookings/ActiveNowNoBooking.dart';
import 'package:app/screens/MyBookings/MyBookingsTabs.dart';
import 'package:app/screens/MyEwallet/myewallet.dart';
import 'package:flutter/material.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int index = 0;
  final Screens = [
    HomepageMap(),
    MyBookingsTabs(),
    Inbox(),
    MyEwallet(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Screens[index],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0, // çizginin inceliğini ayarlıyoz
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Color.fromRGBO(254, 187, 27, 1),
          unselectedItemColor: Colors.black,
          currentIndex: index,
          onTap: (newIndex) {
            setState(() {
              index = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.house,
                color: Colors.grey[200],
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note_alt),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Inbox",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      );
}
