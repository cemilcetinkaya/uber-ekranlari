import 'package:app/components/bottom_navigationbar.dart';
import 'package:app/screens/Account/Profile/CreateNewPassword.dart';
import 'package:app/screens/Account/Profile/ForgotPassword.dart';
import 'package:app/screens/Account/Profile/OTPForgotPassword.dart';
import 'package:app/screens/Inbox/Inbox.dart';
import 'package:app/screens/Inbox/MessageScreen.dart';
import 'package:app/screens/Inbox/chats/chats_screen.dart';
import 'package:app/screens/Login_Register/CreateYourAccount.dart';
import 'package:app/screens/Login_Register/LogintoYourAccount.dart';
import 'package:app/screens/Login_Register/OnBoardingSlider.dart';
import 'package:app/screens/Login_Register/Onboarding.dart';
import 'package:app/screens/Login_Register/OTPAccountSetup.dart';
import 'package:app/screens/Login_Register/RegisterScreen.dart';
import 'package:app/screens/Map/CallDriver.dart';
import 'package:app/screens/Map/CancelDrive.dart';
import 'package:app/screens/Map/ConfirmLocation.dart';
import 'package:app/screens/Map/DriverDetails.dart';
import 'package:app/screens/Map/DriverIsArriving.dart';
import 'package:app/screens/Map/HomepageMap.dart';
import 'package:app/screens/Map/PayforCar.dart';
import 'package:app/screens/Map/SearchingForDriver.dart';
import 'package:app/screens/Map/SelectCar.dart';
import 'package:app/screens/Map/TipForDriver.dart';
import 'package:app/screens/Map/TriptoDestination.dart';
import 'package:app/screens/Map/deneme.dart';
import 'package:app/screens/MyBookings/ActiveNowActiveDrives.dart';
import 'package:app/screens/MyBookings/MyBookingsTabs.dart';
import 'package:app/screens/MyEwallet/AddNewCard.dart';
import 'package:app/screens/MyEwallet/EReceipt.dart';
import 'package:app/screens/MyEwallet/myewallet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme:
            Theme.of(context).colorScheme.copyWith(background: Colors.white),
      ),
      home: LogintoYourAccount(),
    );
  }
}
