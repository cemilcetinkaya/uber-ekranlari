import 'package:app/components/bottom_navigationbar.dart';
import 'package:flutter/material.dart';

class MyBookingsCompleted extends StatefulWidget {
  const MyBookingsCompleted({super.key});

  @override
  State<MyBookingsCompleted> createState() => _MyBookingsCompletedState();
}

class _MyBookingsCompletedState extends State<MyBookingsCompleted> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 400,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
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
                                margin: const EdgeInsets.only(left: 15),
                                width: screenWidth * 0.7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          const Text(
                                            "Daniel AUSTİN",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const Spacer(),
                                          Container(
                                            width: 80,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                color: Colors.green),
                                            child: const Center(
                                              child: Text(
                                                "MyBookingsCompleted",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "Mercedens-Benz",
                                        ),
                                        Spacer(),
                                        Text("25 PU 258"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: screenWidth * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Row(
                              children: [
                                Icon(
                                  Icons
                                      .location_on_outlined, // İstediğiniz ikonun IconData'sini buraya ekleyin
                                  color:
                                      Colors.black, // İkonun rengini belirleyin
                                  size: 25.0, // İkonun boyutunu belirleyin
                                ),
                                SizedBox(
                                    width:
                                        8.0), // İkon ile metin arasında boşluk eklemek için SizedBox kullanabilirsiniz
                                Text(
                                  "4.5 Km",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: const Row(
                              children: [
                                Icon(
                                  Icons
                                      .punch_clock, // İstediğiniz ikonun IconData'sini buraya ekleyin
                                  color:
                                      Colors.black, // İkonun rengini belirleyin
                                  size: 25.0, // İkonun boyutunu belirleyin
                                ),
                                SizedBox(
                                    width:
                                        8.0), // İkon ile metin arasında boşluk eklemek için SizedBox kullanabilirsiniz
                                Text(
                                  "4 mins",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: const Row(
                              children: [
                                Icon(
                                  Icons
                                      .wallet, // İstediğiniz ikonun IconData'sini buraya ekleyin
                                  color:
                                      Colors.black, // İkonun rengini belirleyin
                                  size: 25.0, // İkonun boyutunu belirleyin
                                ),
                                SizedBox(
                                    width:
                                        8.0), // İkon ile metin arasında boşluk eklemek için SizedBox kullanabilirsiniz
                                Text(
                                  "€15.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: screenWidth * 0.8,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date & Time",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Dec 20,2024 | 10:00 AM",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(254, 187, 27, 1),
                              borderRadius: BorderRadius.circular(70),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons
                                    .my_location_sharp, // İstediğiniz ikonun IconData'sini buraya ekleyin
                                color:
                                    Colors.black, // İkonun rengini belirleyin
                                size: 25.0, // İkonun boyutunu belirleyin
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Current Location",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Kuzeykent Mah. Miralay Halitbey Cad.NO:12"),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(254, 187, 27, 1),
                              borderRadius: BorderRadius.circular(70),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons
                                    .location_on, // İstediğiniz ikonun IconData'sini buraya ekleyin
                                color:
                                    Colors.black, // İkonun rengini belirleyin
                                size: 25.0, // İkonun boyutunu belirleyin
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Current Location",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Kuzeykent Mah. Miralay Halitbey Cad.NO:12"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                height: 400,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
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
                                width: screenWidth * 0.7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          const Text(
                                            "Daniel AUSTİN",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const Spacer(),
                                          Container(
                                            width: 80,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                color: Colors.green),
                                            child: const Center(
                                              child: Text(
                                                "MyBookingsCompleted",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "Mercedens-Benz",
                                        ),
                                        Spacer(),
                                        Text("25 PU 258"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: screenWidth * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Row(
                              children: [
                                Icon(
                                  Icons
                                      .location_on_outlined, // İstediğiniz ikonun IconData'sini buraya ekleyin
                                  color:
                                      Colors.black, // İkonun rengini belirleyin
                                  size: 25.0, // İkonun boyutunu belirleyin
                                ),
                                SizedBox(
                                    width:
                                        8.0), // İkon ile metin arasında boşluk eklemek için SizedBox kullanabilirsiniz
                                Text(
                                  "4.5 Km",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: const Row(
                              children: [
                                Icon(
                                  Icons
                                      .punch_clock, // İstediğiniz ikonun IconData'sini buraya ekleyin
                                  color:
                                      Colors.black, // İkonun rengini belirleyin
                                  size: 25.0, // İkonun boyutunu belirleyin
                                ),
                                SizedBox(
                                    width:
                                        8.0), // İkon ile metin arasında boşluk eklemek için SizedBox kullanabilirsiniz
                                Text(
                                  "4 mins",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: const Row(
                              children: [
                                Icon(
                                  Icons
                                      .wallet, // İstediğiniz ikonun IconData'sini buraya ekleyin
                                  color:
                                      Colors.black, // İkonun rengini belirleyin
                                  size: 25.0, // İkonun boyutunu belirleyin
                                ),
                                SizedBox(
                                    width:
                                        8.0), // İkon ile metin arasında boşluk eklemek için SizedBox kullanabilirsiniz
                                Text(
                                  "€15.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: screenWidth * 0.8,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date & Time",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Dec 20,2024 | 10:00 AM",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(254, 187, 27, 1),
                              borderRadius: BorderRadius.circular(70),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons
                                    .my_location_sharp, // İstediğiniz ikonun IconData'sini buraya ekleyin
                                color:
                                    Colors.black, // İkonun rengini belirleyin
                                size: 25.0, // İkonun boyutunu belirleyin
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Current Location",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Kuzeykent Mah. Miralay Halitbey Cad.NO:12"),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(254, 187, 27, 1),
                              borderRadius: BorderRadius.circular(70),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons
                                    .location_on, // İstediğiniz ikonun IconData'sini buraya ekleyin
                                color:
                                    Colors.black, // İkonun rengini belirleyin
                                size: 25.0, // İkonun boyutunu belirleyin
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Current Location",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Kuzeykent Mah. Miralay Halitbey Cad.NO:12"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
