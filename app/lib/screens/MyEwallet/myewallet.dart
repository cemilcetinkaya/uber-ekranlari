import 'package:app/screens/MyEwallet/TransactionHistory.dart';
import 'package:app/screens/MyEwallet/topupewallet.dart';
import 'package:flutter/material.dart';

class MyEwallet extends StatefulWidget {
  const MyEwallet({super.key});

  @override
  State<MyEwallet> createState() => _MyEwalletState();
}

class _MyEwalletState extends State<MyEwallet> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Align(
            alignment: Alignment
                .centerLeft, // Text'i sola dayamak için Alignment.centerLeft kullanın
            child: Text("My E-Wallet",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
          ),
          centerTitle: false, // centerTitle özelliğini false olarak ayarlayın
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   child: const Text(
                  //     "My E-Wallet",
                  //     style:
                  //         TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  //   ),
                  // ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Container(
                        width: screenWidth,
                        height: 220,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(254, 187, 27, 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Container Content",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  "VISA",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            const Text(
                              "**** **** **** 5152",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            const Text(
                              "Your balance",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "\€957,5",
                                  style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => TopUpEwallet(),
                                      ),
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: screenWidth * 0.1,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.euro,
                                            size: 18,
                                          ),
                                          Text(
                                            "Top Up",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("Transaction History",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          // "Forgot the password?" metnine tıklanınca yapılacak işlem
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return TransactionHistory(); // Yönlendirilecek sayfanın adını ekleyin
                              },
                            ),
                          );
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(235, 173, 24, 1),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "assets/images/profilfotografi.jpeg",
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                width: screenWidth * 0.73,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Row(
                                        children: [
                                          Text(
                                            "Daniel AUSTİN",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Spacer(),
                                          Text(
                                            "\€14",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Dec 20,2023 | 10:00 AM",
                                        ),
                                        Spacer(),
                                        Text("Taxi Expense"),
                                        Container(
                                          margin: EdgeInsets.only(left: 3),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: const Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(
                                              Icons.arrow_upward,
                                              color: Colors.white,
                                              size: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/wallett.png",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                width: screenWidth * 0.73,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Row(
                                        children: [
                                          Text(
                                            "Top up Wallet",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Spacer(),
                                          Text(
                                            "\€14",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Dec 20,2023 | 10:00 AM",
                                        ),
                                        const Spacer(),
                                        const Text(
                                          "Top Up",
                                        ),
                                        Container(
                                            margin:
                                                const EdgeInsets.only(left: 3),
                                            decoration: BoxDecoration(
                                              color: Colors.purple,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: const Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: Icon(
                                                Icons.arrow_downward,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
