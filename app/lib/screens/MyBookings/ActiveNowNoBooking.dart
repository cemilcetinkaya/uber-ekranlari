import 'package:app/components/bottom_navigationbar.dart';
import 'package:flutter/material.dart';

class ActiveNowNoBooking extends StatefulWidget {
  const ActiveNowNoBooking({super.key});

  @override
  State<ActiveNowNoBooking> createState() => _ActiveNowNoBookingState();
}

class _ActiveNowNoBookingState extends State<ActiveNowNoBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 120),
          Align(
            alignment: Alignment
                .topCenter, // Resmi yukarı taşımak için Alignment.topCenter kullanın
            child: Image.asset(
              'assets/images/saridefter.png', // Resmin yolunu buraya ekleyin
              width: 200, // Resmin genişliği
              height: 200, // Resmin yüksekliği
            ),
          ),
          const SizedBox(height: 20), // Resim ile yazı arasında boşluk ekleyin
          const Text(
            'You have no active taxi booking', // Altına eklemek istediğiniz metni buraya ekleyin
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Text(
            'You don'
            't have an active taxibooking at this time', // Altına eklemek istediğiniz metni buraya ekleyin
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
