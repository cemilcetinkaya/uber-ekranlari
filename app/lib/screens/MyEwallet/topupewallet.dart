import 'package:app/screens/MyEwallet/topupewallet.dart';
import 'package:app/screens/MyEwallet/SelectTopUpCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TopUpEwallet extends StatefulWidget {
  const TopUpEwallet({super.key});

  @override
  State<TopUpEwallet> createState() => _TopUpEwalletState();
}

class _TopUpEwalletState extends State<TopUpEwallet> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Top Up E-Wallet",
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
                alignment: Alignment.center,
                child: Text(
                  "Enter the amount of top up",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(254, 187, 27, 1)),
                  ),
                  labelText: 'Amount',
                  labelStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(254, 187, 27, 1),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(254, 187, 27, 1),
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              Container(
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Düğmeye tıklanınca yapılacak işlemi buraya ekleyin
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .white, // Tüm düğmelerin arka plan rengi beyaz olarak ayarlandı
                        primary: Colors.transparent,
                        onPrimary: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              color: Color.fromRGBO(254, 187, 27, 1)),
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors
                              .white, // Tüm düğmelerin Container'ının arka plan rengi beyaz olarak ayarlandı
                        ),
                        width: screenWidth * 0.15,
                        height: screenHeight * 0.05,
                        alignment: Alignment.center,
                        child: const Text(
                          "€1.0200",
                          style: TextStyle(
                            color: Color.fromRGBO(254, 187, 27, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        // Düğmeye tıklanınca yapılacak işlemi buraya ekleyin
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        primary: Colors.transparent,
                        onPrimary: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              color: Color.fromRGBO(254, 187, 27, 1)),
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        width: screenWidth * 0.15,
                        height: screenHeight * 0.05,
                        alignment: Alignment.center,
                        child: const Text(
                          "€1.000",
                          style: TextStyle(
                            color: Color.fromRGBO(254, 187, 27, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        // Düğmeye tıklanınca yapılacak işlemi buraya ekleyin
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        primary: Colors.transparent,
                        onPrimary: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              color: Color.fromRGBO(254, 187, 27, 1)),
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        width: screenWidth * 0.15,
                        height: screenHeight * 0.05,
                        alignment: Alignment.center,
                        child: const Text(
                          "€1.000",
                          style: TextStyle(
                            color: Color.fromRGBO(254, 187, 27, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Düğmeye tıklanınca yapılacak işlemi buraya ekleyin
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      primary: Colors.transparent,
                      onPrimary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            color: Color.fromRGBO(254, 187, 27, 1)),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.05,
                      alignment: Alignment.center,
                      child: const Text(
                        "€1.000",
                        style: TextStyle(
                          color: Color.fromRGBO(254, 187, 27, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // Düğmeye tıklanınca yapılacak işlemi buraya ekleyin
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      primary: Colors.transparent,
                      onPrimary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            color: Color.fromRGBO(254, 187, 27, 1)),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.05,
                      alignment: Alignment.center,
                      child: const Text(
                        "€1.000",
                        style: TextStyle(
                          color: Color.fromRGBO(254, 187, 27, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // Düğmeye tıklanınca yapılacak işlemi buraya ekleyin
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      primary: Colors.transparent,
                      onPrimary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            color: Color.fromRGBO(254, 187, 27, 1)),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.05,
                      alignment: Alignment.center,
                      child: const Text(
                        "€1.000",
                        style: TextStyle(
                          color: Color.fromRGBO(254, 187, 27, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Düğmeye tıklanınca yapılacak işlemi buraya ekleyin
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      primary: Colors.transparent,
                      onPrimary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            color: Color.fromRGBO(254, 187, 27, 1)),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.05,
                      alignment: Alignment.center,
                      child: const Text(
                        "€1.000",
                        style: TextStyle(
                          color: Color.fromRGBO(254, 187, 27, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // Düğmeye tıklanınca yapılacak işlemi buraya ekleyin
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      primary: Colors.transparent,
                      onPrimary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            color: Color.fromRGBO(254, 187, 27, 1)),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.05,
                      alignment: Alignment.center,
                      child: const Text(
                        "€1.000",
                        style: TextStyle(
                          color: Color.fromRGBO(254, 187, 27, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // Düğmeye tıklanınca yapılacak işlemi buraya ekleyin
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      primary: Colors.transparent,
                      onPrimary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            color: Color.fromRGBO(254, 187, 27, 1)),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.05,
                      alignment: Alignment.center,
                      child: const Text(
                        "€1.000",
                        style: TextStyle(
                          color: Color.fromRGBO(254, 187, 27, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.1),
              Container(
                width: screenWidth,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(254, 187, 27, 1))),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SelectTopUpCard(),
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
