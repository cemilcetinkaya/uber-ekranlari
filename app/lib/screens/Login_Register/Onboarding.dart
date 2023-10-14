// ignore_for_file: library_private_types_in_public_api

import 'package:app/screens/Login_Register/OnBoardingSlider.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Onboarding({Key? key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  double _textOpacity = 0.0; // Başlangıçta görünmez olacak

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _textOpacity = 1.0; // 1 saniye sonra görünür olacak
      });
    });
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBordingSlider(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/taxsi22.jpg',
              fit: BoxFit.cover,
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(seconds: 2),
            opacity: _textOpacity,
            child: Container(
              color: Colors.black.withOpacity(0.6),
              child: const Center(
                child: Text(
                  'Taxio',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(254, 187, 27, 1),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20.0, left: 15.0),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to 🖐',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'The best taxi booking app of the century to make your day great!',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 1),
                  Text(
                    '...', // Üç nokta
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
