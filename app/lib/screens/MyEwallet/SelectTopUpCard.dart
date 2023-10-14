import 'package:app/screens/Login_Register/RegisterScreen.dart';
import 'package:app/screens/MyEwallet/OTPTopUp.dart';
import 'package:app/screens/MyEwallet/AddNewCard.dart';
import 'package:app/screens/MyEwallet/topupewallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class SelectTopUpCard extends StatefulWidget {
  const SelectTopUpCard({super.key});

  @override
  State<SelectTopUpCard> createState() => _SelectTopUpCardState();
}

class _SelectTopUpCardState extends State<SelectTopUpCard> {
  @override
  String selectedMethod = '';
  bool isSmsSelected = false;
  bool isEmailSelected = false;

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Tops Up E-Wallet",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Select the top up method you want to use.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedMethod = 'email'; // Seçili yöntemi belirle
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border:
                        selectedMethod == 'email' // Seçili yöntemi kontrol et
                            ? Border.all(
                                color: Color.fromRGBO(254, 187, 27, 1),
                                width: 2.0)
                            : null,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/mastercard.png', // Resminizin dosya yolunu buraya ekleyin
                        width: 70, // Resim genişliği
                        height: 70, // Resim yüksekliği
                      ), // Icon'ı email olarak değiştirdim

                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "**** **** **** 4679",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedMethod = 'sms'; // Seçili yöntemi belirle
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: selectedMethod == 'sms' // Seçili yöntemi kontrol et
                        ? Border.all(
                            color: Color.fromRGBO(254, 187, 27, 1), width: 2.0)
                        : null,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/mastercard.png', // Resminizin dosya yolunu buraya ekleyin
                        width: 70, // Resim genişliği
                        height: 70, // Resim yüksekliği
                      ), // Icon'ı email olarak değiştirdim

                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "**** **** **** 4679",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: screenWidth,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 250, 234, 171))),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AddNewCard(),
                      ),
                    );
                  },
                  child: const Text(
                    "Add New Card",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Spacer(),
              Container(
                width: screenWidth,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(254, 187, 27, 1))),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const OTPTopUp(),
                      ),
                    );
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
