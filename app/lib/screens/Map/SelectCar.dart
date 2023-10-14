import 'package:flutter/material.dart';

class SelectCar extends StatefulWidget {
  const SelectCar({Key? key}) : super(key: key);

  @override
  _SelectCarState createState() => _SelectCarState();
}

class _SelectCarState extends State<SelectCar> {
  int selectedOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              // Geri dönüş işlemi tanımlarsın
            },
          ),
        ),
        title: const Text(
          'Select Car',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Select the vehicle category you want to ride.',
                style: TextStyle(fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),

            buildTransportOption(
              index: 1,
              icon: Icons.motorcycle,
              title: 'Bike',
              nearbyText: '7 nearbies',
              price: 15.00,
            ),
            buildTransportOption(
              index: 0,
              icon: Icons.directions_car,
              title: 'Standard',
              nearbyText: '9 nearbies',
              price: 20.00,
            ),
            buildTransportOption(
              index: 2,
              icon: Icons.local_taxi,
              title: 'Premium',
              nearbyText: '4 nearbies',
              price: 30.00,
            ),

            const SizedBox(height: 30),
            // sayfanın altına çizgi ekler
            const Divider(
              color: Colors.grey,
              indent: 17.0,
              endIndent: 17.0,
            ),

            const SizedBox(height: 40),

            // Alt bölüm
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildInfoItem(Icons.location_searching, '4.5 km'),
                        buildInfoItem(Icons.access_time, '4 mins'),
                        buildInfoItem(Icons.payment, '€20.00'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 65.0),
                ElevatedButton(
                  onPressed: () {
                    // Devam et butonu işlem atarsım
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Color.fromRGBO(254, 187, 27, 1),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 147, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Ulaşım seçeneklerini yardımcı metıt
  Widget buildTransportOption({
    required int index,
    required IconData icon,
    required String title,
    required String nearbyText,
    required double price,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(254, 187, 27, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      icon,
                      color: Colors.black,
                      size: 40.0,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      nearbyText,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '€${price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Radio<int>(
                  activeColor: Color.fromRGBO(254, 187, 27, 1),
                  value: index,
                  groupValue: selectedOptionIndex,
                  onChanged: (value) {
                    setState(() {
                      selectedOptionIndex = value!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 32.0,
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
