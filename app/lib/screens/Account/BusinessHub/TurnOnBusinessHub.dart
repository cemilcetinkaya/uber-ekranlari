import 'package:flutter/material.dart';

class TurnOnBusinessHub extends StatefulWidget {
  TurnOnBusinessHub({super.key});

  @override
  State<TurnOnBusinessHub> createState() => _TurnOnBusinessHubState();
}

class _TurnOnBusinessHubState extends State<TurnOnBusinessHub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 5),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              children: [
                Container(
                  width: 600,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromRGBO(164, 194, 223, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 13,
                            height: 100,
                          ),
                          Image.asset(
                            "assets/suitcase.png",
                            width: 70,
                            height: 70,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "Get more with \nbusiness travel",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                          height:
                              10), // İki satır arasındaki boşluğu ayarlayabilirsiniz.
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Her sütunun başlangıcı hizalayın
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Metinlerin başlangıcı hizalayın
                              children: [
                                Icon(Icons.done), // Icon ekleyin
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Quicker, easier expensing",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Automatically sync with expensing \napps",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Metinlerin başlangıcı hizalayın
                              children: [
                                Icon(Icons.done), // Icon ekleyin
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Keep work rides separate",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Get receipts at your work email",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Metinlerin başlangıcı hizalayın
                              children: [
                                Icon(Icons.done), // Icon ekleyin
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Get travel reports",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "See trip activity all in once place",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  width: 500,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Düğmeye tıklandı.');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // Siyah arkaplan rengi
                      onPrimary: Colors.white, // Yazı rengi (beyaz)
                    ),
                    child: const Text(
                      'Apply',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
