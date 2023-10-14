import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EReceipt extends StatefulWidget {
  const EReceipt({Key? key}) : super(key: key);

  @override
  State<EReceipt> createState() => _EReceiptState();
}

class _EReceiptState extends State<EReceipt> {
  @override
  Widget build(BuildContext context) {
    var secondaryColor = Color.fromRGBO(235, 173, 24, 1);
    var blackColor = Color.fromRGBO(33, 33, 33, 1);
    var buttonColor = Color.fromRGBO(158, 158, 158, 0.1);
    String? selectedCategory;
    List<PopupMenuItem<int>> _popupItems = [
      PopupMenuItem<int>(
        value: 2,
        child: Row(
          children: [
            Icon(Icons.share),
            SizedBox(width: 8),
            Text("Share E-Receipt"),
          ],
        ),
      ),
      PopupMenuItem<int>(
        value: 2,
        child: Row(
          children: [
            Icon(Icons.download),
            SizedBox(width: 8),
            Text("Download E-Receipt"),
          ],
        ),
      ),
      PopupMenuItem<int>(
        value: 3,
        child: Row(
          children: [
            Icon(Icons.print),
            SizedBox(width: 8),
            Text("Print"),
          ],
        ),
      ),
    ];
    double screenheight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "E-Receipt",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        actions: [
          Theme(
              data: Theme.of(context).copyWith(
                  popupMenuTheme: PopupMenuThemeData(color: Colors.white)),
              child: PopupMenuButton<int>(
                itemBuilder: (context) {
                  return _popupItems;
                },
                onSelected: (value) {
                  switch (value) {
                    case 1:
                      break;
                    case 2:
                      break;
                    case 3:
                      break;
                  }
                },
                icon: Icon(Icons.more_horiz),
                tooltip: 'More Options',
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "   Daniel Austin",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 79,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text("   Mercedes-Benz "),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Text(
                                      "37 UU 37",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Amount",
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "\€20.00",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Promo",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "\-€6.00",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "\€14.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Payment Methods",
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "My E-Wallet",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Date"),
                          Spacer(),
                          Text(
                            "DE 20,2024",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Transaction ID",
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "SK373737373",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Status",
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Container(
                            width: screenWidth * 0.1,
                            height: screenheight * 0.035,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Paid",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
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
