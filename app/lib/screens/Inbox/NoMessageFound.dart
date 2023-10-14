import 'package:flutter/material.dart';

class NoMessageFound extends StatefulWidget {
  const NoMessageFound({Key? key}) : super(key: key);

  @override
  State<NoMessageFound> createState() => _NoMessageFoundState();
}

class _NoMessageFoundState extends State<NoMessageFound> {
  @override
  Widget build(BuildContext context) {
    Color yellowColor = const Color.fromRGBO(255, 218, 0, 1);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/checked.png',
              width: 75,
              height: 75,
            ),
            const SizedBox(height: 20),
            Text(
              'You are all up to date!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10), // Ekstra boşluk ekledik
            Text(
              'No new messages available at the moment,\ncome back soon to discover new offers!',
              textAlign: TextAlign.center, // Metinleri ortala
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
