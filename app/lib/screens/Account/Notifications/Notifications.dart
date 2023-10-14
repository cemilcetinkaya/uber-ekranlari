import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isGeneralNotificationsSwitched = false;
  bool isSoundSwitched = false;
  bool isVibrateSwitched = false;
  bool isPaymentSwitched = false;
  bool isCashbackSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Notifications",
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "General Notifications",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Switch(
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[200],
                    activeTrackColor: Color.fromRGBO(254, 187, 27, 1),
                    activeColor: Colors.white,
                    value: isGeneralNotificationsSwitched,
                    onChanged: (value) {
                      setState(() {
                        isGeneralNotificationsSwitched = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sound",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Switch(
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[200],
                    activeTrackColor: Color.fromRGBO(254, 187, 27, 1),
                    activeColor: Colors.white,
                    value: isSoundSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSoundSwitched = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Vibrate",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Switch(
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[200],
                    activeTrackColor: Color.fromRGBO(254, 187, 27, 1),
                    activeColor: Colors.white,
                    value: isVibrateSwitched,
                    onChanged: (value) {
                      setState(() {
                        isVibrateSwitched = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Payment",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Switch(
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[200],
                    activeTrackColor: Color.fromRGBO(254, 187, 27, 1),
                    activeColor: Colors.white,
                    value: isPaymentSwitched,
                    onChanged: (value) {
                      setState(() {
                        isPaymentSwitched = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Cashback",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Switch(
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[200],
                    activeTrackColor: Color.fromRGBO(254, 187, 27, 1),
                    activeColor: Colors.white,
                    value: isCashbackSwitched,
                    onChanged: (value) {
                      setState(() {
                        isCashbackSwitched = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
