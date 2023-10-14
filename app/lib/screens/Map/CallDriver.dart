import 'package:flutter/material.dart';

class CallDriver extends StatefulWidget {
  const CallDriver({super.key});

  @override
  State<CallDriver> createState() => _CallDriverState();
}

class _CallDriverState extends State<CallDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 300,
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(254, 187, 27, 1),
                  gradient: RadialGradient(
                    colors: [
                      Colors.white,
                      Color.fromRGBO(254, 187, 27, 1),
                    ],
                    stops: [
                      0.88,
                      2,
                    ],
                  ),
                ),
                child: const Center(
                  child: CircleAvatar(
                    radius: 111,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 105,
                      backgroundImage: AssetImage(
                        'assets/images/profilepic2.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          const Center(
            child: Text(
              "Sarah Stood",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "01:25 minutes",
                style: TextStyle(
                  fontSize: 22.5,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 129, 129, 129),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                      10.0), // Boşluğu ayarlamak için bu satırı kullanın
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 255, 225, 135),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.close,
                        size: 35,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(254, 187, 27, 1),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.videocam_off,
                        size: 35,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                      10.0), // Boşluğu ayarlamak için bu satırı kullanın
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(254, 187, 27, 1),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.volume_up,
                        size: 35,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
