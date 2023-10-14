import 'package:app/screens/Login_Register/RegisterScreen.dart';
import 'package:app/screens/MyEwallet/EReceipt.dart';

import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Transaction History",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: GestureDetector(
                    onTap: () {
                      // "Forgot the password?" metnine tıklanınca yapılacak işlem
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return EReceipt(); // Yönlendirilecek sayfanın adını ekleyin
                          },
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "assets/images/profilepic2.png",
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
                                    child: Row(
                                      children: [
                                        Text(
                                          "Daniel Austin",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "\€14",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
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
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Icon(
                                            Icons.arrow_upward,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EReceipt()),
                    );
                  },
                  child: Row(
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
                                  child: Row(
                                    children: [
                                      Text(
                                        "Top Up Wallet",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "\€80",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Dec 16,2024 | 16:42 PM",
                                    ),
                                    Spacer(),
                                    Text("Top Up"),
                                    Container(
                                      margin: EdgeInsets.only(left: 3),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Icon(
                                          Icons.arrow_downward,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
